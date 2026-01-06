Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC240C47BDD
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 10:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZzhhfXpBUYxBmHQSJznSiatxy6xEhIiGpnZL1JcD2o=; b=vavTbTk40qraMp
	s8ky2hd+ddVqXhqFtOqUPLZIdvZn0+O2sHF9In5J9ywwwxcDWC8IfIh2AndD5tWK5/ecl2XW9Jdum
	ElQYUdfe1Pep2zIlH6Fn1D0gDKS364ntXevPoN9ghzfH7ekUUVWnykJBX4ashHXkC8/5fb7scc/dd
	XCWOJb1mu3OoDdGJz31um2hsjBgShV3o8ogWWtC2iKhXccSu3fdLlxzsretjYFOS0aHrB5hYF448I
	EFyBx2XoNzipIvJBxUYdsIRm1gUJx6IGn/e8zY/uciLrbEmMDAsc4u6f0EVx1jJ1vfO9Lmb4obLse
	fzcd2wcXPEJ4pkz2ohmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd4Bm-0000000CmYW-2zj3;
	Tue, 06 Jan 2026 10:21:22 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd4Bk-0000000CmXr-411i
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Jan 2026 10:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1767694880;
 bh=x+Xak7wAR/JIg71hAoKMeJB5ByPewgiifbgu+4ypQ9g=;
 b=VcHEkyWs9VPDtuha5i2APpfASmm7gKH2e4NodxyeQVJfd5Jh9pj4GFtA53MSRWXeE568Am52k
 mSh+tl8c0q5Uj3AZpd6YKUDVfRjT3aqXBVTIe1grwtKA/414LlhBVM/OQpZQwBiQY7OjWDecS0K
 eKsAY7XHTXnr++oDfgQv0BvCqLJLucLs3dDFBcH5NKSO4tEJiFG//4EYzj5PJ0JVWDX25iMiT1k
 Q1+zSXCk+r2EkmZfpudelI/Vc6GIyTieTVEt4KWNzO29ED2TdSUgxPfltxuKVQpJTd+EtobxItn
 3bk1+isU38Y8CzuW4HJln0CQs1tcQstjWa7Gjl9OKK8g==
X-Forward-Email-ID: 695ce216a05bf2602ae3708a
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.2.1
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <1c5005b7-ceb9-4915-ad58-a9aa86cce394@kwiboo.se>
Date: Tue, 6 Jan 2026 11:21:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: Enable PCIe for ArmSoM Sige1
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260106100000.225445-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260106100000.225445-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_022121_149121_F029F536 
X-CRM114-Status: GOOD (  14.28  )
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

Hi Chukun,

On 1/6/2026 11:00 AM, Chukun Pan wrote:
> Enable the RTL8125 network controller and corresponding PHY
> connected via PCIe on the ArmSoM Sige1.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

This matches what I currently have in my pending to do final test and
then sent out branch at [1], so this is:

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

For the remaining RK3528 boards we should split up the pciemX_pins
pinctrl group similar to how it has been done for RK3588, as there are
freeze issues in U-Boot or problem using strict GPIO usage in Linux if
we do not property configure the reset-gpios pin to GPIO func.

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20251219-rk3528/

Regards,
Jonas

> ---
>  .../boot/dts/rockchip/rk3528-armsom-sige1.dts  | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
> index 6e21579365a5..c41af8fc0c8d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
> @@ -232,6 +232,10 @@ sdio_pwrseq: sdio-pwrseq {
>  	};
>  };
>  
> +&combphy {
> +	status = "okay";
> +};
> +
>  &cpu0 {
>  	cpu-supply = <&vdd_arm>;
>  };
> @@ -293,6 +297,14 @@ rgmii_phy: ethernet-phy@1 {
>  	};
>  };
>  
> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie20_perstn>;
> +	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&vcc_3v3>;
> +	status = "okay";
> +};
> +
>  &pinctrl {
>  	bluetooth {
>  		bt_reg_on_h: bt-reg-on-h {
> @@ -324,6 +336,12 @@ r_led: r-led {
>  		};
>  	};
>  
> +	pcie {
> +		pcie20_perstn: pcie20-perstn {
> +			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	rtc {
>  		rtc_int_l: rtc-int-l {
>  			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
