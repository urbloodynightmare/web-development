PROGRAM Hello(INPUT, OUTPUT);
USES dos;
  // http://localhost:4001/cgi-bin/task4.cgi/?first_name=Ekaterina&last_name=Bakhtina&age=18
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Str: STRING;
BEGIN
  Str := GetEnv('QUERY_STRING');
  IF POS(Key, Str) > 0
  THEN
    BEGIN
	  Str := Copy(Str, POS(Key, Str) + Length(Key) + 1, Length(Str)-(POS(Key, Str) + Length(Key))); 
	  IF POS('&', Str) > 0
	  THEN
        GetQueryStringParameter := COPY(Str, 1, POS('&', Str) - 1)
	  ELSE
	    GetQueryStringParameter := COPY(Str, 1, Length(str))
	END
  ELSE
    GetQueryStringParameter := ''
END;
  
BEGIN {Hello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Surname: ', GetQueryStringParameter('surname'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {Hello}