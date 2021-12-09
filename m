Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 322B7C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Dec 2021 11:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWmtto5CvvcB4oU6y6fvmJNySHCwY8s7qPVBYtXHOXs=; b=HZp0BLaxcmFLj/
	6L0vzXtluVRlFIRxYPDXPq2SqRC+C39W/ThnEg8s4ArVSyqctgatVvpqsOl0pVoUri2J4FV92g8hM
	qfbBAR2+Mgp7qArZtGs2w/8RtqvaGjn8uyCRhl6r6SLxOfA+z0vX8NXaouh8CMUX7vWa+SVqKcHVt
	kHIocQsut3AMrTjKWIIyZwm2/dP+aSze5BeOGjpxoELxHsjPYeDGDEXCb2AplvtuKjQFLTX2U5fRQ
	DaSzr1WyFzEGpI74cy3onusHBrjH7Uc9op5gifNILat1i3F3/reqIgQANVlHu6Vy9yYtDudOpkPjG
	uu3Fx4EssgtpZpsMW0pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvHil-00Fp6D-Ln; Thu, 09 Dec 2021 11:36:19 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvHii-00Fp4J-LE; Thu, 09 Dec 2021 11:36:18 +0000
Received: by mail-pj1-x102d.google.com with SMTP id h24so4249131pjq.2;
 Thu, 09 Dec 2021 03:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YoYlDGHcE++hoSY6ZVFqrlcPmhHst+Nh5O9zF+9ID0A=;
 b=C5MxMByG1d46tu0nP4WWc7YtP2g+HlCrS4Q58e0HMAzEc6XIYFQCXxurTsuODJrpQq
 ug2eARypP4m0uXcjmATAas4wHQgoIkufhUAjVZ55mBd8CgGvuL+PtnNMbP0frz9HJaoK
 8pR+8+qM3ogjftYU+wI5xxFRiTF+YKuVphNvh+YURzhRxmfXPuEjh3u9b3pJyOPmjkaz
 GrjwfAPNTk31bVBPtLv1NFe3d/TfVmXKaAjj9NjBSVBjCtDZtfEnYVxkMKOshVCEZO13
 25K7tpPYpGAwrYVQvF7SAy/y1fyq/hprMnVKTo/5AcV41Q+494Ko6wk7gVWqWz2s+kEx
 xkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YoYlDGHcE++hoSY6ZVFqrlcPmhHst+Nh5O9zF+9ID0A=;
 b=J8VJ5hEgbIA5xtnZ1C9xYIExuGlms+gW1TeUqW13INRsIGVbz4FsZiWN/6uq6S5FVC
 27nOMBDxAPfkGF79J3fB/NG6R8rRRSEbtl764oA5kl7l6kOg7hWi2tTCd+htWkE/RwWi
 xuP1NnpQUTnAzoyxYNOrpViVgHOLY1TFzW8Fh7N0JGtc8Y8D/igbHWlFO6Uga40zLV5x
 rIuIAURU3J9VIWneIbO6uoQ75Bn86rIGPVfCQFiqfr7bsFpvhLJgrLi4+8ot1NfFTDda
 sSLuQ2+tXMNhyS4EqpYEU31Zz/Xihks0ZLT+M1hM31gOKFFj6wT8dSUu8WR9JY3Fh93v
 aYog==
X-Gm-Message-State: AOAM533n45ZT4qcbn23viWFRSbL78LCls0yHOsra/dTWssE2HKygV+bG
 jFzkYU9d1F3n+MCp8mKN0ceqUVkwLPut39IkI687xB9b
X-Google-Smtp-Source: ABdhPJwq+r3dJUSaaBmgvKaAn7aOWjmT9Sb06BNDEIhYhf+ifwp0vF3TudHH330L4TiH4gY+XUGW8edZmE6uY8NN2qk=
X-Received: by 2002:a17:90a:c287:: with SMTP id
 f7mr15170681pjt.114.1639049775292; 
 Thu, 09 Dec 2021 03:36:15 -0800 (PST)
MIME-Version: 1.0
References: <20211208225030.2018923-1-aford173@gmail.com>
 <20211208225030.2018923-5-aford173@gmail.com>
 <YbHZvysazqYeZ8h3@eze-laptop>
In-Reply-To: <YbHZvysazqYeZ8h3@eze-laptop>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 9 Dec 2021 05:36:04 -0600
Message-ID: <CAHCN7xKrHSSsqS9DNL1tMH1Ctpz16FsSgcVbSHXzUWF98v738Q@mail.gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: media: nxp,imx8mq-vpu: Support split
 G1 and G2 nodes with vpu-blk-ctrl
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media <linux-media@vger.kernel.org>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Chris Healy <cphealy@gmail.com>, Adam Ford-BE <aford@beaconembedded.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
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
X-CRM114-CacheID: sfid-20211209_033616_744065_533DE473 
X-CRM114-Status: GOOD (  35.62  )
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

On Thu, Dec 9, 2021 at 4:26 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi,
>
> Thanks for the patch.
>
> On Wed, Dec 08, 2021 at 04:50:23PM -0600, Adam Ford wrote:
> > The G1 and G2 are separate decoder blocks that are enabled by the
> > vpu-blk-ctrl power-domain controller, which now has a proper driver.
> > Update the bindings to support separate nodes for the G1 and G2
> > decoders using the proper driver or the older unified node with
> > the legacy controls.
> >
> > To be compatible with older DT the driver, mark certain items as
> > deprecated and retain the backwards compatible example.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > ---
> >  .../bindings/media/nxp,imx8mq-vpu.yaml        | 83 ++++++++++++++-----
> >  1 file changed, 64 insertions(+), 19 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > index 762be3f96ce9..eeb7bd6281f9 100644
> > --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > @@ -15,29 +15,39 @@ description:
> >
> >  properties:
> >    compatible:
> > -    const: nxp,imx8mq-vpu
> > +    oneOf:
> > +      - const: nxp,imx8mq-vpu
> > +        deprecated: true
> > +      - const: nxp,imx8mq-vpu-g1
> > +      - const: nxp,imx8mq-vpu-g2
> >
> >    reg:
> > +    minItems: 1
> >      maxItems: 3
>
> Is it really useful to keep the deprecated binding nxp,imx8mq-vpu
> as something supported by the binding file?

Since I was told that the driver needed to be backwards compatible, i
wanted to make sure that any attempts to build the old device tree
would not fail
>
> In other words, can we drop the deprecated binding from this file,
> while keeping the support in the driver for legacy device-trees?

I was trying to represent both the old driver binding and the new one
at the same time.  I thought that's what I was told to do.
>
> [..]
> > +
> > +  # VPU G1 with vpu-blk-ctrl
> > +  - |
> > +    #include <dt-bindings/clock/imx8mq-clock.h>
> > +    #include <dt-bindings/power/imx8mq-power.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    vpu_g1: video-codec@38300000 {
> > +        compatible = "nxp,imx8mq-vpu-g1";
> > +        reg = <0x38300000 0x10000>;
> > +        reg-names "g1";
> > +        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> > +        interrupt-names = "g1";
> > +        clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
> > +        clock-names = "g1";
>
> reg-names, interrupt-names and clock-names should be removed
> given for this device there's only one of each.
>

I attempted to remove the reg-names, but it failed to enumerate for me
when I did that.

> This will make the binding actually quite easier, but it also
> means you need to make some changes to struct hantro_variant imx8mq_vpu_g1_variant
> to make it work properly.
>
> See Rob's feedback on the SAMA5 VPU binding:
>
> https://yhbt.net/lore/all/20210324151715.GA3070006@robh.at.kernel.org/
>
> Also, take a look at drivers/staging/media/hantro/sama5d4_vdec_hw.c
> for reference.

I can try again using this as an example.

>
> > +        power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
> > +    };
> > +
> > +  # VPU G2 with vpu-blk-ctrl
> > +  - |
> > +    #include <dt-bindings/clock/imx8mq-clock.h>
> > +    #include <dt-bindings/power/imx8mq-power.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    vpu_g2: video-codec@38310000 {
> > +        compatible = "nxp,imx8mq-vpu-g2";
> > +        reg = <0x38310000 0x10000>;
> > +        reg-names "g2";
>
> And same here.
>
> Thanks!
> Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
