import psycopg2


def capitalized():
	#conn = psycopg2.connect('dbname=PRODAP user=postgres password=123 port=5432')
	conn = psycopg2.connect(host='localhost', database='dicion05', user='usuario01', password='123')
	cur = conn.cursor()

	tables = ['Bairros','Bancos', 'Categorias', 'Cidades','Comidas','Instituicoes','Lojas','Municipios','Pontos','Supermercados']

	for t in tables:
		cur.execute('SELECT * FROM "Dicionario"."{}";'.format(t))

		res = cur.fetchall()
		for r in res:
			cur.execute('UPDATE "Dicionario"."{}" SET nome = \'{}\' WHERE nome = \'{}\''
				.format(t, r[0].lower().capitalize(), r[0]))

		cur.execute('SELECT * FROM "Dicionario"."{}";'.format(t))
		res2 = cur.fetchall()
		for r in res2:
			print(r[0])


	conn.commit()
	conn.close()


if __name__ == '__main__':
	capitalized()
