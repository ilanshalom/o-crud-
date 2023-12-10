using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Exemp_PS_trabalhadores
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnCadastrar_Click(object sender, EventArgs e)
        {
            try {
                MySqlConnection conexao = new MySqlConnection(
                    "server=localhost; user id=root; password=12345; database=bdtrabalhadores");
                conexao.Open();
                MySqlCommand command = new MySqlCommand(
                     "INSERT INTO trabalhadores (cpf,nome,idade,salario)"
                     + " VALUES (@cpf,@nome,@idade,@salario)", conexao);
                command.Parameters.AddWithValue("@cpf", txtCpf.Text);
                command.Parameters.AddWithValue("@nome", txtNome.Text);
                command.Parameters.AddWithValue("@idade", txtIdade.Text);
                command.Parameters.AddWithValue("@salario", txtSalario.Text);
                command.Prepare();
                int res = command.ExecuteNonQuery();
                if (res > 0) {
                    MessageBox.Show(null, "Trabalhador cadastrado", "Cadastro");
                }
                else {
                    MessageBox.Show(null, "Algum problema no cadastro.", "Cadastro");
                }
                command.Dispose();
                conexao.Close();
            }
            catch(Exception er) {
                MessageBox.Show(null, "Algum problema no cadastro. Já importou o BD? \n\n " + er.Message, "Cadastro");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {   // Outra versão para Cadastrar
            try
            {
                MySqlConnection conexao = new MySqlConnection(
                    "server=localhost; user id=root; password=12345; database=bdtrabalhadores");
                conexao.Open();
                MySqlCommand command = new MySqlCommand(
                     "INSERT INTO trabalhadores (cpf,nome,idade,salario)"
                     + " VALUES (@cpf,@nome,@idade,@salario)", conexao);
                command.Parameters.AddWithValue("@cpf", txtCpf.Text);
                command.Parameters.AddWithValue("@nome", txtNome.Text);
                command.Parameters.AddWithValue("@idade", Convert.ToInt16(txtIdade.Text));
                command.Parameters.AddWithValue("@salario", Convert.ToSingle(txtSalario.Text));
                command.Prepare();
                int res = command.ExecuteNonQuery();
                if (res > 0)
                {
                    MessageBox.Show(null, "Trabalhador cadastrado com sucesso!", "Cadastro");
                }
                else
                {
                    MessageBox.Show(null, "Algum problema no cadastro.", "Cadastro");
                }
                command.Dispose();
                conexao.Close();
            }
            catch (Exception er)
            {
                MessageBox.Show(null, "Algum problema no cadastro: " + er.Message, "Cadastro");
            }

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
