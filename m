Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E07C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8erhEYeq36e+zMxYnbMv0KdrPNp9HpK88t5U0n+JFM=; b=hXoVxF1/6Og0yu
	zVjSMmSJg2MLAftCEJUk5DLRXgU3LkuTvfD99bCVXK96aP1kI3ZPhMSvvxui1YSPSYEgSUTEWlP1W
	CJeC0uWO/NU76BYlYiS5RzaIIOtj4u/fZ8b6wIELo6q6mlXdkSrRXUFAh9n1eFd+/b+ATQGxNHrIE
	mzd/dFWPCt5nkC1yPThudwTrUt2TjSv2Ohr9qtuL/8pqpkzdulNIdZLHlIJpaBftdrV+P0UkQY5md
	xfjFZuJh30/Nz7825xrX4EykjghMzxh7uOIp+aaTJNulwh6TKeDoU3EnpaHqSnDXYNm3bHx0FZ1i7
	0Fo5XTl4VsPCx3hX5NXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFBc-007AWT-Av; Tue, 10 Jan 2023 14:01:08 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFBX-007AUV-Ah
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 14:01:07 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-4d4303c9de6so4056487b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 06:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cTd66jKz4KsZyqN8B/YkkUACqAiuZizBOAJvACAkBxg=;
        b=aIFk15a4imSPftRnezXf4PjAty+9YfBMqX3ux2KWPtiYYx9gc2hnvHkZtVuh/u/NTu
         f67DP8xH02iLAliBfHs5+7grh2oqRe6IbWj471ytYWDj8dlznC3FzOnRdiAKNji1PD+B
         IsWjDVgrF4HoH9da9KLqI5fPO2B0T5sGAD5ihCLfJVej0Et+tWm6oQOLrO4MlCKy+iu7
         O/VULzjRav5t5R19YzpL7rlLXwerFK4fGHnOg1aRD267Amrwe/CjAet7nOsUSY/+P3wG
         U1YOMTSb2w6ZHlC0Oj7DWr3RHftFcALIltj8AgjcSEO7qxaFkoNPknyVoxjO1Cnlij++
         4JTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cTd66jKz4KsZyqN8B/YkkUACqAiuZizBOAJvACAkBxg=;
        b=L6vQEEwZTKchOLtXQ72Ep0OQ35Q5E8P9IlUA6r3eZOTqAuMVMknEyB85nSZMkGRmw1
         dDk5aeHEz6axUKzBL+nNgkKSKncrDL0uwdj+tMIbH5cf+BWYCialktQ1o6D1NLNmxDG+
         pyEwHLWg0XLGWK4I4v5UIBEOYvuWNRpgRW4bwL+fpDt75qKj/L4h8+DPxOpMnklSzU2R
         N53MuBIWCXBrUM1+Dh6QE0ux3tUbf12B1G2uIMpw0SbX7gN4tJzFK6OOPMB85CGdtsNH
         eUUZfJa+5GWTMnhSF6qMY1eYWh6qVkJsf2rX9GyG2USh0MEdvvxUoJPfIlNYBpC1I2Zk
         gaVA==
X-Gm-Message-State: AFqh2kpSBUiFSHg4LCR9uM+vmVjOXsSoXazlxNBfRrN3dYu8yZ/FnRwN
	cq8Cbg6rN9kv2rRexExfaV9WQlgIz6eLWewUxfZpMQ==
X-Google-Smtp-Source: AMrXdXte7/yVmWym4kBD4FeqBuwxA2OpS1LIITSRjqcaj7G0ZDI7m0a7+72sliLh2TY5Jg5OumbH6emc5Qy5i0kdbuI=
X-Received: by 2002:a81:7585:0:b0:358:36cc:b6cf with SMTP id
 q127-20020a817585000000b0035836ccb6cfmr2398180ywc.505.1673359261105; Tue, 10
 Jan 2023 06:01:01 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-8-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-8-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 10 Jan 2023 19:30:50 +0530
Message-ID: <CA+VMnFxb1P4tP5sef5ME3jCcCq2Y3rD-0bpv1B0TsUZ3RXXuqg@mail.gmail.com>
Subject: Re: [PATCHv8 7/7] arm64: dts: rockchip: Add rock-5b board
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, Michael Riesch <michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_060105_769581_1305647F 
X-CRM114-Status: GOOD (  18.29  )
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

On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> From: Christopher Obbard <chris.obbard@collabora.com>
>
> Add board file for the RK3588 Rock 5B board. This is a basic
> implementation which just brings up the eMMC and UART which is
> enough to successfully boot Linux.
>
> The ethernet controller is connected via PCIe so support will
> come in a follow-up patch.
>
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 44 +++++++++++++++++++
>  2 files changed, 45 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 87a853435142..c5bdd0176ce0 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -83,4 +83,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> new file mode 100644
> index 000000000000..d2f1e963ce06
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -0,0 +1,44 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588.dtsi"
> +
> +/ {
> +       model = "Radxa ROCK 5 Model B";
> +       compatible = "radxa,rock-5b", "rockchip,rk3588";
> +
> +       aliases {
> +               mmc1 = &sdhci;

I think sdhci - emmc has to be mmc0 due to boot priority.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
