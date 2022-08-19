Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2004C32789
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 23:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILtRcKHe6gv0S7YvHv26aY+GkbAe1EBKtTHWfLxncgQ=; b=cA7GaBhU+JjV9K
	M/7bTp2rwXkp34rRbq3fMEh+BTOzmiOtWm43zfbWKDaV4Z4/XNlSAMlTaWD2fo9HuTWfh9N7zL7uy
	Sb7BWuKO1tDBx5U6dRY7aQuLJqpXuqHdhjaB0XjFngRTpZJ5ERqV1ScaWxrpgTKjceZHRTyN6IFVu
	Vj50a/MyqaAwOZywyiGhpdObF+nKEPvyvwJclZ3TyL+dNcrL5glbdPzHO1fmnHw+P1aDSCByhuLMK
	+huUdxyZKwmnUWPaTX/UgZ5jKcbJ4/YaD5BKm5Lh69XsRp57VkgiUxCuAt4Pv/kfwQ/W2rqfu+oe8
	czOrI6luv2mAzImZ3aOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPBnh-00Dcet-Gh; Fri, 19 Aug 2022 23:53:17 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPBnU-00DcYn-7u; Fri, 19 Aug 2022 23:53:05 +0000
Received: by mail-wr1-x42b.google.com with SMTP id k9so6808068wri.0;
        Fri, 19 Aug 2022 16:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=RdfAKZQznic4l7A9/kRG5QY4nU50ENbgtfWawpPow5k=;
        b=FdD91Opw+16zzYnyUIGovktOSZ74Mk0ec0Fls9gvgH0KKtQyfCLn1m+cRxR6oysMXC
         yGGU9J9R8unA3IUtx9cpklthMvzDFYmBtj81IUHa0wlr9JQjSqTnKhweVqjLVD4urebx
         vJn6WFxZUaApyoEHQPJKAek5nLS2o0lylOv2ANdV3MfIRz9z30QqRlEkxAGXSVTc2hBF
         dMWnqWgQnk0jE53SWDCK0ouyiEKZlxXoiofbux9xYy3f0YwrcD+PsoX0bs0KF9GiTXKb
         zjDsiXn0KdR+EobU/BFLMyY/lkAPokQenlFJrRXLgjI4bdlTRosh7H6dedEuaLcEI10U
         KJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=RdfAKZQznic4l7A9/kRG5QY4nU50ENbgtfWawpPow5k=;
        b=dQ4nJT3nhKLwNnyuk8cMTlNYtkx8uatRuvgK3/cQomcs5t8iysKs1kiKswb1weWcNa
         kn+R0LqHH/v2PH6g0LkQjuadXG1Wv+SiPS/gRDW3nh48Raiz8Rz1zjy1jfVr5U0qEJ3+
         0mLyx4oNQIETCDvTgeQ2lkRfsSbIPcpFDQhfaW6hNZUB7SORdaZa1j0u+f3YVX5//V7N
         w2U1SEHWWQOr2r4irA+wQ5R8kejgKLWpxy+22dNDQfDFn2mWMELxqEY6AVWhXWM04OQt
         y4yCaacgU1FbJJD6JRBUicZJOsahmEXUIAH59q14kScdSL6iap+GSRiCT2tpw+Yi1sod
         RbDw==
X-Gm-Message-State: ACgBeo104uzFl+NEpUtFIu73BWEg5JUtWi2ChAq0BIQUWg01yBUea9QM
	Cm7CwY8DMOoGdqfANPeH/MI=
X-Google-Smtp-Source: AA6agR7r9bkZln4j8hk3SwOU78qTwcgwSEjpa2V/GaN+ThnndFTR9Wd77OqlWLlU4bHd0zBIOHAD6g==
X-Received: by 2002:a05:6000:2c8:b0:221:7aea:c87f with SMTP id o8-20020a05600002c800b002217aeac87fmr5022605wry.242.1660953182731;
        Fri, 19 Aug 2022 16:53:02 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id a18-20020adfdd12000000b002205cbc1c74sm5155714wrm.101.2022.08.19.16.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 16:53:02 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on quartz64-b
Date: Sat, 20 Aug 2022 01:53:01 +0200
Message-ID: <830493549.YKYzsnH2yD@archbook>
In-Reply-To: <20220721044307.48641-1-frattaroli.nicolas@gmail.com>
References: <20220721044307.48641-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_165304_319188_531D4137 
X-CRM114-Status: GOOD (  17.32  )
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

On Donnerstag, 21. Juli 2022 06:43:06 CEST Nicolas Frattaroli wrote:
> The previously stated speed of sdr-104 is too high for the hardware
> to reliably communicate with some fast SD cards.
> 
> Lower this to sd-uhs-sdr50 to fix this.
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
>  	disable-wp;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> -	sd-uhs-sdr104;
> +	sd-uhs-sdr50;
>  	vmmc-supply = <&vcc3v3_sd>;
>  	vqmmc-supply = <&vccio_sd>;
>  	status = "okay";
> 

Please apply. Thank you!



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
