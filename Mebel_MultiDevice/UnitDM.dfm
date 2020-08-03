object DM: TDM
  OldCreateOrder = False
  Height = 425
  Width = 464
  object FDConn: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\mdsuz07\Documents\Embarcadero\Studio\Projects\' +
        'Mebel_MultiDevice\MEBEL.FDB'
      'User_Name=SYSDBA'
      'Password=M1d9s7U0z'
      'CharacterSet=WIN1251'
      'ExtendedMetadata=True'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object Kontragents: TFDQuery
    Connection = FDConn
    Transaction = ReadKA
    UpdateTransaction = WriteKA
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gen_kontragents_id'
    UpdateOptions.AutoIncFields = 'ID'
    UpdateObject = UpdateKA
    SQL.Strings = (
      'Select * from kontragents')
    Left = 200
    Top = 16
    object KontragentsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object KontragentsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object KontragentsADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 100
    end
    object KontragentsCONTACT: TStringField
      FieldName = 'CONTACT'
      Origin = 'CONTACT'
      Size = 30
    end
    object KontragentsPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
      Size = 13
    end
  end
  object UpdateKA: TFDUpdateSQL
    Connection = FDConn
    InsertSQL.Strings = (
      'INSERT INTO KONTRAGENTS'
      '(NAME, ADDRESS, CONTACT, PHONE)'
      'VALUES (:NEW_NAME, :NEW_ADDRESS, :NEW_CONTACT, :NEW_PHONE)'
      'RETURNING ID')
    ModifySQL.Strings = (
      'UPDATE KONTRAGENTS'
      
        'SET NAME = :NEW_NAME, ADDRESS = :NEW_ADDRESS, CONTACT = :NEW_CON' +
        'TACT, '
      '  PHONE = :NEW_PHONE'
      'WHERE ID = :OLD_ID'
      'RETURNING ID')
    DeleteSQL.Strings = (
      'DELETE FROM KONTRAGENTS'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      'SELECT ID, NAME, ADDRESS, CONTACT, PHONE'
      'FROM KONTRAGENTS'
      'WHERE ID = :OLD_ID')
    Left = 192
    Top = 64
  end
  object ReadKA: TFDTransaction
    Options.ReadOnly = True
    Connection = FDConn
    Left = 200
    Top = 80
  end
  object WriteKA: TFDTransaction
    Options.AutoStart = False
    Options.AutoStop = False
    Connection = FDConn
    Left = 216
    Top = 96
  end
  object dsKA: TDataSource
    DataSet = Kontragents
    Left = 184
  end
end
