Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E9EE81BDF
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Feb 2026 16:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKMmnngBhWpOt/252laRpZ8t9NodmQCqM6r8cB+voCg=; b=cNTENg49M6aVB7
	Xca27VPh6uzR1ot12h2IU3Y2SuO3FBZVFVbjVH/2A5YTr5SL5gonrPRfvPD6O/Ob6zBWAjo0BlFcA
	/zIH3OskeCw/o73rQUZuNXiBcCY6v1KaRzV9vucgooycC1Ho/+kqH7R4XmH105Bx6gnYCg804uCdz
	nufQY5m5cvwy0AB7YJnkh1geMicjG73duHqULLekdwwifLbrHxKomS/sNNz5W+yF7UknwStqLGpN6
	z2hdVNr4CojE3Y+BXxUe1xIMTS/IVxEfiplMhz9xP+mGyX2JVinDFYHOncrZdsqgGPjXQt1IlCEMX
	LCnfrc7sxvY9BAak7Z5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpUXS-0000000FjHt-3Dm5;
	Mon, 09 Feb 2026 16:55:06 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpUXO-0000000FjGd-2udW
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Feb 2026 16:55:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1770656100;
 bh=zz3AMZ0HmTG5KFhjHjUTlb4v4iJbRMJpAGoMJExp25U=;
 b=Hdbz3Ga5GBQ6D5YxtGkIPBwqng2bnKwOPdzZma8go18pdwvMa5oyAwBeqQLurLw1yHzvq6oKR
 qmeFyP24nBhZz8XADcSvNUMcgmKh1Aybo9pxdWnTsYHQxzhBfPYTDsXFPOsWOOZp7W/gfOMBbvG
 i7BAsowKXWggXVI9Is3iZYoQ2ldSn22nudPgXiU8qVT7Nl7VFgezcP+3ckvGYNXqHqoteA/mXdx
 8UOW/j2CI2QmAWsLUhlTilN0a8pMGoTiWx3J1LmIiym8+hLtFjeYrXndsvp58jP2EGJNWSTLwNO
 YGem51ALlZJ5xRh27wpstjOYR4QI1UnQrsriLkKRt1VA==
X-Forward-Email-ID: 698a115f438a0e4c5804a258
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e58ebe6e-1de7-4b72-bf5e-e93cc19e69fd@kwiboo.se>
Date: Mon, 9 Feb 2026 17:54:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Enable OTP controller for
 RK3562
To: Heiko Stuebner <heiko@sntech.de>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>,
 "finley.xiao@rock-chips.com" <finley.xiao@rock-chips.com>,
 "w@1wt.eu" <w@1wt.eu>
References: <20260205212347.490636-1-heiko@sntech.de>
 <20260205212347.490636-2-heiko@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260205212347.490636-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_085502_728851_1D1CE829 
X-CRM114-Status: GOOD (  14.20  )
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

Hi Heiko,

Thanks for including my RK3528 patches :-)

On 2/5/2026 10:23 PM, Heiko Stuebner wrote:
> Enable the One Time Programmable Controller (OTPC) in RK3562 and add
> an initial nvmem fixed layout.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3562.dtsi | 46 ++++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3562.dtsi b/arch/arm64/boot/dts/rockchip/rk3562.dtsi
> index f84676b47b27..07626dba21bf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3562.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3562.dtsi
> @@ -1093,6 +1093,52 @@ sdmmc1: mmc@ff890000 {
>  			status = "disabled";
>  		};
>  
> +		otp: otp@ff930000 {

I noticed that the node names is not consistent for all three patches in
this series.

A quick grep at Linux src also suggest that efuse@ being the most common
node name used for similar otpc/efuse, efuse is also listed under
2.2.2 Generic Names Recommendation in DT spec.

Maybe the nodes should be renamed to use efuse@ or something else?

I am mostly concerned on what the name ends up as and how that may
affect U-Boot in a future dts/upstream sync. U-Boot currently have
limited otp nodes in soc u-boot.dtsi files for these SoCs.

Regards,
Jonas

> +			compatible = "rockchip,rk3562-otp";
> +			reg = <0x0 0xff930000 0x0 0x4000>;
> +			clocks = <&cru CLK_USER_OTPC_NS>, <&cru PCLK_OTPC_NS>,
> +				 <&cru PCLK_OTPPHY>, <&cru CLK_SBPI_OTPC_NS>;
> +			clock-names = "otp", "apb_pclk", "phy", "sbpi";
> +			resets = <&cru SRST_USER_OTPC_NS>, <&cru SRST_P_OTPC_NS>,
> +				 <&cru SRST_P_OTPPHY>, <&cru SRST_SBPI_OTPC_NS>;
> +			reset-names = "otp", "apb", "phy", "sbpi";
> +
> +			nvmem-layout {
> +				compatible = "fixed-layout";
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				cpu_code: cpu-code@2 {
> +					reg = <0x02 0x2>;
> +				};
> +
> +				otp_cpu_version: cpu-version@8 {
> +					reg = <0x08 0x1>;
> +					bits = <3 3>;
> +				};
> +
> +				otp_id: id@a {
> +					reg = <0x0a 0x10>;
> +				};
> +
> +				cpu_leakage: cpu-leakage@1a {
> +					reg = <0x1a 0x1>;
> +				};
> +
> +				log_leakage: log-leakage@1b {
> +					reg = <0x1b 0x1>;
> +				};
> +
> +				npu_leakage: npu-leakage@1c {
> +					reg = <0x1c 0x1>;
> +				};
> +
> +				gpu_leakage: gpu-leakage@1d {
> +					reg = <0x1d 0x1>;
> +				};
> +			};
> +		};
> +
>  		dmac: dma-controller@ff990000 {
>  			compatible = "arm,pl330", "arm,primecell";
>  			reg = <0x0 0xff990000 0x0 0x4000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
