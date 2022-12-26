Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83875C3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 11:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tqz2LEHfqVNwh5iwLmsqAc9eMyUex15t6Tf21aP+Z5g=; b=wWAfhgzk0A3F0c
	aF/CD6inXB6tggu0vwm+jM2cYDA4j+jXB+YY7vj/cL16GNqSEaePk33Im2TtOJEzRTvWLs/izOH5x
	BNz1V8JAhDr63oP+XoH4n7oASDCMcwm8rCUNuOI2T1ypGk/39Yx6t/xd0Mh+P08gYMJyiE3+Lhsee
	OoEzK2+bVq3jyYPe2Fy5tsxoyBXJ95HuutDKMvfvnwt5qJkFr/9NTRQR4p0X3MucyIPamj0GaxeBA
	3y2lhFe1REklejM6mnOPxYMnRas8twX/ET82fQU+ar5RnS3TlQrAgyKUGIvW393eQ1zdYozUQutAH
	GlVnUEVSkx1rLEb/7Shw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9lPO-003R9C-55; Mon, 26 Dec 2022 11:12:42 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9lP8-003R1q-4M
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 11:12:31 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d15so10488703pls.6
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 03:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7rZU9dTo4wiGfju+EwyLkXwgkgO09mbh8HYe4DpIC1w=;
        b=wTNiiwzt/3kspxRepwC1qVDxgDCwVGnFpuQ1eXIMlcaAuIHSpkyw/XlLbSm1ZP0B3I
         GlwC3aCchJJn6IYLy5ZLChBNDbOG8IjAiIr/TMUoZfdH9aF72YnYFO02Ql3ghe13h3qJ
         Z5awNX+Knrx9vtLeBheG8khM9CESWwj8/0DmJVL4VCLbSr38cacUOX9wYhTu5JUqqiiN
         wmAzq+rfAoww/vSGnSElcmAaAJyNopFw+Sldm9e/WM8yagDND0yiWHU1KSatLmUBye26
         3sxFKfDEaEt00UQHwezBKZUcGyCy5jLR0KP1F7syonxVNSKh3Uhg2b2SWL7EB0OG86+E
         ql6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7rZU9dTo4wiGfju+EwyLkXwgkgO09mbh8HYe4DpIC1w=;
        b=xQVM4bA5L9rFnNG7lEJFIdDzMTZtQDQ5u09RJGs9ZjvwK1U9lmt3/2wFuxlGcNOV3h
         rBf2OWUGN8K1BrJjJjKVi73TR+/o9gEkNSm7euaZy+c2c8TAW7t98oOip2y3FLcbkW0J
         JMYx/HdVORq0JhdWkGsmJS/bQrYs4P8bt9Tmx07RsOpdH4cgaOR+VkiA5OyIdV2M01DT
         4ZAJGy4nBGV8EI8J5g7GHHlAVvHId/EWXmGTjZffAF9zQpUrnJKMs0npVjj/ZRJ07UcC
         YfuopkHZrBIPF3hxhmLr6r2aDllIbonfJayVjvFFArKE4tM62BhToethEn/1cgolZTG0
         ofSQ==
X-Gm-Message-State: AFqh2kotbklXoMI1HQf1R/7hx+Ww6WHj9Zywi5qNAkkS4eFR3D9gdpsr
	6AyMSCDALf7BvqWc1y4evay2DQLUaTgMGkSn4qRK6Q==
X-Google-Smtp-Source: AMrXdXvBV4igNAgXU1JyRiRa+FjCfnx1fNUHpTVHdpvoED/8dwGrSMCqMjrYL0r7mq0TDsyV/NPDQIp+e8Le7sjgZBY=
X-Received: by 2002:a17:903:4294:b0:192:7e73:f21c with SMTP id
 ju20-20020a170903429400b001927e73f21cmr137439plb.23.1672053143381; Mon, 26
 Dec 2022 03:12:23 -0800 (PST)
MIME-Version: 1.0
References: <20221226063625.1913-1-anand@edgeble.ai> <20221226063625.1913-3-anand@edgeble.ai>
 <CA+VMnFwq=iHBMtpu6QQKdPDoMz8zU-4WyNOJmvHaCRgXx4RVNg@mail.gmail.com>
In-Reply-To: <CA+VMnFwq=iHBMtpu6QQKdPDoMz8zU-4WyNOJmvHaCRgXx4RVNg@mail.gmail.com>
From: Anand Moon <anand@edgeble.ai>
Date: Mon, 26 Dec 2022 16:42:12 +0530
Message-ID: <CACF1qnf+gAWqAqrqDVd_rtUJvnkB4soyxURkOuikmaRrrt1JDg@mail.gmail.com>
Subject: Re: [PATCHv2 linux-next 3/4] ARM: dts: rockchip: rv1126: Add GMAC node
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Richard Cochran <richardcochran@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_031229_088425_145344DF 
X-CRM114-Status: GOOD (  15.36  )
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

Hi Jagan,

Thanks for the review comments.

On Mon, 26 Dec 2022 at 15:20, Jagan Teki <jagan@edgeble.ai> wrote:
>
> On Mon, 26 Dec 2022 at 12:07, Anand Moon <anand@edgeble.ai> wrote:
> >
> > Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
> > add GMAC node for RV1126 SoC.
> >
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > ---
> > drop SoB of Jagan Teki
> > ---
> >  arch/arm/boot/dts/rv1126.dtsi | 63 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> > index 1cb43147e90b..bae318c1d839 100644
> > --- a/arch/arm/boot/dts/rv1126.dtsi
> > +++ b/arch/arm/boot/dts/rv1126.dtsi
> > @@ -90,6 +90,69 @@ xin24m: oscillator {
> >                 #clock-cells = <0>;
> >         };
> >
> > +       gmac_clkin_m0: external-gmac-clockm0 {
> > +               compatible = "fixed-clock";
> > +               clock-frequency = <125000000>;
> > +               clock-output-names = "clk_gmac_rgmii_clkin_m0";
> > +               #clock-cells = <0>;
> > +       };
> > +
> > +       gmac_clkini_m1: external-gmac-clockm1 {
> > +               compatible = "fixed-clock";
> > +               clock-frequency = <125000000>;
> > +               clock-output-names = "clk_gmac_rgmii_clkin_m1";
> > +               #clock-cells = <0>;
> > +       };
>
> These seems not needed,

Ok, I will drop this in next version.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
