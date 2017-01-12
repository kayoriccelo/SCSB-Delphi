(* ------------------------------------------------------------------
  Prop�sito da Unit:
  Programador: Data: Kayo Riccelo 21/03/2015
  Analista Respons�vel:
  Revis�es:
  Programador:
  Data: Descri��o da Revis�o
  Coment�rios adicionais:
  ------------------------------------------------------------------ *)
unit untBR;

interface

uses
  untDAO, System.Generics.Collections, untValidation, untEntity,
  FireDAC.Comp.Client;

type

  TBR = class
  private
    FDAO: TDAO;
  public
    function Insert(AObject: TObject); virtual; abstract;
    function Update(AObject: TObject); virtual; abstract;
    function List(AProperty: String = ''; AValue: String = ''): TList<TObject>; virtual; abstract;
    function Delete(AObject: TObject); virtual; abstract;

    constructor Create; virtual;
    destructor Destroy; virtual;
  end;

  TBRCliente = class(TBR)
  private

  public
    function Insert(ACliente: TCliente): Boolean;
    function Update(ACliente: TCliente): Boolean;
    function List(AProperty: String = ''; AValue: String = ''): TList<TCliente>;
    function Delete(ACliente: TCliente): Boolean;

  end;

  TBRFuncionario = class(TBR)
  private

  protected

  public
    function Select(AIndex: Integer): TFuncionario;

  end;

  TBRSexo = class
  private

  public
    function Select(AIndex: Integer): TSexo;

  end;

implementation

uses
  System.SysUtils, untEnumerator;

{ TRNCadastro }

procedure TBRCliente.Update(ACliente: TCliente);
begin
  TDAOCliente(FDAO).Update(ACliente);
end;

procedure TBRCliente.Delete(ACliente: TCliente);
begin
  TDAOCliente(FDAO).Delete(ACliente);
end;

procedure TBRCliente.Insert(ACliente: TCliente);
begin
  TDAOCliente(FDAO).Insert(ACliente);
end;

function TBRCliente.List(AProperty: String; AValue: String): TList<TObject>;
begin
  Result := TDAOCliente(FDAO).List(AProperty, AValue);
end;

{ TRNFuncionario }

function TBRFuncionario.Select(AIndex: Integer): TFuncionario;
begin
  Result := TDAOFuncionario(FDAO).Select(AIndex);
end;

{ TRN }

constructor TBR.Create;
begin
  FDAO := TDAO.Create;
end;

destructor TBR.Destroy;
begin
  FreeAndNil(FDAO);
end;

function TBR.Qry(AEntidade: String; AId: Integer): TFDQuery;
begin
  Result := FDAO.Qry(AEntidade, AId);
end;

{ TRNSexo }

function TBRSexo.Select(AIndex: Integer): TSexo;
begin

end;

{ Kayo Riccelo - Aviso - Comando que for�a as classes para que o Rtti enxergue }

procedure ForceReferenceToClass(C: TClass);
begin
  //
end;

initialization

ForceReferenceToClass(TBRCliente);

end.
