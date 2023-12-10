using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace EscolaMySQL
{
    public partial class FormGrade : System.Web.UI.Page
    {
        private MySqlConnection conexao = null;
        private String url = "server=localhost; port=3306; ";
        private String idusuario = "root";
        private String senha = "12345";
        private String bd = "escola";
        //= new MySqlConnection
        //("server=localhost; port=3306; user id=root; password=12345; database=escola; SSL Mode = None;");

        protected void Page_Load(object sender, EventArgs e)
        {
            PopulaDataGrid();
        }

        public void AbrirConexao()
        {
            String strconex = url + "user id =" + idusuario 
                + "; password=" + senha + "; database=" + bd
                + "; SSL Mode = None;";

            conexao = new MySqlConnection(strconex);

            try
            {
                conexao.Open();
            }
            catch (Exception exec)
            {
                Label1.Text = "Erro na conexão: " + exec.Message;
            }
        }

        public void PopulaDataGrid()
        {
            AbrirConexao();

            //popular o GridView1 com dados da tabela 'alunos':
            try {
                MySqlCommand cmd =
                    new MySqlCommand("SELECT * FROM alunos ORDER BY nome;", conexao);
                DataTable dataTable = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dataTable); //relaciona DataAdapter com a DataTable
                //define uma DataTable como fonte de dados do GridView1 :
                GridView1.DataSource = dataTable; 
                GridView1.DataBind(); //atualiza os dados do GriView1
                Label1.Text = "Mostramos os dados das tabelas 'alunos' e 'profes' do BD formato MySQL 'escola' ";
            }
            catch (Exception exec) {
                Label1.Text = "Erro preenchendo o GridView1: " + exec.Message;
            }
           
            //popular o GridView2 com dados da tabela 'profes':
            try
            {
                MySqlCommand cmd =
                    new MySqlCommand("SELECT * FROM profes ORDER BY nome;", conexao);
                DataTable dataTable = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dataTable); //relaciona DataAdapter com a DataTable
                //define uma DataTable como fonte de dados do GridView2 :
                GridView2.DataSource = dataTable;
                GridView2.DataBind(); //atualiza os dados do GriView2
            }
            catch (Exception exec)
            {
                Label1.Text = "Erro preenchendo o GridView2: " + exec.Message;
            }
            
            conexao.Close();
        }

    }
}