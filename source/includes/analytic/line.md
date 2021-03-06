## Line

> Example Request

```shell
curl -X GET \
  'https://#{workspace_api_domain}/api/public/v3/analytic/entity/video-quality/line?start_date=2018-11-01&end_date=2018-11-19' \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
```

```ruby
require "uiza"

Uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
Uiza.authorization = "your-authorization"

params = {
  start_date: "YYYY-MM-DD hh:mm",
  end_date: "YYYY-MM-DD hh:mm",
  type: "your-metric-type"
}

begin
  response = Uiza::Analytic.get_line params
  puts response.first.day_time
  puts response.first.value
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

from uiza.api_resources.analytic import Analytic
from uiza.exceptions import ServerException

uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
uiza.authorization = "your-authorization"

try:
  res, status_code = Analytic().get_line(
    start_date="2018-11-01 20:00",
    end_date="2019-11-02 20:00",
    type="video_startup_time"
  )

  print("res ", res)
except ServerException as e:
  raise e
except Exception as e:
  raise e
```

```php
<?
require __DIR__."/../vendor/autoload.php";

Uiza\Base::setWorkspaceApiDomain("your-workspace-api-domain.uiza.co");
Uiza\Base::setAuthorization("your-authorization");

$params = [
  "start_date" => "YYYY-MM-DD",
  "end_date" => "YYYY-MM-DD",
  "type" => "rebuffer_count"
];

try {
  Uiza\Analytic::getLine($params);
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
import io.uiza.model.Analytic;
import io.uiza.model.Analytic.*;

public class Main {

  public static void main(String[] args) {
    Uiza.workspaceApiDomain = "your-workspace-api-domain.uiza.co";
    Uiza.authorization = "your-authorization";

    Map<String, Object> params = new HashMap<>();
    params.put("start_date", "2019-01-01");
    params.put("end_date", "2019-03-01");
    params.put("type", Metric.REBUFFER_COUNT.toString());

    try {
      JsonArray response = Analytic.getLine(params);
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

const params = {
  'start_date': '2019-01-01',
  'end_date': '2019-03-01',
  'type': 'rebuffer_count'
};

uiza.analytic.get_line(params)
  .then((res) => {
    //Identifier of get_total_line
  }).catch((err) => {
    //Error
  });
```

```go
import (
  "github.com/uizaio/api-wrapper-go"
  "github.com/uizaio/api-wrapper-go/analytic"
)

func init() {
  Uiza.WorkspaceAPIDomain = "your-workspace-api-domain.uiza.co"
  Uiza.Authorization = "your-authorization"
}

rebufferCount := uiza.AnalyticMetricRebufferCount
params := &uiza.AnalyticLineParams{
  StartDate: uiza.String("2019-01-01"),
  EndDate: uiza.String("2019-02-28"),
  Type:&rebufferCount,
}
response, err := analytic.GetLine(params)
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
  var getLine = UizaServices.Analytic.GetLine(new AnalyticLineParameter()
  {
    StartDate = @"2019-01-01",
    EndDate = @"2019-03-01",
    Type = LineType.RebufferCount
  });

  Console.WriteLine(string.Format("Get Line Success, total record {0}", getLine.Data.Count));
  Console.ReadLine();
}
catch (UizaException ex)
{
  Console.WriteLine(ex.Message);
	Console.ReadLine();
}
```

> Example Response

```json
{
    "data": [
        {
            "day": 1541548800000,
            "total_view": 4
        },
        {
            "day": 1541635200000,
            "total_view": 5
        },
        {
            "day": 1541721600000,
            "total_view": 5
        },
        {
            "day": 1541980800000,
            "total_view": 1
        },
        {
            "day": 1542240000000,
            "total_view": 1
        },
        {
            "day": 1542499200000,
            "total_view": 1
        },
        {
            "day": 1542585600000,
            "total_view": 1
        }
    ],
    "version": 3,
    "datetime": "2018-06-18T03:17:07.022Z",
    "policy": "public",
    "requestId": "244f6f8f-4fc5-4f20-a535-e8ea4e0cab0e",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**Get data grouped by hour.** Get data in time range. This help you to draw a line chart to visualize data

``` About grouped by hour algorithm, Uiza currently support upto 16 days (it's mean when your time range is lower than 16 days, data response will be grouped by hour. Otherwise, it will return and to be grouped by day). In case your requested timerange doesn't have data, API won't show it in response.  ```

**HTTP Request**

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/analytic/entity/video-quality/line```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |


**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **start_date** | *string* | Start date (UTC+0) with format: YYYY-MM-DD | **Yes** |
| **end_date** | *string* | End date (UTC+0) with format: YYYY-MM-DD | **Yes** |
| **type** | *enum* | Value accept: [ **playback_failure_percentage**, **video_startup_time**, **aggregate_startup_time**, **exits_before_video_start**, **rebuffer_percentage**, **rebuffer_frequency**, **playback_failure_score**, **rebuffer_count**, **rebuffer_duration**, **upscale_percentage**, **downscale_percentage**, **max_upscale_percentage**, **max_downscale_percentage** ] | **Yes** |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **date_time** | *timestamp* | Time point |
| **value** | *number* | Value in time range  |
