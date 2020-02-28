From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: fix Rockchip Kylin board bindings
Date: Fri, 28 Feb 2020 13:50:11 +0100
Message-ID: <5d47cf5f-9ac4-cff4-340b-a2518a508738@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <73b41bd1-01e9-6af8-afc8-b1a96614d026@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <73b41bd1-01e9-6af8-afc8-b1a96614d026@arm.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2/28/20 1:35 PM, Robin Murphy wrote:
> On 28/02/2020 6:14 am, Johan Jonker wrote:
>> A test with the command below gives this error:
>>
>> arch/arm/boot/dts/rk3036-kylin.dt.yaml: /: compatible:
>> ['rockchip,rk3036-kylin', 'rockchip,rk3036']
>> is not valid under any of the given schemas
>>
>> Fix this error by changing 'rockchip,kylin-rk3036' to
>> 'rockchip,rk3036-kylin' in rockchip.yaml.
> 


> Although I can guess, it might be worth a note to explain why it's the
> binding rather than the DTS that gets changed here.

Hi Robin,

My guess is that given a look at the other boards the processor name
comes first and then the board name, so I changed it in rockchip.yaml.
But maybe Heiko can better explain what the naming consensus in the past
was.

Kind regards,

Johan

> 
> Robin.
> 
>> make ARCH=arm dtbs_check
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 874b0eaa2..203158038 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -443,7 +443,7 @@ properties:
>>           - description: Rockchip Kylin
>>           items:
>> -          - const: rockchip,kylin-rk3036
>> +          - const: rockchip,rk3036-kylin
>>             - const: rockchip,rk3036
>>           - description: Rockchip PX3 Evaluation board
>>
