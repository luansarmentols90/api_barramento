class ArtsModelResponse {
  List<Art>? arts;

  ArtsModelResponse({this.arts});

  ArtsModelResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      arts = <Art>[];
      json['data'].forEach((v) {
        arts!.add(new Art.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.arts != null) {
      data['data'] = this.arts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Art {
  String? atividadesProfissionais1;
  String? atividadesProfissionais10;
  String? atividadesProfissionais11;
  String? atividadesProfissionais12;
  String? atividadesProfissionais2;
  String? atividadesProfissionais3;
  String? atividadesProfissionais4;
  String? atividadesProfissionais5;
  String? atividadesProfissionais6;
  String? atividadesProfissionais7;
  String? atividadesProfissionais8;
  String? atividadesProfissionais9;
  String? bairro;
  String? bairro1;
  String? cep;
  int? cep1;
  String? cidade;
  String? cidade1;
  String? complemento;
  String? complemento1;
  String? complemento10;
  String? complemento11;
  String? complemento12;
  String? complemento2;
  String? complemento3;
  String? complemento4;
  String? complemento5;
  String? complemento6;
  String? complemento7;
  String? complemento8;
  String? complemento9;
  String? contratante;
  String? contratoArt;
  String? contratoDataCelebracao;
  String? contratoNumero;
  String? contratoObservacoes;
  String? coordenadas;
  String? dataBaixa;
  String? dataInicio;
  String? dataRegistro;
  String? dataRegistro1;
  String? dataTermino;
  String? descricao;
  String? dimensaoTrabalho1;
  String? dimensaoTrabalho10;
  String? dimensaoTrabalho11;
  String? dimensaoTrabalho12;
  String? dimensaoTrabalho2;
  String? dimensaoTrabalho3;
  String? dimensaoTrabalho4;
  String? dimensaoTrabalho5;
  String? dimensaoTrabalho6;
  String? dimensaoTrabalho7;
  String? dimensaoTrabalho8;
  String? dimensaoTrabalho9;
  String? documento;
  String? documento1;
  String? empresa;
  int? empresaRegistro;
  String? logradouro;
  String? logradouro1;
  String? numero;
  String? numero1;
  String? numeroArt;
  String? obraServico1;
  String? obraServico10;
  String? obraServico11;
  String? obraServico12;
  String? obraServico2;
  String? obraServico3;
  String? obraServico4;
  String? obraServico5;
  String? obraServico6;
  String? obraServico7;
  String? obraServico8;
  String? obraServico9;
  String? profissional;
  String? profissionalRegistro;
  String? proprietario;
  String? situacaoPagamento;
  String? tipoBaixa;
  String? tipoLegado;
  String? tipoRegistro;
  String? titulo1;
  String? titulo2;
  String? titulo3;
  String? titulo4;
  String? titulo5;
  String? titulo6;
  String? uf;
  String? uf1;
  String? unidade1;
  String? unidade10;
  String? unidade11;
  String? unidade12;
  String? unidade2;
  String? unidade3;
  String? unidade4;
  String? unidade5;
  String? unidade6;
  String? unidade7;
  String? unidade8;
  String? unidade9;
  String? valorObra;
  String? valorPago;

  Art(
      {this.atividadesProfissionais1,
      this.atividadesProfissionais10,
      this.atividadesProfissionais11,
      this.atividadesProfissionais12,
      this.atividadesProfissionais2,
      this.atividadesProfissionais3,
      this.atividadesProfissionais4,
      this.atividadesProfissionais5,
      this.atividadesProfissionais6,
      this.atividadesProfissionais7,
      this.atividadesProfissionais8,
      this.atividadesProfissionais9,
      this.bairro,
      this.bairro1,
      this.cep,
      this.cep1,
      this.cidade,
      this.cidade1,
      this.complemento,
      this.complemento1,
      this.complemento10,
      this.complemento11,
      this.complemento12,
      this.complemento2,
      this.complemento3,
      this.complemento4,
      this.complemento5,
      this.complemento6,
      this.complemento7,
      this.complemento8,
      this.complemento9,
      this.contratante,
      this.contratoArt,
      this.contratoDataCelebracao,
      this.contratoNumero,
      this.contratoObservacoes,
      this.coordenadas,
      this.dataBaixa,
      this.dataInicio,
      this.dataRegistro,
      this.dataRegistro1,
      this.dataTermino,
      this.descricao,
      this.dimensaoTrabalho1,
      this.dimensaoTrabalho10,
      this.dimensaoTrabalho11,
      this.dimensaoTrabalho12,
      this.dimensaoTrabalho2,
      this.dimensaoTrabalho3,
      this.dimensaoTrabalho4,
      this.dimensaoTrabalho5,
      this.dimensaoTrabalho6,
      this.dimensaoTrabalho7,
      this.dimensaoTrabalho8,
      this.dimensaoTrabalho9,
      this.documento,
      this.documento1,
      this.empresa,
      this.empresaRegistro,
      this.logradouro,
      this.logradouro1,
      this.numero,
      this.numero1,
      this.numeroArt,
      this.obraServico1,
      this.obraServico10,
      this.obraServico11,
      this.obraServico12,
      this.obraServico2,
      this.obraServico3,
      this.obraServico4,
      this.obraServico5,
      this.obraServico6,
      this.obraServico7,
      this.obraServico8,
      this.obraServico9,
      this.profissional,
      this.profissionalRegistro,
      this.proprietario,
      this.situacaoPagamento,
      this.tipoBaixa,
      this.tipoLegado,
      this.tipoRegistro,
      this.titulo1,
      this.titulo2,
      this.titulo3,
      this.titulo4,
      this.titulo5,
      this.titulo6,
      this.uf,
      this.uf1,
      this.unidade1,
      this.unidade10,
      this.unidade11,
      this.unidade12,
      this.unidade2,
      this.unidade3,
      this.unidade4,
      this.unidade5,
      this.unidade6,
      this.unidade7,
      this.unidade8,
      this.unidade9,
      this.valorObra,
      this.valorPago});

  Art.fromJson(Map<String, dynamic> json) {
    atividadesProfissionais1 = json['atividades_profissionais_1'];
    atividadesProfissionais10 = json['atividades_profissionais_10'];
    atividadesProfissionais11 = json['atividades_profissionais_11'];
    atividadesProfissionais12 = json['atividades_profissionais_12'];
    atividadesProfissionais2 = json['atividades_profissionais_2'];
    atividadesProfissionais3 = json['atividades_profissionais_3'];
    atividadesProfissionais4 = json['atividades_profissionais_4'];
    atividadesProfissionais5 = json['atividades_profissionais_5'];
    atividadesProfissionais6 = json['atividades_profissionais_6'];
    atividadesProfissionais7 = json['atividades_profissionais_7'];
    atividadesProfissionais8 = json['atividades_profissionais_8'];
    atividadesProfissionais9 = json['atividades_profissionais_9'];
    bairro = json['bairro'];
    bairro1 = json['bairro1'];
    cep = json['cep'];
    cep1 = json['cep1'];
    cidade = json['cidade'];
    cidade1 = json['cidade1'];
    complemento = json['complemento'];
    complemento1 = json['complemento1'];
    complemento1 = json['complemento_1'];
    complemento10 = json['complemento_10'];
    complemento11 = json['complemento_11'];
    complemento12 = json['complemento_12'];
    complemento2 = json['complemento_2'];
    complemento3 = json['complemento_3'];
    complemento4 = json['complemento_4'];
    complemento5 = json['complemento_5'];
    complemento6 = json['complemento_6'];
    complemento7 = json['complemento_7'];
    complemento8 = json['complemento_8'];
    complemento9 = json['complemento_9'];
    contratante = json['contratante'];
    contratoArt = json['contrato_art'];
    contratoDataCelebracao = json['contrato_data_celebracao'];
    contratoNumero = json['contrato_numero'];
    contratoObservacoes = json['contrato_observacoes'];
    coordenadas = json['coordenadas'];
    dataBaixa = json['data_baixa'];
    dataInicio = json['data_inicio'];
    dataRegistro = json['data_registro'];
    dataRegistro1 = json['data_registro1'];
    dataTermino = json['data_termino'];
    descricao = json['descricao'];
    dimensaoTrabalho1 = json['dimensao_trabalho_1'];
    dimensaoTrabalho10 = json['dimensao_trabalho_10'];
    dimensaoTrabalho11 = json['dimensao_trabalho_11'];
    dimensaoTrabalho12 = json['dimensao_trabalho_12'];
    dimensaoTrabalho2 = json['dimensao_trabalho_2'];
    dimensaoTrabalho3 = json['dimensao_trabalho_3'];
    dimensaoTrabalho4 = json['dimensao_trabalho_4'];
    dimensaoTrabalho5 = json['dimensao_trabalho_5'];
    dimensaoTrabalho6 = json['dimensao_trabalho_6'];
    dimensaoTrabalho7 = json['dimensao_trabalho_7'];
    dimensaoTrabalho8 = json['dimensao_trabalho_8'];
    dimensaoTrabalho9 = json['dimensao_trabalho_9'];
    documento = json['documento'];
    documento1 = json['documento1'];
    empresa = json['empresa'];
    empresaRegistro = json['empresa_registro'];
    logradouro = json['logradouro'];
    logradouro1 = json['logradouro1'];
    numero = json['numero'];
    numero1 = json['numero1'];
    numeroArt = json['numero_art'];
    obraServico1 = json['obra/servico_1'];
    obraServico10 = json['obra/servico_10'];
    obraServico11 = json['obra/servico_11'];
    obraServico12 = json['obra/servico_12'];
    obraServico2 = json['obra/servico_2'];
    obraServico3 = json['obra/servico_3'];
    obraServico4 = json['obra/servico_4'];
    obraServico5 = json['obra/servico_5'];
    obraServico6 = json['obra/servico_6'];
    obraServico7 = json['obra/servico_7'];
    obraServico8 = json['obra/servico_8'];
    obraServico9 = json['obra/servico_9'];
    profissional = json['profissional'];
    profissionalRegistro = json['profissional_registro'];
    proprietario = json['proprietario'];
    situacaoPagamento = json['situacao_pagamento'];
    tipoBaixa = json['tipo_baixa'];
    tipoLegado = json['tipo_legado'];
    tipoRegistro = json['tipo_registro'];
    titulo1 = json['titulo_1'];
    titulo2 = json['titulo_2'];
    titulo3 = json['titulo_3'];
    titulo4 = json['titulo_4'];
    titulo5 = json['titulo_5'];
    titulo6 = json['titulo_6'];
    uf = json['uf'];
    uf1 = json['uf1'];
    unidade1 = json['unidade_1'];
    unidade10 = json['unidade_10'];
    unidade11 = json['unidade_11'];
    unidade12 = json['unidade_12'];
    unidade2 = json['unidade_2'];
    unidade3 = json['unidade_3'];
    unidade4 = json['unidade_4'];
    unidade5 = json['unidade_5'];
    unidade6 = json['unidade_6'];
    unidade7 = json['unidade_7'];
    unidade8 = json['unidade_8'];
    unidade9 = json['unidade_9'];
    valorObra = json['valor_obra'];
    valorPago = json['valor_pago'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['atividades_profissionais_1'] = this.atividadesProfissionais1;
    data['atividades_profissionais_10'] = this.atividadesProfissionais10;
    data['atividades_profissionais_11'] = this.atividadesProfissionais11;
    data['atividades_profissionais_12'] = this.atividadesProfissionais12;
    data['atividades_profissionais_2'] = this.atividadesProfissionais2;
    data['atividades_profissionais_3'] = this.atividadesProfissionais3;
    data['atividades_profissionais_4'] = this.atividadesProfissionais4;
    data['atividades_profissionais_5'] = this.atividadesProfissionais5;
    data['atividades_profissionais_6'] = this.atividadesProfissionais6;
    data['atividades_profissionais_7'] = this.atividadesProfissionais7;
    data['atividades_profissionais_8'] = this.atividadesProfissionais8;
    data['atividades_profissionais_9'] = this.atividadesProfissionais9;
    data['bairro'] = this.bairro;
    data['bairro1'] = this.bairro1;
    data['cep'] = this.cep;
    data['cep1'] = this.cep1;
    data['cidade'] = this.cidade;
    data['cidade1'] = this.cidade1;
    data['complemento'] = this.complemento;
    data['complemento_1'] = this.complemento1;
    data['complemento_10'] = this.complemento10;
    data['complemento_11'] = this.complemento11;
    data['complemento_12'] = this.complemento12;
    data['complemento_2'] = this.complemento2;
    data['complemento_3'] = this.complemento3;
    data['complemento_4'] = this.complemento4;
    data['complemento_5'] = this.complemento5;
    data['complemento_6'] = this.complemento6;
    data['complemento_7'] = this.complemento7;
    data['complemento_8'] = this.complemento8;
    data['complemento_9'] = this.complemento9;
    data['contratante'] = this.contratante;
    data['contrato_art'] = this.contratoArt;
    data['contrato_data_celebracao'] = this.contratoDataCelebracao;
    data['contrato_numero'] = this.contratoNumero;
    data['contrato_observacoes'] = this.contratoObservacoes;
    data['coordenadas'] = this.coordenadas;
    data['data_baixa'] = this.dataBaixa;
    data['data_inicio'] = this.dataInicio;
    data['data_registro'] = this.dataRegistro;
    data['data_registro1'] = this.dataRegistro1;
    data['data_termino'] = this.dataTermino;
    data['descricao'] = this.descricao;
    data['dimensao_trabalho_1'] = this.dimensaoTrabalho1;
    data['dimensao_trabalho_10'] = this.dimensaoTrabalho10;
    data['dimensao_trabalho_11'] = this.dimensaoTrabalho11;
    data['dimensao_trabalho_12'] = this.dimensaoTrabalho12;
    data['dimensao_trabalho_2'] = this.dimensaoTrabalho2;
    data['dimensao_trabalho_3'] = this.dimensaoTrabalho3;
    data['dimensao_trabalho_4'] = this.dimensaoTrabalho4;
    data['dimensao_trabalho_5'] = this.dimensaoTrabalho5;
    data['dimensao_trabalho_6'] = this.dimensaoTrabalho6;
    data['dimensao_trabalho_7'] = this.dimensaoTrabalho7;
    data['dimensao_trabalho_8'] = this.dimensaoTrabalho8;
    data['dimensao_trabalho_9'] = this.dimensaoTrabalho9;
    data['documento'] = this.documento;
    data['documento1'] = this.documento1;
    data['empresa'] = this.empresa;
    data['empresa_registro'] = this.empresaRegistro;
    data['logradouro'] = this.logradouro;
    data['logradouro1'] = this.logradouro1;
    data['numero'] = this.numero;
    data['numero1'] = this.numero1;
    data['numero_art'] = this.numeroArt;
    data['obra/servico_1'] = this.obraServico1;
    data['obra/servico_10'] = this.obraServico10;
    data['obra/servico_11'] = this.obraServico11;
    data['obra/servico_12'] = this.obraServico12;
    data['obra/servico_2'] = this.obraServico2;
    data['obra/servico_3'] = this.obraServico3;
    data['obra/servico_4'] = this.obraServico4;
    data['obra/servico_5'] = this.obraServico5;
    data['obra/servico_6'] = this.obraServico6;
    data['obra/servico_7'] = this.obraServico7;
    data['obra/servico_8'] = this.obraServico8;
    data['obra/servico_9'] = this.obraServico9;
    data['profissional'] = this.profissional;
    data['profissional_registro'] = this.profissionalRegistro;
    data['proprietario'] = this.proprietario;
    data['situacao_pagamento'] = this.situacaoPagamento;
    data['tipo_baixa'] = this.tipoBaixa;
    data['tipo_legado'] = this.tipoLegado;
    data['tipo_registro'] = this.tipoRegistro;
    data['titulo_1'] = this.titulo1;
    data['titulo_2'] = this.titulo2;
    data['titulo_3'] = this.titulo3;
    data['titulo_4'] = this.titulo4;
    data['titulo_5'] = this.titulo5;
    data['titulo_6'] = this.titulo6;
    data['uf'] = this.uf;
    data['uf1'] = this.uf1;
    data['unidade_1'] = this.unidade1;
    data['unidade_10'] = this.unidade10;
    data['unidade_11'] = this.unidade11;
    data['unidade_12'] = this.unidade12;
    data['unidade_2'] = this.unidade2;
    data['unidade_3'] = this.unidade3;
    data['unidade_4'] = this.unidade4;
    data['unidade_5'] = this.unidade5;
    data['unidade_6'] = this.unidade6;
    data['unidade_7'] = this.unidade7;
    data['unidade_8'] = this.unidade8;
    data['unidade_9'] = this.unidade9;
    data['valor_obra'] = this.valorObra;
    data['valor_pago'] = this.valorPago;
    return data;
  }
}