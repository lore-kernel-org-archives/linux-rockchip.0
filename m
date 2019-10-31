From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH] phy: phy-rockchip-inno-usb2: add phy description for px30
Date: Thu, 31 Oct 2019 18:32:22 +0530
Message-ID: <1b31d4fe-fd78-700a-6e53-298bd85d7a27@ti.com>
References: <20190917082532.25479-1-heiko@sntech.de> <1974613.gpRaQal8Ma@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1974613.gpRaQal8Ma@phil>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 31/10/19 5:38 PM, Heiko Stuebner wrote:
> Hi Kishon,
> 
> Am Dienstag, 17. September 2019, 10:25:32 CET schrieb Heiko Stuebner:
>> The px30 soc from Rockchip shares the same register description as
>> the rk3328, so can re-use its definitions.
>>
>> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> 
> could you pick this up as well please?

merged now, thanks.

-Kishon
> 
> Thanks
> Heiko
> 
>> ---
>>  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt | 1 +
>>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c                    | 1 +
>>  2 files changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>> index 00639baae74a..541f5298827c 100644
>> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>> @@ -2,6 +2,7 @@ ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
>>  
>>  Required properties (phy (parent) node):
>>   - compatible : should be one of the listed compatibles:
>> +	* "rockchip,px30-usb2phy"
>>  	* "rockchip,rk3228-usb2phy"
>>  	* "rockchip,rk3328-usb2phy"
>>  	* "rockchip,rk3366-usb2phy"
>> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> index eae865ff312c..680cc0c8825c 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> @@ -1423,6 +1423,7 @@ static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
>>  };
>>  
>>  static const struct of_device_id rockchip_usb2phy_dt_match[] = {
>> +	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
>>  	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
>>  	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
>>  	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
>>
> 
> 
> 
> 
