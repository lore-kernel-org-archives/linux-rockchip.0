Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D804C5AD2B
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 09:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIa9OV6zCloNBL5YDPr9UYdavcHdvvFoP9ydiij5l0w=; b=bl5TgjlFbzQY5s
	wOfI1xrWpGUE2Vn2WRIjbR+ZIQEa2Z30/GRJvxDK0mcfGLZij6cUsrDomO4mZS86oLKRh1uMHyihP
	Ko28XUzdnQCfy3l2IIyW4UW8CW7oUtfS3qpdGbqRuxrFpKTG6XZ7Mm1e5u61Ohx57LxHFmDwYLwNr
	Y04RDBDvQI0rkZSQSHnXRsHvVfJB1cbHdRlX5KwNInMW0x7N6DdRYefNXgL6O8Cirp7D+Kwa0oRAu
	Ia/HvHifHRJYPbDD3SUsnMGWZ1yUmhO1HsOpi1hEOaaLniBg8C40cCZFmzX5SMKTqUF13h4jMrVV7
	SyMdOrDbeWh0Ho09TqCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdZF-00000009EMk-2WCn;
	Sat, 08 Aug 2026 09:42:13 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdZC-00000009EM0-3DvE
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 09:42:11 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-4765eec32e1so20652f8f.1
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 02:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786182128; x=1786786928; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LIUa/GkOS3aZrfCEcRahKBXxy/BEVRSMrpiAVM66nfw=;
        b=X9/l27VmUA4KU7xtaojnDnvHVuOftZghl/esmD+i431BWX7h5QsqnqhrNFCkI5VacM
         Qferte3XhyAdW1qbKFYgBLQ/m13/SFts9EZ19rOGXh+70FD4d91dezyaEduMDupmsPdY
         uJPYYKcGoeQGAoW/iVuT/TkSp+oV1cMkl6fKQogoIfobAfwTkumJgFirTkTue/eJfm3x
         NaRmv9oLSadaPEkSnmSKB6RQVFzm3L6frZXytUA1xop3ctwZfL6PscUfiCyz6683E3mb
         PMrMP6DCFtrexJLMHFHm73o7SOkE07QraoSqZSh+B0AbekVwDILTArlqdmLIjUYn+JWZ
         SBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786182128; x=1786786928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LIUa/GkOS3aZrfCEcRahKBXxy/BEVRSMrpiAVM66nfw=;
        b=SX8ii4gxFhZCUDd8kkLqNMAH7gEYaf62aCQi+c+Oo4oVsqARHUzdtwVRXNmWfoZadA
         9hcdAtqwJIZWsjYA52xrBFelUe1M+t3OGt2FW3zpgUSjIX6FmjlfQzn2oOqdwEAs5apj
         L0mO31yXO4AXKMIzHSIo/ifGX1p7rYb3rSbr1GpYTrMQ5jZ4s9/wvVenasQa0Yd91BHb
         VIcI/ICf+hUEU+cjr5+PEYr4JbExCFImHV+vhgV5GmtzKmovakpo5rJxe/A2cb68RFox
         qq2xZiwJVnby6Uj3w/Ql2F9ERnYYeoRCkCYpMvaweClUPlyPa1n9QFD6nkL0jmTQm96l
         Fm6Q==
X-Forwarded-Encrypted: i=1; AHgh+RrxcY9REIpz1bhMImyWYHjb+RtUcS6SQgXmV85Ydb5vNfsI0RnIIZwGwoPlNyf5RV+rk2AyeVqOQevTSYXeMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YywkhiG/dmmp6EVjFQfk7TyPZbxsd56q4TB1qemYKRdknv+Ky7Q
	nDBM9IAImj4OnNYsVoG8dXDsd7hPGnRfSPK6OCpvnwOmTQ9jv5qLX00/
X-Gm-Gg: AR+sD11VzJfPvFTLFAVOS+3rdzGLOrBitbGx/QtxtErQDh6Y0GtRPfSXXIjteAkdv5D
	qIOL+kyZhgA8RRd0m132LcHDSZvP6GmGDf6QnUFVJMYFWjLguIcr4CXfX0PIN+L0oxTUOqlYvkO
	a+GSUhm+Kr4D/3qpBhgTNWR6nkBxxDHEpBcNvkotv0JgDAeBGpRStA58I6CiE/jjKk09G/xOHPb
	aiYFbL8BmJmcM+lYr6pMSKQ7lNUYefqxiHQ+qBkU5c7qng6X8uNcg1mbaRPqiW2ht7AciCPc55g
	drSdGl/Dbmck98A8TIitgimV0bBehmYGOBoLznCDkZmt6SexH/7lM/5cyyR/rcU0Jw5GNF3wWVe
	gF+U7En+fb9b+GLVdmUVZzATnq7mV0yuFAoeMAWG2PVFN6FXf9Tr3LuLBYyZEUYeKD6mPOPIjhg
	0DXFWdIKQo9JCeAJ743dZH8STEwcVY3P7o0eUXa0ItEvVwT+IQM1OZlCcYCJXL1jp9bXX6OimQu
	96SGD0GCn7qYortRwyzwA5kAKVcPkUE9q2yS6xvEJYWX5FWBnHDwXPrbyUUmOaSH2XP8w==
X-Received: by 2002:a05:6000:1785:b0:47f:91f0:9ab with SMTP id ffacd0b85a97d-47fec484f36mr22974430f8f.0.1786182128200;
        Sat, 08 Aug 2026 02:42:08 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-480021f9182sm13826171f8f.28.2026.08.08.02.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:42:07 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v11 00/21] Synopsys DisplayPort Controller improvements for Rockchip platforms
Date: Sat,  8 Aug 2026 11:41:32 +0200
Message-ID: <20260808094138.7205-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_024210_835232_212A9ED6 
X-CRM114-Status: GOOD (  16.88  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Igor Paunovic <royalnet026@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Sandy Huang <hjc@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

The Tested-by tag is at the bottom.  Short version: v11 works here on
an Orange Pi 5 Plus over USB-C DP AltMode.  It needs your usbdp v13
series underneath to probe at all, and above 2560x1440@144 it needs a
VOP2 ACLK change that has nothing to do with your patches.

One caveat first, so that the next paragraph is not misread: dp0 is
disabled in the mainline RK3588 DTS, so none of this is reachable on
an untouched tree.  I enable it with a local board DT patch.

With dp0 enabled but without usbdp v13, dw-dp never finishes probing.
It stops at "failed to get follow-up bridge" (dw-dp.c), because
mainline phy-rockchip-usbdp has no drm_aux_bridge_register() at all;
that call arrives with usbdp v13 patch 16/35 ("phy: rockchip: usbdp:
Register DP aux bridge").  The component bind then never completes, so
both HDMI outputs stay dark as well - the symptom is much wider than
the cause, which cost me a boot to work out.

Hardware: Samsung Odyssey G70B behind a USB-C to HDMI 2.1 protocol
converter.  DPCD extended revision 1.4, the link trains at HBR2 x4,
VSC SDP colorimetry is supported.  The converter ships a malformed
EDID, so a boot script feeds a corrected one through the debugfs
edid_override and kicks fusb302 once; without that the 4K modes are
dropped and AUX stays dead.  Both are adapter problems, not driver
ones.

What I saw:

  - DP-1 comes up connected, the EDID reads through the converter,
    the link trains, and KWin drives the output.
  - At the stock VOP2 ACLK rate, modes up to 2560x1440@144 are clean.
    I left the machine at 2560x1440@143.99 for more than eight hours
    with no DRM or VOP2 errors.
  - 3840x2160@120 comes up, but the picture is unusable until the
    VOP2 ACLK is raised.  With it raised the picture is correct
    immediately.

That last point is a platform issue rather than a dw-dp one, so I have
sent it as its own thread to dri-devel and linux-rockchip with you on
Cc: "drm/rockchip: vop2: ACLK_VOP pinned at 500 MHz starves DP 4K120
on RK3588".

Two small things I noticed while I was in there:

Kconfig: ROCKCHIP_DW_DP selects nothing, and DRM_DW_DP does not select
DRM_BRIDGE_CONNECTOR either, while ROCKCHIP_ANALOGIX_DP,
ROCKCHIP_CDN_DP, ROCKCHIP_DW_HDMI_QP, ROCKCHIP_LVDS and ROCKCHIP_RGB
all do.  Since dw_dp-rockchip.c calls drm_bridge_connector_init(), a
configuration with only ROCKCHIP_DW_DP enabled fails to link.  This
predates your series; I am happy to send the one-liner if you agree it
is worth fixing.

sound-dai-cells: the dt-bindings patch in this series ("dt-bindings:
display: rockchip: dw-dp: Fix sound DAI cells") notes that the
mainline rk3588 DTS still sets 0 and will be fixed up separately.  Is
that DTS patch already queued somewhere?  I would rather not duplicate
it.

DP audio: it does work here, but on my rockchip-devel based daily
kernel, which carries the v9 generation of the audio patch - a
simple-audio-card with cpu &spdif_tx2 and codec <&dp0 1>, picked up by
PipeWire unaided, playing over the same cable as the video.  I have
not retested audio on the v11 tree, so the tag below covers video
only.

Tested on drm-misc-next of 2026-08-07 (dc2f9f7fed1a) with this series,
usbdp v13, two local board DT patches (enable DP AltMode on the USB-C
connector; pin DCLK_VOP2 to V0PLL), and a one-line local change to
clk.c so that I could set clock rates from debugfs.

Thanks for the series.

Tested-by: Igor Paunovic <royalnet026@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
