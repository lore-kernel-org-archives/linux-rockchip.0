Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B18D4ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 01:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gaNl52kag5iSkWK35asa5WHCFePRG7/tApu7JQnYLw=; b=hcoEIag/HdPpiL
	FoIAOdPJt8UBsmdd5jnQlOdSLj0OjDj17nI8l40jPeXappKREp7q4xDqcBXPjKq1pfB9ZSR+0F6Cb
	Wy4rsz4c+t3UBv3lkKpOZHKLwXabfSrFHvjhm4sMBxoCW+68V4VjsNtXv39GpfEZZ/McutCpA66GT
	9yF5HZ25up79RBy59RsZ3sBQ4v7Y8OrWvS9oZ1G+vntB1Mvlzl9Vtm3c/FX9NyJugridoM7WojFWk
	iO4BMYJxsfgtzTfo+v54hkxfjnNYSvijKUqtek5OS5O/a0KAFRwBiRQI3f3xlmVSTca2TuY0GU465
	WN2CVvsQo5eWfF0jnipQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZMp4-001TRD-7a; Sat, 17 Sep 2022 01:40:46 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZMom-001TFQ-Pp; Sat, 17 Sep 2022 01:40:30 +0000
Received: by mail-wr1-x431.google.com with SMTP id g3so17714013wrq.13;
        Fri, 16 Sep 2022 18:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=n9n8tkr4zFtS3Gqksx14AwLvb33nBr6DZn7TLl3O0b8=;
        b=lIPZjSDpaEpyLGb30qkJZZTnrdz4VXMJzfCY4sA8XK7Lk3pWzWBBV0HneizM0Y27YU
         zzk9S3FLFJnnX43iFrRFtv41QZS2O+rOcQXm4KVPiVvILCE/gE1gGP+Ac2ew8AR18xyY
         Y9bn/cLS3oKmIQY/0z7+MBPLy5uuQ3j7h2aLvFkj/yqUNc0ez8JhhI0zKPuXVDc/i+GD
         OcgDae24sXTk07m2cPbBiqg/zFAYu5yZ0wmpv6s7Hjszq6XIksAV7+7Ps+YCJVKDzf+D
         wVvWXeaX8EWiAl0jaKTxnKzxt/v7fsekXh8/MvJYMEoSmsAt2fJPWjmNuuYNbTeUHClO
         SvPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=n9n8tkr4zFtS3Gqksx14AwLvb33nBr6DZn7TLl3O0b8=;
        b=57DIAdna8+/r6kzaUEidqUrv2bcJLe0NCsadJjQtROZSq3NiiYzjONG7cs56qKnkOM
         qNwP6dIxgFKGjXIHUHMFBvApmzpzg1UGBLZb/IEMmlwT1qWrJ4CVAS6/ckmH0ZeJHNzN
         KQr5aekx3FrqeMgf5ua7kgSWk0g9IUd4OMNlCZI96ILFH0ySXfPCYsdRyeUR9EsWZT4k
         FrmVFJBSnJeVbif/Ffux6wmD+RdVuBbRuMyomAkM6x5dq0r7oDVe4atfIfen1xMYXIZy
         cWGGkDnY+9v3BYy9OI4T0znyooFpKHh77EPdZkiXdPjP4l+D2ffAH7BOzmcs8Vquc3cc
         RJ8w==
X-Gm-Message-State: ACrzQf35q61UvzkZ/IQiv6/f75dinQ50RSqYRGrpBAH6mVn1cwjepKbm
	qcd/3sTgcfple3cKwZMdomq8o5qFx+PlvKlDyNkpypflb4s=
X-Google-Smtp-Source: AMsMyM4v0vEb/RzDwFzi8XMH1K+KBvYVKNWnXZo51ZhOesp+cgw/Z7rqE2eD3iHn7w+A53KKYl9PRUoK4tGE2QHMBOs=
X-Received: by 2002:a5d:598a:0:b0:22a:45af:1ce2 with SMTP id
 n10-20020a5d598a000000b0022a45af1ce2mr4387382wri.539.1663378818197; Fri, 16
 Sep 2022 18:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <YySdhiqZgXpl0q/g@lab.hqhome163.com>
In-Reply-To: <YySdhiqZgXpl0q/g@lab.hqhome163.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 16 Sep 2022 21:40:07 -0400
Message-ID: <CAMdYzYovjSMZgpWd+ATWsv2piNc2ZtnKfB1cTBukvsnfG41g_w@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: k3566-quartz64-a: adds sata variant
To: Alessandro Carminati <alessandro.carminati@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_184028_854742_EC5D1CD1 
X-CRM114-Status: GOOD (  20.87  )
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

On Fri, Sep 16, 2022 at 12:06 PM Alessandro Carminati
<alessandro.carminati@gmail.com> wrote:
>
> The Quartz64 board is built upon Rockchip RK3566.
> Rockchip RK3566 has two combo phys.
> The first connects USB3 and SATA ctrl1, and the second PCIe lane and SATA
> ctrl2.
> The second combo phy is hardwired to the PCIe slot, where for the first,
> the hardware on the board provides both the USB3 connector and the SATA
> connector.
> This DT allows the users to switch the combo phy to the SATA connector.

Good Evening,

NACK to this whole series. Neither works correctly in the hardware as
is, and USB3 was decided to be left enabled as the SATA port will be
removed completely in the next revision.

Very Respectfully,
Peter Geis

>
> Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile                   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts | 9 +++++++++
>  2 files changed, 10 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 8c843f6fc3cc..1d5dd91d1a34 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -60,6 +60,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-usb3.dts
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-sata.dts
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> new file mode 100644
> index 000000000000..8620df7ec01e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3566-quartz64-a.dtsi"
> +
> +&sata1 {
> +       status = "okay";
> +};
> --
> 2.34.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
