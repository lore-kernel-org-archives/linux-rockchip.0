Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 472BCC433E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 07:50:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D54022A83
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 07:50:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D54022A83
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OHyZ4tPT3cJEEuE5T4//2wpMH8jMZWiptdEMDRpzLGc=; b=mIhOfDmeer/Y/o1M8szsQ2jpv
	HhPYIbdgMMn8szzibq/7PNYoKUiAlyHdyxDMJXwStAeWPjSJrCT8p+ofemm2Ffawfvd4ZIzw0srgt
	tVZRE8xqwdbT7QITw4+Zd/rzOGzUojqwL0g1xIz053ucv7mqhPctHV7ukYHP3lVzF76OY1G/CRNs2
	DW+Jiy2JlOhox5C/OOhEeQluEa+dff86dUclSB9KwJfY+sS70mow95zZaSxMFyy/aiHjywKJo5Zb1
	S54/7BJPip38UXpLX6RAKYoLVuZGhIhCFzuEcoxxNwlJakAfrNHqaLTiNqPDiXH4FQQp64HadaLBB
	4+62h+1Cw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyryN-0004XX-Dh; Mon, 11 Jan 2021 07:50:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyryI-0004TA-39; Mon, 11 Jan 2021 07:50:39 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kyryE-0004Eb-3j; Mon, 11 Jan 2021 08:50:34 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E
Date: Mon, 11 Jan 2021 08:50:33 +0100
Message-ID: <2633022.BEx9A2HvPv@diego>
In-Reply-To: <CAGb2v67h3v4DdEY68BmHy263=L1tB0DuJnf_exHrLi57SiRjUA@mail.gmail.com>
References: <20210110035846.9155-1-wens@kernel.org> <2241380.NG923GbCHz@diego>
 <CAGb2v67h3v4DdEY68BmHy263=L1tB0DuJnf_exHrLi57SiRjUA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_025038_184793_D7049F30 
X-CRM114-Status: GOOD (  22.08  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 11. Januar 2021, 04:27:47 CET schrieb Chen-Yu Tsai:
> On Mon, Jan 11, 2021 at 4:06 AM Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Hi,
> >
> > Am Sonntag, 10. Januar 2021, 16:37:15 CET schrieb Chen-Yu Tsai:
> > > > > +     vcc_sd: sdmmc-regulator {
> > > > > +             compatible =3D "regulator-fixed";
> > > > > +             gpio =3D <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
> > > > > +             pinctrl-names =3D "default";
> > > > > +             pinctrl-0 =3D <&sdmmc0m1_pin>;
> > > >
> > > > > +             regulator-boot-on;
> > > > > +             regulator-name =3D "vcc_sd";
> > > >
> > > > regulator-name above other regulator properties
> > >
> > > That is actually what I was used to, but some other rockchip dts files
> > > have all the properties sorted alphabetically. So I stuck with what I
> > > saw.
> >
> > I try to keep it alphabetical except for the exceptions :-D .
> >
> > regulator-name is such an exception. Similar to compatibles, the
> > regulator-name is an entry needed to see if you're at the right node,
> > so I really like it being the topmost regulator-foo property - just mak=
es
> > reading easier.
> >
> > (same for the compatible first, then regs, interrupts parts, as well
> > as "status-last")
> >
> > But oftentimes, I just fix the ordering when applying - but seem to have
> > missed this somewhere in those "other Rockchip dts files" ;-) .
> =

> I was slightly confused. I looked again and yes regulator-name is always =
the
> first regulator related property. What's off is that in some cases min/max
> voltage comes before always-on/boot-on, and in others vice versa.
> =

> For example in the Rock64 and ROC-RK3328-CC device trees, in the fixed
> regulators, always-on/boot-on come before min/max voltage, while in the
> PMIC the other order is used.

That's likely undecidednes on my part ;-)

There could be an argument for a "name, voltages, flags" sorting, but on
the other hand just keeping it alphabetical with the naming on top
creates less special cases.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
