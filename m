Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C15CC6FA82
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 15:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhP66XQTJTyBVpHjyDSEFHqEtnr3bAvrinAnDkeCSaM=; b=tWu3x0PPQqoAI7
	oXuDoqMORrb4BruCNUufLKUMcpTa1ZrxN31COmjjSWMlGSqNPZVZ4HiLgOSnLBN1qSy9PdeZ7OKra
	ZLFtOQn277hjC3B/gtMeDauITB+Q9Ty53s+4F1XUfcEt50PLD7MP9metpncA1KtDRlQpw0Ko/rO7k
	1uemKDl5CbK6FvihLACIz0jBdW0fm5RSMxzyM8ozgdXwZXV9NV8/4AFXtmGxo+9Uy7qW3P6S3uDRg
	ycJs+ewY1VCTdyMR3SoprYpz8lBV+Tzs6molpHsf6bsQJHz+bz1HY2x/qz9/ZW73OhZk62540Mflk
	KjBPnl9V3tUQ7wvpIo5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7X0-00CCPE-6Q; Tue, 13 Sep 2022 15:08:58 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY79y-00BrCl-FG; Tue, 13 Sep 2022 14:45:12 +0000
Received: by mail-pj1-x1033.google.com with SMTP id fs14so11533366pjb.5;
        Tue, 13 Sep 2022 07:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=BigZgzDalXUaUQ1hOGkvbyJvBJcRFxv/fgnReKtRTcE=;
        b=WFpSktm2Mw82yuwQ7/wyCjSuG6TNNYEa5KCF6cBQdRZGJHQ9unp/s9SSPsHoSy4auE
         opY2wZimheSkddlWEzgfaoo9l2oAlb/dP0NLy1091Z4rbn0R2Dl2rwa63TdLmEu7+PXm
         DebvbCRBNXJqpJoXYG2AcIMQarpGfUewuYztSeu0KRlnJFteqDZTfzNAiVWJ+SM8UKPZ
         UczbmrMKn1tM3Vpy0ikq5Fs7ezqANjPwoO5dDW+qsUfplPLIkwHkWE78Oxa2CI8GqGVq
         akpFAJvnzpIOdEq/BocwoMXN3XpApEC4W3U3PBpFrngeI+6IAriPpKUBw8X8e9KTSKgo
         1daQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=BigZgzDalXUaUQ1hOGkvbyJvBJcRFxv/fgnReKtRTcE=;
        b=rehS6hUbLO7Jt/bmyshuokRN7zV8AcyxAohArdjcLCvdg1doSWM93aWTaAjpKpcl2T
         SQocUMFj/tFU4/57K/GnSaN1NJl0sFhF+TAdwKb3HJl7omDS+31i7kJpsPT/3l7+eGR1
         HkMVEACh2CRsXnHnumAR40teE+kQPlRoFAdNSptAegT4ibIAOhbLTljXz7OJ7SJJOwa2
         O4+OOxGPl3KI3eSvhFkTBqewyPs9Nw2jFXYrCYkKGxdO0rpbtDhigHS6aQEd7kQPzpv7
         fhL1RC0svRyGKS40kfLiu5QwMeJTW0lRBe03vPcjKMJd8EMLBUOC3pmMEXOroZsLYrDi
         UcTA==
X-Gm-Message-State: ACgBeo2W8gTo6E98fcG+jGObNk3przsziBEQNsMm4zyE7odZVQn0bSJa
	WAYvoxewm0rUgH8bopKN3NYD+SKtCC+gPSH61wtweR0mBfs=
X-Google-Smtp-Source: AA6agR7qMJQc4dCUaMDXsSVcOWzc8M1rs65BfNUznpDkE+XLgjqPyC+AronHj/TF2hyMk/7rv/F3M0KOhQogQlM7x9I=
X-Received: by 2002:a17:902:b085:b0:178:3af4:31b2 with SMTP id
 p5-20020a170902b08500b001783af431b2mr7826829plr.122.1663080306463; Tue, 13
 Sep 2022 07:45:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220911040628.13774-1-cnsztl@gmail.com> <7426763.EvYhyI6sBW@phil>
In-Reply-To: <7426763.EvYhyI6sBW@phil>
From: Tianling Shen <cnsztl@gmail.com>
Date: Tue, 13 Sep 2022 22:44:54 +0800
Message-ID: <CAOP2_TiBA0HZPO4tDviUuLMvw+oHe4BR3wiAMwdRodjfuEfVow@mail.gmail.com>
Subject: Re: [PATCH v4] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_074510_565490_41A8C2F1 
X-CRM114-Status: GOOD (  25.69  )
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

Hi Heiko,

On Tue, Sep 13, 2022 at 6:22 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi,
>
> Am Sonntag, 11. September 2022, 06:06:28 CEST schrieb Tianling Shen:
> > NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> > stores the MAC address.
> >
> > FriendlyElec ship two versions of the R4S [1]: The standard as well
> > as the enterprise edition with only the enterprise edition including
> > the EEPROM chip that stores the unique MAC address.
>
> This needs to go differently.
>
> If the eeprom is only preset on the enterprise-version, you need
> a separate devicetree for it, that provides the eeprom node.
>
> Declaring the eeprom "in error" on a device that doesn't have it,
> isn't the way to go.
>
> Look for example at rockchip/rk3399-nanopi-m4b.dts for reference
> on how to do it - and also remember to add the new binding
> for that board. And can also again declare the correct mac-address
> cell.
>

Got it, thank you! I will do it these days.

Regards,
Tianling.

>
> Heiko
>
> >
> > 1. https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R4S#Differences_Between_R4S_Standard_Version_.26_R4S_Enterprise_Version
> >
> > Changes in v4:
> > - Removed `mac-address` cell as it breaks the standard edition
> >
> > Changes in v3:
> > - Added address-cells and size-cells
> >
> > Changes in v2:
> > - Added the size of EEPROM
> > - Added `mac-address` cell to pass the MAC address to kernel
> > - Removed `read-only` property in EEPROM node
> >
> > Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > index fe5b52610010..42c99573ab27 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > @@ -68,6 +68,17 @@ &emmc_phy {
> >       status = "disabled";
> >  };
> >
> > +&i2c2 {
> > +     eeprom@51 {
> > +             compatible = "microchip,24c02", "atmel,24c02";
> > +             reg = <0x51>;
> > +             pagesize = <16>;
> > +             size = <256>;
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +     };
> > +};
> > +
> >  &i2c4 {
> >       status = "disabled";
> >  };
> >
>
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
