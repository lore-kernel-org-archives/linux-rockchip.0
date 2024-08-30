Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CEFCA1002
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 15:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ud33tvyn3fb/9/7KDSgVo+d+uFx2ejnQGpcmgKZklnw=; b=Wrfr1z4BH8PRNf
	9Zu8uYYKPM+4Iu+DLji8GnvUEgqwz+rKMOl3EqhQh6kG/Bh4P+sgLhyet/w3HxjaAn+ogvLQRz9g+
	je64gZ1dUr6c52M9g3ZDEWu8zcokPfqm+UX2Lrs2E+VZydUWf/vHpcxZhz4nDYLJF2qQNL/3LXvRX
	AW+qmuq1fibqZJGOWthzVcgiAAxkZJzRrPpphLbtGdQyGA2MiGR16fgrYXBiO2eteLbGlZr4cTBG4
	RXkL1suXytAGW2q05C4nezVnFQZ+nqvVICPFxYbItRvADNiov6rpx8pTUNbd59twdQwCBujWZgIEJ
	PEqzTPZNOL13nZaJhTlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3U0-00000006lrH-19Oo;
	Fri, 30 Aug 2024 15:24:16 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3Rk-00000006lSZ-2inb;
	Fri, 30 Aug 2024 15:21:58 +0000
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-39f37a5a091so6570775ab.1;
        Fri, 30 Aug 2024 08:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725031315; x=1725636115; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jwcy2RWpl0Jy35HmMik2lryKjWDim5fRSydnX94H64Q=;
        b=ZN2gN2xMo4F/S6Xl3+h50WLzYxvCR31xNTYO8MhFkzCePDBe6P1MQ90g6SgWhfO81Y
         QiaI0LiMYZeOFHGeE4aycdL805Fg6Q1SGMjUbcGAndS2nbbJ/AUdWZ2RpoFkAge3b3vC
         PIgY98kJiHdtlgmRwSeg4Oxn8imi7x6Zp60EHIuzQQXcXT88M9opSNCS4BnB0Y7yA459
         tCDg6Zy7oNpXnkK9Q/gsLJIKrBIKkuIYAr/fDACxVwF1Uvo/GfrGn3lp9Cj2r1Lxna4x
         JQkAA16Dr8NTbxZFP2uH94VXmBxRuCodkvyksGJzQv3Zgazm1KMok+5H4bTU6P29yj9e
         ojbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725031315; x=1725636115;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jwcy2RWpl0Jy35HmMik2lryKjWDim5fRSydnX94H64Q=;
        b=aoXE1BuracPCKnYt/PNOs2sILNNTrfeHOOm/9TtMka7aVGPfMjwAcgZ8f2cdwEsa3B
         9kkhwB+kdTlFfUkhu3fNUqLshaJcxyRes/hpxgKvZabLfYvnJEttn8ke9uGVWgKjkjCJ
         XRT9DA80HTy9g9HpAmUzMYg4ciqwvM07ow1HBobmI916hd5C20L/Tex/42BxkdO08Ldw
         lCqZfFWEKL67U9vyCJI2uihsFFK9J6b+j7zh/OVjK1W0/Z26sy+R74fTnE8bekfBSE7f
         xg95NIBrQFx5cfOC0NAEr7jbbqbROw54sFrw9crINeXxny6Jlv3TRLWFervW4wx6aoQ2
         HM6w==
X-Forwarded-Encrypted: i=1; AJvYcCVnC935Htv/4t+2QmO0SNk8ArSMxpiluJluvd6Sr6IXvqcyq9nV/FSgwx4qX7v8gyhFwtoPvMN/xOVQHv5hxtM=@lists.infradead.org, AJvYcCWEDmq0G5LP5btQ+Ep49oxPNCJkLoy1uYbbk9KqNG+syZKPIxYQFFJYXJ2NADQT6caFVxkn0C9qHeOnUA5+YsSq@lists.infradead.org
X-Gm-Message-State: AOJu0Yxz26SSJzxJwFCYASlP+Jcq6/PkH8OU2FG2IKGtDkuPc2xZNRBQ
	jrMsZyWXGtCCoEg+TcpcYAiTUTlCPRzQAu/Vcw1wI08QzxxXnnu1
X-Google-Smtp-Source: AGHT+IE6+7F4IwUjoUpungdPIgK7N7zKDEIZ0Pa/PFwI4Lam2pC3QvZ+yFwkBy87CRSIvERTOe7b3Q==
X-Received: by 2002:a05:6e02:1d04:b0:39d:286c:5b72 with SMTP id e9e14a558f8ab-39f378acb8emr64753255ab.28.1725031314408;
        Fri, 30 Aug 2024 08:21:54 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3af97203sm8826155ab.1.2024.08.30.08.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 08:21:53 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	markyao0591@gmail.com,
	s.hauer@pengutronix.de
Subject: [PATCH v5? 0/6] Tweaked basic Synopsys DW HDMI QP TX driver for Rockchip RK3588
Date: Fri, 30 Aug 2024 10:21:24 -0500
Message-ID: <20240830152132.8894-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_082156_710158_25F54EE1 
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
Cc: devicetree@vger.kernel.org, algea.cao@rock-chips.com, aarnoud@me.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Shimrra Shai <shimrrashai@gmail.com>, ldearquer@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

I saw Cristian Ciocaltea's proposed basic driver for the Synopsys DW
HDMI QP transmit (TX) facility on the Rockchip RK3588 and noticed that
it had seen some critique and thought I'd help it along a little by
making some of the changes that others had suggested in the discussion
thread. This package is mostly like his(?) original but features the
following changes suggested by Conor Dooley and Heiko Stuebner:

 * Documentation for the device tree bindings specifies the various
   clocks explicitly in both the general (synopsys,dw-hdmi-qp.yaml)
   and Rockchip-specific (rockchip,rk3588-dw-hdmi-qp.yaml) files.
 * Changed the compatibles for the RK3588 VO0 and VO1 GRFs in the
   Device Trees (rk3588-base.dtsi) to reflect their different natures.

and some of my own changes:

 * Tweaked the driver code slightly - mostly organizational, but also
   added a mutex around device access in the dw_hdmi_qp_... method
   that was present in the downstream BSP driver which might have been
   necessary to prevent thread bugs.
 * Improved grammar & punctuation in some of the English on the
   Kconfigs and output messages.

Let me know how you like it. I hope this is suitable enough for kernel
integration as I'd really like to be able to get some of the newest
kernels having video bringup out of the box. I'm testing and
developing on the Firefly ITX-3588J board; not sure if this will also
work on the Rock 5B too, as I don't have one, but since little was
done to the original driver I don't think it should break anything.
Moreover, I wanna get the device tree bindings nailed on this point
because I'd like to prepare a UEFI firmware package for this board
that would be capable of booting mainline kernels from this (or a
soon-to-be) version onward, without needing a separate device tree
file with the kernel, like a "proper" PC. That naturally implies
having at least all basic desktop functionality down, including video
output, before the DT is "baked" into the firmware.

- Shimrra Shai

Signed-off-by: Shimrra Shai <shimrrashai@gmail.com>
---
Link to Cristian's original w/previous versions' history: https://lore.kernel.org/linux-rockchip/20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com/

Total changes:
 Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml          |  89 +++++++++++
 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml | 171 ++++++++++++++++++++
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml                            |   6 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi                                      |  44 ++++-
 drivers/gpu/drm/bridge/synopsys/Kconfig                                            |   8 +
 drivers/gpu/drm/bridge/synopsys/Makefile                                           |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c                                       | 780 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h                                       | 834 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/rockchip/Kconfig                                                   |   9 ++
 drivers/gpu/drm/rockchip/Makefile                                                  |   1 +
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c                                     | 431 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c                                        |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h                                        |   1 +
 include/drm/bridge/dw_hdmi_qp.h                                                    |  36 +++++
 14 files changed, 2409 insertions(+), 4 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
