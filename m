Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F17B2C36010
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Apr 2025 17:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/owV3W/Kkb3gnpRsgHArRpaxjzuww7wT1chdeHGoo8=; b=bgnVUA2EP0fZ4f
	LeOQxedBVgdVprL8lkWQawgkI/SHodQyS31DgnP9sIursWKiRWEbYnTTjDiEKetP0IQpbfJoapxzV
	V83LlcJaqs3xFT96ncjob4HIWFiVjTiQZ5r3K/XiNLxaarOn1pnvnP3YqMDKvcprCkze7MXliKWVP
	PTTMDBooLayOqUNrxhstcVuvu7VIcCV6MPEDMNl2uiQuIkspYHvs1EwWn1pJRsG3Y7gB4/k+jHjMR
	1dTGuZHOd/GZbHPg8+b/jHwGYlWaPB8POLbbO+AI6UCgqV+eACVenax3DbNGwMkQXSJopsZKeRfcu
	CPFEfAvDaOnCBKaTHj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzfg8-000000042RA-1zR3;
	Tue, 01 Apr 2025 17:45:36 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzfeL-000000042Ka-235k
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Apr 2025 17:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1743529423;
 bh=6BaPnjQcShc/TQj8w7bokIUcnPjhGONOza6lZPt107c=;
 b=mNDF7iJwmi535LpQ++STqNeyxdDUnUm3e1DOawsjHWQnMQ1iUFCQfn/EUYT7kiD2qk44sloGP
 ElwrgTxHF0/ir3LqdAkhcDVbVVdxNw8nPX37S4UynOf0U92uKoDXGSTNEmGUXw2HcdJbxCRtiGH
 pJMwTqclkcRrWTUhSosIJMNVQQo7e97sCoIxiV6er5p9qJG8t9zV+GqRsZDQbJNeL24DF+lL44Q
 T1pOqPH2X9jmgrBO4Gbm0OF2apYP5GJcU0M8SOIA8seAiKuM4bGPpjdG3/TYaxEE3TjWoHyVlUO
 oIhHao9e3jOgKOlpo5yXwdC4Wjh1+q3zBXmldJaa2Ygw==
X-Forward-Email-ID: 67ec25c900d8331c283c9f62
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.0.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <02f6e0e0-9cd8-425c-bad2-f061b601fdcd@kwiboo.se>
Date: Tue, 1 Apr 2025 19:43:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add DMA controller for
 RK3528
To: Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250401100020.944658-1-amadeus@jmu.edu.cn>
 <20250401100020.944658-3-amadeus@jmu.edu.cn> <Z-wj_eO6FGcwsEh6@pie.lan>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <Z-wj_eO6FGcwsEh6@pie.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_104345_613852_21595704 
X-CRM114-Status: GOOD (  15.42  )
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

On 2025-04-01 19:35, Yao Zi wrote:
> On Tue, Apr 01, 2025 at 06:00:19PM +0800, Chukun Pan wrote:
>> Add DMA controller dt node for RK3528 SoC.
>>
>> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
>> index 7f1ffd6003f5..c366766ee3f5 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
>> @@ -493,6 +493,24 @@ sdhci: mmc@ffbf0000 {
>>  			status = "disabled";
>>  		};
>>  
>> +		dmac: dma-controller@ffd60000 {
>> +			compatible = "arm,pl330", "arm,primecell";
>> +			reg = <0x0 0xffd60000 0x0 0x4000>;
>> +			clocks = <&cru ACLK_DMAC>;
>> +			clock-names = "apb_pclk";
>> +			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
>> +			arm,pl330-periph-burst;
> 
> Should this be moved above "clocks" line to sort the properties?

Not preferred according to [1], vendor-prefixed props is ordered after
non-vendor-prefixed props.

"""
The following order of properties in device nodes is preferred:
- "compatible"
- "reg"
- "ranges"
- Standard/common properties (defined by common bindings, e.g. without
  vendor-prefixes)
- Vendor-specific properties
- "status" (if applicable)
- Child nodes, where each node is preceded with a blank line

The "status" property is by default "okay", thus it can be omitted.

The above-described ordering follows this approach:
- Most important properties start the node: compatible then bus
  addressing to match unit address.
- Each node will have common properties in similar place.
- Status is the last information to annotate that device node is or is
  not finished (board resources are needed).
"""

[1] https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-properties-in-device-node

Regards,
Jonas

> 
> Thanks,
> Yao Zi
> 
>> +			#dma-cells = <1>;
>> +		};
>> +
>>  		pinctrl: pinctrl {
>>  			compatible = "rockchip,rk3528-pinctrl";
>>  			rockchip,grf = <&ioc_grf>;
>> -- 
>> 2.25.1
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
