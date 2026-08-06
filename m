Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1109FC55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 00:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wD/ju5IDGE9D8OdtaGVrr6cbMPxFRxqymVJw7AzCI6I=; b=VoCxHyML4QwgTFMzY0AOTjDWLl
	S3QtHkY+c/HiPY2DtnCD1nsUlaUwhPCrSoFxeVRytKYZbS5bTt8FyRafUlVQiDatai8ywVR+O2O03
	AYth0CSNVOfjnlFbJvzLnNJ9tAHaN0M+0GjBf//2M+tyWU7tbCHHDHr93JrNzN8M26QAugoOB9o6L
	LePSPe2a0gyyG3tWi5zbwabaJr8JqrHnnXGuzf5D1P0viO8j/3jSRu+CLt2uZc7jt08F2zeRUuctO
	o46svf9UELKHXjyo1RJWZHGnFaaEAsNegYkh1B74k7dVFngk0DIrw8YFJZiuJsdXSgRtJ1viDRceK
	7nOdKJSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrmMb-00000004jXG-1ABp;
	Thu, 06 Aug 2026 00:53:37 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrmMY-00000004jWs-2rL2
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 00:53:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1785977607; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Jpedgj2Xv0w84RfTWOIEKEHDoQN726jvzIoC7FRHpg1n1cVUXLz15UT7uWK7I5AgCTt9QNTSR8S331aHM5uQMBP30EL5jjWYZYGKyALvCL2paqaPKS93OhTcU6h7Vj8WaqPG/XFHuntSVVOKbYnrFWESC0Da8cv8wvPI09Mxyik=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1785977607; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Y0o5aZmeUQ3l4Gcb28XZnKWO7jZtMVtIm69gJCsBCVM=; 
	b=iW6fO6pwOh4le/9HJDTe5y5ExvVnyH0aKadvfwRlU3DPlnBmECkMGQmyXsSVp4+uya+I3V/lqRkxY5RZOB1b4aT9rIXi+HjwLnIGjXHP74DApC5XaKGeA5tu3FEzEwktMIPZaBFIK91d6yh8Cyvf1hFQtvpzkP6fWSE7gbf4sYQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1785977607;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=Y0o5aZmeUQ3l4Gcb28XZnKWO7jZtMVtIm69gJCsBCVM=;
	b=Eyt4aTfqq7B+CMdd/U3d8TCdoewcgR8RBWNW8r/+0Uy8D4MMHrsYiXu93a9f9z7p
	CG52LcW5KGFMROXNor2zgMoHRHR5eKsnUQ9MX+5bcqjg+gzTamiLB5AVvLG/W/aAdif
	0jbGZlcU/JNbUWELSr9VzFzDV609QOBtrQHihNhg=
Received: by mx.zohomail.com with SMTPS id 1785977605537152.33915577818743;
	Wed, 5 Aug 2026 17:53:25 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id F24E2180597; Thu, 06 Aug 2026 02:53:21 +0200 (CEST)
Date: Thu, 6 Aug 2026 02:53:21 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v9 00/22] Synopsys DisplayPort Controller improvements
 for Rockchip platforms
Message-ID: <anPXvyL4sBjANnhm@venus>
References: <20260803-synopsys-dw-dp-improvements-v9-0-2e6e46135312@collabora.com>
 <20260804135641.17170-1-royalnet026@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260804135641.17170-1-royalnet026@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/285.956.17
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_175334_749185_224FFF81 
X-CRM114-Status: GOOD (  44.93  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Content-Type: multipart/mixed; boundary="===============3594384914775253471=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3594384914775253471==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lgiluf6bs5svv24h"
Content-Disposition: inline


--lgiluf6bs5svv24h
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v9 00/22] Synopsys DisplayPort Controller improvements
 for Rockchip platforms
MIME-Version: 1.0

Hello Igor,

On Tue, Aug 04, 2026 at 03:56:40PM +0200, Igor Paunovic wrote:
> You wrote in the cover letter that parts of this are untested, and asked =
for
> comments on the out-of-band hotplug callback.  I have been running this s=
eries
> on real hardware, so here is a report from the USB-C DP AltMode side.
>=20
> Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588, Orange Pi 5 Pl=
us, USB-C DP AltMode

Thanks. I've just send v10. I expect this to still work, but since
quite some patches changed I did not carry this over.

> Hardware and base
> -----------------
>=20
>   Board:  Orange Pi 5 Plus (RK3588)
>   Kernel: v7.2-rc6 + rockchip-devel, pinned at 8c70065a3207, which carries
>           this series at v9 - including 03/22 "Fix error handling in
>           dw_dp_link_enable()", so this is v9 and not an earlier respin.
>           No local changes on top of any dw-dp patch.
>   PHY:    your rockchip-usbdp v13 series, from the same branch
>   Sink:   4K120-capable display, reached both directly and through a USB-C
>           dock, DP AltMode over the Type-C port
>=20
> Results
> -------
>=20
> USB-C DP AltMode works.  I get 4K120 on the Type-C output, which on this =
board
> is a third display output that mainline does not otherwise light up at al=
l.
> The mode comes up at dclk 594 MHz, which is what 4:2:0 should give at that
> resolution (two pixels per clock), and it survives a live modeset - I can=
 go
> from 60 Hz to 120 Hz on a running desktop without unplugging the cable and
> without dropping to a black screen.
>=20
> That last part is the change I want to highlight.  On my previous kernel,=
 based
> on v7.0 without this series and without the usbdp rework, touching the ca=
ble
> while the link was up was something I had to actively avoid, and a live 6=
0->120
> modeset gave me a black screen that needed a hard reset to recover from. =
 Both
> of those are gone here.  Whatever the combination of the follow-up bridge=
 work
> and the PHY re-init on orientation change is doing, from where I sit it i=
s the
> difference between "usable" and "do not touch".
>=20
> I have not exercised the DP audio path (22/22) yet, and I have no board w=
ith a
> native DP connector or an HDMI bridge downstream, so I cannot say anything
> about the code path you flagged as untested.

heh, that's the most interesting ones regarding testing as I haven't
tested the related paths in the driver. USB-C AltMode should be more
or less the same on all RK3588/RK3576 boards.

> On the out-of-band HPD callback
> -------------------------------
>=20
> You asked for comments, and I have a data point rather than a design opin=
ion.
>=20
> On this board the AUX channel is dead at boot until something kicks the T=
ype-C
> port controller.  The cause is on the firmware side rather than yours: the
> board boots through EDK2, which has no TCPM, so it hands Linux a PHY that=
 was
> never brought into a sane state and a port controller that has never
> negotiated.  Nothing on the DP side can discover the sink until fusb302 is
> poked, after which the link comes up normally and stays up.

That's needs to happen anyways independent of the boot process,
since USB-C can be hot-plugged :)

> I mention it because it is exactly the shape of event your callback is fo=
r: the
> hotplug information arrives from outside the DP block, late, and the DP s=
ide had
> no way of knowing.  A separate callback rather than reusing hotplug_notif=
y seems
> right to me for that reason - the two really are different sources, and o=
nly one
> of them is something the DP block could ever have observed itself.  I can=
not
> tell you whether there is a cleaner mechanism, but I can tell you that the
> separation matches how the hardware actually behaves here.

I'm well aware how the hardware works. That does not necessarily
require a separate notifier, though. But the existing one does not
work anyways as it does not distinguish the information source. That
could be changed of course (but with quite some churn involved).

> One neighbouring finding
> ------------------------
>=20
> While bringing this up I hit a bug that is not in your series but sits ri=
ght
> next to it, so it may be useful to you and to Cristian.
>=20
> On RK3588, VP2's dclk was parented to the HDMI PHY clock.  When the HDMI =
PHY is
> not powered - which is the normal case if you are only driving the Type-C
> output - that parent is dead, and DP gets no usable pixel clock: nothing =
above
> 640x480 comes up.  Re-parenting VP2's dclk to V0PLL in DT fixes it, and t=
hat is
> what the 4K120 above is running on.
>=20
> I see Cristian's "Consolidate HDMI PHY PLL clock parent switch" (v3 09/14=
 of the
> DW HDMI QP YUV series) touches the same parent-switch logic from the driv=
er
> side.  I have not yet worked out whether that series makes the DT change
> unnecessary, or whether the two are complementary.  I will work that out =
before
> I send anything, but I would rather flag it here than have two people dis=
cover
> it separately.
>=20
> Happy to run any specific case you want covered, or to retest on later
> revisions.

Thanks.

> Thanks for the series - it turns a port that did nothing on mainline into=
 my
> main display output.

Great. It's obviously too late for 7.3 now, but I hope to get all of
this upstream in 7.4. It would be a nice start into 2027 :)

Greetings,

-- Sebastian

--lgiluf6bs5svv24h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmpz2vYACgkQ2O7X88g7
+poa8g//V4lZXwFrUKn9W7pvGSKRbQKP4TMFkSKNnWNhOvBYSj9Lzsv9q/hhiVUZ
lQFGT6wK56WTj1SdcWNxI59e0orTSGSea6gYdMX5BIB6erEkA5NA7QqAKaBc7Pce
c2I94QDQ20waF3m6YUGdTHh6uBScK8PKtBcK80VYp0+CejhFIYj03aDkzGp6KGVF
sb+/QSZCfEVSAATdBfWV7UqBqh4jXov+sC3zewDfEYXqY3wg0B9/PSklujUCCECF
/aND5jg1s+vMqzxb7silXU0rJu5t5k8s4CU1ABtOc0KCKRuMHwif4yWeOlfcaSnJ
UL1bBqcUW50r2dFxhJsmcySL9ORVUX770vnUTRmJBHxF5k/LNavI9cK1yKKlTmuO
xfBwR8pJNh6ERdlcYqSsTUjvCdtbtVJUf4c+sagpg3tFX+zgxv2WXi5opJKZl7wc
uSSUvLrDlvRwEoqAle8BdV2Tu0n8CwbDA4EiE1xUIZh17GjI1FER44D+0Uq/Dw7V
IJjHoM7ek07RSBBwW9f8UGI4wMLrOGG78Fx50Fl+qOsuH19I9siKv2IaIqwRdudU
dZ36Vb1extrrNz1yhWmpub7onTCWs+1Cw/X5RSbR8+kFw+w30r3gKDiUo0+gkQOb
P4SFuJEmfglBS3UCQFTsuBVP9VnE2JsO4VQTcymOHRwEUf+QgLQ=
=FbcJ
-----END PGP SIGNATURE-----

--lgiluf6bs5svv24h--


--===============3594384914775253471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3594384914775253471==--

