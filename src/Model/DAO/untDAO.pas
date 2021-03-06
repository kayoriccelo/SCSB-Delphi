(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador: Data: Kayo Riccelo 11/01/2017
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untDAO;

interface

uses
  System.Generics.Collections, untDmConnection,
  untEntity, FireDAC.Comp.Client;

type

  TDAO = class
  private

  protected
    FQry: TFDQuery;
  public
    function Insert(AObject: TObject): Boolean; virtual; abstract;
    function Update(AObject: TObject): Boolean; virtual; abstract;
    function Delete(AObject: TObject): Boolean; virtual; abstract;
    function Select(AIndex: Integer): TObject; virtual; abstract;
    function List(AProperty: String; AValue: Variant): TList<TObject>; virtual; abstract;
    function NextCod: Integer; virtual; abstract;

    constructor Create;
    destructor Destroy;

  end;

{$REGION '    DAO Domain    '}

  TDAOSexo = class(TDAO)
  private
  public
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOCidade = class(TDAO)
  private
  public
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOEstado = class(TDAO)
  private
  public
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOTipoUsuario = class(TDAO)
  private
  public
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOMeioContato = class(TDAO)
  private
  public
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOLocalidade = class(TDAO)
  private
  public
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

{$ENDREGION}
{$REGION '    DAO Registration    '}

  TDAOCliente = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;
    function NextCod: Integer; override;

  end;

  TDAOFuncionario = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOEmpresa = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOFornecedor = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOFuncao = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOProduto = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOServico = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOUsuario = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOEndereco = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOContato = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

{$ENDREGION}
{$REGION '    DAO Movements    '}

  TDAOAgendamento = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOComanda = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOComandaAux = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOCompra = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOCompraAux = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOEstoque = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOPagamento = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOVenda = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

  TDAOVendaAux = class(TDAO)
  private
  public
    function Insert(AObject: TObject): Boolean; override;
    function Update(AObject: TObject): Boolean; override;
    function Delete(AObject: TObject): Boolean; override;
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;

  end;

{$ENDREGION}

implementation

uses
  System.SysUtils, System.Rtti, CodeSiteLogging;

{ TDAO }

constructor TDAO.Create;
begin
  FQry := TFDQuery.Create(nil);
  FQry.Connection := DmConnection.ConnectionSCSB;
end;

destructor TDAO.Destroy;
begin
  FreeAndNil(FQry);
end;

{ TDAOCliente }

function TDAOCliente.Insert(AObject: TObject): Boolean;
begin
  try
    Result := True;

    with TCliente(AObject) do
    begin
      FQry.SQL.Text :=
        'insert into tb_cliente values(:codigo, :nome, :datacadastro, :datanascimento, :rg, :cpf, :id_sexo, :id_funcionario)';
      FQry.ParamByName('codigo').Value := Codigo;
      FQry.ParamByName('nome').Value := Nome;
      FQry.ParamByName('data_cadastro').Value := DataCadastro;
      FQry.ParamByName('data_nascimento').Value := DataNascimento;
      FQry.ParamByName('rg').Value := Rg;
      FQry.ParamByName('cpf').Value := Cpf;
      FQry.ParamByName('id_sexo').Value := FkSexo.Id;
      FQry.ParamByName('id_funcionario').Value := FkFuncionario.Id;
      FQry.ExecSQL;
    end;

  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create('Error ao inserir cliente.' + #13 + E.message);
    end;
  end;
end;

function TDAOCliente.Update(AObject: TObject): Boolean;
begin
  try
    Result := True;

    with TCliente(AObject) do
    begin
      FQry.SQL.Text :=
        'update tb_cliente set codigo = :codigo, nome = :nome, datacadastro = :datacadastro, datanascimento = :datanascimento, rg = :rg, cpf = :cpf,'
        + 'id_sexo = :id_sexo, id_funcionario = :id_funcionario)';
      FQry.ParamByName('codigo').Value := Codigo;
      FQry.ParamByName('nome').Value := Nome;
      FQry.ParamByName('data_cadastro').Value := DataCadastro;
      FQry.ParamByName('data_nascimento').Value := DataNascimento;
      FQry.ParamByName('rg').Value := Rg;
      FQry.ParamByName('cpf').Value := Cpf;
      FQry.ParamByName('id_sexo').Value := FkSexo.Id;
      FQry.ParamByName('id_funcionario').Value := FkFuncionario.Id;
      FQry.ExecSQL;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create('Error ao alterar cliente.' + #13 + E.message);
    end;
  end;
end;

function TDAOCliente.Delete(AObject: TObject): Boolean;
begin
  try
    Result := True;

    with TCliente(AObject) do
    begin
      FQry.SQL.Text := 'delete from tb_cliente where id = ' + Id.ToString;
      FQry.ExecSQL;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create('Error ao deletar cliente.' + #13 + E.message);
    end;
  end;
end;

function TDAOCliente.List(AProperty: String; AValue: Variant): TList<TObject>;
var
  loCliente: TCliente;
  loDAOSexo: TDAOSexo;
  loDAOFuncionario: TDAOFuncionario;
begin
  try
    try
      loDAOSexo := TDAOSexo.Create;
      loDAOFuncionario := TDAOFuncionario.Create;

      if AProperty = '' then
        FQry.Open('select * from tb_cliente')
      else
        FQry.Open('select * from tb_cliente where ' + AProperty + ' = ' + AValue.ToString);

      Result := TList<TObject>.Create;

      FQry.First;
      while not FQry.Eof do
      begin
        loCliente := TCliente.Create;
        with loCliente do
        begin
          Codigo := FQry.FieldByName('codigo').AsString;
          Nome := FQry.FieldByName('nome').AsString;
          DataCadastro := FQry.FieldByName('data_cadastro').AsDateTime;
          DataNascimento := FQry.FieldByName('data_nascimento').AsDateTime;
          Rg := FQry.FieldByName('rg').AsString;
          Cpf := FQry.FieldByName('cpf').AsString;
          FkSexo := TSexo(loDAOSexo.Select(FQry.FieldByName('id_sexo').AsInteger));
          FkFuncionario := TFuncionario(loDAOFuncionario.Select(FQry.FieldByName('id_funcionario').AsInteger));
        end;

        Result.Add(loCliente);
        FQry.Next;
      end;
    except
      on E: Exception do
      begin
        Result := nil;
        raise Exception.Create('Error ao listar cliente.' + #13 + E.message);
      end;
    end;
  finally
    FreeAndNil(loDAOSexo);
    FreeAndNil(loDAOFuncionario);
  end;
end;

function TDAOCliente.NextCod: Integer;
begin
  try
    FQry.Open('select MAX(Id) as NextCod from tb_cliente');
    Result := FQry.FieldByName('NextCod').Value;
  except
    Result := 1;
  end;
end;

function TDAOCliente.Select(AIndex: Integer): TObject;
var
  loDAOSexo: TDAOSexo;
  loDAOFuncionario: TDAOFuncionario;
begin
  try
    try
      loDAOSexo := TDAOSexo.Create;
      loDAOFuncionario := TDAOFuncionario.Create;

      FQry.Open('select * from tb_cliente where id = ' + AIndex.ToString);

      if FQry.RecordCount = 0 then
        exit(nil);

      Result := TCliente.Create;

      with TCliente(Result) do
      begin
        Id := FQry.FieldByName('id').Value;
        Codigo := FQry.FieldByName('codigo').Value;
        Nome := FQry.FieldByName('nome').Value;
        DataCadastro := FQry.FieldByName('data_cadastro').Value;
        DataNascimento := FQry.FieldByName('data_nascimento').Value;
        Rg := FQry.FieldByName('rg').Value;
        Cpf := FQry.FieldByName('cpf').Value;
        FkSexo := TSexo(loDAOSexo.Select(FQry.FieldByName('id_sexo').AsInteger));
        FkFuncionario := TFuncionario(loDAOFuncionario.Select(FQry.FieldByName('id_funcionario').AsInteger));
      end;
    except
      on E: Exception do
      begin
        Result := nil;
        raise Exception.Create('Error ao listar cliente.' + #13 + E.message);
      end;
    end;
  finally
    FreeAndNil(loDAOSexo);
    FreeAndNil(loDAOFuncionario);
  end;
end;

{ TDAOFuncionario }

function TDAOFuncionario.Insert(AObject: TObject): Boolean;
begin
  try
    Result := True;

    with TFuncionario(AObject) do
    begin
      FQry.SQL.Text := 'insert into tb_funcionario values(:codigo, :nome, :data_admissao, :datacadastro, :datanascimento, :rg, :cpf)';
      FQry.ParamByName('codigo').Value := Codigo;
      FQry.ParamByName('nome').Value := Nome;
      FQry.ParamByName('data_admissao').Value := DataAdmissao;
      FQry.ParamByName('data_cadastro').Value := DataCadastro;
      FQry.ParamByName('data_nascimento').Value := DataNascimento;
      FQry.ParamByName('rg').Value := Rg;
      FQry.ParamByName('cpf').Value := Cpf;
      FQry.ParamByName('id_sexo').Value := FkSexo.Id;
      FQry.ParamByName('id_empresa').Value := FkEmpresa.Id;
      FQry.ParamByName('id_funcao').Value := FkFuncao.Id;
      FQry.ExecSQL;
    end;

  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create('Error ao inserir funcionário.' + #13 + E.message);
    end;
  end;
end;

function TDAOFuncionario.Update(AObject: TObject): Boolean;
begin
  try
    Result := True;

    with TFuncionario(AObject) do
    begin
      FQry.SQL.Text :=
        'update tb_funcionario set codigo = :codigo, nome = :nome, data_admissao = :dataadmissao, datacadastro = :datacadastro, datanascimento = :datanascimento, rg = :rg, cpf = :cpf)';
      FQry.ParamByName('codigo').Value := Codigo;
      FQry.ParamByName('nome').Value := Nome;
      FQry.ParamByName('data_admissao').Value := DataAdmissao;
      FQry.ParamByName('data_cadastro').Value := DataCadastro;
      FQry.ParamByName('data_nascimento').Value := DataNascimento;
      FQry.ParamByName('rg').Value := Rg;
      FQry.ParamByName('cpf').Value := Cpf;
      FQry.ParamByName('id_sexo').Value := FkSexo.Id;
      FQry.ParamByName('id_empresa').Value := FkEmpresa.Id;
      FQry.ParamByName('id_funcao').Value := FkFuncao.Id;
      FQry.ExecSQL;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create('Error ao alterar funcionário.' + #13 + E.message);
    end;
  end;
end;

function TDAOFuncionario.Delete(AObject: TObject): Boolean;
begin
  try
    Result := True;

    with TFuncionario(AObject) do
    begin
      FQry.SQL.Text := 'delete from tb_funcionario where id = ' + Id.ToString;
      FQry.ExecSQL;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create('Error ao deletar funcionário.' + #13 + E.message);
    end;
  end;
end;

function TDAOFuncionario.List(AProperty: String; AValue: Variant): TList<TObject>;
var
  loFuncionario: TFuncionario;
  loDAOSexo: TDAOSexo;
  loDAOEmpresa: TDAOEmpresa;
  loDAOFuncao: TDAOFuncao;
begin
  try
    try
      loDAOSexo := TDAOSexo.Create;
      loDAOEmpresa := TDAOEmpresa.Create;
      loDAOFuncao := TDAOFuncao.Create;

      if AProperty = '' then
        FQry.Open('select * from tb_funcionario')
      else
        FQry.Open('select * from tb_funcionario where ' + AProperty + ' = ' + AValue.ToString);

      Result := TList<TObject>.Create;

      FQry.First;
      while not FQry.Eof do
      begin
        loFuncionario := TFuncionario.Create;
        with loFuncionario do
        begin
          Codigo := FQry.FieldByName('codigo').AsString;
          Nome := FQry.FieldByName('nome').AsString;
          DataAdmissao := FQry.FieldByName('data_admissao').AsDateTime;
          DataCadastro := FQry.FieldByName('data_cadastro').AsDateTime;
          DataNascimento := FQry.FieldByName('data_nascimento').AsDateTime;
          Rg := FQry.FieldByName('rg').AsString;
          Cpf := FQry.FieldByName('cpf').AsString;
          FkSexo := TSexo(loDAOSexo.Select(FQry.FieldByName('id_sexo').AsInteger));
          FkEmpresa := TEmpresa(loDAOEmpresa.Select(FQry.FieldByName('id_empresa').AsInteger));
          FkFuncao := TFuncao(loDAOFuncao.Select(FQry.FieldByName('id_funcao').AsInteger));
        end;

        Result.Add(loFuncionario);
        FQry.Next;
      end;
    except
      on E: Exception do
      begin
        Result := nil;
        raise Exception.Create('Error ao listar funcionário.' + #13 + E.message);
      end;
    end;
  finally
    FreeAndNil(loDAOSexo);
    FreeAndNil(loDAOEmpresa);
    FreeAndNil(loDAOFuncao);
  end;
end;

function TDAOFuncionario.Select(AIndex: Integer): TObject;
var
  loDAOSexo: TDAOSexo;
  loDAOEmpresa: TDAOEmpresa;
  loDAOFuncao: TDAOFuncao;
begin
  try
    try
      loDAOSexo := TDAOSexo.Create;
      loDAOEmpresa := TDAOEmpresa.Create;
      loDAOFuncao := TDAOFuncao.Create;

      FQry.Open('select * from tb_funcionario where id = ' + AIndex.ToString);

      if FQry.RecordCount = 0 then
        exit(nil);

      Result := TFuncionario.Create;

      with TFuncionario(Result) do
      begin
        Id := FQry.FieldByName('id').Value;
        Codigo := FQry.FieldByName('codigo').Value;
        Nome := FQry.FieldByName('nome').Value;
        DataAdmissao := FQry.FieldByName('data_admissao').Value;
        DataNascimento := FQry.FieldByName('data_nascimento').Value;
        DataCadastro := FQry.FieldByName('data_cadastro').Value;
        Rg := FQry.FieldByName('rg').Value;
        Cpf := FQry.FieldByName('cpf').Value;
        FkSexo := TSexo(loDAOSexo.Select(FQry.FieldByName('id_sexo').AsInteger));
        FkEmpresa := TEmpresa(loDAOEmpresa.Select(FQry.FieldByName('id_empresa').AsInteger));
        FkFuncao := TFuncao(loDAOFuncao.Select(FQry.FieldByName('id_funcao').AsInteger));
      end;
    except
      on E: Exception do
      begin
        Result := Nil;
        raise Exception.Create('Error ao selecionar funcionário.' + #13 + E.message);
      end;
    end;
  finally
    FreeAndNil(loDAOSexo);
    FreeAndNil(loDAOEmpresa);
    FreeAndNil(loDAOFuncao);
  end;
end;

{ TDAOSexo }

function TDAOSexo.List(AProperty: String; AValue: Variant): TList<TObject>;
var
  loSexo: TSexo;
begin
  try
    if AProperty = '' then
      FQry.Open('select * from tb_sexo')
    else
      FQry.Open('select * from tb_sexo where ' + AProperty + ' = ' + AValue.ToString);

    if FQry.RecordCount = 0 then
      exit(nil);

    Result := TList<TObject>.Create;

    FQry.First;
    while not FQry.Eof do
    begin
      loSexo := TSexo.Create;
      loSexo.Id := FQry.FieldByName('id').Value;
      loSexo.Codigo := FQry.FieldByName('codigo').Value;
      loSexo.Descricao := FQry.FieldByName('descricao').Value;

      Result.Add(loSexo);
      FQry.Next;
    end;
  except
    on E: Exception do
    begin
      Result := Nil;
      raise Exception.Create('Error ao selecionar sexo.' + #13 + E.message);
    end;
  end;
end;

function TDAOSexo.Select(AIndex: Integer): TObject;
begin
  try
    FQry.Open('select * from tb_sexo where id = ' + AIndex.ToString);

    if FQry.RecordCount = 0 then
      exit(nil);

    Result := TSexo.Create;

    with TSexo(Result) do
    begin
      Id := FQry.FieldByName('id').Value;
      Codigo := FQry.FieldByName('codigo').Value;
      Descricao := FQry.FieldByName('descricao').Value;
    end;
  except
    on E: Exception do
    begin
      Result := Nil;
      raise Exception.Create('Error ao listar sexo.' + #13 + E.message);
    end;
  end;
end;

{ TDAOCidade }

function TDAOCidade.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOCidade.Select(AIndex: Integer): TObject;
begin

end;

{ TDAOEstado }

function TDAOEstado.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOEstado.Select(AIndex: Integer): TObject;
begin

end;

{ TDAOTipoUsuario }

function TDAOTipoUsuario.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOTipoUsuario.Select(AIndex: Integer): TObject;
begin

end;

{ TDAOMeioContato }

function TDAOMeioContato.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOMeioContato.Select(AIndex: Integer): TObject;
begin

end;

{ TDAOLocalidade }

function TDAOLocalidade.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOLocalidade.Select(AIndex: Integer): TObject;
begin

end;

{ TDAOEmpresa }

function TDAOEmpresa.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOEmpresa.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOEmpresa.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOEmpresa.Select(AIndex: Integer): TObject;
begin

end;

function TDAOEmpresa.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOFornecedor }

function TDAOFornecedor.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOFornecedor.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOFornecedor.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOFornecedor.Select(AIndex: Integer): TObject;
begin

end;

function TDAOFornecedor.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOFuncao }

function TDAOFuncao.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOFuncao.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOFuncao.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOFuncao.Select(AIndex: Integer): TObject;
begin

end;

function TDAOFuncao.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOProduto }

function TDAOProduto.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOProduto.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOProduto.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOProduto.Select(AIndex: Integer): TObject;
begin

end;

function TDAOProduto.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOServico }

function TDAOServico.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOServico.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOServico.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOServico.Select(AIndex: Integer): TObject;
begin

end;

function TDAOServico.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOUsuario }

function TDAOUsuario.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOUsuario.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOUsuario.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOUsuario.Select(AIndex: Integer): TObject;
begin

end;

function TDAOUsuario.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOEndereco }

function TDAOEndereco.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOEndereco.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOEndereco.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOEndereco.Select(AIndex: Integer): TObject;
begin

end;

function TDAOEndereco.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOAgendamento }

function TDAOAgendamento.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOAgendamento.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOAgendamento.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOAgendamento.Select(AIndex: Integer): TObject;
begin

end;

function TDAOAgendamento.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOComanda }

function TDAOComanda.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOComanda.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOComanda.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOComanda.Select(AIndex: Integer): TObject;
begin

end;

function TDAOComanda.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOComandaAux }

function TDAOComandaAux.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOComandaAux.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOComandaAux.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOComandaAux.Select(AIndex: Integer): TObject;
begin

end;

function TDAOComandaAux.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOCompra }

function TDAOCompra.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOCompra.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOCompra.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOCompra.Select(AIndex: Integer): TObject;
begin

end;

function TDAOCompra.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOCompraAux }

function TDAOCompraAux.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOCompraAux.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOCompraAux.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOCompraAux.Select(AIndex: Integer): TObject;
begin

end;

function TDAOCompraAux.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOEstoque }

function TDAOEstoque.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOEstoque.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOEstoque.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOEstoque.Select(AIndex: Integer): TObject;
begin

end;

function TDAOEstoque.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOPagamento }

function TDAOPagamento.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOPagamento.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOPagamento.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOPagamento.Select(AIndex: Integer): TObject;
begin

end;

function TDAOPagamento.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOVenda }

function TDAOVenda.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOVenda.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOVenda.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOVenda.Select(AIndex: Integer): TObject;
begin

end;

function TDAOVenda.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOVendaAux }

function TDAOVendaAux.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOVendaAux.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOVendaAux.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOVendaAux.Select(AIndex: Integer): TObject;
begin

end;

function TDAOVendaAux.Update(AObject: TObject): Boolean;
begin

end;

{ TDAOContato }

function TDAOContato.Delete(AObject: TObject): Boolean;
begin

end;

function TDAOContato.Insert(AObject: TObject): Boolean;
begin

end;

function TDAOContato.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOContato.Select(AIndex: Integer): TObject;
begin

end;

function TDAOContato.Update(AObject: TObject): Boolean;
begin

end;

end.
