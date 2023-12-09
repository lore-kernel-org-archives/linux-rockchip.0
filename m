Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A0FBC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 23:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M90YS4sxHWCHlPTXie/dXN9e4T6gDJ1FgoIbd1mTLv4=; b=PsroqqfO/VWrArlOEAH/ioiWlO
	8Fb7Gwp7lYu7RLHE+hZlt963wWltgW34DhzQUegQx+L6DoqaF8o5NCSCACp3dZqYh9/XF4c+GX90x
	xYcuTwtKs1ahbL8p0Hv+yCzllEMTRHyNRWOe5ohWLmnXzfWWaHs2K2ASXEZ211dDo5MJKC1erbI2r
	CfgU7d/LjnwNQYLBgG59tuRQci6dvCC5OYRP1Iooj7YmIIapBZhYEaQfd/bvK3gOJAPwo4wO2/0Zn
	PnsRICuU6a8eb96nKB/gEDXeAOiwKZvVevlNKuzeB8RhnIV8I/l3oehLLT2Iel23xTgWQ/K84rKL/
	D4xl6Zzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rC6zN-000ipX-28;
	Sat, 09 Dec 2023 23:44:05 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rC6zJ-000ip4-2x
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Dec 2023 23:44:03 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702165436;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B2LjM9kLddV3nWEq7a7Mfq3FRRtXLfau/i6hlC2gKKs=;
	b=YmgWZZGloi+9A+lD73Jev2cdJ3BQQakA1rTxvxx19v5cbqO4q7MAFQltdVWCSx7xwhUTR+
	M5vJYkFWB/iUQOR3lorqftfiKhLm9qJZhGCrEufMisaurE7s3jH0/thkRyXEb47ZilOjxD
	T8ytxkCKIAGWi67Z9KFF2dYRXZSxboMPlDzXKn5SjxPj+egzYQBa5bD5AWYF92L0oluhQU
	tfO7CNAOCvT1CjxGMxzbZ0M3sMijjJeSBopGMNLGIXGgJDZFzAfXgzBMDYXuCivlY285BS
	BwLuVRP6nQzSoORWx0zp0QNgZ0Lku02wgi5p1AuSE1oXwfSUvSfwBXwYv1Avcw==
Date: Sun, 10 Dec 2023 00:43:55 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <20231209233536.350876-1-i@shantur.com>
References: <20231209232109.348999-1-i@shantur.com>
 <20231209233536.350876-1-i@shantur.com>
Message-ID: <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_154402_128401_3D2B1DC7 
X-CRM114-Status: GOOD (  18.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Shantur,

On 2023-12-10 00:35, Shantur Rathore wrote:
> USB port regulators should be controlled by PHYs
> so we remove always-on property and let PHYs manage the
> regulator.
> 
> Typec port has misconfugred phy-supply and now that we are
> removing regulator-always-on, we need to fix the phy-supply
> so the PHYs are able to turn power to type-c port.
> 
> Signed-off-by: Shantur Rathore <i@shantur.com>
> ---
> + devicetree
> 
> After this patch the ports were confirmed to power up and down
> in u-boot when doing usb start and usb stop.
> At boot the regulators were off, the devices connected weren't
> powered up, on usb start the PHYs are able to power on the ports
> and on usb stop they were powered down.
> 
> At the boot, the ports were powered down which was again powered
> up by Linux kernel when booting up.
> 
> 
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index bca2b50e0a..bd2824aa48 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_host_en>;
>  		regulator-name = "vcc5v0_host";
> -		regulator-always-on;
>  		vin-supply = <&vcc5v0_usb>;
>  	};
> 
> @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_typec_en>;
>  		regulator-name = "vcc5v0_typec";
> -		regulator-always-on;
>  		vin-supply = <&vcc5v0_usb>;
>  	};
> 
> @@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
>  	};
> 
>  	u2phy0_host: host-port {
> -		phy-supply = <&vcc5v0_host>;
> +		phy-supply = <&vcc5v0_typec>;
>  		status = "okay";
>  	};
>  };

Quite frankly, something doesn't feel right there.  Would you mind, 
please, to place this patch on hold until next week or so, at which 
point I should have enough time to go through the RockPro64 schematic 
thoroughly once again, and test the patch in detail?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
