Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93486C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 00:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AeA8kC9c3q6HFNHud2v+gSMZtxtgK86fPyVqUJ17u94=; b=y8bbFSaFKoR492
	EZnLacOwj7/H0RmHZaSRV3un++m85YeC1WXLNZU6djr5lFlMlfB4Ya8DI5wft2RsIeoOygKblctPY
	/wsO8/K/0YI75eFHt8KaEH9B3Q2T3gwyRAamtx2c2w2QInqJG0wxebBpy01ShyRieZnC9VqRe8UUO
	XpbYwX6peW3ODiIkTqp1+Q7ALcs1TyWH6BxSvQmPaczhXrg4+U/URMwLlIh93DrQ5thd6+4TKT1es
	ixmYp9teAKNp0gdXaeEhR5QG7D6jl4qHt/7MwkQi8PPgGLvppYooMQNuu8iCxndriHE43DrWH0MEf
	4X4U+szB+yTBmgxr+Nsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUzUt-00EXoX-FP; Thu, 23 Feb 2023 00:30:07 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUzUj-00EXkJ-19; Thu, 23 Feb 2023 00:29:58 +0000
Received: by mail-wm1-x329.google.com with SMTP id p18-20020a05600c359200b003dc57ea0dfeso8218486wmq.0;
        Wed, 22 Feb 2023 16:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SHpIcdcfu2QwzrdJ1uxO4xocrtfBEjCJ4RxVjp9sgOU=;
        b=Yf87uJwGYliNd36S+sLgfWBAXTfQdhy1VzIRp0KbxYTA13uM2Vk4OWlfwfZ8E+sBw9
         rHf5SOJ5EFBzJFv3MrdQdMWxy7N+gTQMaeCms+aC8UnM5WpNHutGu+wxxa4g1UQkE0UJ
         GxAKSo9TTFoLNVici8/GAA152nmmzB67+508enIPb9kr/wuqWrwWk57PYWIB95w0r6jL
         kHqrqL0FiTh4Nna2PE029De37GGCBBmz6m/4WuLZQixpJxBhDSPCAwYUmn5IzmxJwdiI
         +wLbt0zc9XlQaGHE2rkNJHpS64o3L3karkRifDEBat9HU2Hfu++S6F1PJ3RG5AngjB2a
         riGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SHpIcdcfu2QwzrdJ1uxO4xocrtfBEjCJ4RxVjp9sgOU=;
        b=zietCrIdr5J/1kbm8L7njbQ95HmiKzhiRCx+oLhtoVo3ElmV2JL/ZBcynAOyPyCyxD
         hHnge2zXowKaQ+VCC7fmCymInwlE6dVdhfEaTYgDmtC3wmXZcBXnKHqEpUiDC0EeXnyw
         O2DBo6HMA6y0JKu1BVBiw7+P5bL+K3WUuZUAgz/zxnrucUsAydD/yjHhU1v5ZUGGIxeo
         Avxzy1mEvd+KooVOl3qgmYt7SiytxhXgzxIE1xFiyrgyBwI83qknY/pBzgstntHplZvz
         +tiDeicDvRrx0aEX+DfueR0lg/+Sr2bhhMIJIw4TEXKnhH+0dmwnAtoKmSUW1B0Q1PtS
         g5bQ==
X-Gm-Message-State: AO0yUKUYyVZgn3JJx1VKKP8c4UnMbMG4kwtYDPH657t1s+hCTANnFLPT
	/1AzcXfZ/09oQrb6GRCu+QXloW9Ua0U3Pg3hoUyG6KmRLBc=
X-Google-Smtp-Source: AK7set9+nca08kKpI5Y0oddvQU4q0ca+jRk0wYzFD9uskGKw3ptLxN4A9hJufyTdsalyMjsQtHx1TFHNYxnv/hI5Q6Q=
X-Received: by 2002:a05:600c:34d2:b0:3df:f9e6:72d6 with SMTP id
 d18-20020a05600c34d200b003dff9e672d6mr432569wmq.102.1677112191500; Wed, 22
 Feb 2023 16:29:51 -0800 (PST)
MIME-Version: 1.0
References: <20230215010914.104754-1-frattaroli.nicolas@gmail.com>
In-Reply-To: <20230215010914.104754-1-frattaroli.nicolas@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 22 Feb 2023 19:29:39 -0500
Message-ID: <CAMdYzYrZvHLFdhn_qYadYbDDnnC+16pkM_kWXiU16u_6XNHEMg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Always enable sd regulator on
 SOQuartz CM4IO
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_162957_093984_502D2BA0 
X-CRM114-Status: GOOD (  21.27  )
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

On Tue, Feb 14, 2023 at 8:09 PM Nicolas Frattaroli
<frattaroli.nicolas@gmail.com> wrote:
>
> The 3.3V line coming from the SDMMC regulator is required for USB
> on the CM4IO board. Without it, the USB mux (U13 in the CM4IO
> schematic[1]) that's used likely remains unpowered, and no USB
> devices show up.
>
> The consequence of this was the behaviour of an inserted SD card
> allowing USB to work, while pulling it out turned off all USB
> devices.
>
> [1]: https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf

I disagree with this. According to the datasheet u13 and half a dozen
other devices are powered by 3.3v sourced from the SOM. sdmmc_pwr
triggers SD_PWR_ON which serves only to provide an enable signal to
u18, the regulator that powers the sdmmc slot from the same 3.3v. If
you are having problems with USB working, you likely have something
else going wrong here.

Very Respectfully,
Peter Geis

>
> Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> index 263ce40770dd..88a61fa8a95c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> @@ -135,6 +135,12 @@ &sdmmc0 {
>  };
>
>  &sdmmc_pwr {
> +       /*
> +        * USB also needs this regulator to work on this board, so just enable
> +        * it unconditionally.
> +        */
> +       regulator-always-on;
> +       regulator-boot-on;
>         regulator-min-microvolt = <3300000>;
>         regulator-max-microvolt = <3300000>;
>         status = "okay";
> --
> 2.39.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
