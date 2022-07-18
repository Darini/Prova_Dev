object Empregado_Consulta: TEmpregado_Consulta
  Left = 0
  Top = 0
  Caption = 'Empregado_Consulta'
  ClientHeight = 453
  ClientWidth = 746
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 20
    Top = 22
    Width = 110
    Height = 22
    Caption = 'Empregados'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblNomeEmpregado: TLabel
    Left = 52
    Top = 50
    Width = 31
    Height = 14
    Caption = 'NOME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgEmpregados: TDBGrid
    Left = 18
    Top = 112
    Width = 705
    Height = 233
    DataSource = DS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgEmpregadosDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_empregado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'ID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_empregado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'NOME'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 308
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'DEPARTAMENTO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_funcao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'FUN'#199#195'O'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 133
        Visible = True
      end>
  end
  object pnlBarraOpcoes: TPanel
    Left = 0
    Top = 363
    Width = 746
    Height = 90
    Align = alBottom
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      746
      90)
    object pnlLimpar: TPanel
      Left = 300
      Top = 16
      Width = 75
      Height = 61
      Anchors = []
      BevelOuter = bvNone
      Caption = 'Voltar'
      Color = clMenuHighlight
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      VerticalAlignment = taAlignBottom
      object imgLimpar: TImage
        AlignWithMargins = True
        Left = 18
        Top = 0
        Width = 40
        Height = 40
        Center = True
        DragCursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000640000
          0064080600000070E2955400000006624B474400FF00FF00FFA0BDA793000005
          2B4944415478DAEDDDDD8B0E511C07F07910EEDD287F8094522C2EE4C25B592D
          B6BCFD078BE5426D2CE56D89EC262564852BB75E7671A1949048A15CD0BAE2CA
          3F801B6F8FEFCF3CA7C6B6667E33735E7EE7CCF9D6AF933A3373CE7EF63CB3CF
          F3CC8C5612232A2DD70388F9371144582288B04410618920C21241842582084B
          2340DAEDF634345DA875A87928FAF767D423D48B56ABF5CBF51855820701C65A
          3467518BFED3E503EA2050C65C8F951234083006D19C4ED215519491248569BB
          1C73B020C03881E648C9CDAEA3FA80F2DBD5B88304A988A1E2142538909A182A
          CE508202D184A1E204251810CD182AD65182003184A16215C57B10600CA1396A
          F830D650BC06B184A16205C55B10CB182AC651BC047184A16214C53B10C7182A
          C650BC021182A16204C51B1061182ADA51BC00118AA1A215453C88700C156D28
          A2413CC150D1822216C4330C95DA2822413CC550A985220EC4730C95CA28A240
          02C150A984220624300C95D228224002C5502985E21C24700C9511800C723A3A
          056908864A2F50C68B3A39036918066502B5B0E8B25527200DC450590190E779
          1DAC83341883721820A7F23A58052989D1B63D3E0B1905C8EEBC0ED6260C8CE3
          688E31BB7F47ED48D2DB07FA6D8DD1422E01646F5E072B20255706616CC5C0EF
          613B1ADF28AACFC6382D6410F31AC9EB601CA4C2CAD89EFDF3B08372310963A5
          2CC1DCDEE475300A521723B39F10505EA39616DD7F620CA402C6DF97A99CFDF9
          FCF245EF3DD6607E4F8A3A1A01D18D91D9AFAF280398DF394E47ED20BA5EA672
          F6EFDBCBD771CC6F88DB592B88698CCC717C41298541D106620B23733CE928A5
          31285A406C63648E2B15A51206A536882B8CCCF1A5A154C6A0D402A980B10D83
          BDABFB2720086518F33B5867079541A46064C6E31AA53606A51288348CCCB85C
          A168C1A09406918A91199F6D146D18945220D23132E3B485A21583C206C12407
          92F4A93A9C10C6160CF6BEE11F48DE784D7FCC7202F3E3FE72B2C302C1E456A1
          79889ACEE8EE1C23336E532846302885209D49BD422D66EC4F0CC6A4F1EB4431
          8641E1802C43F392B12F67E70CC61C749D53B49F332687037228491F02961771
          2B638A79D45D294657860A07E4329A5D395DC4AE8C29E65275A5185F192A1C90
          2B49FE6FD557543706FCCCC680EB06F3D984668C33F74EACAC0C150E085D2D52
          F46199172898CB4634375133999B58C5A0704056A279CAD8D737540F26F0D8E6
          04B8C13CBAD1DC41CD626E62ED652A1B0E08BDF778879ACFD8DF17D406692BC5
          8795A1C27D63B839495F773911855201E324C6EEECDAE3321F9D0CA339C0EC2E
          020563EE41732BF10483520684FA5E40ED616EE2F49CD23967DC46CD666EE2E4
          9C3139653FEDF502A50206FB9633D3A9F27D8868149F312855BF311489E23B06
          A5CE77EAA25042C0A0D4BDEA44040AC6B13E49DFF4798D41D1715D9653949030
          28BAAE5C7482121A0645E7B5BD565142C4A0E8BEFADD0A4AA8181413F7871845
          09198362EA0E2A2328A163504CDE63A815A5091814D377E16A41690A06C5C67D
          EAB5509A8441B1F524874A28498AD0180C8ACD679DD0B1E892A29DCC4DE84B2E
          FA6289FB1D38F57F606B3ECCD0FDE99F5037F08BF29EB381EDA701954509253F
          51FD40B95AD4D1C5F3B29A8CD20594B7799D5C3D51AEA928E701B22FAF83CB67
          2E3611651C20BD791D5C3F95B469287257884A07E50C6ABF84F1188CDC73C854
          E95C044D300B5C8FC5407E24E95F59D78A3A8A01A10085FE23FAE5A8D5A8B9A8
          39A819AEC75523B42A3E26E9FB9009CE06A240622288B84410618920C2124184
          2582084B04119608222C7F00EBE0CD83AA1C38CC0000000049454E44AE426082}
        Stretch = True
        OnClick = pnImprimirClick
      end
    end
    object pnlSelecionar: TPanel
      Left = 381
      Top = 16
      Width = 75
      Height = 61
      Anchors = []
      BevelOuter = bvNone
      Caption = 'Selecionar'
      Color = clMenuHighlight
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      VerticalAlignment = taAlignBottom
      OnClick = pnlSelecionarClick
      object imgSelecionar: TImage
        AlignWithMargins = True
        Left = 18
        Top = 0
        Width = 40
        Height = 40
        Center = True
        DragCursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B100000006624B474400FF00FF00FFA0BDA793000000
          E04944415478DAED9A310A02311045772A4114BC8957B0116C2D3D8DEB692CB7
          156CBC82371114C12AFE94A61957A399CCFE07C3902D66E62DEC0642A4718294
          1E802283110921CC9156A507533888C859136991B6A52755D841A4A588212862
          0D8A5883229F70473C926723C4B83691C832591F33D5FDAF089ABDD447ED4011
          8A50842214F946246E76DAC67643B36952FB8A34C9503B9BC805B146B1539FD7
          A881DE0BA40E31A308452A1771F3B1BF450DBF5F8A508422147128D238397C70
          751CF42B28620D8A588322D6189648BC30B0293DA9C25EBD30502B14B1861B91
          2706783642556A49A90000000049454E44AE426082}
        Stretch = True
        OnClick = pnlSelecionarClick
      end
    end
    object pnImprimir: TPanel
      Left = 219
      Top = 16
      Width = 75
      Height = 61
      Anchors = []
      BevelOuter = bvNone
      Caption = 'Imprimir'
      Color = clMenuHighlight
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      VerticalAlignment = taAlignBottom
      OnClick = pnImprimirClick
      object imgImprimir: TImage
        AlignWithMargins = True
        Left = 18
        Top = 0
        Width = 40
        Height = 40
        Center = True
        DragCursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          002808060000008CFEB86D00000006624B474400FF00FF00FFA0BDA793000001
          2F4944415478DAEDD73D0AC2301407F006571171761375D103B8B8EBA6628FE1
          091CA447F0162A8A931EC0C103B808E2E6DEA1B3D47FB441ACAD059B346D790F
          1E0F4AD3F723FD4A9891F260BA01042460D409AEEB0E504C644172EF3B72C118
          DBC6053A28454513E400588A0B7415E15E0044EE8163C5C0552CA0EEC81610B7
          B38B3247B60CF99F95A8E09F9D137282DB7EF802025741B922CBBA66CB0B1B59
          03D2F6037B283BCD38117D00F77E207F5B97BA655E98E2ED262001B3045C6190
          29A33B7AF13EBF7EA104242001FF010E51D629018ED06BE3073650CE46F81A31
          2920DF6234D1EBF201F4065A28D3106412408EB3D067260EB080C17594B6F15E
          B08AE75215505CF3B9601533170A0CB898D8D52901CADC7612302EF0863CCA00
          223AC8AA6CA092C83F50771030F7C007E253D32947DD26AD0000000049454E44
          AE426082}
        Stretch = True
        OnClick = pnImprimirClick
      end
    end
  end
  object edtNomeEmpregado: TEdit
    Left = 52
    Top = 70
    Width = 605
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object pnlPesquisar: TPanel
    Left = 678
    Top = 58
    Width = 45
    Height = 36
    Cursor = crHandPoint
    Color = clMenuHighlight
    DragCursor = crHandPoint
    ParentBackground = False
    TabOrder = 3
    DesignSize = (
      45
      36)
    object imgConsulta: TImage
      Left = 8
      Top = 3
      Width = 30
      Height = 30
      Anchors = []
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000001E0000
        001E08060000003B30AEA200000006624B474400FF00FF00FFA0BDA793000002
        1F4944415478DACD974F48145118C0DFC4568A44E142920A42C46237718F9184
        97A044F1207B0DFA8350A77041BD2C0451E09E3A5874083C8412852B82221ED4
        BD64D4D6B162F1107508D4435129156DBFAF79C2ECE2AC6FFEAD7DF0E3DBF966
        E6FD1E6FE6BD7D63A97D0AEBBF17974AA524E90C34433D7C86B7B06859D6F750
        C5C862A42B300C6D2E976DC12464E8C0A7C062A422CA4187615B3FE01AF2C7BE
        C5484F9396E1B8D721244690DFF52C46DA487A01A77C48FF350103C89F7915DF
        270DFA94EEC486741CF9172331D293A4777030A058E216E28CA97894743B04A9
        C41A62D7C75529CE93CE8624966847FEDE44FC91D4EA28BD8229B8A9EC854362
        060A20A353A76BF7E000DCA868FF02E27913F136E9B0A3D4CD8D4BD487F83DA6
        6B47A97DA5261D4A4191E384BEBFA8CA67C325CE4D988865196C72949EC003C8
        42A7AEC93BF01C1E297B9EFF86ABBAAD871073DCDF8F38672296A14D1A3E3F93
        48227E6D22BEA3EC75398CD8941141FCC7442CC35908493C8EF4BADBC9DD562E
        79267D01A53F2181F88317B1BC952FE15800711A69B6DA056EFF4EE749B3CADF
        D229CF54A6E18A67B1969F233D85B807A90CF121F8061791E73D8BB5FC044916
        FACBAA7C7E56C61B48C32F988386BDE4467B2E3A200B45AFB2F75C2DBAE1752D
        5CA0F155C7B55D26F2487699C8A583B2461F51F696A84796DEC8C526F248F7D5
        D5E4916FE8DDE435F99270BC7032D55288A76BF609A3E57191CAF1BE7D3BFD05
        1376BC1FE37AA5D60000000049454E44AE426082}
    end
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 490
    Top = 271
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP'
    Left = 440
    Top = 271
    object CDSid_empregado: TIntegerField
      FieldName = 'id_empregado'
    end
    object CDSnm_departamento: TWideStringField
      FieldName = 'nm_departamento'
      Size = 100
    end
    object CDSnm_empregado: TWideStringField
      FieldName = 'nm_empregado'
      Size = 100
    end
    object CDSnm_funcao: TWideStringField
      FieldName = 'nm_funcao'
      Size = 100
    end
  end
  object DSP: TDataSetProvider
    Left = 392
    Top = 271
  end
  object frxDBEmpregados: TfrxDBDataset
    UserName = 'frxDBEmpregados'
    CloseDataSource = False
    DataSource = DS
    BCDToCurrency = False
    DataSetOptions = []
    Left = 560
    Top = 272
  end
  object frxRelEmpregados: TfrxReport
    Version = '2022.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44760.293332430600000000
    ReportOptions.LastChange = 44760.298021435180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 632
    Top = 264
    Datasets = <
      item
        DataSet = frxDBEmpregados
        DataSetName = 'frxDBEmpregados'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 411.968770000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Empregados')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEmpregados
        DataSetName = 'frxDBEmpregados'
        RowCount = 0
        object frxDBEmpregadosid_empregado: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'id_empregado'
          DataSet = frxDBEmpregados
          DataSetName = 'frxDBEmpregados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBEmpregados."id_empregado"]')
          ParentFont = False
        end
        object frxDBEmpregadosnm_empregado: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 2.000000000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'nm_empregado'
          DataSet = frxDBEmpregados
          DataSetName = 'frxDBEmpregados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpregados."nm_empregado"]')
          ParentFont = False
        end
        object frxDBEmpregadosnm_departamento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 2.000000000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          DataField = 'nm_departamento'
          DataSet = frxDBEmpregados
          DataSetName = 'frxDBEmpregados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpregados."nm_departamento"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftGradient
        Fill.EndColor = clSilver
        Fill.GradientStyle = gsHorizontal
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DEPARTAMENTO')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de registros: ')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 601.945270000000000000
          Top = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
