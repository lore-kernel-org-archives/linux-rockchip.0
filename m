Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 931E4CF31B9
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 19:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Cc:To:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/CuPE0giiASZCyqXDpLvjq93DAcRoRhSgQBtBW9OHsI=; b=1Ej02v3Kl1Z6PW5+CCFGcK8r5G
	IBv80BLjgFOnqBFcF2pm1TqcDyx7zWMFsP7/yKMSNN8j9eLVr/Gs8YOQbLpOiZOeAZafki2X3HW3K
	o8EQHqKRucUd4upEiXN7XeDy3jjFwlp4cSreQe49cpQ6FEQ8tzTd/xtyMtIeviDpUqTFyXMEPAbZW
	0kZTft2u0fktXsUBcGOJkbxfDul/w92FPkGD780b+F1Ic+HUMb7znBAmFiRejpd9jAU5clZYrO2NG
	9CGdztxrs0hCKyS5EuRRcqu3miXesab6UJzIhf7uyAyCmWv/LwDWG5PjPaWR1XlmIMA6Ivqmvo88z
	dXuSnrDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5Bb-00000007K2C-2CMd;
	Wed, 02 Oct 2024 19:38:59 +0000
Received: from out-179.mta1.migadu.com ([95.215.58.179])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5BX-00000007K0U-2r7c
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 19:38:58 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727897926;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MAuXe0O3NSF994mavqo25iaQ8hQ/ha0f9ecg/g2gJWI=;
	b=E8AN09LmfqrysbmhydRjpjdsAn3biTkK8f9dWRaCXFbaShjmP3vdUvdh7+NI9HN+hum8Gf
	QY4b4gEe91QUQch3pkiuf+5JWq0gnLi8nlwXTxdy1sof7IPvY/6ozjTawKHjjm7tc7ulWi
	2dQEeAtrJZzzPanAwI0ExrwkgT5QA/rAILkNY/XQ1hl0LxCMXAX6c8xbm7d96Tkfq5qVkb
	lRXY5+7z6zzycuieL5viwoCDFR/G4objF8+DhMmbWn7oE6My5nDatFoAurdN/zfYGt7HVi
	BPJ7jmdwrTrbde3C0l1ECyFc9Y7EC2xnJnpbv7v3A1cUV8aT0fx3REu9wFfJEw==
Date: Wed, 02 Oct 2024 21:38:32 +0200
Message-Id: <D4LKOUTND4C9.A02Z06OBACZE@cknow.org>
Subject: Re: [PATCH v2 00/10] drm: bridge: dw_hdmi: Misc enable/disable, CEC
 and EDID cleanup
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>
Cc: "Diederik de Haas" <didi.debian@cknow.org>, "Heiko Stuebner"
 <heiko@sntech.de>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Christian
 Hewitt" <christianshewitt@gmail.com>, "Christopher Obbard"
 <obbardc@gmail.com>, <dri-devel@lists.freedesktop.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20240908132823.3308029-1-jonas@kwiboo.se>
 <D45C28ZF5US9.1BCL9HBVRERJB@cknow.org>
In-Reply-To: <D45C28ZF5US9.1BCL9HBVRERJB@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_123856_142920_957B6E34 
X-CRM114-Status: GOOD (  21.66  )
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
Content-Type: multipart/mixed; boundary="===============1397549754541110393=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1397549754541110393==
Content-Type: multipart/signed;
 boundary=3a883e580afd625faf3965ca5225d4c2652f66b4a902790343c6692e64f8;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--3a883e580afd625faf3965ca5225d4c2652f66b4a902790343c6692e64f8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Jonas and Laurent,

I may be showing my n00bness ... or I actually found something ...

On Fri Sep 13, 2024 at 7:30 PM CEST, Diederik de Haas wrote:
> On Sun Sep 8, 2024 at 3:28 PM CEST, Jonas Karlman wrote:
> > This series ensure poweron/poweroff and CEC phys addr invalidation is
> > happening under drm mode_config mutex lock, and also ensure EDID is
> > updated (when the dw-hdmi connector is used) after a hotplug pulse.
> >
> > These changes has mainly been tested on Rockchip devices together with =
a
> > series [1] that add HDMI 2.0 4K@60Hz support to RK3228, RK3328, RK3399
> > and RK3568.
>
> I did some tests with this series (together with the 4K60Hz one).
>
> ...
>
> I then went on the HDMI-hot-plug-swap-test and connected it to my 1080p
> monitor while the system was still online. That did not change the
> output of the previous command. As my monitor doesn't support 4K it
> seems to have chosen a 640p or 720p resolution.
> IOW the letters were rather big. With enough output on the screen, it
> went off the visible area, so all I could do then was 'blind' typing.
>
> If I booted up connected to the 1080p monitor then it reported a 1080p
> resolution and when swapping to the 4K TV, it kept reporting that value
> and displaying things in 1080p resolution, but ofc there were no
> abnormal big letters or output falling off the screen this time.

A DT validation on rk3328-rock64.dtb reported this:

rockchip/rk3328-rock64.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71,=
 4]] is too long

That's because `display/bridge/synopsys,dw-hdmi.yaml` dt-binding has
interrupts : maxItems : 1

and the rk3328.dtsi file has 2 interrupts in its hdmi node.

Easiest solution is to just remove the 2nd one and that makes DT
validation happy.

Looking at the rk3328 TRM, I found these hdmi related interrupts:
67  hdmi_intr
103 hdmi_intr_wakeup

Looking at the rk3399 TRM, I found these hdmi related interrupts:
23  hdmi_irq
24  hdmi_wakeup_irq

Looking at the rk3568 TRM, I found these hdmi related interrupts:
76  hdmi_wakeup
77  hdmi

So my thinking is:
- what if the dt-binding is incorrect? (-> maxItems : 2?)
- wakeup 'sounds like' Hot Plug Detection?

which makes it relevant for this series and it could mean that the
rk3399-base.dtsi and rk356x.dtsi are actually missing an interrupt
definition in their DT files?

Or I am completely talking nonsense, which is the most likely scenario.

Cheers,
  Diederik

--3a883e580afd625faf3965ca5225d4c2652f66b4a902790343c6692e64f8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZv2hPgAKCRDXblvOeH7b
bmmrAQD2mW1+acc5OPHMteyhoxMRMFD4vmCP/MBBFkFjRlytFQD+IdxwUTVUb7/e
RzIrjKLyw2w+vxRnrW5FZkj8vkS36QA=
=SYHq
-----END PGP SIGNATURE-----

--3a883e580afd625faf3965ca5225d4c2652f66b4a902790343c6692e64f8--


--===============1397549754541110393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1397549754541110393==--

