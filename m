Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B441CA101F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EdYYo8ST7gmFgTnzwVSnzHfEu3AwGiX5ycx1Q5vB8Og=; b=4ZGuD1lylu9wF9BdBK6PTDQGqp
	HbSctVZS9Asrbfvu83hnSGGxiDnhYA+aWgyQu91gFUTvaMJdSI9uPuLiZYwaP3wGJVt8vPfHiHtlV
	XRX6ruVYUh+FuUBXtjs9SXUia0gK/nvuQIIx8ddvzRg8KLX5b73/dgkPz3VY4mCE6P3IKnrHgJ04s
	HeGRBy+vBT7RfBJlvDcs+7HeZIulETUa7QcFfgn5UB/ZJf+oe+c7iolr2BYoKi0TBlmv3JuSuFFWu
	seOhs0+Rd/1f5r5GACjLODwNQrPl2qvOtvnn3zBDpNZaqFypv9UerTelh4uHp3zUDIkc0sUqcGtym
	H/FWiIDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwQZd-0000000GK9Q-1YMP;
	Wed, 10 Sep 2025 19:33:45 +0000
Received: from out-182.mta1.migadu.com ([2001:41d0:203:375::b6])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwQZZ-0000000GK5x-3wo0
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 19:33:43 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1757532799;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9HNWtay6hchY2bwAXRQNT7mOaORvRgSuIBfEgTNIN2g=;
	b=V5rUyYJ4lRHWcqYqYknEfuZsE8sAXDcMsy0NulpZl4lozkggwbyalaCf3CKTWt/14F9Wrq
	vPe6H8TlA1Iz51DpiISWBmrecDrZPRfFRAsGjjMs53Z6pWg1y60/dyVhP7CjkW4gTpoZTJ
	N6kiToz7MiFr/Z2nfaCDdwJBZcz2WAw/e6O82T2sfCbS5EbUTTDJbm6CO+et6zHtaKcUSJ
	JW+TzEFamJQxbjHAbj8T0hQ0Qaq8QgfR7X9SHBLEwn+ubmgXNopwEjUyq37RKVopNDyqQ3
	K5kuOXq791foXKvLMSjc+cb/7EUa6IA0s+HTrbJ3Q+KtB9pROsni3TlwNds6aQ==
Date: Wed, 10 Sep 2025 21:33:04 +0200
Message-Id: <DCPDDIZ3S1CM.3DJYY5U4T6V4U@cknow.org>
Cc: "Stephen Boyd" <sboyd@kernel.org>, "Rafael J . Wysocki"
 <rafael@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Sebastian
 Reichel" <sebastian.reichel@collabora.com>, "Sebin Francis"
 <sebin.francis@ti.com>, "Bjorn Andersson" <andersson@kernel.org>, "Abel
 Vesa" <abel.vesa@linaro.org>, "Peng Fan" <peng.fan@oss.nxp.com>, "Tomi
 Valkeinen" <tomi.valkeinen@ideasonboard.com>, "Johan Hovold"
 <johan@kernel.org>, "Maulik Shah" <maulik.shah@oss.qualcomm.com>, "Michal
 Simek" <michal.simek@amd.com>, "Konrad Dybcio" <konradybcio@kernel.org>,
 "Thierry Reding" <thierry.reding@gmail.com>, "Jonathan Hunter"
 <jonathanh@nvidia.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 "Christian Hewitt" <christianshewitt@gmail.com>
Subject: Re: [PATCH 0/5] pmdomain: Restore behaviour for disabling unused PM
 domains
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Ulf Hansson" <ulf.hansson@linaro.org>, "Geert Uytterhoeven"
 <geert@linux-m68k.org>, "Nicolas Frattaroli"
 <nicolas.frattaroli@collabora.com>, "Saravana Kannan"
 <saravanak@google.com>, <linux-pm@vger.kernel.org>
References: <20250909111130.132976-1-ulf.hansson@linaro.org>
In-Reply-To: <20250909111130.132976-1-ulf.hansson@linaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_123342_275202_13147705 
X-CRM114-Status: GOOD (  16.08  )
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
Content-Type: multipart/mixed; boundary="===============5688138542342450537=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5688138542342450537==
Content-Type: multipart/signed;
 boundary=2d3af1ea26d984980a780563242cbe541c010a2489cc6084c981a9cec8dc;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--2d3af1ea26d984980a780563242cbe541c010a2489cc6084c981a9cec8dc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Tue Sep 9, 2025 at 1:11 PM CEST, Ulf Hansson wrote:
> Recent changes to genpd prevents those PM domains being powered-on during
> initialization from being powered-off during the boot sequence. Based upo=
n
> whether CONFIG_PM_CONFIG_PM_GENERIC_DOMAINS_OF is set of not, genpd relie=
s
> on the sync_state mechanism or the genpd_power_off_unused() (which is a
> late_initcall_sync), to understand when it's okay to allow these PM domai=
ns
> to be powered-off.
>
> This new behaviour in genpd has lead to problems on different platforms [=
1].
>
> In this series, I am therefore suggesting to restore the behavior of
> genpd_power_off_unused() along with introducing a new genpd config flag,
> GENPD_FLAG_NO_STAY_ON, to allow genpd OF providers to opt-out from the ne=
w
> behaviour.

Is it expected that I'm still seeing this on a Rock64 (rk3328), just
like before [1]?

  [   17.124202] rockchip-pm-domain ff100000.syscon:power-controller: sync_=
state() pending due to ff300000.gpu
  [   17.129799] rockchip-pm-domain ff100000.syscon:power-controller: sync_=
state() pending due to ff350000.video-codec
  [   17.140003] rockchip-pm-domain ff100000.syscon:power-controller: sync_=
state() pending due to ff360000.video-codec

This is with a 6.17-rc5 kernel with this patch set applied.
And it also has this patch from Christian Hewitt added, now in v3:
https://lore.kernel.org/linux-rockchip/20250906120810.1833016-1-christiansh=
ewitt@gmail.com/

When I boot into a 6.17-rc5 kernel without any patches applied, I do get
the 2 for ff350000.video-codec and ff360000.video-codec, but not the=20
ff300000.gpu one.

Interestingly:
ff300000.gpu -> power-domains =3D <&power RK3328_PD_GPU>;
ff350000.video-codec -> power-domains =3D <&power RK3328_PD_VPU>;
ff360000.video-codec -> power-domains =3D <&power RK3328_PD_VIDEO>;

I would be surprised if that was a coincidence.

Cheers,
  Diederik

[1] https://lore.kernel.org/all/DCK0O99SYSCF.BMBAEUV24C1G@cknow.org/

>
> Kind regards
> Ulf Hansson
>
> [1]
> https://lore.kernel.org/all/20250701114733.636510-1-ulf.hansson@linaro.or=
g/
> https://lore.kernel.org/all/20250902-rk3576-lockup-regression-v1-1-c4a0c9=
daeb00@collabora.com/
>
> Ulf Hansson (5):
>   pmdomain: core: Restore behaviour for disabling unused PM domains
>   pmdomain: rockchip: Fix regulator dependency with
>     GENPD_FLAG_NO_STAY_ON
>   pmdomain: renesas: rcar-sysc: Don't keep unused PM domains powered-on
>   pmdomain: renesas: rcar-gen4-sysc: Don't keep unused PM domains
>     powered-on
>   pmdomain: renesas: rmobile-sysc: Don't keep unused PM domains
>     powered-on
>
>  drivers/pmdomain/core.c                   | 20 ++++++++++++++------
>  drivers/pmdomain/renesas/rcar-gen4-sysc.c |  1 +
>  drivers/pmdomain/renesas/rcar-sysc.c      |  1 +
>  drivers/pmdomain/renesas/rmobile-sysc.c   |  3 ++-
>  drivers/pmdomain/rockchip/pm-domains.c    |  2 +-
>  include/linux/pm_domain.h                 |  7 +++++++
>  6 files changed, 26 insertions(+), 8 deletions(-)


--2d3af1ea26d984980a780563242cbe541c010a2489cc6084c981a9cec8dc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaMHSdwAKCRDXblvOeH7b
buGpAQDE9QMZtO9TtjXeo5Opuobk+4Tyg/Qx3IH3Sx8Fy3tJrAEAySejAaTzvvJT
jQfSiiJtxvC1FQ2UwrgFl3g6A6Q7fgo=
=+pr9
-----END PGP SIGNATURE-----

--2d3af1ea26d984980a780563242cbe541c010a2489cc6084c981a9cec8dc--


--===============5688138542342450537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5688138542342450537==--

