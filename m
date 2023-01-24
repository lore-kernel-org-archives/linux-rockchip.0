Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6441AC38142
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jan 2023 12:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YX+PENC5cAFkUnojlEyzY28sPtD4sXHQIsZzAj109c=; b=Xk40vmwW5Ej9Zu
	XWOsdu9KmYH7GhMOgzZ5WaijmKp/j28+URQA0/c1p4Omig2C0Ffj04OPq1KAJwtAt/3aLyJm6Zacc
	r8zebDrecZbc/2FHpHuU7V1LSBb7YTdmFWFhZOmOsKd+8uyYJ1TisiMJ+4wEiQnNAGBJHIzBV3OEW
	LqIQUDndhSOD83+TTJr/7RXCOgA+c+lBs7oDA5yokpzASAjlP6kSEsUlrmLyn4vFyw0QTWMJx8wSt
	iBMWArYOZ44jEzf+rNK0w4M9EVsetftDJeiTzNzEGHTPtVWCTJE7g3W9xQgKgkziFHWCYtzY7EXbJ
	nTirkZBv/ZlBEjPRCJsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIsO-003oHi-Ab; Tue, 24 Jan 2023 12:58:12 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIs1-003o5Y-Bb
	for linux-rockchip@lists.infradead.org; Tue, 24 Jan 2023 12:57:55 +0000
Received: by mail-pj1-x102d.google.com with SMTP id nn18-20020a17090b38d200b0022bfb584987so350358pjb.2
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Jan 2023 04:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pHDwofD6SNKiSG9J7TUSJkrmFZQrL5w821eu/p8EPRU=;
        b=iPN6ih9dkMLk+5Z2aO/raD5la104GDCNl3CCUgRjXeNfrMc1eRRQLX+rW/a5QmZO+m
         B5bXAwh1T1YLSp3rlbm8FEnva/gJP3n3OZYoMOG77PVmiWJagWclMj6tHYAK+pMUsXE6
         +CjNrIrurjl+60nhpqO6rp6LooQAlirhjPvvmRM3LPQ4rAOOyT2ZBxeOjwqYIlfhL4lE
         CDYW1321n16C9CBrp3BhFS1Jp1ctyQTPyCxk6dKfdcYO6VyAQqB06pX4VPHDdtvEHyJp
         6Q3bbPNirD14g9/iLGGTr5bZQBj6ZQGdhdG6dDIzD6wr1RuFw1GLdUgOA8PWfnMm1Ojg
         KrTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pHDwofD6SNKiSG9J7TUSJkrmFZQrL5w821eu/p8EPRU=;
        b=fMfWbMIEsMrI/D6PF965myA1gDX/dW0zvTCWGdj1fSZiN1FllalNIFRuuAfLuRVM5c
         Yk3lYbZ6dgN72gDulolVQJeHkxwQRnTnSuoTpxL7Y03E9FfL4y9ovmeBmRis+w4iuwSP
         LI2tpwkEVW/KeUUbvnha4qjapOwoaA//m6YtvT7fiMG9nDRbF0QXktLonv1fgS7oUqc5
         dWamPlE2P5t3Hz4y95GhJRcCbVgiOFlEnMhhm0AiW1fRSI02EHnEHO2DKP6ZsY5+FXXX
         P1NLBm/ZH12iVQzRWRz5zX85IIGGcFuIbkom+LSNcnCVYM2tjnO5kf7v0T3UX3AUL7Y5
         y2jA==
X-Gm-Message-State: AFqh2krz0/fzcrSC7qsrv+2VeDJQguW8nYCps51Zd4ToP6mOd82n/cvu
	QHL/AXA7jYEXswo1aDNIelbd5B9tTKzjywKWhQx6cQ==
X-Google-Smtp-Source: AMrXdXsXrzgXKblU35lGXnG8geMzqwtmylKWGg/S46lL+qzXF/CIo+TO3fVEgZ6gox2a0BBdn7y53nUVeSWujIcNZtM=
X-Received: by 2002:a17:90a:730a:b0:229:7d95:a476 with SMTP id
 m10-20020a17090a730a00b002297d95a476mr3744415pjk.84.1674565066523; Tue, 24
 Jan 2023 04:57:46 -0800 (PST)
MIME-Version: 1.0
References: <20230120085722.171965-1-krzysztof.kozlowski@linaro.org> <20230120085722.171965-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230120085722.171965-2-krzysztof.kozlowski@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 24 Jan 2023 13:57:09 +0100
Message-ID: <CAPDyKFraR3BNa4874S4ZVHxTQNZWuSVOOpbGZ_Vnzfwe3ik7=g@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: mmc: correct pwrseq node names
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Tony Huang <tonyhuang.sunplus@gmail.com>, Li-hao Kuo <lhjeff911@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Markus Pargmann <mpa@pengutronix.de>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-actions@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_045749_476722_29CD3DEA 
X-CRM114-Status: GOOD (  15.26  )
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

On Fri, 20 Jan 2023 at 09:57, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Node names should be generic and should not contain underscores.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml   | 2 +-
>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-sd8787.yaml | 2 +-
>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml b/Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml
> index 911a5996e099..588be73168fa 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml
> @@ -41,7 +41,7 @@ additionalProperties: false
>  examples:
>    - |
>      #include <dt-bindings/gpio/gpio.h>
> -    sdhci0_pwrseq {
> +    pwrseq {
>        compatible = "mmc-pwrseq-emmc";
>        reset-gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
>      };
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-pwrseq-sd8787.yaml b/Documentation/devicetree/bindings/mmc/mmc-pwrseq-sd8787.yaml
> index 3397dbff88c2..b35e00e8c65e 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-pwrseq-sd8787.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-pwrseq-sd8787.yaml
> @@ -35,7 +35,7 @@ additionalProperties: false
>  examples:
>    - |
>      #include <dt-bindings/gpio/gpio.h>
> -    wifi_pwrseq: wifi_pwrseq {
> +    pwrseq {
>        compatible = "mmc-pwrseq-sd8787";
>        powerdown-gpios = <&twl_gpio 0 GPIO_ACTIVE_LOW>;
>        reset-gpios = <&twl_gpio 1 GPIO_ACTIVE_LOW>;
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml b/Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml
> index 64e3644eefeb..00feaafc1063 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml
> @@ -55,7 +55,7 @@ additionalProperties: false
>  examples:
>    - |
>      #include <dt-bindings/gpio/gpio.h>
> -    sdhci0_pwrseq {
> +    pwrseq {
>        compatible = "mmc-pwrseq-simple";
>        reset-gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
>        clocks = <&clk_32768_ck>;
> --
> 2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
