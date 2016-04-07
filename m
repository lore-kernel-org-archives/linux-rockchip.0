From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH] phy: rockchip-emmc: fix compile issue on arm64 platform
Date: Thu, 7 Apr 2016 19:01:35 +0530
Message-ID: <57066137.4040807@ti.com>
References: <1457425453-1996-1-git-send-email-shawn.lin@rock-chips.com>
 <570659EA.9000706@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <570659EA.9000706-l0cyMroinI0@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thursday 07 April 2016 06:30 PM, Kishon Vijay Abraham I wrote:
> Hi,
> 
> On Tuesday 08 March 2016 01:54 PM, Shawn Lin wrote:
>> This patch rename "reg" property to "reg_offset".
>> We rename it to fix the compile issue on ARM64 platform:
>> (reg_format): "reg" property in /phy has invalid length (4 bytes)
>> (#address-cells == 2, #size-cells == 2)
> 
> Is the same node used for both ARM32 and ARM64 platforms?
> 
> Thanks
> Kishon
>>
>> This's because "reg" is very special one which should keep the
>> *-cells with its parent node and can't be overwrited even if we
>> do that explicitly. On 32-bit plafform, the default *-cells
>> fit for what we assign to "reg". But that's not correct for 64-bit
>> platform. So we can see two possible solutions to fix this problem:
>> A) make phy-rockchip-emmc as a child phy node and overwrite its
>> parent's #address-cells and #size-cells.
>> B) avoid using this special property.
>>
>> we use it just for passing on a offset for different Socs, and there's
>> no requirement to change the code to make phy-rockchip-emmc as a child
>> node. so choose option B) is sane.

I just looked at the Heiko's patch and it makes more sense to have the binding
that he described in his patch [1]. Can you fix it accordingly?

I seem to have only this patch and Heiko's patch for this -rc cycle. Once you
send your patch, I can send a pull request to Greg.

Thanks
Kishon

[1]- > https://patchwork.ozlabs.org/patch/601580/
>>
>> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> ---
>>
>>  Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 4 ++--
>>  drivers/phy/phy-rockchip-emmc.c                             | 2 +-
>>  2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
>> index 61916f1..ed964ef 100644
>> --- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
>> +++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
>> @@ -6,7 +6,7 @@ Required properties:
>>   - rockchip,grf : phandle to the syscon managing the "general
>>     register files"
>>   - #phy-cells: must be 0
>> - - reg: PHY configure reg address offset in "general
>> + - reg_offset: PHY configure reg address offset in "general
>>     register files"
>>  
>>  Example:
>> @@ -14,6 +14,6 @@ Example:
>>  emmcphy: phy {
>>  	compatible = "rockchip,rk3399-emmc-phy";
>>  	rockchip,grf = <&grf>;
>> -	reg = <0xf780>;
>> +	reg_offset = <0xf780>;
>>  	#phy-cells = <0>;
>>  };
>> diff --git a/drivers/phy/phy-rockchip-emmc.c b/drivers/phy/phy-rockchip-emmc.c
>> index 887b4c2..3f55c0d 100644
>> --- a/drivers/phy/phy-rockchip-emmc.c
>> +++ b/drivers/phy/phy-rockchip-emmc.c
>> @@ -186,7 +186,7 @@ static int rockchip_emmc_phy_probe(struct platform_device *pdev)
>>  	if (!rk_phy)
>>  		return -ENOMEM;
>>  
>> -	if (of_property_read_u32(dev->of_node, "reg", &reg_offset)) {
>> +	if (of_property_read_u32(dev->of_node, "reg_offset", &reg_offset)) {
>>  		dev_err(dev, "missing reg property in node %s\n",
>>  			dev->of_node->name);
>>  		return -EINVAL;
>>
