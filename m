Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC2B8C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jul 2022 05:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiUzt1wd+mQNJampVstabEXxUxEz2EXSwViPJiqP6rk=; b=GpSj5E1ZXba0iU
	UXUwIAtQpbxmOcV39bWiLm4oKOAioAbT9DD5SQ/xLYO+Qmo4rbiZt8Ml9q/bWgHmfGf6YHcunZ7l9
	Fv5U+8odLcDcwj/ctSRk2TTolQz7/fGOnV881RJeYVD0XelDWOHmuW2aDCYDb1u6Y6B1yqS4pUKLo
	umHH1moC7rzam8j3UwuACHe//I45KMukuwkQ9PODguU4pFI48Ys1fLVXbN8+m/yj+DXS/dsT7MJyU
	eIQQ+1wKG057Hja85PYpdAbjzVDXMuge1RMmkHJUR4NgivdN0Y6rF4h09YwME1FAKJJ9HV9ZmmktY
	UcEwTevIC8f1Up4STCxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oElck-000Clf-Ku; Fri, 22 Jul 2022 05:54:54 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oElcZ-000ChF-Ll; Fri, 22 Jul 2022 05:54:44 +0000
Received: by mail-wm1-x32f.google.com with SMTP id ay11-20020a05600c1e0b00b003a3013da120so4514955wmb.5;
        Thu, 21 Jul 2022 22:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wtRd1qvdAKI4EiqU/d5bQkZ1Mrj4m7B9tT4Xan5GhTI=;
        b=BDiR6U2zwdJvi1bgWd+EbtZ4G8s3dznN6s7t0FQJCYoSQz8HSSmBb2HTO6UuLVTXkW
         StUgQltjbn1CZPDKFsHKbs71rUcuhk/B0r4kJdlAi0W3A/b9DWFcbUn51Q3P6GoQYT+a
         m+V6vZv/3iAbNONDfOkFdn+5Q33GhIV5hurq0sOyYHDAatcuMy1XHlcQyzlqTBklZ4gG
         /8yGvtOYjtauBPkc8yTRDWAXD12Iqche042qwU4EYH94m0Z7jFq8DuREC8m4lg1ajV/A
         yL3vaxR3TyXnBLqkbL6VGqLSb1jKwYMKsmdvyPMfVarQ1Wk1PMpliIBConM9TW0ybohF
         lrBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wtRd1qvdAKI4EiqU/d5bQkZ1Mrj4m7B9tT4Xan5GhTI=;
        b=INbMSZyUYXg3+Cew6ZZvJk+kmJRcEq+W3viOWNkYg3I9n4/K8Qv4GBhSeG3x7LjkvQ
         TANFjAdrWow4iAEY4JK4sWJoQS+WH4GbflE0G32LpFJHkqmA66ACHwktQkbW/i1fSNkO
         E+A+vqiarGHtqmfaWT59njx7UPR6x5EE0IU+j7zBvI780+6slXwLNKzbUzLOnx4f9/yt
         xAdwwGreAE0WcfN1rFk44pTeX7/bbCMKBtXHHDPF7zTsg6d/SL8JNiV+PBxNV+fHxfNo
         B247AkoLJyASTkLNtpRFczWzUQyiPGrZiVTIl9haBSuJAKhMtKCaUGRXBru1E4ZWTisk
         taOA==
X-Gm-Message-State: AJIora8WenrmAcvkbGI3ctlcLOHGwH5IJ1Zsv9XQn9LQoDAdbk1z2dY9
	WCZfQ1IesS8pFQ/IEmqabFaTGVsrU7+CpKfwrSc=
X-Google-Smtp-Source: AGRyM1sk5ZU8IaLqqOKTh8qEVRx2CGlK0jDA7F9hx80lQ4G89IRyzzwbhpGCOInmUan1a4J3jx8v3pPF7yFxyL4Fyao=
X-Received: by 2002:a05:600c:6014:b0:3a3:14c9:bef1 with SMTP id
 az20-20020a05600c601400b003a314c9bef1mr10924439wmb.112.1658469279167; Thu, 21
 Jul 2022 22:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220721044307.48641-1-frattaroli.nicolas@gmail.com>
In-Reply-To: <20220721044307.48641-1-frattaroli.nicolas@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 22 Jul 2022 07:54:28 +0200
Message-ID: <CAMdYzYohVLwOu94tv1FV9FVO7TRjBhA0nH6nWOgRCpBrxcujqg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on quartz64-b
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	devicetree <devicetree@vger.kernel.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_225443_733570_4DBE5BAA 
X-CRM114-Status: GOOD (  18.42  )
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

On Thu, Jul 21, 2022 at 6:43 AM Nicolas Frattaroli
<frattaroli.nicolas@gmail.com> wrote:
>
> The previously stated speed of sdr-104 is too high for the hardware
> to reliably communicate with some fast SD cards.
>
> Lower this to sd-uhs-sdr50 to fix this.

I can confirm this is necessary. Thanks!

Tested-by: Peter Geis <pgwipeout@gmail.com>

>
> Fixes: dcc8c66bef79 ("arm64: dts: rockchip: add Pine64 Quartz64-B device tree")
>
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index 02d5f5a8ca03..528bb4e8ac77 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -506,7 +506,7 @@ &sdmmc0 {
>         disable-wp;
>         pinctrl-names = "default";
>         pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> -       sd-uhs-sdr104;
> +       sd-uhs-sdr50;
>         vmmc-supply = <&vcc3v3_sd>;
>         vqmmc-supply = <&vccio_sd>;
>         status = "okay";
> --
> 2.37.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
