## Delete a callback

> Example Request

```shell
curl -X DELETE \
  https://#{workspace_api_domain}/api/public/v3/media/entity/callback \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "id":"c54f115f-87b4-420c-9e52-e8dffe32e022"
  }'
```

```ruby
require "uiza"

Uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
Uiza.authorization = "your-authorization"

begin
  callback = Uiza::Callback.delete "your-callback-id"
  puts callback.id
rescue Uiza::Error::UizaError => e
  puts "description_link: #{e.description_link}"
  puts "code: #{e.code}"
  puts "message: #{e.message}"
rescue StandardError => e
  puts "message: #{e.message}"
end
```

```python
import uiza

from uiza.api_resources.callback import Callback
from uiza.exceptions import ServerException

uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
uiza.authorization = "your-authorization"

try:
  res, status_code = Callback().delete("your-callback-id")

  print("res ", res)
except ServerException as e:
  raise e
except Exception as e:
  raise e
```

```php
<?php
require __DIR__."/../vendor/autoload.php";

Uiza\Base::setWorkspaceApiDomain("your-workspace-api-domain.uiza.co");
Uiza\Base::setAuthorization("your-authorization");

try {
  Uiza\Callback::delete("your-callback-id");
} catch(\Uiza\Exception\ErrorResponse $e) {
  print($e);
}
?>
```

```java
import java.util.*;
import com.google.gson.*;

import io.uiza.Uiza;
import io.uiza.exception.*;
import io.uiza.model.Callback;
import io.uiza.model.Callback.*;

public class Main {

  public static void main(String[] args) {
    Uiza.workspaceApiDomain = "your-workspace-api-domain.uiza.co";
    Uiza.authorization = "your-authorization";

    try {
      JsonObject response = Callback.delete("<callback-id>");
      System.out.println(response);
    } catch (UizaException e) {
      System.out.println("Status is: " + e.getStatusCode());
      System.out.println("Message is: " + e.getMessage());
      System.out.println("Description link is: " + e.getDescriptionLink());
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}
```

```javascript
const uiza = require('uiza');
uiza.workspace_api_domain('your-workspace-api-domain.uiza.co');
uiza.authorization('your-authorization-key');

uiza.callback.delete('your-callback-id')
  .then((res) => {
    //Identifier of callback has been deleted
  }).catch((err) => {
    //Error
  });
```

```go
import (
  uiza "github.com/uizaio/api-wrapper-go"
  "github.com/uizaio/api-wrapper-go/callback"
)

func init() {
  Uiza.WorkspaceAPIDomain = "your-workspace-api-domain.uiza.co"
  Uiza.Authorization = "your-authorization"
}

params := &uiza.CallbackIDParams{ID: uiza.String("your-callback-id")}
response, err := callback.Delete(params)
if err != nil {
  log.Printf("%v\n", err)
} else {
  log.Printf("%v\n", response)
}
```

```csharp
using System;
using Uiza.Net.Configuration;
using Uiza.Net.Enums;
using Uiza.Net.Parameters;
using Uiza.Net.Services;

UizaConfiguration.SetupUiza(new UizaConfigOptions
{
  WorkspaceApiDomain = "your-workspace-api-domain.uiza.co",
  Authorization = "your-authorization"
});

try
{
  var result = UizaServices.Callback.Delete("your-callback-id");

  Console.WriteLine(string.Format("Delete Callback Id = {0} Success", result.Data.id));
  Console.ReadLine();
}
catch (UizaException ex)
{
  Console.WriteLine(ex.Message);
  Console.ReadLine();
}
```

Delete an existing callback.

> Example Response

```json
{
    "data": {
        "id": "c54f115f-87b4-420c-9e52-e8dffe32e022"
    },
    "version": 3,
    "datetime": "2018-06-23T01:30:46.699Z",
    "policy": "public",
    "requestId": "f0d39d74-376f-4091-9da7-dc9a95f854fc",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="delete-button"> DELETE </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity/callback```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **id** | *string* | Id of callback setting| **Yes** |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Id of callback setting|
