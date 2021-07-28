Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CAE3C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 17:28:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E976B61037
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 17:28:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E976B61037
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArNII6xYCO/0XnQHSBLuJPp0B0lIROpl4El2uN38xAU=; b=EgL4RzN91VqxBW
	gaIcWgnagRfUZYhwah4ym04+bvaHRqvPc0nGyLcE+t9PbGddSnjArgyRGlNeYtb4pNgtmT/Uj4k/g
	vGH4eNWdoLxez3j+5ff4+zPchkbuWsBl45xaWaK/KoNLw/Si4CubOpq8/ba/A3hCqKTzxBb+cTJnm
	8KIQtrTqfOceVSY3hqVXbRYhCxLD12qsiplIiNxVjh+X3pYM6pqfjVkKBaWiXSzyrmX/vuvT51pRA
	FsMwoIHXvO9sSoqWG+7imD1Jp08TpF1y5G+Lmjsgc7MuqdGxwPR3Se6Gnnc/+2unk1sSAmrKepgJ0
	zfdpaDGUVREUXH6vmrRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nMA-001pbo-Ak; Wed, 28 Jul 2021 17:28:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nLu-001pVk-4W; Wed, 28 Jul 2021 17:28:19 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8nLs-00071K-62; Wed, 28 Jul 2021 19:28:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 6/9] arm64: dts: rockchip: add missing rk3568 cru phandles
Date: Wed, 28 Jul 2021 19:28:15 +0200
Message-ID: <2510732.Icojqenx9y@diego>
In-Reply-To: <CAMdYzYrj7PdvmfvSNV5B3=aDrAx1VUO2=w8vgVprBE1qiEZP3A@mail.gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <CAMdYzYqz-i1X2oORi6SjSqi6_KwRcbt2u04+cVxcSonX9gxOew@mail.gmail.com>
 <CAMdYzYrj7PdvmfvSNV5B3=aDrAx1VUO2=w8vgVprBE1qiEZP3A@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_102818_228915_FD7415BC 
X-CRM114-Status: GOOD (  38.83  )
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

Am Mittwoch, 28. Juli 2021, 18:49:47 CEST schrieb Peter Geis:
> On Wed, Jul 28, 2021 at 11:16 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Wed, Jul 28, 2021 at 10:41 AM Heiko St=FCbner <heiko@sntech.de> wrot=
e:
> > >
> > > Am Mittwoch, 28. Juli 2021, 16:18:49 CEST schrieb Peter Geis:
> > > > On Wed, Jul 28, 2021 at 10:06 AM Heiko St=FCbner <heiko@sntech.de> =
wrote:
> > > > >
> > > > > Hi Peter,
> > > > >
> > > > > Am Mittwoch, 28. Juli 2021, 15:55:31 CEST schrieb Peter Geis:
> > > > > > The grf and pmugrf phandles are necessary for the pmucru and cr=
u to
> > > > > > modify clocks. Add these phandles to permit adjusting the clock=
 rates
> > > > > > and muxes.
> > > > > >
> > > > > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 3 +++
> > > > > >  1 file changed, 3 insertions(+)
> > > > > >
> > > > > > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/ar=
m64/boot/dts/rockchip/rk356x.dtsi
> > > > > > index 0905fac0726a..8ba0516eedd8 100644
> > > > > > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > > > > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > > > > @@ -218,6 +218,8 @@ grf: syscon@fdc60000 {
> > > > > >       pmucru: clock-controller@fdd00000 {
> > > > > >               compatible =3D "rockchip,rk3568-pmucru";
> > > > > >               reg =3D <0x0 0xfdd00000 0x0 0x1000>;
> > > > > > +             rockchip,grf =3D <&grf>;
> > > > > > +             rockchip,pmugrf =3D <&pmugrf>;
> > > > >
> > > > > I don't think the pmucru needs both and in fact the mainline
> > > > > clock driver should just reference its specific grf at all, i.e.
> > > > >         pmucru -> pmugrf (via the rockchip,grf handle)
> > > > >         cru -> grf
> > > > >
> > > > > I've not seen anything breaking this scope so far.
> > > >
> > > > I thought the same thing as well, but for some reason the driver
> > > > refuses to apply assigned-clocks to the plls unless these are all
> > > > present.
> > > > If the driver can get these assignments automatically eventually,
> > > > perhaps it's a loading order issue?
> > > >
> > > > Thinking about it, it's probably the grf and pmugrf haven't probed
> > > > when the driver is attempting to assign these, and tying them toget=
her
> > > > forces the probe to happen first.
> > >
> > > though nothing references the regular grf from the pmucru I think.
> > >
> > > I.e. the pmucru PLL read their lock state from RK3568_PMU_MODE_CON
> > >
> > > The rk3568 reuses the pll_rk3328-type which in turn is a modified pll=
_rk3036
> > > and uses their ops. Which in turn means the pll shouldn't access the =
GRF at
> > > all, as it uses the pll's own register to check the locked state.
> > >
> > > Can you try to change clk-pll.c from
> > >
> > >         switch (pll_type) {
> > >         case pll_rk3036:
> > >         case pll_rk3328:
> > >                 if (!pll->rate_table || IS_ERR(ctx->grf))
> > >                         init.ops =3D &rockchip_rk3036_pll_clk_norate_=
ops;
> > > ...
> > > to
> > >         switch (pll_type) {
> > >         case pll_rk3036:
> > >         case pll_rk3328:
> > >                 if (!pll->rate_table)
> > >                         init.ops =3D &rockchip_rk3036_pll_clk_norate_=
ops;
> > >
> > > similar to rk3399?
> >
> > Thanks, I'll test this!
> =

> Confirmed this fixed the issue for the rk3566, so as long as it
> doesn't break rk3328 this works.

It doesn't break anything ... i.e. the change for rk3328/rk3036 plls
from using the grf register to using the pll-internal lock status is in
the kernel for quite a while now - januar 2020 to be exact, and nobody
complained - including me when testing in my boardfarm ;-)

> I'll include the patch in the next series.
> =

> >
> > >
> > > Heiko
> > >
> > > > > >               #clock-cells =3D <1>;
> > > > > >               #reset-cells =3D <1>;
> > > > > >       };
> > > > > > @@ -225,6 +227,7 @@ pmucru: clock-controller@fdd00000 {
> > > > > >       cru: clock-controller@fdd20000 {
> > > > > >               compatible =3D "rockchip,rk3568-cru";
> > > > > >               reg =3D <0x0 0xfdd20000 0x0 0x1000>;
> > > > > > +             rockchip,grf =3D <&grf>;
> > > > > >               #clock-cells =3D <1>;
> > > > > >               #reset-cells =3D <1>;
> > > > > >       };
> > > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > >
> > >
> > >
> > >
> > >
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
