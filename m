Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA0BC46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UO4j5MouejCzHGLZKeJACbVjc5eTuRZY0Aca/Zk/qBI=; b=ewx+1BRwCjT0Z1
	s73GdaVa+/v8nU5LablxvcrI5JX7gdoMoCJ8AlkfTiCGHCP2cMq6yZ14t7g/ddSCW83huH8VPnlvj
	dCod8jQQaRRpcMcE5kM8pxpuMgBWzmwim+ljhFXLz1ZJxciYgtWjfBjnaA2ZIMrXQerKuKERW/xFU
	mWRAeSeTv9o6NfN8+gDMcPR8fXoV4QDzhM+1cfznwxe+tow/D8Cm9yGsUxcneA/miCX4rLGzE0kaw
	AIjnj6HASg3O4bxtfOTfgMT0yQ/iRBi+ASdCblG7V1WK5kbVQj/4bKsY1UnrLD3PFNeU4j1oSAniZ
	e/Vc+8nlp9JAHpVfAHbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVZ-006JyZ-02;
	Sat, 16 Dec 2023 16:27:21 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVP-006Jmq-1L;
	Sat, 16 Dec 2023 16:27:13 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a22f2a28c16so206583566b.0;
        Sat, 16 Dec 2023 08:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744026; x=1703348826; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O0spUUbJmjQwgFVWf1CEudZTaYU98S6ce2Q20/X/yT4=;
        b=ZFf7aAYZTtfXv1AFzyewXJqlrWMVCaY3ZkBl8euoO7Hni1T0B5ZJaHW1ymSWSxky4t
         QA705JYb1taU07HiuBV7Kg9bzjcH6db26wHffxXwR1lH7JS117CgCVkMroYu6tu14mOA
         De0tRFrZvLfrsLrUPs66LUfNIP7vlCknnxnah5V7weDhY+QNjnLLm52tz7ZRTDGVIy9N
         kkEDpOPvBcuRCokOYuaG2u14N6jsCM69DMKQReX8BA62Wjk/GmkTzdN9peYTNsp+G4Ip
         TocNE8j4uac/QCR7yqsSsfyipPf5fxz4/vlT0nulG4Vg+TqjK4AlPvpirhZYpNP738zW
         b5tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744026; x=1703348826;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O0spUUbJmjQwgFVWf1CEudZTaYU98S6ce2Q20/X/yT4=;
        b=k9rCpTNcOOhJrJ1tFjMidxSyo8Z5zjpZhSInynXr0s7Zkqy/EKbnuuj+wkTe10Z74X
         TDd0C95ishqwX/IvOBEV3H7nXQNn7i4kGRLbST7+dKtX55xFgEV6YVObXyMpPQecp3ci
         LdgLNEautYF1c/wluGkz9ohc7/S/rRn0sU+e5/O/Pb09r5n+YDnrRG2r/FdwWpGYebgd
         tB6bIXMQBr9osy25a+rF4e+wEUfqWd+oUKCNYFvqoepKZ9SQKE8MYPXSiXLncOfCXvrc
         42B0HEoNs4B2rhDeOcHuSBF6pHUcyPdaJ1x9RQpant36Fyby8HkNDnPZfCwmAaoX1PRz
         c1sg==
X-Gm-Message-State: AOJu0YzYQpOhRPGqhepVNHrDDE92l5t4TWHtUMNKuvcC7gUY/iIpx0wy
	CBWcwMxZegDz9dzPqYEHOQ==
X-Google-Smtp-Source: AGHT+IFkgMiovOybj8YWuKfHa4bXW7oLzo58Fn54wpHyRZyQ01nxI3SFqKBTwST27u3pd6NA3td4Dg==
X-Received: by 2002:a17:906:284d:b0:9ff:1dea:83b6 with SMTP id s13-20020a170906284d00b009ff1dea83b6mr4318104ejc.4.1702744025687;
        Sat, 16 Dec 2023 08:27:05 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:05 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 00/27] Add HDMI support for RK3128
Date: Sat, 16 Dec 2023 17:26:11 +0100
Message-ID: <20231216162639.125215-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082711_453409_D80A1132 
X-CRM114-Status: GOOD (  21.69  )
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

This is version 2 of my series that aims to add support for the display
controller (VOP) and the HDMI controller block of RK3128 (which is very
similar to the one found in RK3036).

The VOP part is very simple -  everything we need for HDMI support is
already there. I only needed to split the output selection registers from
RK3036. The VOP has an IOMMU attached, but it has a serious silicon bug:
Registers can only be written, but not be read. As it's not possible to use
it with the IOMMU driver in it's current state I'm not adding it here and
we have to live with CMA for now - which works fine also. I got response
from the vendor, that there is no possibility to read the registers and an
workaround must be implemented in software in order to use it.

The inno-hdmi driver currently gets a lot of attention [0-2] and I'm
hooking in now also. As requested I incorporated some of Maxime's series
[0] (and tested them).
I have intentionally not removed any code dealing with output format
conversion in this series. In contrast to the input format, which is always
RGB on this platform and certainly can be dropped, that can be implemented
later. And secondly I need the conversion for RGB full range to RGB limited
range for this series.

I did also some smaller driver cleanups from my side and implemented a
custom connector state which now holds the data that belongs there and it
is not longer in the device structure and, of course, addressed the
feedback from v1 [3].
Please see individual patches for changelog.

Note: Patches are based and tested on next-20231213.

[0] https://lore.kernel.org/all/20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org
[1] https://lore.kernel.org/all/20231204123315.28456-1-keith.zhao@starfivetech.com
[2] https://lore.kernel.org/all/2601b669-c570-f39d-8cf9-bff56c939912@gmail.com
[3] https://lore.kernel.org/all/20231213195125.212923-1-knaerzche@gmail.com/

Alex Bee (16):
  dt-bindings: display: rockchip,inno-hdmi: Document RK3128 compatible
  drm/rockchip: vop: Add output selection registers for RK312x
  drm/rockchip: inno_hdmi: Fix video timing
  drm/rockchip: inno_hdmi: Remove YUV-based csc coefficents
  drm/rockchip: inno_hdmi: Drop irq struct member
  drm/rockchip: inno_hdmi: Remove useless include
  drm/rockchip: inno_hdmi: Subclass connector state
  drm/rockchip: inno_hdmi: Move tmds rate to connector state subclass
  drm/rockchip: inno_hdmi: Correctly setup HDMI quantization range
  drm/rockchip: inno_hdmi: Add variant support
  drm/rockchip: inno_hdmi: Add RK3128 support
  drm/rockchip: inno_hdmi: Add basic mode validation
  drm/rockchip: inno_hdmi: Drop custom fill_modes hook
  ARM: dts: rockchip: Add display subsystem for RK3128
  ARM: dts: rockchip: Add HDMI node for RK3128
  ARM: dts: rockchip: Enable HDMI output for XPI-3128

Maxime Ripard (11):
  drm/rockchip: inno_hdmi: Remove useless mode_fixup
  drm/rockchip: inno_hdmi: Remove useless copy of drm_display_mode
  drm/rockchip: inno_hdmi: Switch encoder hooks to atomic
  drm/rockchip: inno_hdmi: Get rid of mode_set
  drm/rockchip: inno_hdmi: no need to store vic
  drm/rockchip: inno_hdmi: Remove unneeded has audio flag
  drm/rockchip: inno_hdmi: Remove useless input format
  drm/rockchip: inno_hdmi: Drop HDMI Vendor Infoframe support
  drm/rockchip: inno_hdmi: Move infoframe disable to separate function
  drm/rockchip: inno_hdmi: Switch to infoframe type
  drm/rockchip: inno_hdmi: Remove unused drm device pointer

 .../display/rockchip/rockchip,inno-hdmi.yaml  |  40 +-
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts |  29 ++
 arch/arm/boot/dts/rockchip/rk3128.dtsi        |  60 +++
 drivers/gpu/drm/rockchip/inno_hdmi.c          | 482 +++++++++++-------
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |  13 +-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h   |   3 +
 6 files changed, 448 insertions(+), 179 deletions(-)


base-commit: 48e8992e33abf054bcc0bb2e77b2d43bb899212e
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
