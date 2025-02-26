Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DF02C18E7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 15:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y8AxJizcD7La4P/cRXOH914h6jKB2vjvtT6gA3u8wcc=; b=BMTR1pw7wHlrerPDZe97QHrbMh
	z5yRLgkr0VB/vfQWAKWRfHClAZXLDEAL0WtquO84dsENTeNgpZuzLTDnUQtn/f1oqt4aD4T6LhJhw
	eUxCT7wnN3/SO7YFnQCKO7l3uJLPborS31sdkyS93Tp7uRQfNHyuMNmOnxIHiNzovpHXF1ppPPeHL
	u9ki0UeVfOahdxixCB9g1sC91ZdjgxllhLNWNuvx6+wpFsmTeWQztAIlqzKETajbZy0Ej3kkjE93x
	PBek3VABL1/IMpQ37/AtebS1gugkYLuH8m9N3w90/CKCHLFE/pSq49N9+e1XNFj2i5W1TFoskaH3W
	oJKiX7YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnJFk-00000004HC8-0d0y;
	Wed, 26 Feb 2025 15:23:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnJ7E-00000004EBE-1BiR
	for linux-rockchip@bombadil.infradead.org;
	Wed, 26 Feb 2025 15:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:From:Subject
	:Cc:Message-Id:Date:Content-Type:Mime-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=6kQbb0PLOfRfxhBJWSWjWCVR9AvSTbkkHB29xifIVyM=; b=QmIfG6f8huOU8GciGKa5zQxWpe
	54WR39AOMXv1PSc2mdEb9ddc7u5l/qsjOOnAEsACdbJ/b6dce35H8N9kXba1P1pGk1Ze7BJw6Zs0B
	TFXe+nbCJAVLW0s8cJ3fw0xm0nByWToipCiOO/SzD+62Duse5UXbsxK5yP0u/nXNyybVZSYN09QxS
	Z68BMb8QelnBKjJTeVLC7miSQcM2I39Hhj2gsJXgXC7cTcGWZpx1De6JKhwjEfC3xJLNMl0edwr+s
	ghxhiuC1RDWwEeqaYv//B5nUpCPRJDUiBNuC5UixHFQy0ZeSt5zApjFqL8EbVgvdSt7Hc5CZWiUsO
	bmVnsHCg==;
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnJ7A-00000003dKg-14n3
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Feb 2025 15:14:26 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1740582853;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6kQbb0PLOfRfxhBJWSWjWCVR9AvSTbkkHB29xifIVyM=;
	b=YXfOOeOhPXiP8XxbTz7Vksn6vNnz/3+IGZ8Un2zM+V/NOt44UM00lgD4cYqwMKDhSSgDda
	o6A71UbWTysV+Om+XzX5R4b3ctGUz0Z2jSx2n+Lx9TMobIDZmlYWDJjEyrSRnTWb7tL21V
	CAe454MournGNCN3lI1U6sbqPqQab6eGDN9DPkIrsQOSjdLASSMz5s7J8zG3gizRisBToi
	H8zk4KWkeNhClDlEN6WhP4xqLEUymcYJ/fCdhQZlTFs16hLI06/W9VNhPz66KyJY9b3UPI
	ZcpfaBLUImADDXFiLuoi+t7HL5ZPdb4q6T5tSJ+LX4BlLE6Aj6OrwPDCSJ0Ozw==
Date: Wed, 26 Feb 2025 16:14:02 +0100
Message-Id: <D82H4F6J4V4V.2BLHVUVD3BVX9@cknow.org>
Cc: <kernel@collabora.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, "Tim Surber" <me@timsurber.de>,
 "Christophe JAILLET" <christophe.jaillet@wanadoo.fr>, "Diederik de Haas"
 <didi.debian@cknow.org>
Subject: Re: [PATCH v10 3/6] media: platform: synopsys: Add support for HDMI
 input driver
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>, "Shreeya Patel"
 <shreeya.patel@collabora.com>, "Heiko Stuebner" <heiko@sntech.de>, "Mauro
 Carvalho Chehab" <mchehab@kernel.org>, "Hans Verkuil" <hverkuil@xs4all.nl>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <jose.abreu@synopsys.com>, <nelson.costa@synopsys.com>,
 <shawn.wen@rock-chips.com>, <nicolas.dufresne@collabora.com>, "Sebastian
 Reichel" <sebastian.reichel@collabora.com>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
 <20250225183058.607047-4-dmitry.osipenko@collabora.com>
In-Reply-To: <20250225183058.607047-4-dmitry.osipenko@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_151424_658018_217D94E5 
X-CRM114-Status: GOOD (  24.49  )
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
Content-Type: multipart/mixed; boundary="===============0399285167313923991=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0399285167313923991==
Content-Type: multipart/signed;
 boundary=a7f4c90e99e2aac72da4a10f52bcd4b0a05ca7264a6152fe3a9c3f70b508;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--a7f4c90e99e2aac72da4a10f52bcd4b0a05ca7264a6152fe3a9c3f70b508
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Tue Feb 25, 2025 at 7:30 PM CET, Dmitry Osipenko wrote:
> From: Shreeya Patel <shreeya.patel@collabora.com>
>
> Add initial support for the Synopsys DesignWare HDMI RX
> Controller Driver used by Rockchip RK3588. The driver
> supports:
>  - HDMI 1.4b and 2.0 modes (HDMI 4k@60Hz)
>  - RGB888, YUV422, YUV444 and YCC420 pixel formats
>  - CEC
>  - EDID configuration
>
> The hardware also has Audio and HDCP capabilities, but these are
> not yet supported by the driver.
>
> Co-developed-by: Dingxian Wen <shawn.wen@rock-chips.com>
> Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/media/platform/Kconfig                |    1 +
>  drivers/media/platform/Makefile               |    1 +
>  drivers/media/platform/synopsys/Kconfig       |    3 +
>  drivers/media/platform/synopsys/Makefile      |    2 +
>  .../media/platform/synopsys/hdmirx/Kconfig    |   27 +
>  .../media/platform/synopsys/hdmirx/Makefile   |    4 +
>  .../platform/synopsys/hdmirx/snps_hdmirx.c    | 2756 +++++++++++++++++
>  .../platform/synopsys/hdmirx/snps_hdmirx.h    |  394 +++
>  .../synopsys/hdmirx/snps_hdmirx_cec.c         |  284 ++
>  .../synopsys/hdmirx/snps_hdmirx_cec.h         |   44 +
>  10 files changed, 3516 insertions(+)
>  create mode 100644 drivers/media/platform/synopsys/Kconfig
>  create mode 100644 drivers/media/platform/synopsys/Makefile
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Kconfig
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Makefile
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_ce=
c.c
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_ce=
c.h
>
> diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kcon=
fig
> index 85d2627776b6..9287faafdce5 100644
> --- a/drivers/media/platform/Kconfig
> +++ b/drivers/media/platform/Kconfig
> @@ -85,6 +85,7 @@ source "drivers/media/platform/rockchip/Kconfig"
>  source "drivers/media/platform/samsung/Kconfig"
>  source "drivers/media/platform/st/Kconfig"
>  source "drivers/media/platform/sunxi/Kconfig"
> +source "drivers/media/platform/synopsys/Kconfig"
>  source "drivers/media/platform/ti/Kconfig"
>  source "drivers/media/platform/verisilicon/Kconfig"
>  source "drivers/media/platform/via/Kconfig"
> diff --git a/drivers/media/platform/Makefile b/drivers/media/platform/Mak=
efile
> index ace4e34483dd..6fd7db0541c7 100644
> --- a/drivers/media/platform/Makefile
> +++ b/drivers/media/platform/Makefile
> @@ -28,6 +28,7 @@ obj-y +=3D rockchip/
>  obj-y +=3D samsung/
>  obj-y +=3D st/
>  obj-y +=3D sunxi/
> +obj-y +=3D synopsys/
>  obj-y +=3D ti/
>  obj-y +=3D verisilicon/
>  obj-y +=3D via/
> diff --git a/drivers/media/platform/synopsys/Kconfig b/drivers/media/plat=
form/synopsys/Kconfig
> new file mode 100644
> index 000000000000..4fd521f78425
> --- /dev/null
> +++ b/drivers/media/platform/synopsys/Kconfig
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +source "drivers/media/platform/synopsys/hdmirx/Kconfig"
> diff --git a/drivers/media/platform/synopsys/Makefile b/drivers/media/pla=
tform/synopsys/Makefile
> new file mode 100644
> index 000000000000..3b12c574dd67
> --- /dev/null
> +++ b/drivers/media/platform/synopsys/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-y +=3D hdmirx/
> diff --git a/drivers/media/platform/synopsys/hdmirx/Kconfig b/drivers/med=
ia/platform/synopsys/hdmirx/Kconfig
> new file mode 100644
> index 000000000000..3f96f6c97cf0
> --- /dev/null
> +++ b/drivers/media/platform/synopsys/hdmirx/Kconfig
> @@ -0,0 +1,27 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +config VIDEO_SYNOPSYS_HDMIRX
> +	tristate "Synopsys DesignWare HDMI Receiver driver"
> +	depends on VIDEO_DEV
> +	select MEDIA_CONTROLLER
> +	select VIDEO_V4L2_SUBDEV_API
> +	select VIDEOBUF2_DMA_CONTIG
> +	select CEC_CORE
> +	select CEC_NOTIFIER
> +	select HDMI
> +	help
> +	  Support for Synopsys HDMI HDMI RX Controller.
> +	  This driver supports HDMI 2.0 version.
> +
> +	  To compile this driver as a module, choose M here. The module
> +	  will be called synopsys_hdmirx.
> +
> +config VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID
> +	bool "Load default EDID"
> +	depends on VIDEO_SYNOPSYS_HDMIRX
> +	help
> +	  Preload default EDID (Extended Display Identification Data).

I see some value in making explicit what you mean by EDID ...

> +	  EDID contains information about the capabilities of the display,
> +	  such as supported resolutions, refresh rates, and audio formats.

... I do not think a/this Kconfig needs to explain it.

> +
> +	  Enabling this option is recommended for a non-production use-cases.

My guess is that it could be useful for development/debugging/CI work
which possibly do not have an actual device (monitor) which provides
actual EDID data? Is CI work the reason why you (initially) enabled it
in the defconfig?
But when you have an actual monitor (=3Dproduction use-case?), you
(really) do not want it? Would it be harmless if 'still' enabled?

Thus a more extensive description what *this* Kconfig item does and why
and when I want to enable it or not, seems more useful to me.

Cheers,
  Diederik


--a7f4c90e99e2aac72da4a10f52bcd4b0a05ca7264a6152fe3a9c3f70b508
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ78vvgAKCRDXblvOeH7b
bgcOAQDqS73Snv/YiK3XuYu+04zVOsVyoTgZaPdwB1flqhS6PAD9HpydvFKnE7vj
pve5Zbq372uE+I1waffsJU9B6k2p2w0=
=lwwn
-----END PGP SIGNATURE-----

--a7f4c90e99e2aac72da4a10f52bcd4b0a05ca7264a6152fe3a9c3f70b508--


--===============0399285167313923991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0399285167313923991==--

