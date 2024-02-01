Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 305FDC4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 15:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdJWV+m39HP35ebCc6BPz9kGXodaAeJTTXaZn07CYDk=; b=yy3BtBJKhhGfm8
	QvwSP8y01coQPA2AmGuNHGflq4F42mOWL8BeXEU/NAGcTA4tsoikNNc9z1EwLnaqeoGUh98rFhh/2
	NDqEdb27o4sdwsKbjGBP7Kb5ZY9lKY8v9kKK1IwFMQ+oPxXCIaS08UrAIxjd5sdv0OIINbt6UFplQ
	cIl+AWSdvLVKmL4uTQFtZtCWlQUBfgk065diHKVcLjRVn4ElxD0PhfcKCXrdziENnRD013qN8ZEu3
	IBKT+2X6kLi9kXEE7+gjuTQQfIUmXK6wbGhnE78J6jWyGkT28xw+ioHSfNj/ak5zDjZYND00IWtYV
	0Z/YcVXlQSGqs2+rECPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVZ4U-00000008SmE-2OGh;
	Thu, 01 Feb 2024 15:33:46 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVZ4Q-00000008SkN-3MOv
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Feb 2024 15:33:44 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-6040d0c9cf1so11134957b3.0
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Feb 2024 07:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1706801620; x=1707406420; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9g5X/MoP2CIyVb1m6cPTMy+MK/TlLDYbdppGeENsUGg=;
        b=nsunEo1BdzKnoKVnlNE/8JquEoKL+vWMxWL0x804IhEsZEoUjJoDiT/fCHXuB1wa8m
         9GBFyOujuOKXvHQ1yOVxVXdQ2Ueu5K4l7b7p55ztBmqErfR2XcbhJko6HBwKknDnQBsP
         dS9ja93L2x788tg3/8FX7tzlG83nc5RWNMTLDuDNe/taohDeP7xGYBvsQ923raZW83PD
         OZKEsvxnJihJZ7Bdy/UE7BCrVxlo3KvY16208YToUeHbnxcQkMVRGaQNn9owU3VGdTbF
         eP8bXY8l6ok+/BW5uLxLxRXDRa7xHpH6nFy9B/l4sXz1xsGaX3GvVoLUKCZucPRuK7ao
         bjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706801620; x=1707406420;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9g5X/MoP2CIyVb1m6cPTMy+MK/TlLDYbdppGeENsUGg=;
        b=l8aHXeyFaGSSyIIYo5snShwlWaQSQ7ukt3QuWubLg/CsbKmzqzQX/YJy5jiSgdyKT9
         9RJCwJgWBCOAvCqt/vi2qV7LkoduY/QH3dM2kC6feeuczk2WxBv0w15dlpxsXDKXByTQ
         n/YZxo6qDP6InsCbOtaZ0oBMvnpj7R4NI5q3cnceA+2agbpUMdX0V4yAI79iA9l/8dM8
         zCxxTscn99MPMM898hqsxunui+lszj7RyRJmhcVKlluUEchzZJ4hMXHcZgyZoOdkF7GT
         VMourt3+k2ZBcZUGpTB2qYO47vE+LB3I6US4AqKAKlZ9ZGmrbMsvGzIBcQId72B2Belr
         BZ4Q==
X-Gm-Message-State: AOJu0YwSARariGuAfx4wkhz34Pr05AuihDUfh9JcHF4MfRXI9wg0ZMvW
	EoWCuiXqzoZQ+FGxi6nDBjSiYvBuJ1WifswA1Qx17Dum3MtHiLoUIfLDlc9z55t65oDjorovYAZ
	e1YDregDiDKA+ipHgdTTZlXkULdO4ykvb2k9mIQ==
X-Google-Smtp-Source: AGHT+IHqiUtD2JG/xh5leeuuBCGEniE23V5uMzmzrjcmuonFmYWAx3gVWyr/EdUEfJ0Ft8FL9Z4hkCYQ/v1fUQD2kCs=
X-Received: by 2002:a81:b608:0:b0:5ff:b07b:fb0b with SMTP id
 u8-20020a81b608000000b005ffb07bfb0bmr5193403ywh.49.1706801620096; Thu, 01 Feb
 2024 07:33:40 -0800 (PST)
MIME-Version: 1.0
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-15-6538e19d634d@kernel.org>
 <CAPY8ntBQ+qY9441-rMzq_JAoYAaY_r+E-ADv7Wry0tJNTzKpwg@mail.gmail.com> <jlkoofv7nszj2uqmo2672yo4wjd3yjqarge2l2hxofixcchu6a@j72pa4iybitd>
In-Reply-To: <jlkoofv7nszj2uqmo2672yo4wjd3yjqarge2l2hxofixcchu6a@j72pa4iybitd>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 1 Feb 2024 15:33:24 +0000
Message-ID: <CAPY8ntAmXyKtebMeM7rLtgRR+QwL1H+UCwSO=bLBQN4TsgwsDg@mail.gmail.com>
Subject: Re: Re: [PATCH v5 15/44] drm/connector: hdmi: Compute bpc and format automatically
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_073342_926463_E8C4225A 
X-CRM114-Status: GOOD (  24.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Maxime

On Thu, 1 Feb 2024 at 12:51, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Dec 14, 2023 at 03:10:43PM +0000, Dave Stevenson wrote:
> > > +static bool
> > > +sink_supports_format_bpc(const struct drm_connector *connector,
> > > +                        const struct drm_display_info *info,
> > > +                        const struct drm_display_mode *mode,
> > > +                        unsigned int format, unsigned int bpc)
> > > +{
> > > +       struct drm_device *dev = connector->dev;
> > > +       u8 vic = drm_match_cea_mode(mode);
> > > +
> > > +       if (vic == 1 && bpc != 8) {
> > > +               drm_dbg(dev, "VIC1 requires a bpc of 8, got %u\n", bpc);
> > > +               return false;
> > > +       }
> > > +
> > > +       if (!info->is_hdmi &&
> > > +           (format != HDMI_COLORSPACE_RGB || bpc != 8)) {
> > > +               drm_dbg(dev, "DVI Monitors require an RGB output at 8 bpc\n");
> > > +               return false;
> > > +       }
> > > +
> > > +       if (!(connector->hdmi.supported_formats & BIT(format))) {
> > > +               drm_dbg(dev, "%s format unsupported by the connector.\n",
> > > +                       drm_hdmi_connector_get_output_format_name(format));
> > > +               return false;
> > > +       }
> > > +
> > > +       switch (format) {
> > > +       case HDMI_COLORSPACE_RGB:
> > > +               drm_dbg(dev, "RGB Format, checking the constraints.\n");
> > > +
> > > +               if (!(info->color_formats & DRM_COLOR_FORMAT_RGB444))
> > > +                       return false;
> >
> > We've dropped this check from vc4 in our downstream kernel as it stops
> > you using the prebaked EDIDs (eg drm.edid_firmware=edid/1024x768.bin),
> > or any other EDID that is defined as an analog monitor.
> > The EDID parsing bombs out at [1], so info->color_formats gets left at 0.
>
> Right, but it only does so if the display isn't defined as a digital display...
>
> > RGB is mandatory for both DVI and HDMI, so rejecting it seems overly fussy.
>
> ... which is required for both DVI and HDMI.
>
> And sure enough, if we decode that EDID:
>
> edid-decode (hex):
>
> 00 ff ff ff ff ff ff 00 31 d8 00 00 00 00 00 00
> 05 16 01 03 6d 23 1a 78 ea 5e c0 a4 59 4a 98 25
> 20 50 54 00 08 00 61 40 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 64 19 00 40 41 00 26 30 08 90
> 36 00 63 0a 11 00 00 18 00 00 00 ff 00 4c 69 6e
> 75 78 20 23 30 0a 20 20 20 20 00 00 00 fd 00 3b
> 3d 2f 31 07 00 0a 20 20 20 20 20 20 00 00 00 fc
> 00 4c 69 6e 75 78 20 58 47 41 0a 20 20 20 00 55
>
> ----------------
>
> Block 0, Base EDID:
>   EDID Structure Version & Revision: 1.3
>   Vendor & Product Identification:
>     Manufacturer: LNX
>     Model: 0
>     Made in: week 5 of 2012
>   Basic Display Parameters & Features:
>     Analog display
>     Signal Level Standard: 0.700 : 0.000 : 0.700 V p-p
>     Blank level equals black level
>     Sync: Separate Composite Serration
>     Maximum image size: 35 cm x 26 cm
>     Gamma: 2.20
>     DPMS levels: Standby Suspend Off
>     RGB color display
>     First detailed timing is the preferred timing
>   Color Characteristics:
>     Red  : 0.6416, 0.3486
>     Green: 0.2919, 0.5957
>     Blue : 0.1474, 0.1250
>     White: 0.3125, 0.3281
>   Established Timings I & II:
>     DMT 0x10:  1024x768    60.003840 Hz   4:3     48.363 kHz     65.000000 MHz
>   Standard Timings:
>     DMT 0x10:  1024x768    60.003840 Hz   4:3     48.363 kHz     65.000000 MHz
>   Detailed Timing Descriptors:
>     DTD 1:  1024x768    60.003840 Hz   4:3     48.363 kHz     65.000000 MHz (355 mm x 266 mm)
>                  Hfront    8 Hsync 144 Hback  168 Hpol N
>                  Vfront    3 Vsync   6 Vback   29 Vpol N
>     Display Product Serial Number: 'Linux #0'
>     Display Range Limits:
>       Monitor ranges (GTF): 59-61 Hz V, 47-49 kHz H, max dotclock 70 MHz
>     Display Product Name: 'Linux XGA'
> Checksum: 0x55
>
> ----------------
>
> Warnings:
>
> Block 0, Base EDID:
>   Detailed Timing Descriptor #1: DTD is similar but not identical to DMT 0x10.
>
> EDID conformity: PASS
>
> So, if anything, it's the EDID that needs to be updated, not the code there.

So are these EDIDs only valid for VGA outputs and another set needs to
be added for HDMI monitors?

Having drm.edid_firmware=edid/1024x768.bin works on an HDMI connector
prior to this patch, so presumably drm_edid_loader needs to
automatically switch between the existing (analog) and new (digital)
EDIDs based on the connector type? Or are you requiring users to
change the strings they use?

Cheers.
  Dave

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
