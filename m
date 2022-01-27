Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39F30C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 10:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrx/xytXQwMipY+Wnejhzt/+Ec9tBIl31iu931D41mA=; b=mUh47zk1O3E/9D
	/n2/IEikirZzQ0aYC2XGuqGpH8GMjTc84D1yAnvY+CVxd1HJRetRVAABLgxFmZYyoj0DifYcXGqrD
	gYIrZ6C1qsdlhRGHLt0Dnt3B0E6QdaASP8ExuILOPPvNPzhE1hZhI6XAtslEXEudk7b7W4Hov5MmM
	aGtJwxBycPWjeOrqHCxI+eJVmaOyIeImzASmpJ3KA4Qfx7eInU+xGrCXQbMgMY35lvGxmwR1vyboZ
	7QmxpKGIuGRM3bY4kzw8gJi2O0EguGL1nvSqYnz7TbX+nXJXOd5p4qJmFpKeZWdYOw67QV42S1r4B
	5iqzlrG9E8o4S2glLqwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD1bI-00F2GV-Da; Thu, 27 Jan 2022 10:01:56 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD1Sg-00EzLu-T0; Thu, 27 Jan 2022 09:53:04 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id l68so7113603ybl.0;
 Thu, 27 Jan 2022 01:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DCeh3tJziJOXCrnnixTkBD7AYHB2A+IHZABHF/dzYCU=;
 b=jLYDifpGZwQT05W+rS6oG34Z57CQot8Zti/7gLcLa+vf9idQ5ovGvGd9sbBvPeZ1Jr
 NezUg66EcyWxAeYLjGrXJA2duIBfAchL7kqG3Ue/HybKy4lxrCKT4AfDsnxoPrN1wpDq
 Hpq1Rgsqjj9Ro0skwwROmDIylrMCeD+H7T1INsi9/2D/CmcZIJSUZeftjhQNZYIF7yaM
 3+thHuba8byLdxHS4lxhAHruimbhqxztbSXTvlL9lLD2qefF4/fRo3CrQXUyrvYvz3S8
 gmfiJfGSLaHBFNFgjbQEgW6zAnyU36TmMWOoBJ+INFl/k4mPKytvC7RCuJMy2SwOJ2O7
 d91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DCeh3tJziJOXCrnnixTkBD7AYHB2A+IHZABHF/dzYCU=;
 b=wRZDlJWA0nuPh0AV/d2LFrwMODPA+fP9E+tfRzT1ivoQeF7E3oegj2n4BC4vhX3laL
 cu90q5Z37Mm7JCIm9Edo0i/DxZeVLz7dYJ6k+oK76zu4D9a9ofivg1sAGq+658TmjEPp
 a4ko9dKripcXXPTj4gDIQ7VJWbEgiiXsgDwFgLEvYQx3MXxN9e1un5SvxJxU7Z39uggx
 aq/biP2AerRuuFRhig/GnJbHyG3i6qPc7NN5C6zyfnO3i9lCKs+TuijF5etOk3QTEUKW
 iA4CBk43kZ+QKAHeHCx7JoPDXWlTUZk0tnvdPE1euwl+U2U2iCjMr8I4Z0eIrqqLABOf
 V4hQ==
X-Gm-Message-State: AOAM53218AFdXxkSMTtVKbYFD2okWXx2j2JBlfhXYX8iyRj+WenU9WXO
 LyfjwxcF4n1crtMS8/4rB8m2rRbVgqNzygt7Jf8=
X-Google-Smtp-Source: ABdhPJwr04wc46axSGKrtv+MH4U4swgz1FO7YD5H05ogTMFf9FsI0RrB7S0p7bS2eDOkZ1cFAcXnl4JBF+Sxta6GINg=
X-Received: by 2002:a25:d0cb:: with SMTP id h194mr4833431ybg.680.1643277180574; 
 Thu, 27 Jan 2022 01:53:00 -0800 (PST)
MIME-Version: 1.0
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
 <20220127010023.3169415-3-pgwipeout@gmail.com>
 <e2479729-154a-122f-f2e0-89b62ffe2c8d@gmail.com>
In-Reply-To: <e2479729-154a-122f-f2e0-89b62ffe2c8d@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 27 Jan 2022 04:52:49 -0500
Message-ID: <CAMdYzYrKjVvXHftaJDyOv6MwjEwmvwgMnzZK4gm0+D=XuA+ijg@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: add Quartz64-A pmu_io_domains
To: Johan Jonker <jbx6244@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_015302_992615_9E3A3CE1 
X-CRM114-Status: GOOD (  18.52  )
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

On Thu, Jan 27, 2022 at 12:57 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Peter,

Good Morning,

The Rockchip schematics IO Power Domain Map is rarely *if ever* 100%
accurate, you need to check the actual schematic for ground truth.

>
> On 1/27/22 02:00, Peter Geis wrote:
> > Several io power domains on the Quartz64-A operate at 1.8v.
> > Add the pmu_io_domains definition to enable support for this.
> > This permits the enablement of the following features:
> > sdio - wifi support
> > sdhci - mmc-hs200-1_8v
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > index d9eb92d59099..33c2c18caaa9 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > @@ -482,6 +482,19 @@ vcc_sd_h: vcc-sd-h {
> >       };
> >  };
> >
>
> https://files.pine64.org/doc/quartz64/Quartz64_model-A_schematic_v2.0_20210427.pdf
>
> Could you check with the IO Power Domain Map?
>
> > +&pmu_io_domains {
> > +     pmuio1-supply = <&vcc3v3_pmu>;
> VCC3V3_PMU
>
> > +     pmuio2-supply = <&vcc3v3_pmu>;
> VCC3V3_PMU
>
> > +     vccio1-supply = <&vccio_acodec>;
> VCCIO_ACODEC
>
> > +     vccio2-supply = <&vcc_1v8>;
> VCC_1V8
>
> > +     vccio3-supply = <&vccio_sd>;
> VCCIO_SD
>
> > +     vccio4-supply = <&vcc_1v8>;
> ==> VCC1V8_PMU

Page 16 of the schematic, VCCIO4 is tied to VCC_1V8 via R1519

>
> > +     vccio5-supply = <&vcc_3v3>;
> ==> VCC_1V8

Page 20 of the schematic, VCCIO5 is tied to VCC_3V3 via R1800

>
> > +     vccio6-supply = <&vcc1v8_dvp>;
> VCC1V8_DVP
>
> > +     vccio7-supply = <&vcc_3v3>;
> VCC_3V3
>
> > +     status = "okay";
> > +};
> > +
> >  &sdhci {
> >       bus-width = <8>;
> >       mmc-hs200-1_8v;

Thanks for double checking,
Peter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
