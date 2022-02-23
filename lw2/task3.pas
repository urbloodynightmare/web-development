PROGRAM Hello(INPUT, OUTPUT);
USES Dos;
  // http://localhost:4001/cgi-bin/task3.cgi/?name=Ekaterina
VAR
  NAME: STRING;
  INDEX: INTEGER;
BEGIN {Hello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  NAME := GetEnv('QUERY_STRING');
  INDEX := POS('=', NAME);
  NAME := COPY(NAME, INDEX + 1, Length(NAME) - INDEX + 1);
  IF Length(NAME) < 1 THEN
    WRITELN('Hello Anonymous!')
  ELSE
    WRITELN('Hello dear, ', NAME, ' !')
END. {Hello}