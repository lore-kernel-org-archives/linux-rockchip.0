Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADD69CAC58D
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 08:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/NEBvsRfXUgg6BoMZyQf7NFWSLMQZpJknoP2cBK0kM=; b=grQIlMo3Z+G/Zo
	QsMss53HHkiMv6HcJQf/eOiOvSySSLxo2WFfLcR1sGN4j5i68hbD6DRIt5KCA09wcC51k5up4zkEc
	jOyjODDds3lcdYUG/MqF8GOIqQYIDkoqGB4zVyxP+6XTq6CEXCbObmsoybzF2xVStK+uJ4ZxVl8hl
	I/biKf+bn1QcBGpPjgE+2SSpyku75tXH+Xk8iqpYyXJ3mBOj0Km44OOH2mKfZ69uGwkaA7oSsajfs
	7ZX/YX5O52VzFzbLOmjsPRzAEnkx8acwHf3604KSV6bR5sGdcU19+siePWWc3SX/1kGPjTgxR6e6q
	vvzUyWF+CCXDb03mDvTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwcv1-00000001tZR-3gS4;
	Thu, 11 Sep 2025 08:44:39 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwcuy-00000001tWW-2yQm
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Sep 2025 08:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1757580276;
 bh=71L95gSKTmlkjoVh2fs/9dex/A1y0fWYRyHyjXcBq4g=;
 b=G4Fs0xF/OzW3gRg2dz/jBTNpIV962sQvofl8FXG5P69dzXTu1wi9EUn34gQE8InYNeZXVL3GT
 WZ7yXkUMrVvLX6YdsBwEf1p/DbjBNpsu0go5uQiieu9xcDxTAzlRhbok/vg7ZbGVRvU3C8ge+aS
 jdPNrcYbsPlDaB6UHUEmUwr+vGa/WfhMvftCqOkzSb3C4b2mNxoM37Zh3oqImH3KhaR9WrWwcC+
 lerSRk8aIWyQqWnyhHWU46wP52EeXYFzqR5ZR1t5Zc6Mc0FFu/be3AUx02xadC7Q7/DIPsZkxMI
 UfF8Qr0tA9ED5M0io4cgfK3Ap8dMsWea5CIGPcfR6tAQ==
X-Forward-Email-ID: 68c28be303561882c9813720
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.14
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <59cff81f-4be2-45e7-bc41-60fb52bfc6ca@kwiboo.se>
Date: Thu, 11 Sep 2025 10:44:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add PCIe Gen2x1 controller for
 RK3528
To: Yao Zi <ziyao@disroot.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>
References: <20250906135246.19398-1-ziyao@disroot.org>
 <20250906135246.19398-3-ziyao@disroot.org>
 <38e80b6d-1dc9-47a8-8b23-e875c2848e6e@kwiboo.se> <aMKAvCglcaC6-00k@pie>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <aMKAvCglcaC6-00k@pie>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_014437_089249_87F8CDE6 
X-CRM114-Status: GOOD (  22.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 9/11/2025 9:56 AM, Yao Zi wrote:
> On Wed, Sep 10, 2025 at 11:29:00PM +0200, Jonas Karlman wrote:
>> Hi Yao Zi,
>>
>> On 9/6/2025 3:52 PM, Yao Zi wrote:
>>> Describes the PCIe Gen2x1 controller integrated in RK3528 SoC. The SoC
>>> doesn't provide a separate MSI controller, thus the one integrated in
>>> designware PCIe IP must be used.
>>>
>>> Signed-off-by: Yao Zi <ziyao@disroot.org>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 56 +++++++++++++++++++++++-
>>>  1 file changed, 55 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
>>> index db5dbcac7756..2d2af467e5ab 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
>>> @@ -7,6 +7,7 @@
>>>  #include <dt-bindings/gpio/gpio.h>
>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>  #include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/phy/phy.h>
>>>  #include <dt-bindings/pinctrl/rockchip.h>
>>>  #include <dt-bindings/clock/rockchip,rk3528-cru.h>
>>>  #include <dt-bindings/power/rockchip,rk3528-power.h>
>>> @@ -239,7 +240,7 @@ gmac0_clk: clock-gmac50m {
>>>  
>>>  	soc {
>>>  		compatible = "simple-bus";
>>> -		ranges = <0x0 0xfe000000 0x0 0xfe000000 0x0 0x2000000>;
>>> +		ranges = <0x0 0xfc000000 0x0 0xfc000000 0x0 0x44400000>;
>>
>> We should use the dbi reg area in the 32-bit address space, please use:
>>
>>   ranges = <0x0 0xfc000000 0x0 0xfc000000 0x0 0x4000000>;
> 
> This seems strange to me. I read through TRMs for RK3562 and RK3576, and
> found it's common for Rockchip SoCs to map DBI regions of PCIe
> controllers to two separate MMIO regions, but am still not sure why it's
> necessary to use the mapping in the 32-bit address space.

I prefer the use of the 32-bit address range to ensure better
compatibility with bootloaders and possible other OS that may have
issues with regs in 64-bit address range.

E.g. U-Boot have had issues with accessing >32-bit addressable range in
the past, use of the 32-bit dbi range ensure we can use pcie in
U-Boot without having to possible patch DT in a <soc>-u-boot.dtsi file.

Regards,
Jonas

> 
> However, I'm willing to follow the vendor's decision here in order to
> avoid unexpected problems. Will adapt this in v2.
> 
>>>  		#address-cells = <2>;
>>>  		#size-cells = <2>;
>>>  
>>> @@ -1133,6 +1134,59 @@ combphy: phy@ffdc0000 {
>>>  			rockchip,pipe-phy-grf = <&pipe_phy_grf>;
>>>  			status = "disabled";
>>>  		};
>>> +
>>> +		pcie: pcie@fe4f0000 {
>>
>> With the dbi reg area changed below, please update the node name and
>> move this node to top of the soc node.
>>
>>   pcie@fe000000
>>
>>> +			compatible = "rockchip,rk3528-pcie",
>>> +				     "rockchip,rk3568-pcie";
>>> +			reg = <0x1 0x40000000 0x0 0x400000>,
>>
>> We should use the dbi reg area in the 32-bit address space, please use:
>>
>>   reg = <0x0 0xfe000000 0x0 0x400000>,
>>
>>> +			      <0x0 0xfe4f0000 0x0 0x10000>,
>>> +			      <0x0 0xfc000000 0x0 0x100000>;
>>> +			reg-names = "dbi", "apb", "config";
>>> +			bus-range = <0x0 0xff>;
>>> +			clocks = <&cru ACLK_PCIE>, <&cru HCLK_PCIE_SLV>,
>>> +				 <&cru HCLK_PCIE_DBI>, <&cru PCLK_PCIE>,
>>> +				 <&cru CLK_PCIE_AUX>, <&cru PCLK_PCIE_PHY>;
>>> +			clock-names = "aclk_mst", "aclk_slv",
>>> +				      "aclk_dbi", "pclk",
>>> +				      "aux", "pipe";
>>
>> In my U-Boot test I did not have the pipe/phy clock here, do we need it?
> 
> Just as mentioned by Chukun, the clock should indeed be managed by phy
> instead of the PCIe controller. Will fix it as well.
> 
>> With above fixed this more or less matches my U-Boot testing, and is:
>>
>> Reviewed-by: Jonas Karlman <jonas@kwiboo.se>
> 
> Much thanks.
> 
>> Regards,
>> Jonas
> 
> Best regards,
> Yao Zi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
