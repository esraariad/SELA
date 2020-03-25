class ValidationMixin{

String validateName(String value) {
          if (value == '' || value == null) {
            return 'من فضلك أدخل اسم المستخدم';
          }
          return null;
        }

String validateEmail(String value) {
          if (value == '' || value == null) {
            return 'من فضلك أدخل البريد الإلكتروني ';
          }
          else if (!value.contains('@') ){
             return 'من فضلك أدخل بريد إلكتروني صالح ';

          }
          return null;
        }

String validtePasword (String value) {
          if (value == '' || value == null) {
            return 'من فضلك أدخل كلمة المرور';
          } else if (value.length < 4) {
            return 'يجب أن لا تقل كلمة المرور عن أربع حروف';
          }
          return null;
        }


        String validateIdenticalPassword (String x, String y){
          if(x!=y){
            return 'يجب أن تكون كلمتي السر متطابقتين';

          }
                    return null;

        }



}