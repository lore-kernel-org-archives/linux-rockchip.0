Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4574C30653
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 09:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=28mSycIE6bFEJwqgxnu24UUiS0FcRWOHk3qmfXuntoE=; b=gdUQklVrO/2Uk+cVrpqbImMDDE
	g8w1MFX7wZRM1OJzauSnE1op3mGp763+uSK3NdOV3cvp1RER1gliN4/dfHPp71FQl3FzWIxbjqMCI
	Ghe+PCvcMW9bExx+Zx6YQZRpwrMnocnqpliD5FOvXaWF1X1ok/6dbGZXkNAaKyE6QH3UDvuoWOlFU
	7Xi/53x6WlgSFCSC/LfBK3KN/Orbych5mReMHyQqKJxxpm65v/lo16o90rJYKmhriu0xs4adf80pu
	8VH/U9PHku1ALDiLaEFUulcwrZLN1iSIdd9o9z/x/iG+lNhKYNW0E7+cFMPl9LlOubLh6JsjIjBlt
	IDlVOObA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODba-00000002UTD-2NGR;
	Mon, 01 Jul 2024 09:45:50 +0000
Received: from out-177.mta0.migadu.com ([2001:41d0:1004:224b::b1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODbO-00000002UPf-2WIt
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jul 2024 09:45:41 +0000
X-Envelope-To: dri-devel@lists.freedesktop.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1719827135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/av4W2tCOJXydcbMH9LNQjQOsvgQ+rwVghFqvABN/IM=;
	b=Eb/ei43ZybmEZBl9HYbboGX2gXc0SInXoqoGDB5uOxQSBB2KFFzNO8DjZL9+XWEnRsFI6K
	IM2ie7+ckDT2PVQoYqQCAas6MKUDaxG6qwqJk8cWBiWvEK7aVvzy+VoFtwnztNXrgXH8WZ
	tW6cj0/dl+O65jC6RUV5BuVHjNu3Hx4QKyNZQGnl5h561dBDGXxoMY7vN7yhfgsdOSssrY
	OCIWyNv2IBHZikravyo6xHFpJQW4V2WbeVBY0Vt1tNPoFV/qrrvJPShFctVam5J/Q7+CXC
	qhufNa3qPJVWT7atbpOvZG9S6s0Ugx6/uxsPGOr6TTh5totCFRCMmz7TN7sS/w==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Jonas Karlman <jonas@kwiboo.se>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 00/13] rockchip: Enable 4K@60Hz mode on RK3228, RK3328,
 RK3399 and RK356x
Date: Mon, 01 Jul 2024 11:45:21 +0200
Message-ID: <2110934.yheWrVD7BS@bagend>
Organization: Connecting Knowledge
In-Reply-To: <2528743.FZeJfPzi8P@bagend>
References: <20240615170417.3134517-1-jonas@kwiboo.se> <2528743.FZeJfPzi8P@bagend>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_024539_044301_7F6C1B7B 
X-CRM114-Status: GOOD (  20.09  )
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
Content-Type: multipart/mixed; boundary="===============6147243577681569468=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6147243577681569468==
Content-Type: multipart/signed; boundary="nextPart9944500.OYHocSe4MS";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart9944500.OYHocSe4MS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Mon, 01 Jul 2024 11:45:21 +0200
Message-ID: <2110934.yheWrVD7BS@bagend>
Organization: Connecting Knowledge
In-Reply-To: <2528743.FZeJfPzi8P@bagend>
MIME-Version: 1.0

Hi Jonas,

On Monday, 1 July 2024 11:07:50 CEST Diederik de Haas wrote:
> On Saturday, 15 June 2024 19:03:51 CEST Jonas Karlman wrote:
> > This prepares and enable use of HDMI2.0 modes, e.g. 4K@60Hz, on RK3228,
> > RK3328, RK3399 and RK356x.
> > ...
> > This series may not fully depend on but was only tested together with
> > the series "drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID
> > cleanup" at [1].
> > [1] https://patchwork.freedesktop.org/series/134727/
> 
> I only just now realized this part of your message and consequently
> I had NOT applied the referenced patch set.
> 
> > I have tested 4K modes on following devices:
> > - Asus TinkerBoard (RK3288)
> > - Pine64 Rock64 (RK3328)
> > - Radxa ROCK Pi 4 (RK3399)
> > - Radxa ROCK 3A (RK3568)
> 
> And I can confirm that this patch set enables 4K(@60Hz) resolution when
> connecting my Rock64 to my 4K TV with my self-build 6.10-rc5 kernel.
> It selected the 3840x2160@60Hz resolution, but ``swaymsg -t get_outputs``
> also reported a range of 4096x2160 resolutions.
> 
> In contrast, my 6.10-rc2 kernel which is quite similar, except for this
> patch set, does not mention any 4K resolution at all.
> 
> So AFAIC you can already include:
> Tested-by: Diederik de Haas <didi.debian@cknow.org>
> 
> Next up will be a test with my Quartz64 Model B (RK3566).

The Q64-B test results were a bit different from Rock64's, but this patch set 
enabled the 4K@60Hz resolution as well.

1. The console output was at 1080p, whereas it also switched to 4K on the 
Rock64. I actually prefer this behavior.
2. After starting sway, it did switch to a 4K resolution, but this time it 
selected 4096x2160@30Hz on an unpatched kernel (my 6.10-rc2 and Debian 6.9.7).
With my 6.10-rc5 kernel *with* this patch, it selected 3840x2160@60Hz
3. None of those 'other' issues I reported with Rock64 showed up on Q64-B :-D

IOW: Also for the Pine64 Quartz64 Model B, you can add:
Tested-by: Diederik de Haas <didi.debian@cknow.org>

Cheers,
  Diederik
--nextPart9944500.OYHocSe4MS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoJ6sQAKCRDXblvOeH7b
bg7PAP43ud+WY6aEThMAVyAjvq6OsJBZCk51RNwaBBlKWvhBJwD+P6wkixnSYesh
pjAUG98IhpJvAuq83kFJLgPOoOxb5wI=
=xfwS
-----END PGP SIGNATURE-----

--nextPart9944500.OYHocSe4MS--





--===============6147243577681569468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6147243577681569468==--




