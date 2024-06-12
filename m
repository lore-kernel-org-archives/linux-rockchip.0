Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C816C27C7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JFBRzPW0e+CV7zRp1dX4Ui8ht33mGamd9222NR6tYD0=; b=Vt7OjEjb+CqgZx
	Fa6DSyWrXtUpyDZyr7T+6bWtYi8MigI63d9pZXK7NMXVB/N2/NXslN6NURjtXqyhLvSPX2RJlcLF7
	c3HCJFMuHFXDR0PIEAmCNr4pPGQ2XUQJ44nCJy4ExBxiirI4kBpEj0gTsSIt8HiRqYxaLqCD8+Vqg
	6vTzPti7Zez/OrBxmeQ+TGYjU1QnlsXxmaJFyP9jY+jgv5DZyRgit/F04LL3+oESbfCZ4JO0yewWA
	Xf5rFguIZeYdlkbbhnvnVdKX90VhzmtAEV2U+ltnmraNlKASVoXfo1FrGBa4IxRykDa/oFQBsIuaq
	m6Y0dSMVbqJZ+R8DX9bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPX-0000000CoXR-4C5D;
	Wed, 12 Jun 2024 13:53:12 +0000
Received: from mail-wm1-f44.google.com ([209.85.128.44])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPT-0000000CoT5-0tQm;
	Wed, 12 Jun 2024 13:53:09 +0000
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4217d808034so34719345e9.3;
        Wed, 12 Jun 2024 06:53:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718200383; x=1718805183;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TGBcr2RK+U/upO1TBgkbMQlKphC74REv/dCO0ULM5Bc=;
        b=ZsIvM53Lu50gziVx4MiatyGAihHlTES6RYvWMTV0j0aTMOTEKh2/yFMzLcddkHGOl6
         tWi2R61ZsvmTSE/KQqUFAAQPJmMO0WKbiSI40WQbpzK93B4VWyB8jJl7feGpj5F/vZTs
         voGrzDAR/NwuEftR3slgC6uBX4gumTPdYLUmCFCLMY9r55teAT1tOcmadnT7RRkAPoOq
         ShK4ktEAczgbR1kUBV8zdnMqIP5V/3pir4x0s5pysANcKRO/fjVwG2RAkrG1q+w00A5O
         hiT+4Oq/3J6GU8tUlp2L7lE2UsYEEaC7669KUC6l1+N2ZWa7bnrAun7J/Brphl9qS2ts
         nhwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmw/6hlkJWw5SeTDFklDqIit656XxyA9Ztz4p6c9cdQfF+5KZ67b4I5ZKLED/OKIcSXLXpK47n1j/KtPpUUI2njLIESm8rDOn66yDYW+cASC5qDqt2ndxSw70ZJYspmx5wWaRIqnhR8fcchmQ6vr46HRF+eh1YEOw=
X-Gm-Message-State: AOJu0YzJo1jsjF/twREerHQBQuQUPKbWOc/f0iqn0ST5TOgsHN349rrX
	onPmqLS114FUUt5woURlEsnDwGUawQzAbgucpkGq1qGXG5ArsyZC
X-Google-Smtp-Source: AGHT+IFpLlhCxjJHPHBYfibghuC2LyUOVhxW9VizojTuoZbWMakCG+/4bvOBPIPTBmnYXt2VZXwpnA==
X-Received: by 2002:a5d:45c7:0:b0:35f:2161:1fc0 with SMTP id ffacd0b85a97d-35fe892bddamr1198669f8f.70.1718200382941;
        Wed, 12 Jun 2024 06:53:02 -0700 (PDT)
Received: from ramallet.home (cst-prg-45-36.cust.vodafone.cz. [46.135.45.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871ec9e6sm28201695e9.38.2024.06.12.06.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:53:02 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: [PATCH 0/9] New DRM accel driver for Rockchip's RKNN NPU
Date: Wed, 12 Jun 2024 15:52:53 +0200
Message-Id: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADaoaWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDM0MjXTNdQwPdovzk7NQSXUtjQ7OU1LRkQ5NkcyWgjoKi1LTMCrBp0bG
 1tQDVw8QnXQAAAA==
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_065307_349866_B2E79AD9 
X-CRM114-Status: GOOD (  11.15  )
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

This series adds a new driver for the NPU that Rockchip includes in its
newer SoCs, developed by them on the NVDLA base.

In its current form, it supports the specific NPU in the RK3588 SoC.

The userspace driver is part of Mesa and an initial draft can be found at:

https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/29698

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
Tomeu Vizoso (9):
      iommu/rockchip: Add compatible for rockchip,rk3588-iommu
      iommu/rockchip: Attach multiple power domains
      dt-bindings: mailbox: rockchip,rknn: Add bindings
      arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588s
      arm64: dts: rockchip: Enable the NPU on quartzpro64
      accel/rocket: Add a new driver for Rockchip's NPU
      accel/rocket: Add IOCTL for BO creation
      accel/rocket: Add job submission IOCTL
      accel/rocket: Add IOCTLs for synchronizing memory accesses

 .../devicetree/bindings/npu/rockchip,rknn.yaml     |  123 +
 MAINTAINERS                                        |    8 +
 .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |    8 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          |   53 +
 drivers/accel/Kconfig                              |    1 +
 drivers/accel/Makefile                             |    1 +
 drivers/accel/rocket/Kconfig                       |   13 +
 drivers/accel/rocket/Makefile                      |   10 +
 drivers/accel/rocket/rocket_core.c                 |  155 +
 drivers/accel/rocket/rocket_core.h                 |   48 +
 drivers/accel/rocket/rocket_device.c               |   39 +
 drivers/accel/rocket/rocket_device.h               |   40 +
 drivers/accel/rocket/rocket_drv.c                  |  243 ++
 drivers/accel/rocket/rocket_drv.h                  |   16 +
 drivers/accel/rocket/rocket_gem.c                  |  136 +
 drivers/accel/rocket/rocket_gem.h                  |   33 +
 drivers/accel/rocket/rocket_job.c                  |  708 ++++
 drivers/accel/rocket/rocket_job.h                  |   49 +
 drivers/accel/rocket/rocket_registers.h            | 4449 ++++++++++++++++++++
 drivers/iommu/rockchip-iommu.c                     |   39 +
 include/uapi/drm/rocket_accel.h                    |  116 +
 21 files changed, 6288 insertions(+)
---
base-commit: 83a7eefedc9b56fe7bfeff13b6c7356688ffa670
change-id: 20240612-6-10-rocket-9316defc14c7

Best regards,
-- 
Tomeu Vizoso <tomeu@tomeuvizoso.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
