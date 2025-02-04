Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D41AC02197
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Feb 2025 11:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+pU7hvFbtUKrzc5JtHixvSLiP0FzW79jakejSWkVeUk=; b=Fk4v+qL+RmhbvOCB56bRfNw6Ay
	q8d9xlmVzKrIjCp/kzN+/3r4Q+nStQvwOPm1Hgdg/tq+lVMlI3NW6s6/uN2EI42QADMeLmdS/Ur3T
	GSDtT/MwSDNkiWGU4gVFgtH70JbA9QOJwEAr7u/LPYDdFv8pi5SnY4jWMBxTGz2vYNkobZUfrwKm4
	a2nVEj27ACeTivYlCO6hIPOwJajSpB8EuBDe0zsp0wzbltE4smDYMtcU0W1OkjsvB0DOwJOIJJ2xJ
	Cf5GTFB5AeScIySWbNBOWfwzT7gNqxV302Bowy20OUfcrgq4fIfKtVYqkyIJCoJt8CHtcuDkELKyQ
	DsZN+qzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfHAT-00000000HFO-39J2;
	Tue, 04 Feb 2025 11:32:37 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfH8u-00000000GyN-3F8m;
	Tue, 04 Feb 2025 11:31:02 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1738668658;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T0ByFQ1hfW7/1rl9uUZJmLCdb3tgomr5Qb5aE/AvrfQ=;
	b=VwNSkxldkoL/CDcEHD9jZJfQTdQ47coBYK0EPMRHI4bJUy28UlVOhmdoDPCZKyyvqmy54e
	TsczfWyHbPejwr69j7cemJBteYrz2F31ECEvkuvrzhMs2l0YJGlx9FU4QnckKYDrbMzXBH
	ZD5caEb8HCPGpGcmML7+yYKDCsSjx1ZD7nvRI9HWNW3H2jwNIwJLG30yxpPjhqORw/Imwf
	kw+6FjCeRB1zf0V3PhZMb6jGBTbgKNzcCUDwnJV6kmNH3iCwIECgUWxPtWX+pjUYvzCnA6
	CctHHSWNHL6nn2qkeo24+RR5YRFZYeo0Ms3QghqPQqLD5yuTKRQ78ZUmf9t6KA==
Date: Tue, 04 Feb 2025 12:30:58 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jagan
 Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, Michael Riesch
 <michael.riesch@wolfvision.net>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Quentin
 Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v4 1/4] arm64: dts: rockchip: add overlay test for
 WolfVision PF5
In-Reply-To: <20250131-pre-ict-jaguar-v4-1-c971e2852e8d@cherry.de>
References: <20250131-pre-ict-jaguar-v4-0-c971e2852e8d@cherry.de>
 <20250131-pre-ict-jaguar-v4-1-c971e2852e8d@cherry.de>
Message-ID: <78c91324ff7b2a8e8f0d32b8e84b01e8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_033101_096884_0F0594CA 
X-CRM114-Status: GOOD (  13.22  )
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

On 2025-01-31 11:40, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> The WolfVision PF5 can have a PF5 Visualizer display and PF5 IO 
> Expander
> board connected to it. Therefore, let's generate an overlay test so the
> application of the two overlays are validated against the base DTB.
> 
> Suggested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> b/arch/arm64/boot/dts/rockchip/Makefile
> index
> def1222c1907eb16b23cff6d540174a4e897abc9..bba9b2f1c761040545bea561878e9b63f8c29488
> 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -128,8 +128,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
> @@ -170,3 +168,18 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += 
> rk3588s-orangepi-5.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
> +
> +# Overlays
> +## To build one or more overlays, overlay application tests must be
> added below.
> +##
> +## dtb-$(CONFIG_ARCH_ROCKCHIP) += <name of overlay application 
> test>.dtb
> +## <name of overlay application test>-dtbs := <base>.dtb
> <overlay-1>.dtbo [<overlay-2>.dtbo ...]
> +##
> +## This will generate each individual DTBO listed as a dependency of
> +## <name of overlay application test>.dtb **AND** make <base>.dtb keep 
> its
> +## symbols (like when DTC_FLAGS has -@ passed).
> +
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
> +rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
> +	rk3568-wolfvision-pf5-display-vz.dtbo \
> +	rk3568-wolfvision-pf5-io-expander.dtbo

Obviously, virtually the same comments [*] I made on the patch 3/4
from this series apply here as well.

[*] 
https://lore.kernel.org/linux-rockchip/77b5d0efa6e56bb391575aeeb4d1be80@manjaro.org/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
