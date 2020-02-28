From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
Date: Fri, 28 Feb 2020 14:28:36 +0100
Message-ID: <229c3511-d99d-8bac-6241-0088c5fc13ef@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <20200228061436.13506-3-jbx6244@gmail.com>
 <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

When I look at the review process of rk3399-evb.dts
it is mentioned here:

https://lore.kernel.org/patchwork/patch/672327/

>> +	model = "Rockchip RK3399 Evaluation Board";
>> +	compatible = "rockchip,rk3399-evb", "rockchip,rk3399",
>> +		     "google,rk3399evb-rev2", google,rk3399evb-rev1",
>> +		     "google,rk3399evb-rev0" ;
> 
> can you check against which compatibles that coreboot really matches?
> 
> As we said that the evb changed between rev1 and rev2, I would expect the 
> compatible to be something like
> 
> 	compatible = "rockchip,rk3399-evb",  "google,rk3399evb-rev2", 
> 			"rockchip,rk3399";
> 
> leaving out the rev1 and rev0

The consensus in version 4 ends in what is shown in the dts file, so I
changed it in rockchip.yaml. Things from the past maybe can better be
explained by Heiko. Please advise if this patch needs to change and in
what file.

Kind regards,

Johan


On 2/28/20 1:42 PM, Robin Murphy wrote:
> On 28/02/2020 6:14 am, Johan Jonker wrote:
>> A test with the command below gives this error:
>>
>> arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: /: compatible:
>> ['rockchip,rk3399-evb', 'rockchip,rk3399', 'google,rk3399evb-rev2']
>> is not valid under any of the given schemas
>>
>> Fix this error by adding 'google,rk3399evb-rev2' to the compatible
>> property in rockchip.yaml
>>
>> make ARCH=arm64 dtbs_check
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index d303790f5..6c6e8273e 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -509,6 +509,7 @@ properties:
>>           items:
>>             - const: rockchip,rk3399-evb
>>             - const: rockchip,rk3399
>> +          - const: google,rk3399evb-rev2
> 
> This looks wrong - the board can't reasonably be a *more* general match
> than the SoC. If this is supposed to represent a specific variant of the
> basic EVB design then it should come before "rockchip,rk3399-evb" (and
> possibly be optional if other variants also exist).
> 
> Robin.
> 
>>           - description: Rockchip RK3399 Sapphire standalone
>>           items:
>>
