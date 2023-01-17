Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8837C63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 12:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qA/yude2c/hTqVOoXczwL7G5zPEJA0TBhviDrRnVCvw=; b=oDPHJj4hbVjQzQ
	TG1UcAixDNEpL/wlf5NDox+l7zD6IoB1opsSTptdtlqhTFUfk5OzqYMPjPQbOZuc67OCR/aPHyD/n
	+7Gpac2QMgqFiGzFCK/DH1KVnZYngcK7Yk7nRccMG8ewHhnaj2D5RC9+Gi3xjLS+rSZ2Yyw+9iHBJ
	2DAmg5E2iykJou3CX7VDi7QCtpHSD3/edq9/EIvskEU/NUZ9AjoN06n3P0cd/QlItUG5L83FnqIr6
	one90rji4Xx/0yCvcwtZd34s3JlmLzDtFNCotwvrVrSBwcUCGMlrau6EL/0dQfDgc4t+DW60xKiqU
	iOw+OSS2Or6KmF6jAHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlSc-00EFhw-6y; Tue, 17 Jan 2023 12:53:06 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlSZ-00EFfp-9r
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 12:53:04 +0000
Received: by mail-yb1-xb35.google.com with SMTP id d62so17688652ybh.8
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 04:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9LkkVvu7FzyrV007GCsU3N43wRkzk8+7MQtFApKS2m4=;
        b=UizF4D/yzPWU0fN9GtaOBMa7MKxVrVmvQL7aB64c96fCbS9KlX6vOdjFZcDuOTJdkb
         nOzyuKDFtgjWhwLSJqaPsg7aNq5StexZtkZ6rabuZTQIKXd6oS5xNZHce4q6t7YdzvnL
         DLDdeLuWkKWYD8QPScaYZc+bOKxlyU0d7827w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9LkkVvu7FzyrV007GCsU3N43wRkzk8+7MQtFApKS2m4=;
        b=M/kCIn7NelT5oR/ukTuETHWmd/GmKbRm8Hwr0+/+iyjl/eJn0MlFr9KOp0cmRbHQAY
         SnKO8mbKajvLuT7itC1uvd0xILioJ+a73Z+gnAG0lOUU/v9pfiI+ROUbd5MxZQIIBHMe
         mM9MEOemsGAsq5Oeaq7ezQQmfJ77U0/x4IG26+v2VM1X/KnSLpJNJH1MIHOdXmlioUrF
         qaAQjSZxIB80p4ZnRyKGYYhgQztzKRTmNeU4AvmMHx7YVCy6bawHmE63VBlPLUTR7jxl
         pD4rYddzW+PGW6Z/xvfqRMboGPBfJn9VpQyYyk4PFT1ws5EUUqZ3qN/lBIxpM2SAZEoY
         YyaA==
X-Gm-Message-State: AFqh2kojwM/B1MbcjbhKz+U+OkTST9pyZIfSR/IA9udT1tKka5DiBP8/
	BBzc22na4/sB4zq4ZZWZypV0ERvP9IC6eQwvqq7Yeg==
X-Google-Smtp-Source: AMrXdXuvT722mszRvsUSt3tgCxVajblDhyvGk41E1NwYt/EcPhEax8gX4KsXUJ0YcvBue9FF75Y36pFYBLusIgQKdLM=
X-Received: by 2002:a25:bd54:0:b0:7d3:851c:e744 with SMTP id
 p20-20020a25bd54000000b007d3851ce744mr469784ybm.84.1673959981220; Tue, 17 Jan
 2023 04:53:01 -0800 (PST)
MIME-Version: 1.0
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-4-jagan@amarulasolutions.com> <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
In-Reply-To: <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 17 Jan 2023 18:22:49 +0530
Message-ID: <CAMty3ZD_LWBR2+fu41Z5LEBcNw1KXEaY8P92Ypa-4rg2t8BH_A@mail.gmail.com>
Subject: Re: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for
 Radxa CM3i
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_045303_379938_0372C03A 
X-CRM114-Status: GOOD (  19.18  )
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

On Tue, Jan 17, 2023 at 4:37 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/01/2023 11:55, Jagan Teki wrote:
> > Fix the model name and compatible strings for Radxa CM3i SoM
> > and Carrier board based on Radxa recommendation.
> >
> > Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> > Cc: Chukun Pan <amadeus@jmu.edu.cn>
> > Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
> >  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> > index 225dbbe4955d..0c9a918b809a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> > @@ -7,7 +7,7 @@
> >
> >  / {
> >       model = "Radxa CM3 Industrial Board";
> > -     compatible = "radxa,cm3i", "rockchip,rk3568";
> > +     compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
>
> Nope, second radxa is redundant.

It is not redundant, Product name and vendor name is same. Vendor name
is Radxa and product name is Radxa CM3i

>
> >
> >       aliases {
> >               mmc0 = &sdhci;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> > index a4c33310ca42..8ca15b723799 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> > @@ -4,8 +4,8 @@
> >  #include "rk3568-radxa-cm3i.dtsi"
> >
> >  / {
> > -     model = "Radxa E25";
> > -     compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
> > +     model = "Radxa E25 Carrier Board";
> > +     compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
>
> NAK. You just changed it in patch 2. Don't add broken compatibles in one
> patch (cm3i) and fix them next one. It's like adding intentional bugs
> and fixing them immediately...

I did squash this with previous patch but the check patch showing
warning to separate the dt-bindings patch from actual devicetree file
change.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
