Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0C6ACA6015
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 00:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7aWut28RfQVsuNdXvlkVzginmHn7wCx2cVFFLCEfBlY=; b=WuKwtcBYzXFDF6
	uBeC1T7PGgzZjrr3i8IB/2rRDSejSx9jqBeru+sdrtJc4tdyQEUtT2gSEcnGvO/tDYKzXG53RoJ87
	eNxic4KjYcIxoG8WiB7A4Kqc9Dy0e0vQeyMH7xMwK9jAATAvMuEGO78l9vbnxzywAQYU0AwgJ9cFo
	coEWX1HGXMbyzVa3CGxPfu/tHX35Vb8yyCBRpeAq9ovA861FcPvIUSLYfyfQ4h6RZ+G2+1+yRosmh
	CAMiWYghXasF2cENqz4u2c2LOSAp7q2cCF4QVzsl0epLskcAUS/DeAfQk3x9r2AQ+YQRTJtUMyR/r
	fE0/+ILmQeYftp2tAOew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEyMd-00000005BeQ-0VH5;
	Fri, 09 Oct 2026 00:21:31 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEyMa-00000005Bdf-3RXN
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Oct 2026 00:21:30 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4a1682bff3cso29693575e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 17:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791505286; x=1792110086; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=WQqOqFaR8S6Kxc8KfBqHhYsGrjh61dZF/m/XQ0uNMYQ=;
        b=XRFEWfUlxouw/8CavQIffup/L4kIO4qkfBp22LPm6a5wM1OGgG9tgtEaAjz5fUUPVB
         j9VRdyeV+MFWx5298T1JbcElPfMucplDqvi57B7aSMxKFMv4uLEoh9ERJ6SLI+8dMP6b
         wliSSh7BsuahcbEPQJVs63fInW1u7PlyjdYVSj4rmSY1shB7qKxozJJ0+xomPdnTWGgK
         /7dh9T2PKArZ/557HuiS7Omnr4FWgkYilB/Eeg9aL/5syTBxGS5i7RAv4/kz32wxZlGg
         ZiXEYyFh89hmbdCsa/7mDy2MTo2W2bJU6z2gOIGdop/SMm29GqjtrJjjUidtQCYIS6xP
         gN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791505286; x=1792110086;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WQqOqFaR8S6Kxc8KfBqHhYsGrjh61dZF/m/XQ0uNMYQ=;
        b=FIndKdTviEJnsw3YF+1z8vD2xHcaA5rpyd6wQ4IURhm1ivcp8Tm827heeVPPlYFe/y
         hrV76/+S08y2pPTPDVHUg+LLhNgKVGYGR3oQy59Vi4LY28s2AU8SpBSWi2VigGoZXbAU
         jLBUeEZ97K5YXN3FdRlCm3DyOHXtU8W2cIEqqZkzcBVnhMPtobmX0PkEAkVJIHN6uNMb
         xyWCk5mfOQ6aIZG0GLlaRmjq2pWFhdHSkbb4JKNyimnx4rAG/S4ZQ7/wXLPj3awIUHTu
         Qv7xhU/KK2t7uQjUP7qA1tcGRUxYZF9UC7iF82hVqS2dZTq/IZktHYpxf2rY7E7KzO4M
         GnrA==
X-Forwarded-Encrypted: i=1; AKwUvByXWElcg+H5MMtSapHd7ZXvHj+Bir+AJGu4NWrMIhT5rH4wPcCTBAtHH0BXvBpjDpvg20S4jzSXaSSx/BRN5g==@lists.infradead.org
X-Gm-Message-State: AFuF++lOxKI5fBa6wDMyEGnd04Rrq01Z5F7WsxZGhtPaCIi2PzsiDUkT
	xjpPC08QG8uw8f8Thmmvlj/E8hZdzKnEaKdICsL7iiiL2q0jHi0hhAQg
X-Gm-Gg: AYBFou1JdKr8vw6e+ANHWzzsQn+0DVgDZfH+MHRgMiMODhSmO5iBNmM7GbZ1Ol32Jjn
	I9qm/r+8kvxzpDcLYYDlesmDXHmY8p0A7edkodjnDm7S570fLvX2L+ONM1K4cjm1JUXbcG4WktG
	5/Gc3DCf1jH4h8Jqxw+gG8+rIMTRgLqkPbJnFZU22RYqwTBix8qIa7cVxDssoUAHAxpzIYiZJ/D
	WhRA3NESf0NLOyZZOPE9hfLMmJK70mZRisHEMlD0yKe0pT6p/4S68Ki1WeVOVY+ZDRt25b++CBX
	3QzqM3KKMmgH3upiYnaIIyvaMwG3gMe/b5do2lnNL5SV2wLvr+xypTm12WDLRnew/19u01ueBDO
	8s1rakP0CIu9VqJfHXKlwtI9SNx7ckJsxeC5DhdI0B8LDxqGrgjp9ecqXy5BZujwQeu4ar8UoOy
	csf7cqm8gi0HYK23qkKmbhL3k9DUi6YKz+9nAStK6NIObgHfCbv4hJFJ1CrsMdbUmwBrNN8FmoK
	GGotTGf5AQ3c0KK+sZW07l1JewkgI+xb7OV+3yL132oOYIWSWHUKDn3oW8dgzKf8u9Db2IeQNTX
	a7MveCR2nS420WOKUM/v72tyclypkrHDMfNSfUMEAVs/OvgfR/vOaU8OkGVfMNSFcsiaCQZzBg4
	SveeN6tA=
X-Received: by 2002:a05:600c:524a:b0:4a1:8824:c9ba with SMTP id 5b1f17b1804b1-4a18e49234fmr2630825e9.18.1791505286061;
        Thu, 08 Oct 2026 17:21:26 -0700 (PDT)
Received: from localhost.localdomain (dynamic-2a02-3100-ad61-5a01-743c-891f-b33c-cae7.310.pool.telefonica.de. [2a02:3100:ad61:5a01:743c:891f:b33c:cae7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a18e4987casm3364605e9.1.2026.10.08.17.21.24
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 08 Oct 2026 17:21:25 -0700 (PDT)
From: Karl Mehltretter <kmehltretter@gmail.com>
To: iommu@lists.linux.dev,
	dri-devel@lists.freedesktop.org
Cc: Karl Mehltretter <kmehltretter@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Jason Gunthorpe <jgg@nvidia.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/2] iommu, drm/rockchip: Map private-domain imports from DMA addresses
Date: Fri,  9 Oct 2026 02:21:12 +0200
Message-Id: <20261009002114.67851-1-kmehltretter@gmail.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_172128_896529_6EFEF39F 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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

Diederik reported failed video-buffer imports on RK3588 with
DMABUF_DEBUG. The proposed warn-only mode [1] confirmed CPU-side
attachment access in rockchip_gem_iommu_map() during Sway video resizing.

This RFC keeps Rockchip's private scanout domain. Patch 1 copies live
iommu-dma mappings into another domain. Patch 2 uses it for PRIME
imports. Unsupported inputs keep the old page-based path, which remains
unfixed under strict DMABUF_DEBUG.

Rob's MSM approach assumes direct DMA [2]. Rockchip's attachment instead
provides IOVAs from the VOP's default domain, which cannot be mapped
unchanged into the private domain. Each import retains both mappings
and adds one reverse lookup per 4 KiB.

Christian rejected reverse translation in the earlier MSM proposal [3].
Robin NAKed exporting iommu_get_dma_domain() [4]. Keeping the helper in
dma-iommu.c does not resolve the physical-address objection.

Sharing the first VOP's default DMA domain, as Exynos does, would avoid
the translation but also change native-buffer mapping.

Is retaining the private domain and reverse-translating the DMA mappings
an acceptable direction? If so, I'll address the remaining limitations
before posting a non-RFC version.

Base: mainline 602042bf29f6. The warn-only RFC is not a prerequisite.
No stable backport requested. Strict-by-default DMABUF_DEBUG took effect
in v7.3-rc4.

Testing (builds and QEMU only):

- W=1 object and stub builds passed on arm64, ARM32 with/without LPAE,
  x86-64 GCC/Clang, i386, s390, RISC-V and UML, including dynamic SWIOTLB.
- Rockchip strict/warn A/B reproduced the control failure and warning.
  Treatments checked every page and byte in 83 imports each. Primary
  buffers had 1/127/507 DMA segments under the default 64 KiB limit.
- SMMUv3 strict/lazy tests, missing-source, bounds and rollback tests
  passed. Real bounced attachments exercised alignment and pool
  rejection with no target mapping or DMA.
- Invalid forced-SWIOTLB Rockchip provider runs are excluded. Expected
  segment-limit and unsupported-fallback diagnostics remain.

The rig uses a custom Rockchip IOMMU model and the real GEM callback in a
test module, not VOP2, Sway or a real exporter. RK3588 hardware, two-VOP
and 32-bit ARM runtime testing are outstanding.

Hardware testing is welcome, particularly with Diederik's Sway resize
workload. Compare control and both patches on the same base/config,
first with strict DMABUF_DEBUG, then with the warn-only RFC on both.
Please report full dmesg, config, exporter and visible display problems.
Keep a known-good boot kernel. DMABUF_DEBUG=n testing is welcome too.

Developed and tested with LLM assistance.

[1] https://lore.kernel.org/r/20261005064133.7305-1-kmehltretter@gmail.com/
[2] https://lore.kernel.org/r/20261006131000.81501-1-robin.clark@oss.qualcomm.com/
[3] https://lore.kernel.org/r/bd4e5ece-1358-4e0b-bb04-ba9de62d26f6@amd.com/
[4] https://lore.kernel.org/r/47bf9a4c-2a47-4e93-bcdf-8d953c9a5ab8@arm.com/

Reports:
https://lore.kernel.org/r/DLR74W1U9YPC.375IK0HOYHDIG@cknow-tech.com/
https://lore.kernel.org/r/DLYLA3WQNN3X.3FB9MO8ZWBQ5@cknow-tech.com/

Karl Mehltretter (2):
  iommu: Add iommu_map_sgtable_dma()
  drm/rockchip: Map imported buffers from DMA addresses

 drivers/gpu/drm/rockchip/rockchip_drm_gem.c |  19 ++-
 drivers/iommu/dma-iommu.c                   | 131 ++++++++++++++++++++
 include/linux/iommu.h                       |  12 ++
 3 files changed, 157 insertions(+), 5 deletions(-)


base-commit: 602042bf29f6efde39cfb5fdd9289bf4854bc0c5
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
