Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD3ABCF34A1
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 12:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Gj3+LsteqcHSAieC1Ak5VaxiGweuJAxZJqU2dABA7w=; b=MWa+1vLfvHyjUh79HPDbUQbTTi
	xCLdmiCbOKRCW/2Tk6UtUKDMCQvUtfCN+Xt+iRNJNgzI1jWEzNBja+eXbwCyuP2SHgp/st1I6FxgW
	/NTWMDg5e5C8HESKiEooJ8xtX7UHP0wZuj76CyukvgzlXpbBmGHhHFgFnsJaiBhRUwJ9k29iCxxdG
	jMGKn/DMzEf0mlaW0fMsDmdHiRQ4FIk9Xrbts2uUBdkgeCWQmODPQqtWJCr3M4+STFXQew/U6TTvN
	GJ+CgTsiDZa9HRL1w3ud7j61kQ0aU+jzr7n+8hWpdcEPFMn7ib4p3nvUfyNuyO1Ukiga/vaE30+VB
	5YIU+7rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swKsH-000000090nK-2LKO;
	Thu, 03 Oct 2024 12:24:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swKsF-000000090mx-2Xjj
	for linux-rockchip@bombadil.infradead.org;
	Thu, 03 Oct 2024 12:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:From:Subject
	:Cc:Message-Id:Date:Content-Type:Mime-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SIqwKiUhoG6a2uAv06BzwgNeY0A4xHveg1I2dddHC5k=; b=YQ8buqmpv41R3OMDkveHwB8W6o
	sPo+zGWOVLVhKtVwmmhlK6+kqkOBUtJR8ElP7i+bOk+zTs18eF01voADGwQKPAv2hUds2RrLLBchB
	jRgnLfxo+mSo732o7qt1TDOtq8zetVPNjtgKczWFw7280ov7zEemDNZTGz2hkrlZaM+efcNsYJdF4
	594RtE3g/sFHGgP4kyPkS7yeChdFblhfdjPf5xhDPoXOTOk6QtUTB0oIi3SQBMpz/G6jbX8UHAtJU
	1pJVdPg18Q/RvPhy0+rFt3pqdOfh5nZcEPywKQWhkhnUiA7eAnltLwLUK/asmMr88c1PF2Xmc7x6y
	54jT7PKw==;
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swKsC-00000003gTX-1DJA
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Oct 2024 12:24:02 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727958227;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SIqwKiUhoG6a2uAv06BzwgNeY0A4xHveg1I2dddHC5k=;
	b=YelPOsBERiXUuI0N7YkwoBcpn+pBfJJqmsv41Pd9al0ZuwRfDkAfeTYUlVW0B6nFTRJ6VB
	jF2aVigkNKahQzjyQzabKPofXDNeb5fsSqSNhulSl7P51hNhVanTnagxXvS10Dy7vmrN0U
	HFGb5hrax1x7MVFNHWXlWXI/0L1jnhYCFp/1GUQy5ER7yr0Gd20PbaLnAXoJQlr9wZtf74
	UpkcvKfNvta4B8QnUn27mo6e3hFd909oawnP7abXcCsWXNkVWy16KEzY/IKoyJA/HFQdnS
	GkR1se40qV8wEKKw9q8U8goyGj1XZqTCIR/6rLy0Jod5O+hqF7ip0u2xLasAdg==
Date: Thu, 03 Oct 2024 14:23:33 +0200
Message-Id: <D4M62CEXA88M.2I1F9N6V18R3N@cknow.org>
Cc: "Alex Bee" <knaerzche@gmail.com>, "Nicolas Dufresne"
 <nicolas.dufresne@collabora.com>, "Benjamin Gaignard"
 <benjamin.gaignard@collabora.com>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, "Dan Carpenter"
 <dan.carpenter@linaro.org>, "Diederik de Haas" <didi.debian@cknow.org>,
 <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-staging@lists.linux.dev>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 00/11] media: rkvdec: Add H.264 High 10 and 4:2:2
 profile support
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Jonas Karlman" <jonas@kwiboo.se>, "Sebastian Fricke"
 <sebastian.fricke@collabora.com>, "Ezequiel Garcia"
 <ezequiel@vanguardiasur.com.ar>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>
References: <20240909192522.1076704-1-jonas@kwiboo.se>
In-Reply-To: <20240909192522.1076704-1-jonas@kwiboo.se>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_132400_417613_4BD7ED08 
X-CRM114-Status: GOOD (  10.96  )
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
Content-Type: multipart/mixed; boundary="===============4610579571816270442=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4610579571816270442==
Content-Type: multipart/signed;
 boundary=341152132e471a78ee9810b312ec357e29c650715afc234660476caf54da;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--341152132e471a78ee9810b312ec357e29c650715afc234660476caf54da
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Sep 9, 2024 at 9:24 PM CEST, Jonas Karlman wrote:
> This series add H.264 High 10 and 4:2:2 profile support to the Rockchip
> Video Decoder driver.
> ...
> Tested on a ROCK Pi 4 (RK3399) and Rock64 (RK3328):
> ...
>
> Link to v1: https://lore.kernel.org/linux-media/20200701215616.30874-1-jo=
nas@kwiboo.se/
>
> To fully runtime test this series you may need FFmpeg patches from [1]
> and fluster patches from [2], this series is also available at [3].

I have been using this patch set and earlier version stemming all the
way back to 2023-10-29 and with a patched ffmpeg and mpv ([1] but
earlier versions before that) I have been enjoying HW accelerated
playback on my Rock64 (rk3328) :-)

So for the series, feel free to add my

Tested-by: Diederik de Haas <didi.debian@cknow.org>

[1] https://github.com/mpv-player/mpv/pull/14690

Cheers,
  Diederik

> [1] https://github.com/Kwiboo/FFmpeg/commits/v4l2request-2024-v2-rkvdec/
> [2] https://github.com/Kwiboo/fluster/commits/ffmpeg-v4l2request-rkvdec/
> [3] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-high-=
10-v6/
> [4] https://gist.github.com/Kwiboo/f4ac15576b2c72887ae2bc5d58b5c865
> [5] https://gist.github.com/Kwiboo/459a1c8f1dcb56e45dc7a7a29cc28adf
>
> Regards,
> Jonas
>
> Alex Bee (1):
>   media: rkvdec: h264: Don't hardcode SPS/PPS parameters
>
> Jonas Karlman (10):
>   media: v4l2-common: Add helpers to calculate bytesperline and
>     sizeimage
>   media: v4l2: Add NV15 and NV20 pixel formats
>   media: rkvdec: h264: Use bytesperline and buffer height as virstride
>   media: rkvdec: Extract rkvdec_fill_decoded_pixfmt into helper
>   media: rkvdec: Move rkvdec_reset_decoded_fmt helper
>   media: rkvdec: Extract decoded format enumeration into helper
>   media: rkvdec: Add image format concept
>   media: rkvdec: Add get_image_fmt ops
>   media: rkvdec: h264: Support High 10 and 4:2:2 profiles
>   media: rkvdec: Fix enumerate frame sizes
>
>  .../media/v4l/pixfmt-yuv-planar.rst           | 128 ++++++++++
>  drivers/media/v4l2-core/v4l2-common.c         |  80 +++---
>  drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +
>  drivers/staging/media/rkvdec/rkvdec-h264.c    |  64 +++--
>  drivers/staging/media/rkvdec/rkvdec.c         | 239 +++++++++++++-----
>  drivers/staging/media/rkvdec/rkvdec.h         |  18 +-
>  include/uapi/linux/videodev2.h                |   2 +
>  7 files changed, 410 insertions(+), 123 deletions(-)


--341152132e471a78ee9810b312ec357e29c650715afc234660476caf54da
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZv6MygAKCRDXblvOeH7b
btePAP9ToufxZmhr2Lk3H7eoFfXNX6W5vCwP0nFLWmC9+8cVVQD9G8eUte6bu0b+
A2j0SrvAl7VTKvbJcdcY6UFGpsaKLAk=
=yXzH
-----END PGP SIGNATURE-----

--341152132e471a78ee9810b312ec357e29c650715afc234660476caf54da--


--===============4610579571816270442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4610579571816270442==--

