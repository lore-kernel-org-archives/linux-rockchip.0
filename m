Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E189CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u73W4xFjJ1Tl2I1TUar95s6RhKI7RhbDy1lVwtXhRs=; b=LGeZ6Jjm5S5YcT
	2Lq9rE002xs3iNYAe5UBCrLq9hCslGEkQQPbH4JbyYefayJ77c8wyR6fYBjGigpF87ZcWP0qSM6sv
	xp1zSQkq5kYHt5lnHZOoIgqGFjuFdse+wbCTuFbLkJmh55ZiRY6BaPnK4NfwW4OBX52Dg7x0iTS4S
	betI7FmWatMYq2PjElcUgVbqnIlO718I1j/F2zy2OxY74nN7nTZ52+MZpZ0lBmWjPO3UpC+ehnbOi
	uIP9bXYR59IcTwbv1CHxnTuo/lCEQ4TQU7G4moEOJADvEqm8GiEOTFKMvUPvedvp59ko5hzcJVK5+
	9imcpck99lk/tOdVKNFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIh20-00000006ZHW-0NZi;
	Tue, 11 Nov 2025 05:35:04 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIh1x-00000006ZGb-0ZHT
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:35:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 6C5A940ECE;
	Tue, 11 Nov 2025 06:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762839297; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=E9TSrt8q+mnKODPec5cjVu2veF9my9LdKC7wQR+Fgvg=;
	b=CfO2VZVx3din76NPZgSFF9QAALaSZvaMxOk8Rhp+ogJWvmpcSk6n6ccVO03xBNrFnHVTIE
	KtVmXkDgqFBPS66DAxWtTwU7zV9qv7V1/ayioSjKKL4833jmYqjTo83c4ISpeeI5M00vmi
	XHyn3DrchjdJ/vKPDN2B3SitEzant1roeB43iltPr39rNHf4NwJoCZOamJwI9y3byrCG3Z
	h3Wqa5TXPVKO6pU04Nj8p7sP/JoT/V5apWuN1gXej/KqalMTPWSbkcxJxe2KnHBm5IFki6
	lWzQeZfQ7EbMu2Z2Ab+TjSfXBOQOAJGCrb0XciE68x8zmYh/Bzz5NVynX6ezHw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-3-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com> <20251111050924.54880-3-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:34:54 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <4d54b6ff-ab3e-4e0e-5ae7-200caf9528b8@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add eeprom vcc-supply for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_213501_350703_A0270397 
X-CRM114-Status: GOOD (  12.53  )
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

Hello Naoki,

Thanks for this patch.  Please, see one remark below.

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> The VCC supply for the BL24C16 EEPROM chip found on Radxa ROCK 5A is
> vcc_3v3_pmu, which is routed to vcc_3v3_s3 via a zero-ohm resistor.
> Describe this supply.
> 
> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
> Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19

The same suggestion about using explicitly placed references, from
the patch 1/4 in this series, applies here as well.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 428c6f0232a34..041a0fff22ccb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -233,6 +233,7 @@ eeprom: eeprom@50 {
>  		compatible = "belling,bl24c16a", "atmel,24c16";
>  		reg = <0x50>;
>  		pagesize = <16>;
> +		vcc-supply = <&vcc_3v3_pmu>;
>  	};
>  };
>  
> @@ -600,7 +601,7 @@ regulator-state-mem {
>  				};
>  			};
>  
> -			vcc_3v3_s3: dcdc-reg8 {
> +			vcc_3v3_pmu: vcc_3v3_s3: dcdc-reg8 {
>  				regulator-name = "vcc_3v3_s3";
>  				regulator-always-on;
>  				regulator-boot-on;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
