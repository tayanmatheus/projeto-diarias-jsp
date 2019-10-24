
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
	String dataSaida = request.getParameter("dataSaida");
	String dataEntrada = request.getParameter("dataEntrada");
	String valor = request.getParameter("valor");
	String descricao = request.getParameter("descricao");
	String cidade = request.getParameter("cidade");

	String mensagem = "";

	if (dataSaida.equals("")) {
		mensagem = "O campo Data de Saida não foi informado <br />";
	}
	if (dataEntrada.equals("")) {
		mensagem += "O campo data de Entrada não foi informado <br />";
	}
	if (valor.equals("")) {
		mensagem += "O campo valor não foi informado <br />";
	}
	if (descricao.equals("")) {
		mensagem += "O campo descrição não foi informado <br />";
	}
	if (cidade.equals("")) {
		mensagem += "O campo cidade não foi selecionado <br />";
	}
	if (mensagem.equals("")) {

		Double valorConvertido = Double.parseDouble(valor);

		if (cidade.equals("1")) {
			valorConvertido = valorConvertido - (valorConvertido * 0.05);
		}

		if (cidade.equals("2")) {

			valorConvertido = valorConvertido + (valorConvertido * 0.11);
		}
		if (cidade.equals("3")) {
			SimpleDateFormat formatador = new SimpleDateFormat("dd/MM/yyyy");
			Date dataent = formatador.parse(dataEntrada);
			Date datasai = formatador.parse(dataSaida);
			int dias = 0;
			valorConvertido = valorConvertido + (valorConvertido * 0.11);
			long diferencaDias = (datasai.getTime() - dataent.getTime()) / 1000 / 60 / 60 / 24;
			dias = (int) diferencaDias / 10;

			valorConvertido = valorConvertido + (valorConvertido * (dias * 0.02));

		}

		if (cidade.equals("4")) {

			valorConvertido = valorConvertido + (valorConvertido * 0.11);
		}

		request.setAttribute("dataSaidaParam", dataSaida);
		request.setAttribute("dataEntradaParam", dataEntrada);
		request.setAttribute("valorParam", valor);
		request.setAttribute("descricaoParam", descricao);
		request.setAttribute("valorComDesconto", valorConvertido);

		if (cidade.equals("1")) {
			request.setAttribute("cidadeParam", "Goiania");
		}
		if (cidade.equals("2")) {
			request.setAttribute("cidadeParam", "Anapolis");
		}
		if (cidade.equals("3")) {
			request.setAttribute("cidadeParam", "Caldas Novas");
		}
		if (cidade.equals("4")) {
			request.setAttribute("cidadeParam", "Pirinopolis");
		}
		pageContext.forward("resultado.jsp");

	} else {
		request.setAttribute("mensagemParam", mensagem);
		pageContext.forward("dadosInconsistente.jsp");
	}
%>