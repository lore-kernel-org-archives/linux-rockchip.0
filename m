Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E59DBC54E4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 08:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTOyq//8ozxJxChN40ShFeVuqTQovdjjIJsqgOD2prc=; b=XyhZxez8yLBEnF
	qGkcMRe37KJBkcLYjbL0AkU3xMEY0UmXuTJJwf8XJpZplUuGMX4CV6+O+Crx56B+khe57MTZ0RHP5
	uQQGmEabglRsBBHJvLUSLsr3m/9/Iq0tZLEcr+P0eFC7cv8rrfzJpvnPSkpmsO+GFuQuCez9ieqI0
	ZWy8pRp3JgUunWzSpInTTmZ8xSB0UHdce8V+kB3Onsz8ZLRfSno5S47DO8Jihnz5k0utEqS+PHMUT
	gJOQKVz1ho3IOa4E5tnHFcRnU3fij5G+b2qQ6GY40W864RTKlwpT1kLpFKTQHpjR3zBb1WJ8JTl/h
	a2LXW3zWS1K4yN9tPu/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVlH-00000008MPK-0pav;
	Fri, 08 Mar 2024 08:39:27 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVlC-00000008MMT-1uou;
	Fri, 08 Mar 2024 08:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1709887162; x=1741423162;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=+0Zk9YrNAPHRCrDTW6MNWvjCjE1nDUbXvpf0eiRTAcI=;
  b=DZ/RuT84EcmKHB/d5p40ERv+AijVFUxJfdmmzYWrhXasIdDj+V7w/guz
   dTUv2qUNpMjEqk9J52rQU3vUm0JtbIyyW42t6ECk5gchvfJNUNZmH+q62
   pLtuW4jqcvUZlf4FzFVpT3bo0GjLPAaTfKu+io6YhPmzK3jVtz+Jy/XOQ
   aIpxPEHRI4RyYas6ESoXtYW70avxQXMCzrgZicNyBtWzWKL67MbSJdoBA
   mCO//IuDBv3KfpqzYdmoBytdm1JjGs4jGisTMeh+bLF/pxcG57TxmOrKV
   dmA3Af08OWzMB/iGu2FbW8YhNWvfBl2ru7bp7BP/sm0PGgsr8WKn4N/5D
   g==;
X-IronPort-AV: E=Sophos;i="6.07,109,1708383600"; 
   d="scan'208";a="35803051"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Mar 2024 09:39:17 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4074628007C;
	Fri,  8 Mar 2024 09:39:17 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v8 05/27] drm/tests: Add output bpc tests
Date: Fri, 08 Mar 2024 09:39:18 +0100
Message-ID: <1788224.VLH7GnMWUR@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240307-kms-hdmi-connector-state-v8-5-ef6a6f31964b@kernel.org>
References: <20240307-kms-hdmi-connector-state-v8-0-ef6a6f31964b@kernel.org> <20240307-kms-hdmi-connector-state-v8-5-ef6a6f31964b@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_003922_926636_9A251C83 
X-CRM114-Status: GOOD (  18.19  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Maxime,

Am Donnerstag, 7. M=E4rz 2024, 14:38:32 CET schrieb Maxime Ripard:
> Now that we're tracking the output bpc count in the connector state,
> let's add a few tests to make sure it works as expected.
> =

> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/Makefile                     |   1 +
>  .../gpu/drm/tests/drm_atomic_state_helper_test.c   | 436 +++++++++++++++=
++++++
>  drivers/gpu/drm/tests/drm_connector_test.c         | 140 +++++++
>  drivers/gpu/drm/tests/drm_kunit_edid.h             | 106 +++++
>  4 files changed, 683 insertions(+)
> =

> [snip]
> diff --git a/drivers/gpu/drm/tests/drm_kunit_edid.h b/drivers/gpu/drm/tes=
ts/drm_kunit_edid.h
> new file mode 100644
> index 000000000000..2bba316de064
> --- /dev/null
> +++ b/drivers/gpu/drm/tests/drm_kunit_edid.h
> @@ -0,0 +1,106 @@
> +#ifndef DRM_KUNIT_EDID_H_
> +#define DRM_KUNIT_EDID_H_
> +
> +/*
> + * edid-decode (hex):
> + *
> + * 00 ff ff ff ff ff ff 00 31 d8 2a 00 00 00 00 00
> + * 00 21 01 03 81 a0 5a 78 02 00 00 00 00 00 00 00
> + * 00 00 00 20 00 00 01 01 01 01 01 01 01 01 01 01
> + * 01 01 01 01 01 01 02 3a 80 18 71 38 2d 40 58 2c
> + * 45 00 40 84 63 00 00 1e 00 00 00 fc 00 54 65 73
> + * 74 20 45 44 49 44 0a 20 20 20 00 00 00 fd 00 32
> + * 46 1e 46 0f 00 0a 20 20 20 20 20 20 00 00 00 10
> + * 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 92
> + *
> + * 02 03 1b 81 e3 05 00 20 41 10 e2 00 4a 6d 03 0c
> + * 00 12 34 00 28 20 00 00 00 00 00 00 00 00 00 00
> + * 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> + * 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> + * 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> + * 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> + * 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> + * 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d0
> + *
> + * ----------------
> + *
> + * Block 0, Base EDID:
> + *   EDID Structure Version & Revision: 1.3
> + *   Vendor & Product Identification:
> + *     Manufacturer: LNX
> + *     Model: 42
> + *     Made in: 2023
> + *   Basic Display Parameters & Features:
> + *     Digital display
> + *     DFP 1.x compatible TMDS
> + *     Maximum image size: 160 cm x 90 cm
> + *     Gamma: 2.20
> + *     Monochrome or grayscale display
> + *     First detailed timing is the preferred timing
> + *   Color Characteristics:
> + *     Red  : 0.0000, 0.0000
> + *     Green: 0.0000, 0.0000
> + *     Blue : 0.0000, 0.0000
> + *     White: 0.0000, 0.0000
> + *   Established Timings I & II:
> + *     DMT 0x04:   640x480    59.940476 Hz   4:3     31.469 kHz     25.1=
75000 MHz
> + *   Standard Timings: none
> + *   Detailed Timing Descriptors:
> + *     DTD 1:  1920x1080   60.000000 Hz  16:9     67.500 kHz    148.5000=
00 MHz (1600 mm x 900 mm)
> + *                  Hfront   88 Hsync  44 Hback  148 Hpol P
> + *                  Vfront    4 Vsync   5 Vback   36 Vpol P
> + *     Display Product Name: 'Test EDID'
> + *     Display Range Limits:
> + *       Monitor ranges (GTF): 50-70 Hz V, 30-70 kHz H, max dotclock 150=
 MHz
> + *     Dummy Descriptor:
> + *   Extension blocks: 1
> + * Checksum: 0x92
> + *
> + * ----------------
> + *
> + * Block 1, CTA-861 Extension Block:
> + *   Revision: 3
> + *   Underscans IT Video Formats by default
> + *   Native detailed modes: 1
> + *   Colorimetry Data Block:
> + *     sRGB
> + *   Video Data Block:
> + *     VIC  16:  1920x1080   60.000000 Hz  16:9     67.500 kHz    148.50=
0000 MHz
> + *   Video Capability Data Block:
> + *     YCbCr quantization: No Data
> + *     RGB quantization: Selectable (via AVI Q)
> + *     PT scan behavior: No Data
> + *     IT scan behavior: Always Underscanned
> + *     CE scan behavior: Always Underscanned
> + *   Vendor-Specific Data Block (HDMI), OUI 00-0C-03:
> + *     Source physical address: 1.2.3.4
> + *     Maximum TMDS clock: 200 MHz
> + *     Extended HDMI video details:
> + * Checksum: 0xd0  Unused space in Extension Block: 100 bytes
> + */
> +const unsigned char test_edid_hdmi_1080p_rgb_max_200mhz[] =3D {

Shouldn't this be a static one? It's defined in a header.

Best regards,
Alexander

> +  0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x31, 0xd8, 0x2a, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x01, 0x03, 0x81, 0xa0, 0x5a, 0x78,
> +  0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20,
> +  0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
> +  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x3a, 0x80, 0x18, 0x71, 0x38,
> +  0x2d, 0x40, 0x58, 0x2c, 0x45, 0x00, 0x40, 0x84, 0x63, 0x00, 0x00, 0x1e,
> +  0x00, 0x00, 0x00, 0xfc, 0x00, 0x54, 0x65, 0x73, 0x74, 0x20, 0x45, 0x44,
> +  0x49, 0x44, 0x0a, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0xfd, 0x00, 0x32,
> +  0x46, 0x00, 0x00, 0xc4, 0x00, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +  0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x41, 0x02, 0x03, 0x1b, 0x81,
> +  0xe3, 0x05, 0x00, 0x20, 0x41, 0x10, 0xe2, 0x00, 0x4a, 0x6d, 0x03, 0x0c,
> +  0x00, 0x12, 0x34, 0x00, 0x28, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +  0x00, 0x00, 0x00, 0xd0
> +};
> +
> +#endif // DRM_KUNIT_EDID_H_
> =

> =



-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
