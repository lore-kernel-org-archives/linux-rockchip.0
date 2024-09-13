Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44F8CFC6169
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 17:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lts2GF4WpZQfb0sw96aQdQwLtMQcWlcq1nufbXB2bYA=; b=ooTDGs0+I8IPZVL39DecHY/L5t
	piTF0JIr6yAeyE/TGNzvCghKQHV6NOkr3XtayCqBahqEVdY/St4zeS9Ncf8idDV4Vj3VdPxs8PA09
	yw4v6kE/g72PQeI8kPSY878azSjZvciWXLjeOk3asZQi+tMn8JNVLdlkbcpBU7lJbCVhslNDfnxVM
	p9WEV36Af5rxRMM49cwmRltQG6GAOuDRds15WxH7sh79yud+sb8DFr8iRIo/qtC2VV6SHgKyNVVjs
	iu0dRPLiPKaty3GrRtRJlBYlRqNC9eiLI2vfj54FeD1DewXDyCduQijdm9jL7kXTZGeAv8bj/MYNA
	eSrjJ5Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spA7s-0000000Gfow-1b7q;
	Fri, 13 Sep 2024 17:30:32 +0000
Received: from out-187.mta0.migadu.com ([91.218.175.187])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spA7p-0000000GfnD-2TNH
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 17:30:31 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1726248623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nke/5YLh6MHWfzE6gklOT9y6TbGopcbIdlXZPOZs7oA=;
	b=J3bn2shjG8JKynQlOWputFVEI1nNGcv2ULoyvL5XC54Cq0m4QV6Ax0dJNDcWW3CG7GEBRi
	jWezVb1MnzTkjxIQZKr15UxggV3fEbRNRExzG6zKoru5jwADrg0LpANpRmQskJHe8+z7lM
	PtbWLrHUZRSGjBvepXvbUcS3aitT/1Z199Nqnbd6Ln7SHW1RSB/YKoR0171FDoKs9yZgDq
	DkoMyH3KM+QDzI/7suxfaxxAsb+6QYxT5G1U7qKoyejQXdbEdpGXIk7eazPKBF74ZFx1Nk
	Bvnl1WZ/IrVcxypl583dxVPjzxTlVTdnLGjFdJpVSDjj77YWlWBvwyXggcZB8Q==
Date: Fri, 13 Sep 2024 19:30:13 +0200
Message-Id: <D45C28ZF5US9.1BCL9HBVRERJB@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Jonas Karlman" <jonas@kwiboo.se>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>
Cc: "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jernej Skrabec"
 <jernej.skrabec@gmail.com>, "Christian Hewitt"
 <christianshewitt@gmail.com>, "Christopher Obbard" <obbardc@gmail.com>,
 <dri-devel@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 00/10] drm: bridge: dw_hdmi: Misc enable/disable, CEC
 and EDID cleanup
References: <20240908132823.3308029-1-jonas@kwiboo.se>
In-Reply-To: <20240908132823.3308029-1-jonas@kwiboo.se>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_103030_039248_B9E1F952 
X-CRM114-Status: GOOD (  21.47  )
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
Content-Type: multipart/mixed; boundary="===============1621620248783268186=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1621620248783268186==
Content-Type: multipart/signed;
 boundary=d6f0c6cf338a74127d2f7d5ac197597d4aebc3a0a9a16533c3439fd9f222;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--d6f0c6cf338a74127d2f7d5ac197597d4aebc3a0a9a16533c3439fd9f222
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Jonas,

On Sun Sep 8, 2024 at 3:28 PM CEST, Jonas Karlman wrote:
> This series ensure poweron/poweroff and CEC phys addr invalidation is
> happening under drm mode_config mutex lock, and also ensure EDID is
> updated (when the dw-hdmi connector is used) after a hotplug pulse.
>
> These changes has mainly been tested on Rockchip devices together with a
> series [1] that add HDMI 2.0 4K@60Hz support to RK3228, RK3328, RK3399
> and RK3568.

I did some tests with this series (together with the 4K60Hz one).

Test setup:
- TV capable of display 4K@60Hz
- monitor capable of displaying 1080p@60Hz
- Quartz64 Model-A
- Rock64

When I booted up connected to the 4K TV, the boot messages were
displayed in 1080p resolution. IIUC it was to be considered an
improvement when it would be illegible at 4K, but that did not happen.
Neither on the Q64-A or the Rock64.

When executing ``cat /sys/class/graphics/*/modes`` it returned
``U:3840x2160p-0``, so that was good.

I then went on the HDMI-hot-plug-swap-test and connected it to my 1080p
monitor while the system was still online. That did not change the
output of the previous command. As my monitor doesn't support 4K it
seems to have chosen a 640p or 720p resolution.
IOW the letters were rather big. With enough output on the screen, it
went off the visible area, so all I could do then was 'blind' typing.

If I booted up connected to the 1080p monitor then it reported a 1080p
resolution and when swapping to the 4K TV, it kept reporting that value
and displaying things in 1080p resolution, but ofc there were no
abnormal big letters or output falling off the screen this time.

If I did those test when Sway was running, all the data (``swaymsg -t
get_outputs --pretty``) showed that a proper resolution switch was made
and the display was correctly adjusted accordingly.

I then tried to do the keep-swapping-until-output-breaks what Chris
reported about in the previous series.
At some point I thought I was able to reproduce the issue ... to then
conclude I had likely hit the poweroff button when swapping the cables.
And another time I thought I had managed to reproduce it ... to then
find out display wasn't working at all anymore. Turned out that likely
due to all that swapping, it was no longer properly inserted into my
monitor.
I've tried it a LOT of times, but I have to conclude that I was not able
to reproduce the problem and therefor also not the solution.

HTH,
  Diederik

--d6f0c6cf338a74127d2f7d5ac197597d4aebc3a0a9a16533c3439fd9f222
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZuR2qAAKCRDXblvOeH7b
blXRAQCfKcyHODxabQQ1dpuHfkKeLr6Iu72WhQRxgUdBVsfp1gD+LBWU+xjKnYb5
mVxYjuNwxGIjjztpo9Dy4jtfBMoYbwI=
=lsyh
-----END PGP SIGNATURE-----

--d6f0c6cf338a74127d2f7d5ac197597d4aebc3a0a9a16533c3439fd9f222--


--===============1621620248783268186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1621620248783268186==--

