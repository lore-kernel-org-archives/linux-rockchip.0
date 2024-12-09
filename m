Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38F2BE7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 16:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BmLIg76McDokyIeDAiMlkoHueIcFoXsvhLC4hoG0Ld0=; b=WtQmloKJ+cNv6HKPQ0gt/fTOU2
	6amhTaqcp0rWLaxdZi+VolGkJNIiKhXM67UGZT6zgSKnTPmK4WWk+qt9qM8+CTr72jDIcu3Itb67j
	Rk8BImodZUZ0NiSQ0SVZFWc2wh8GYuxvGq9v8MHRvO3gyE/8UTK5qxEYUz1j4q8wjeX5vh5eavUFK
	8cw0uPKUWWyqrbpP5RkNN2mMa4oKY1xwkmzL5fHP0w0IS8iGOCLWG9xM0mloKEzlMJ3iH9mZmsoxM
	EP65c7y30v9O32pzA+6hSDJFKclI1/qd8p1AOLVbY1RGc/yCLQxf5hP7I0pYEjF8JEcCmuaSngwIf
	URJvz62A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgMA-00000008VTF-3p4q;
	Mon, 09 Dec 2024 16:11:34 +0000
Received: from out-185.mta0.migadu.com ([2001:41d0:1004:224b::b9])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgM7-00000008VRl-3gDW
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 16:11:33 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1733760686;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LIKxDul1PcRU3jEvG5gfDjtOJwNlmOXizKV8HI2OXjs=;
	b=RXIxVbmgY2RiTb762BtEh3yK1NiF08UMTYml4IZ5B/wiKXgNjViKlUeUFaVX+3E3qSp/1Y
	cfuWCkJ2A4IsyMt8dKd6GkYYPxsQhSbIlwICGT1cy/tvfuQK9hiBGAuQs+MJXHxb10NWgp
	9WKyi2/b4G15E1dOMuOPXv9LfSWMHhsA/ftIedCphTNKNGW3LryRQv7WIxS1V7jUpBWk7W
	czGzOrEdbCttwDJh7O87AMvdBgX2ZefrLtOzcVIWtX0VmbAvUZVf9xrVhLE9eyVnWNIr+V
	Qydg84tNNUpDhF6SGOyueLlAxPTJ3TmyDxLJy8SSEaWVTmdLPWY8aWHVPLc0dg==
Date: Mon, 09 Dec 2024 17:11:03 +0100
Message-Id: <D67AV178CEBD.3QA9VD4ZPRNQ1@cknow.org>
Cc: <Laurent.pinchart@ideasonboard.com>, <andrzej.hajda@intel.com>,
 <andy.yan@rock-chips.com>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <jernej.skrabec@gmail.com>, <jonas@kwiboo.se>, <krzk+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <neil.armstrong@linaro.org>,
 <quentin.schulz@cherry.de>, <rfoss@kernel.org>, <robh@kernel.org>,
 <tzimmermann@suse.de>
Subject: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2
 controller
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Daniel Semkowicz" <dse@thaumatec.com>, <heiko@sntech.de>
References: <20241203165450.1501219-1-heiko@sntech.de>
 <20241209150619.33998-1-dse@thaumatec.com>
In-Reply-To: <20241209150619.33998-1-dse@thaumatec.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_081132_413422_DBF2FC71 
X-CRM114-Status: GOOD (  20.23  )
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
Content-Type: multipart/mixed; boundary="===============4417623677543080712=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4417623677543080712==
Content-Type: multipart/signed;
 boundary=eefa09e675ebf91d252165db5d46d61f91efbf3c096cae57afe8caeae9bb;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--eefa09e675ebf91d252165db5d46d61f91efbf3c096cae57afe8caeae9bb
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Mon Dec 9, 2024 at 4:06 PM CET, Daniel Semkowicz wrote:
> On 03.12.24 21:54, Heiko Stuebner wrote:
> > This series adds a bridge and glue driver for the DSI2 controller found
> > in the rk3588 soc from Rockchip, that is based on a Synopsis IP block.
> >=20
>
> I did more tests with different LVDS displays. I tested following
> configurations with DSI/LVDS bridge:
> - 1024x600@60.01
> - 1024x768@60.02
> - 1280x800@60.07
> - 1366x768@60.06
>
> All of them worked without issues, except 1366x768.
> With this resolution, video is blurry, and offset incorrectly
> to the left. There are also repeating errors on the console:
>
>   rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at=
 vp3
>
> In correct operation with other resolutions, there is no error.
> I am not sure if this is a problem in your series or rather in VOP2
> driver.

On my PineTab2 I got similar messages about 2 weeks ago:
rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at vp1

Preceding those, I got several panfrost related errors:

panfrost fde60000.gpu: get clock failed -517
panfrost fde60000.gpu: clk init failed -517
platform fde60000.gpu: deferred probe pending: (reason unknown)
platform cpufreq-dt: deferred probe pending: (reason unknown)
vdd_gpu_npu: disabling

But can also be that the PineTab2 (likely) needs regulator-always-on
and regulator-boot-on in its vdd_gpu_npu node.

> I tried to track down the problem, and it seems to be a generic issue
> when horizontal line width is not divisible by 4.
> Lowering line width to 1364px fixes the issue, but of course I have two
> vertical lines of black pixels on the right.
> I also made some tests with 720x1280 DSI display. Lowering horizontal
> line to 718px shows the same problem. With 720px and 716px it works
> correctly.

I haven't look further into it, but the PT2 has a 1280x800 resolution.

HTH,
  Diederik

--eefa09e675ebf91d252165db5d46d61f91efbf3c096cae57afe8caeae9bb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ1cWnwAKCRDXblvOeH7b
bt6mAQC6vSnt+4gcL6mV0BWnp8ZL7iXn5fWiXFogAWGKMTLc7QEAoV2+ibpMQSek
0THMoeuvcpjes+GUp5Tq8DFptaTtHAE=
=lTYg
-----END PGP SIGNATURE-----

--eefa09e675ebf91d252165db5d46d61f91efbf3c096cae57afe8caeae9bb--


--===============4417623677543080712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4417623677543080712==--

