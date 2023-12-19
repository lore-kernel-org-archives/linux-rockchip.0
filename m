Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 468C6C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8uRmCkZfdDZM40/amBft79quB3LGD6kVD9tBaa5NHQI=; b=f8R/Qh/6laWXMI
	Sk//emOzddXf61DqCXO4f6dbHyImjk2zD2dCLoqYJ5UQfKS9ljRTZboLp3tUKS1mqrPuRsjUYzj5N
	9RbiG9zctD4hZXXOOuot5e0xp9ZvUtEGNAMmjSZTIUjHoK8zeHTbRRvmSLcigriveV9TIIfDYQuPF
	GbuuvdTan91gXjMneqc1Ygoq942UOHe6p4/7+XhyEJjZJwNZNK8L1ijt8Tin5moQcWP0iHQQ9FFNh
	h28ZcVAsHCfJWN/eJpYE3fE90pjaiavKrxozk/WKAsskmOXLL4ThtAm62zTlr1oIwRYE1+VszmECq
	pPi5TXC8mU+2FNCCTumQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT7-00Eo9r-33;
	Tue, 19 Dec 2023 17:01:21 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdSy-00Enwm-0b;
	Tue, 19 Dec 2023 17:01:13 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c2bb872e2so54677365e9.3;
        Tue, 19 Dec 2023 09:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005267; x=1703610067; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N8PJRoWBXdJr6P9kQaOUuh4wo+XEtKpMrItz+79btFw=;
        b=b6c4ThpZWcgqczrRu/SbZduE0a5zZmeUDSTctvoTb4gX0KNMXwMaT687R5STqQ7JR/
         GfIjBEtWEBkDnBtbT4XMhb1Sxd9TsTjtS4/MEjGdMIeAPsjQ9lOnZjngdn9wFXM8fI5U
         OdgjuedrPgF9D2p06AZNIYuNZk/vOoHhXvCkNe6vxrKQXQOc6xbJdNNdJeXX6xSVJDcz
         aaUMiBuqHQdcVFAwT0atbLGyiNetC6ex2UIUC3hIhMUmcMlLxQ5NQUOAgjcUsK0yv5hv
         r2XyTii4Tc1SaaeK8qYUXRLFYk15SLAd648bQxqjFMcVugdep51NmmTnIGPbvgMoPdAe
         pYOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005267; x=1703610067;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N8PJRoWBXdJr6P9kQaOUuh4wo+XEtKpMrItz+79btFw=;
        b=C4a2RE1R1/mSHnb0lLTXO4voDvj/zVV/SFse49/HCS8CN4V0gefVJVsPV0mvI/gcMp
         hMdAEbMHZW6d+QRITbSQT23NeUv/rGlc54xcC98RFtPY5/aCR9vkoWVNpsg86HAMDh8q
         Bl/7BbPkTri3aEkL58vuw2zV85FXBVPdv7EXamC7iCvUxNDT8rNhhxusyNyYhGaYx0iq
         RAjX9dtRw8Hi4jqzFKvieLv5VVkd5Wwi84xvfk0yVb/PCKvjjGVy325ChU7HiG+PUYFr
         UOToJPyKjD6+6uzzIBSwRkevNxbxxw6xO0538dmBtKGU4G+yCCd8BQEXpU+YMHN+suvX
         I1sw==
X-Gm-Message-State: AOJu0YwEAUSIhgh7aNXmwBcz72Dgx77mxVNHqm2dsU/mO08tRjlrGp5v
	pQoqiILZNbQhaF2hyY4ACg==
X-Google-Smtp-Source: AGHT+IFtTnWSg8by21FsHwIUaOzjc1ZOwAk0/3xwkWAAHFdNcNdnQXbOrW8p59ru2prAZIag/1ge2w==
X-Received: by 2002:a05:600c:4706:b0:40c:6a6b:ceed with SMTP id v6-20020a05600c470600b0040c6a6bceedmr1998676wmo.259.1703005267112;
        Tue, 19 Dec 2023 09:01:07 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:06 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 00/29] Add HDMI support for RK3128
Date: Tue, 19 Dec 2023 18:00:30 +0100
Message-ID: <20231219170100.188800-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090112_227192_72FA5C39 
X-CRM114-Status: GOOD (  23.42  )
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

This is version 3 of my series that aims to add support for the display
controller (VOP) and the HDMI controller block of RK3128 (which is very
similar to the one found in RK3036).
The original intention of this series was to add support for this slightly
different integration but is by now, driven by maintainer's feedback,
exploded to be a rework of inno-hdmi driver in large parts.


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
feedback from v1 [3] and v2 [4].
Please see individual patches for changelog.

Note: Patches are based and tested on next-20231213.

[0] https://lore.kernel.org/all/20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org
[1] https://lore.kernel.org/all/20231204123315.28456-1-keith.zhao@starfivetech.com
[2] https://lore.kernel.org/all/2601b669-c570-f39d-8cf9-bff56c939912@gmail.com
[3] https://lore.kernel.org/all/20231213195125.212923-1-knaerzche@gmail.com/
[4] https://lore.kernel.org/all/20231216162639.125215-1-knaerzche@gmail.com/

Alex Bee (17):
  dt-bindings: display: rockchip,inno-hdmi: Document RK3128 compatible
  drm/rockchip: vop: Add output selection registers for RK312x
  drm/rockchip: inno_hdmi: Fix video timing
  drm/rockchip: inno_hdmi: Remove YUV-based csc coefficents
  drm/rockchip: inno_hdmi: Drop irq struct member
  drm/rockchip: inno_hdmi: Remove useless include
  drm/rockchip: inno_hdmi: Subclass connector state
  drm/rockchip: inno_hdmi: Correctly setup HDMI quantization range
  drm/rockchip: inno_hdmi: Don't power up the phy after resetting
  drm/rockchip: inno_hdmi: Split power mode setting
  drm/rockchip: inno_hdmi: Add variant support
  drm/rockchip: inno_hdmi: Add RK3128 support
  drm/rockchip: inno_hdmi: Add basic mode validation
  drm/rockchip: inno_hdmi: Drop custom fill_modes hook
  ARM: dts: rockchip: Add display subsystem for RK3128
  ARM: dts: rockchip: Add HDMI node for RK3128
  ARM: dts: rockchip: Enable HDMI output for XPI-3128

Maxime Ripard (12):
  drm/rockchip: inno_hdmi: Remove useless mode_fixup
  drm/rockchip: inno_hdmi: Remove useless copy of drm_display_mode
  drm/rockchip: inno_hdmi: Switch encoder hooks to atomic
  drm/rockchip: inno_hdmi: Get rid of mode_set
  drm/rockchip: inno_hdmi: no need to store vic
  drm/rockchip: inno_hdmi: Remove unneeded has audio flag
  drm/rockchip: inno_hdmi: Remove useless input format
  drm/rockchip: inno_hdmi: Remove tmds rate from structure
  drm/rockchip: inno_hdmi: Drop HDMI Vendor Infoframe support
  drm/rockchip: inno_hdmi: Move infoframe disable to separate function
  drm/rockchip: inno_hdmi: Switch to infoframe type
  drm/rockchip: inno_hdmi: Remove unused drm device pointer

 .../display/rockchip/rockchip,inno-hdmi.yaml  |  40 +-
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts |  29 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi        |  60 ++
 drivers/gpu/drm/rockchip/inno_hdmi.c          | 543 +++++++++++-------
 drivers/gpu/drm/rockchip/inno_hdmi.h          |   5 -
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |  13 +-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h   |   3 +
 7 files changed, 478 insertions(+), 215 deletions(-)


base-commit: 48e8992e33abf054bcc0bb2e77b2d43bb899212e
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
