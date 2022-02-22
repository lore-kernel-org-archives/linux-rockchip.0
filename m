Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC6F5C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 19:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiD01Ator1KHqwpSCCEimCA7EzLPRijcv12gL7eYYUQ=; b=SqB71qsUDjHCgz
	A/XAscVVNPpWZNHi0PEMwGExmNkqKydTSiebqWXol+gVKFZ5S4J+yhj6BbWGSTDVdnJy55Vrs9/Zq
	6lXGeKHsAYSpgomi6y9ccXU6ZRqPoPWp/xGbSmoCNlpuYynDQMzV9g/BfOD03Tt9U6L166UnJNOk3
	rwJYxE7wx5S0xABEAT2/Z+5uT08qB4JwteMClM1PygdyJXebHVZlFX1EJuot9Wz+J0rsf2b8KnA5t
	/oNp47WjuxmRH4gGC9odURTY9CyKVEzcDIJeSuO4mZarhIdgc5sNArcFrC747ygjoLnDd/BwFgDqN
	t6BVHTYtFNTnsNHAPNEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMacY-00BIuJ-Lz; Tue, 22 Feb 2022 19:14:46 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMacV-00BIsU-Kg
 for linux-rockchip@lists.infradead.org; Tue, 22 Feb 2022 19:14:45 +0000
Received: by mail-oo1-xc31.google.com with SMTP id
 r41-20020a4a966c000000b0031bf85a4124so19034913ooi.0
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Feb 2022 11:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=+uICciuaj7jdFCwues4OKN2T3O3A4k1mD1Fk4dP/Kh0=;
 b=UehtrZGjdpmOsyLQueoAeY7by4QrBSoByAQe2tPBmT4Pv4dqT1F2pmG6c+7KC74+i4
 Pvgk2RF4/tvICKJ0MSqfZEArHKjGgEdxYv5olA8KQRdWQ2GycteVo9SwLEE0agc869Zl
 RoNhbbOpjthqQZ3RnhLSfUd1Vl02aOdv3ks8okqze17/e4mc75S+1EcXBF/7ZA5Evt2B
 KmikRbX4vT1xu6fvuP4KSuXpMBJWMc8O765QEdCPvznI50o+3MpawmcsySpgf0TwVC0F
 Utva92qS43knnqf/n+HNFDzyfTF3gFUrfdnknccVLJetV50vPm7Rp6OobQMCHCm9rT22
 K/Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+uICciuaj7jdFCwues4OKN2T3O3A4k1mD1Fk4dP/Kh0=;
 b=NYtxFnJOJNhdMPt4B8VMqSjk1ycvt8YShCugL7U+abSXNEMOpEHCoZ5P9jpkJTeL1c
 CX7IKZ+mPktdpZ7ZTMO49NhxbzcmI/5StT+iEtuSlvsw0F0X6kpT7qx644efV1mm0xjZ
 CSLg308G8KdeQGNMVCnC89nr5jAwSLjqQvHl3mSZceCugcOgR3+0A7eZsz5Ubo30snLR
 SPvwk4LLcef0QNuHCcZ1iBn+dvrohsXapxEaA6Auuwcy72nBmmfZp45uGcAdOoxB7v1z
 su0T60gTEOEbT3fK/t+6/qnt3yzvsfogIToCeelKjrxNvNZFyKFOAT7RDUjJZ2V7BWYC
 GtPQ==
X-Gm-Message-State: AOAM5313YuY6QApOKCul3qn6HPUGt7RJz9go+b3YMGsb6kfX+HnI8Ni+
 RSafcnmiTt8JnQbdEStsXkg=
X-Google-Smtp-Source: ABdhPJz9sc3sYp8PEoEW+pqVUVc5880oolD2dYtkhg0DhxSoRSpwI22BbPR+X9GiXgYBSDjB8l4YPQ==
X-Received: by 2002:a05:6870:1054:b0:d6:a9d7:1b69 with SMTP id
 20-20020a056870105400b000d6a9d71b69mr412848oaj.273.1645557278828; 
 Tue, 22 Feb 2022 11:14:38 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id z4sm7336864otu.24.2022.02.22.11.14.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 11:14:38 -0800 (PST)
Date: Tue, 22 Feb 2022 13:14:37 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 jon.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct clock-output-names for rk817
Message-ID: <20220222191437.GA7995@wintermute.localdomain>
References: <20220216165837.4721-1-macroalpha82@gmail.com>
 <44462609.a43xROnmBz@diego>
 <4b88f0f1-7422-7beb-2f7a-563f1f4b3360@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b88f0f1-7422-7beb-2f7a-563f1f4b3360@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_111443_691905_C2C8FEAC 
X-CRM114-Status: GOOD (  32.13  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 16, 2022 at 09:34:52PM +0000, Robin Murphy wrote:
> On 2022-02-16 20:42, Heiko St=FCbner wrote:
> > Hi,
> > =

> > Am Mittwoch, 16. Februar 2022, 17:58:37 CET schrieb Chris Morgan:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > =

> > > According to the datasheet for the rk817 there is only a single output
> > > clock for the PMIC. I don't believe this is causing any harm though
> > > and testing this change doesn't appear to have any noticeable effects.
> > =

> > hmm, looking at the go2's schematics, I'd disagree:
> > =

> > - yes, the rk817 has only one clock output
> > - but no, it is used for the clkout_32k signal, which gets piped back i=
nto
> >    the SoC. As that clock dynamically appears at some unspecified point
> >    when the rk817 probes, the clock controller expects it to be named
> >    xin32k to bind into its clock-tree.
> > =

> > The driver (drivers/clk/clk-rk808.c) really puts that rk817-clk32k at
> > position 2 but I'm not sure if that simply papers over some implementat=
ion
> =

> Indeed it appears to be a hangover from RK808 where CLK32KOUT1 is always-=
on
> and CLK32KOUT2 is the switchable one. It's even more obvious on RK805 whi=
ch
> still shares the original control register layout.
> =

> Robin.

Okay, so I'm thinking for now we cancel this patch, note in the yaml updates
patch series that this issue is present, update the driver, and then notify
the board dts maintainers to switch over and test. Does that sound good?

Thank you.

> =

> > =

> > =

> > Heiko
> > =

> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >   arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > =

> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arc=
h/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > > index ea0695b51ecd..5b23e607876e 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > > @@ -296,7 +296,7 @@ rk817: pmic@20 {
> > >   		reg =3D <0x20>;
> > >   		interrupt-parent =3D <&gpio0>;
> > >   		interrupts =3D <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> > > -		clock-output-names =3D "rk808-clkout1", "xin32k";
> > > +		clock-output-names =3D "rk808-clkout1";
> > >   		clock-names =3D "mclk";
> > >   		clocks =3D <&cru SCLK_I2S1_OUT>;
> > >   		pinctrl-names =3D "default";
> > > =

> > =

> > =

> > =

> > =

> > =

> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
