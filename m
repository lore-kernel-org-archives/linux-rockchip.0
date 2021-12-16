Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEFC4C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 21:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7JDTpmPUdVS4iYtCu5V26dhp0DOotfQ3IEzE/adVwY=; b=VAMjqTpM8+vcNn
	yZ3vml9YcIk0HI4ulLM3L08xqaZMjBarRQzvtBBG4I4rfILDWYXW3jMNVla+M98Ktmb6B4/r8nMFB
	f6v19q0lzijp3iLM5pyfbSZnzYuxwnyxexJzs6vzjEZtPE/RL0xGtpEm8upQ8VG5Gc+jX7mH9sZDZ
	V7Y9i2QJH9mqy2O7eFEUvSGbrRUTsQBKZaQoCQkqewR081dh1Ab+ozqLdt5NObD9fG4jMkIZNxUyC
	Gbv3m2Vegj/Ummh3AEBRD2+GAVloXVQK4hctRMma1E/ohBRtsd1jr1pqEe6Fak9415r2l2XV7afQ8
	Av+OXnw9rDDyz7D65W1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxyBy-007dnV-Lu; Thu, 16 Dec 2021 21:21:34 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxyBv-007dmX-L1; Thu, 16 Dec 2021 21:21:33 +0000
Received: by mail-ed1-x52e.google.com with SMTP id z9so393721edb.5;
 Thu, 16 Dec 2021 13:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y4P5wy6iix7HfpBAPgE+l0TDwUWAk0zjGM03BbiTQsw=;
 b=P8Z7C13ZdPu+qAQpnBOAeCbP5gMwD7ydNMb9fH1tHtsh2kJc7ibH4bhB9n6SSttNEt
 vEEmkYmz1t6Wm9/57Wpyql1gY0lukX/tq7xgtngawV31lXiyIPiGdLlXzIBBpOnQ/pNU
 l8TY+90t1LjC9Ts43pf+0L3t6Cq68GW0mMKuPmHBlsyYPUEBjqZHsJ8O0Uy21wTlkTut
 DkYw3nq5oS+YsuqCdF7sZUGi6ZaY6WUqsUowfAES53fFq8ONWXmRQXBRmsakgmTB4xiK
 lcxLsvwMVZyq/6SKHFurTYHOEqmmqbVonYppG/FJLvW5oRfRzsPSbaJYXXnR9qD6yz3J
 794g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y4P5wy6iix7HfpBAPgE+l0TDwUWAk0zjGM03BbiTQsw=;
 b=y7mFa4Eei2aAlkyDE9fJjmxx8YQHiaIBREY9ivnh6qpmAGvYjJh9hYbm4SZOeC4Zkm
 KFO4Yyou0im7vscZQVFY6roFRHKgBR/wZvkla6ewuMHteCF0I5ZFNJyfa3Sz1Bj/ewli
 /yA3JBWj4MUU7/BymO1y36Nk4hZz+GPima2G7FPCuPqJ+j62rsF7VD1HRwzZzfLMFzDf
 Eb9TIWJHp/1Badvoa5IutI0swB1rgdqbJ7jE6Bt0SPEPeyBAcjv5Pk+qgRZ1z8t90Vze
 x/F2O0s1soWj7xARTZlF+PcschXuOxaoxeP4cyb0doxrk7r0y0ZxvWHyoTDEO9SDxOmW
 CKOg==
X-Gm-Message-State: AOAM531ce374fzyiFZHNOZXcx8T5azA2z+ze299+ypr4HZNazxclhC9k
 64Zufg6m0BepnuTTaZzRIhx3Y8TUWfzCD4+geus=
X-Google-Smtp-Source: ABdhPJwsfak5UbIcc8yFH8Rwdwqg3PnBpr0/RxL71FTeqrqpj/OhkfEuzEX2FvqtqvCKNpPM2N8yXgEq/ke4MwvehrM=
X-Received: by 2002:a17:906:6dce:: with SMTP id
 j14mr9377078ejt.305.1639689689489; 
 Thu, 16 Dec 2021 13:21:29 -0800 (PST)
MIME-Version: 1.0
References: <20211216111256.2362683-1-aford173@gmail.com>
 <20211216111256.2362683-9-aford173@gmail.com>
 <YbuqpayfYVPp1dTe@robh.at.kernel.org>
In-Reply-To: <YbuqpayfYVPp1dTe@robh.at.kernel.org>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 16 Dec 2021 15:21:18 -0600
Message-ID: <CAHCN7xLGeu4=CwqCv8BBowuQQ5t9iFDQV0adPNmy9dufW8soAg@mail.gmail.com>
Subject: Re: [PATCH V2 08/10] dt-bindings: media: nxp, imx8mq-vpu: Add support
 for G1 and G2 on imx8mm
To: Rob Herring <robh@kernel.org>
Cc: linux-media <linux-media@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>, 
 Adam Ford-BE <aford@beaconembedded.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_132131_728558_C04D2BC5 
X-CRM114-Status: GOOD (  22.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, Dec 16, 2021 at 3:07 PM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Dec 16, 2021 at 05:12:53AM -0600, Adam Ford wrote:
> > The i.MX8M mini appears to have a similar G1 and G2 decoder but the
> > post-procesing isn't present, so different compatible flags are requred.
>
> post-processing
>
> > Since all the other parameters are the same with imx8mq, just add
> > the new compatible flags to nxp,imx8mq-vpu.yaml.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> >
> > diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > index c1e157251de7..b1f24c48c73b 100644
> > --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > @@ -5,7 +5,7 @@
> >  $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
> >  $schema: "http://devicetree.org/meta-schemas/core.yaml#"
> >
> > -title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
> > +title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ/i.MX8MM SoCs
>
> Just 'i.MX8' so we don't have to change this everytime?

Are you OK with i.MX8M?  8MQ, 8MM, and 8MP all appear to have G1 and
G2 decoders.  The i.MX8 is different.
>
> >
> >  maintainers:
> >    - Philipp Zabel <p.zabel@pengutronix.de>
> > @@ -20,6 +20,8 @@ properties:
> >          deprecated: true
> >        - const: nxp,imx8mq-vpu-g1
> >        - const: nxp,imx8mq-vpu-g2
> > +      - const: nxp,imx8mm-vpu-g1
> > +      - const: nxp,imx8mm-vpu-g2
>
> Not compatible with the imx8mq variants?

No, the structures associated with these compatible flags telling the
driver what features are available have options for the post-processor
in the 8MQ which are not present in the 8MM.

>
> >
> >    reg:
> >      maxItems: 1
> > @@ -66,3 +68,27 @@ examples:
> >                  clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> >                  power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
> >          };
> > +  - |
> > +        #include <dt-bindings/clock/imx8mm-clock.h>
> > +        #include <dt-bindings/power/imx8mm-power.h>
> > +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +        vpu_g1: video-codec@38300000 {
> > +                compatible = "nxp,imx8mm-vpu-g1";
> > +                reg = <0x38300000 0x10000>;
> > +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> > +                clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>;
> > +                power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G1>;
> > +        };
> > +  - |
> > +        #include <dt-bindings/clock/imx8mm-clock.h>
> > +        #include <dt-bindings/power/imx8mm-power.h>
> > +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +        vpu_g2: video-codec@38300000 {
> > +                compatible = "nxp,imx8mm-vpu-g2";
> > +                reg = <0x38310000 0x10000>;
> > +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> > +                clocks = <&clk IMX8MM_CLK_VPU_G2_ROOT>;
> > +                power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
> > +        };
>
> No point in more examples just for a different compatible.

No problem.
>
> > --
> > 2.32.0
> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
