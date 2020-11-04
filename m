Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85347C388F9
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 15:55:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB30D223FB
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 15:55:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="el0VnYiT"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB30D223FB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wmHy5OjkOTi5olxe+o9jD/Xw9nYRo0YUrfk+zX6EIm8=; b=el0VnYiT49+Ggn1PYF0ouIajS
	T3KQMP2cbFlLo5/WQfUvK4f/NR9msctgwM8LwfG+NdpRiWoSO/MYe7rWPlRDPUEtFvQLiYLdGLPNj
	0j+erDZdLFAx1aT1VLYZmhJlg6Un/h0TReTmjaBg4xVLujppxq7zeNdBKv2cE852VOeqQR5mv6J5u
	5h7CvFazGRULvkPrzzemWkrFgy/KGhpSG2nv8Anbz38vdl+lA2BuXMYT+xTFnNZ5/SO91/eSJiZ6z
	xAz+OFyUuZ64Ff+q01BydwusjOGAa1Yq6MSuNu1FmQVzgGkrE/H2quTmwvXwxLI3Xpa0S+oD8NPfj
	JCzinGZdg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaL7o-0006HV-GM; Wed, 04 Nov 2020 15:55:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaL7U-00065O-Js; Wed, 04 Nov 2020 15:54:46 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kaL7K-0000Fl-3J; Wed, 04 Nov 2020 16:54:34 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399-roc-pc boards.
Date: Wed, 04 Nov 2020 16:54:33 +0100
Message-ID: <10029979.JCShpOL5JR@diego>
In-Reply-To: <CAD=FV=V2Vv0bv-exiZ6VrOtfMM5TVpjATO04qaXeGWDRu+6vyw@mail.gmail.com>
References: <20201104094950.2096-1-m.reichl@fivetechno.de>
 <4984701.vSXMUKeAfh@diego>
 <CAD=FV=V2Vv0bv-exiZ6VrOtfMM5TVpjATO04qaXeGWDRu+6vyw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_105445_177276_DE43D6BA 
X-CRM114-Status: GOOD (  29.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 4. November 2020, 16:42:01 CET schrieb Doug Anderson:
> Hi,
> =

> On Wed, Nov 4, 2020 at 2:51 AM Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Hi Markus,
> >
> > Am Mittwoch, 4. November 2020, 10:49:45 CET schrieb Markus Reichl:
> > > Recently introduced async probe on mmc devices can shuffle block IDs.
> > > Pin them to fixed values to ease booting in evironments where UUIDs
> > > are not practical. Use newly introduced aliases for mmcblk devices fr=
om [1].
> > >
> > > [1]
> > > https://patchwork.kernel.org/patch/11747669/
> > >
> > > Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/a=
rm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > > index e7a459fa4322..bc9482b59428 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > > @@ -13,6 +13,11 @@ / {
> > >       model =3D "Firefly ROC-RK3399-PC Board";
> > >       compatible =3D "firefly,roc-rk3399-pc", "rockchip,rk3399";
> > >
> > > +     aliases {
> > > +             mmc0 =3D &sdmmc;
> > > +             mmc1 =3D &sdhci;
> > > +     };
> > > +
> >
> > Any reason for this odering?
> >
> > I.e. some previous incarnations had it ordered as (emmc, mmc, sdio).
> > This is also true for the ChromeOS out-of-tree usage of those, the
> > rk3399 dts in the chromeos-4.4 tree also orders this as sdhci, sdmmc, s=
dio.
> >
> > And I guess a further question would be when we're doing arbitary order=
ings
> > anyway, why is this not in rk3399.dtsi ;-) ?
> =

> Though I personally like the idea of eMMC, which is typically
> built-in, as being the "0" number, I'm personally happy with any
> numbering scheme that's consistent.  Ordering them by base address is
> OK w/ me and seems less controversial.  That seems like it could go in
> rk3399.dtsi and then if a particular board wanted a different order
> they could override it in their board file. =


Yep that sounds sensible and ordering by base address at least is one
"simple" type of order without too much explanation needed.

So I guess we'd get a sdio + sdmmc + sdhci ordering


@Markus: if nobody else complains, can you do a "simple" rk3399.dtsi
change with that please?


> The downside of putting
> in rk3399 is that boards that don't have all SD/MMC interfaces enabled
> would definitely get a new number compared to old kernels, but
> hopefully this is the last time?

With that new asynchronous mmc-probe-thingy in 5.10 that "caused" this,
it sounds like everything gets a new number anyway ;-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
