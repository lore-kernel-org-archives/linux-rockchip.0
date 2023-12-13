Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0A4BC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=indwfhMgxGfUUd2hUQpwsCuLhB2z6cXeAF3tNItZQ0s=; b=fswwV3oQzBT0NW
	8ZwOKuKd9ykBMzlPOYB6QGDTUP+27Asx5cs8F7IX6hDvSxpRxKUz4kMVjYn+ZI+7oXujMl4BFqyae
	nG5IOVmXHs7vvOYHBrkcWAsPcZScHU0HtrU/+n+85GFEG4igYLwsIlQ3JRxPA9UkmS8wFrGiguTEl
	KgN8oVH12q96S5xk1d0VHEJtW29xUtkQMwT715FxDcRPWUJYPL5sNccNbvKH2zKkqmI4C5WyGFIPB
	8KLkQ2Fo/Fw8UK6vGHkJAq1z/1znmbaQEFqYxUA6a13K1aV9CxyXKBKhJTZPY/I51jOSsWC07XuJJ
	uPInN1viyPCqLzPNxrqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGe-00FsbO-1t;
	Wed, 13 Dec 2023 19:51:40 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGV-00FsT5-04;
	Wed, 13 Dec 2023 19:51:32 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c580ba223so17946635e9.3;
        Wed, 13 Dec 2023 11:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497087; x=1703101887; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QQ00PVQEEsbBDsAiHtNgQwoZD5SKSh4mT5UUe1TRdHc=;
        b=fydFeoLBRJqI1LUIYIChJW2yPQrPN9sfyXtipdTT4qqXVdePt2AjtuUe+ybC3cuVJ2
         CGNI1Ib8SQ2X2mRlZfYU8voFRMMD9K6hTvz7yGCre1BsxK1C9FCe1DNVnM03xPLAsNbz
         rR0mHcb+RaH3VOtsO543f1kmDWJHeF3S+9udRJB4Dakrq5+WYPhMqFVEgUvW0hhxPDRY
         0RnUcKYTAXnufgdX62MPl8NdLbrawlzGH92WFOLu3x5XCPz1GNywbF/Hwzhfq+aSfoph
         uDf4AnX36thSTq+ext1oGl+Iv4AjRVXo/ArGDm+lOxn4yfgzICEbtG/5POkB3PTale6f
         c6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497087; x=1703101887;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QQ00PVQEEsbBDsAiHtNgQwoZD5SKSh4mT5UUe1TRdHc=;
        b=KsgGNWHgLLfHxGXz+y9krcQyH/igfk9iaswfGeFhtSZUE1gKp28oQfAa1TbQGGke10
         3venEZhL0ibALAnqqC+tKN8YDLNIzEPEfhMTkPLEQ5y1Byheb9U0PcnFPm4LSAhljG1C
         qfloPEp15iifcRV06dnQuyWgV6bDQGcYpNIRXhgN9SO9V82YCBI/aQI14+GU6x9m0YQJ
         8BcCry2yFbKPtIb8Y8H0CU21E8aMYf8hT37Tuyb+Jj+WfSSDmLC80NqkrHGwSqt15ZbK
         KTC+CA9jFJGLHTM+t6throPP5v0s0xI/hRYpF2FhY2mPG1dMz8nOdEjNw/QCo9ULJGaQ
         1OHg==
X-Gm-Message-State: AOJu0Yy9QEQhGc69dbYKHLPVPte18GkXZnElOeiY9RWsG74MWoK3I00f
	chscFSdrUh4kwjWvOzfXmA==
X-Google-Smtp-Source: AGHT+IFBc7XAiSp1dfcz3uO18CnzTmXQGI1tcrG6ntKLXnS0y/BNGLSoesw7UH4cnM9+Bs3NVJG5Mg==
X-Received: by 2002:a05:600c:4f05:b0:40b:5e59:ccdb with SMTP id l5-20020a05600c4f0500b0040b5e59ccdbmr4822082wmq.188.1702497086918;
        Wed, 13 Dec 2023 11:51:26 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:26 -0800 (PST)
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
Subject: [PATCH 00/11] Add HDMI support for RK3128
Date: Wed, 13 Dec 2023 20:51:14 +0100
Message-ID: <20231213195125.212923-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115131_060098_595344A8 
X-CRM114-Status: GOOD (  19.16  )
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

This series aims to add support for the display controller (VOP) and the
HDMI controller block of RK3128 (which is very similar to the one found in
RK3036).

The VOP part is very simple -  everything we need for HDMI support is
already there. I only needed to split the output selection registers from
RK3036.
The VOP has an IOMMU attached, but it has a serious silicon bug:
Registers can only be written, but not be read. As it's not possible to use
it with the IOMMU driver in it's current state I'm not adding it here and
we have to live with CMA for now - which works fine also. Andy, maybe you
can shed a light on whether there is any way to not have to write the
registers only and hope for the best (a.k.a rockchip,skip-mmu-read). I have
it working here locally - but nothing for upstream (yet).

The inno-hdmi driver currently gets a lot of attention [0-2] and I'm
hooking in now also. I did only the bare minimum to get a correctly colored
picture and a stable signal for RK3128. I leave the cleanups to those other
series and will come back with sound/CEC support later. It shouldn't
interfere to much, only the csc-part must not get dropped completely and
the mode-check-hooks are no longer dead.

Note: Patches are based and tested on next-20231213.

[0] https://lore.kernel.org/all/20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org
[1] https://lore.kernel.org/all/20231204123315.28456-1-keith.zhao@starfivetech.com
[2] https://lore.kernel.org/all/2601b669-c570-f39d-8cf9-bff56c939912@gmail.com

Alex Bee (11):
  dt-bindings: display: rockchip,inno-hdmi: Document RK3128 compatible
  drm/rockchip: vop: Add output selection registers for RK312x
  drm/rockchip: inno_hdmi: Fix video timing
  drm/rockchip: inno_hdmi: Correctly setup HDMI quantization range
  drm/rockchip: inno_hdmi: Add variant support
  drm/rockchip: inno_hdmi: Add RK3128 support
  drm/rockchip: inno_hdmi: Add basic mode validation
  drm/rockchip: inno_hdmi: Drop custom fill_modes hook
  ARM: dts: rockchip: Add display subsystem for RK3128
  ARM: dts rockchip: Add HDMI node for RK3128
  ARM: dts: rockchip: Enable HDMI output for XPI-3128

 .../display/rockchip/rockchip,inno-hdmi.yaml  |  30 ++-
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts |  29 +++
 arch/arm/boot/dts/rockchip/rk3128.dtsi        |  60 ++++++
 drivers/gpu/drm/rockchip/inno_hdmi.c          | 203 +++++++++++++++---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |  13 +-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h   |   3 +
 6 files changed, 309 insertions(+), 29 deletions(-)


base-commit: 48e8992e33abf054bcc0bb2e77b2d43bb899212e
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
