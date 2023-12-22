Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F34AC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gbpF1m9t2Ayz6islAHrs4pnXAs15mUYW6JSLcKzfSpQ=; b=k2K1Lvg0v/AwPc
	MNgfChJluUZqOvsF0cxXhYYc8nu4vk6N8rBkkfCi2e8fweWHHfU+nl+Rt1xmbweTp+rSLX5bsOaH6
	wni7j0F0MPmDCCD/DYKOHyUu19HRnhCWmkxVmV/nQAfLD/GHZbEJSamuPuDLpTd7NzYH7fMrxA+mQ
	EAcVzcZtE7Bz2b7YxEHSmJ9Ej52WWtN7ES5dnl3xw37w8DNbarWyTh6B3izzWLrjDYtn5T27Qqq+3
	rgKobA89r3zGln1gFh0HAmtmHmDlCrpLtHzabcwf6No4fvveuH/TZ1Krp28k9LaggZL67boulQiF+
	pVuJCIzT0jqPiHVybNdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXs-006Wfm-2g;
	Fri, 22 Dec 2023 17:42:48 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXV-006WJj-1o;
	Fri, 22 Dec 2023 17:42:28 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-33697caf9a6so422934f8f.1;
        Fri, 22 Dec 2023 09:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266941; x=1703871741; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hHFkedPmax7f2jMznqg0TqRbSWkPKtd98J+qp1ddTP0=;
        b=Rk163jvxw2SOutw+lJh/QjtbSGkX0KKuoVKrnsLWlS/mV2VTTHG+bqqelK/mkaQP1j
         aCaJd3pRCF4CUfEUpKFrk6QZfcZvo9ECtT9kYBJ/wMDWPb/FpDcl7QmOEbvO0W2ZDzkA
         mvAMRyJKUiFvRBvbFgjy4mPRX33CjH4MHrC9iBAG9W79fQWfS5GvYLDloXKrR5RGorog
         UpgyA2zIfmiBieMJv7L02Am+edDzu9KDg3+QXTjJGiPCb5oWrCmoP/TMCvTlrVTZKWUT
         6jEdZYPFaYgaZMhlyjsleIN0h3tw2ZN4EVnnubRleOnXlkDClsHeuqSjWl6cG6oEe+y2
         J5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266941; x=1703871741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hHFkedPmax7f2jMznqg0TqRbSWkPKtd98J+qp1ddTP0=;
        b=iiRssNwahC5sZ56Gwkz02QokF+ga/q36Js0REhMldP0sm9duiqpOVf8Ry6YTt3GQXB
         NkIx2Gh7HEnmVzlT6KRZtz7IJoKS1Jj+8n5n65C42FPQIC+YO4SDkWy14IJmBnsV/Mnb
         8aAXOZov/lFEABaYPDeasmO5j8nbt/S4PPamLoGq3c579XvtoUKDry7LXml1Mhaen22o
         BRjANoLTEY1X2ZzKWLGIX4XZ9QQXZ9xmsrJQ1KynXa21KQRMCufBYRXulrXoe+PoDnOP
         W3yZAHzf2wmFbZqvR7KjrzKhRdw4KIp6RIa5rJ7iLoa37Br9qAq7biFzcJmAiQ9TZKdr
         O35Q==
X-Gm-Message-State: AOJu0Ywlei5v+FSf98z1+UmRi1PNwR2D7bNccsFKIOtTIe7GZdUpdpKX
	PZG51lnHYENSb8dtehWpPg==
X-Google-Smtp-Source: AGHT+IHwJ7vKkIduWkKIJWTuwfloN+HwqKIaLADdUtYCaF29vwkh72hGBlvXCgEZafcU5IlivtWLFw==
X-Received: by 2002:a5d:6102:0:b0:336:5bc1:f53 with SMTP id v2-20020a5d6102000000b003365bc10f53mr1693282wrt.10.1703266941511;
        Fri, 22 Dec 2023 09:42:21 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:21 -0800 (PST)
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
Subject: [PATCH v4 00/29]  Add HDMI support for RK3128
Date: Fri, 22 Dec 2023 18:41:51 +0100
Message-ID: <20231222174220.55249-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094225_608255_109CDBAF 
X-CRM114-Status: GOOD (  25.46  )
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

This is version 4 of my series that aims to add support for the display
controller (VOP) and the HDMI controller block of RK3128 (which is very
similar to the one found in RK3036). The original intention of this series
was to add support for this slightly different integration but is by now,
driven by maintainer's feedback, exploded to be a rework of inno-hdmi
driver in large parts. It is, however, a change for the better.

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
There hasn't been any feedback to v3[5] so far, but I fixed an issue with
the new custom connector reset hook: If there is a connector state already
it needs to be destroyed in there as well.

Please see individual patches for detailed changelog.

Note: Patches are based and tested on next-20231213.

[0] https://lore.kernel.org/all/20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org
[1] https://lore.kernel.org/all/20231204123315.28456-1-keith.zhao@starfivetech.com
[2] https://lore.kernel.org/all/2601b669-c570-f39d-8cf9-bff56c939912@gmail.com
[3] https://lore.kernel.org/all/20231213195125.212923-1-knaerzche@gmail.com/
[4] https://lore.kernel.org/all/20231216162639.125215-1-knaerzche@gmail.com/
[5] https://lore.kernel.org/all/20231219170100.188800-1-knaerzche@gmail.com/

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
 drivers/gpu/drm/rockchip/inno_hdmi.c          | 549 +++++++++++-------
 drivers/gpu/drm/rockchip/inno_hdmi.h          |   5 -
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |  13 +-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h   |   3 +
 7 files changed, 484 insertions(+), 215 deletions(-)


base-commit: 48e8992e33abf054bcc0bb2e77b2d43bb899212e
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
