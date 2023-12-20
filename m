Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F24B9C46CD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 12:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SsbQcEZxPQxs5xrDNFdtCHy8jP7dVoKtkAMCDvWqcSw=; b=wMKWIBJZg9M/0H
	KmigQse9i2BhovQFQ9Eg2D+qMRw9nsAIfXLa6Cud3ovJd+LOLtqhrtN/4kg4v2YVHmYOk3f41YpAY
	9sX6GdyDZfRgs7rdPD8uuCgvkD8BHGHrzTSAgB3qta4/VII74aDbxOpYyBJlzE7ymCk0iBJi5g64E
	XJJG+sgEdqqBV3CxjPDIfQSh0J6h41VW4/UA7DanR0rAVL1y8k7GWobIT/sPdNx/JWcgKEPAYuS5B
	BZU5aXbaaymyBV6/xMWVMklbMQDBkhUc5MrTTwXfWJDXr/UV+/Mc9UocrreTn/BCne+BIRGGQtr38
	/fJo/AOAsiPBuYTZU69Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvQJ-00HJ8z-2O;
	Wed, 20 Dec 2023 12:11:39 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvQF-00HJ7X-2k;
	Wed, 20 Dec 2023 12:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703074290;
	bh=+josEhuJGZUwIjK128hAQWpYf0mrcfPybBEAagNclmI=;
	h=From:To:Cc:Subject:Date:From;
	b=EvcVbVMWlwNXOErBeYWIsdzjdB0YsnlTkWIZtpas9p0ovFLiljNyZm3NajqSCFMJC
	 s9wqXrwikzH/T6hCko36Eu9zOSz3L1/Nz2AVc5T2QU61m8vC5ClXzH3Gukuzt6cngC
	 x6CRvSxmuuyX6adJldss3c+LYk4LpPZI3X8UBKtlBMUWNQCtlsBb8kq9QWK4x3vXpb
	 NnvOblR/NYoCj2WH8a2si0v/lWxwvx71/NMw8uAMJt9juUPfCbgFF/F0Sc9ExWGUwn
	 ivohO2NPXyasfd6NhyFXRE+FXACvF1vXLdht3tzJfVQ3Ay8oCPqB7XHFJseVgUwV2m
	 NxUPfopUNpNMg==
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C35443781FD5;
	Wed, 20 Dec 2023 12:11:25 +0000 (UTC)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	daniels@collabora.com
Cc: david.heidelberg@collabora.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	emma@anholt.net,
	robdclark@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/8] drm/ci: Add support for GPU and display testing
Date: Wed, 20 Dec 2023 17:41:02 +0530
Message-Id: <20231220121110.1441160-1-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_041136_066076_CE586A82 
X-CRM114-Status: GOOD (  11.48  )
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

Some ARM SOCs have a separate display controller and GPU, each with
different drivers. For mediatek mt8173, the GPU driver is powervr,
and the display driver is mediatek. In the case of mediatek mt8183,
the GPU driver is panfrost, and the display driver is mediatek.
With rockchip rk3288/rk3399, the GPU driver is panfrost, while the
display driver is rockchip. For amlogic meson, the GPU driver is
panfrost, and the display driver is meson.

IGT tests run various tests with different xfails and can test both
GPU devices and KMS/display devices. Currently, in drm-ci for MediaTek,
Rockchip, and Amlogic Meson platforms, only the GPU driver is tested.
This leads to incomplete coverage since the display is never tested on
these platforms. This commit series adds support in drm-ci to run tests
for both GPU and display drivers for MediaTek, Rockchip, and Amlogic
Meson platforms.

This series depends on,
https://lore.kernel.org/dri-devel/e747581b-d5e0-4622-827b-48fb51fa9711@collabora.com/T/#t

Vignesh Raman (8):
  drm/ci: arm64.config: Enable CONFIG_DRM_ANALOGIX_ANX7625
  drm/ci: mediatek: Test both GPU and display drivers
  drm/ci: rockchip: Test both GPU and display drivers
  drm/ci: meson: Test both GPU and display drivers
  drm/ci: Do not set IGT_FORCE_DRIVER based on driver name
  MAINTAINERS: drm/ci: xfails: add entry for panfrost
  drm/ci: Rename xfails file
  drm/ci: Update xfails

 MAINTAINERS                                   |   1 +
 drivers/gpu/drm/ci/arm64.config               |   1 +
 drivers/gpu/drm/ci/igt_runner.sh              |  10 --
 drivers/gpu/drm/ci/test.yml                   | 107 ++++++++++++++----
 ....txt => mediatek-mt8173-display-fails.txt} |   0
 .../xfails/mediatek-mt8173-display-flakes.txt |  13 +++
 .../xfails/mediatek-mt8183-display-fails.txt  |   7 ++
 .../xfails/mediatek-mt8183-display-flakes.txt |   8 ++
 .../ci/xfails/meson-g12b-display-fails.txt    |  13 +++
 ...-fails.txt => panfrost-g12b-gpu-fails.txt} |   0
 ...ails.txt => panfrost-mt8183-gpu-fails.txt} |   0
 ...ails.txt => panfrost-rk3288-gpu-fails.txt} |   0
 ...kips.txt => panfrost-rk3288-gpu-skips.txt} |   0
 ...ails.txt => panfrost-rk3399-gpu-fails.txt} |   0
 ...kes.txt => panfrost-rk3399-gpu-flakes.txt} |   0
 ...kips.txt => panfrost-rk3399-gpu-skips.txt} |   0
 .../xfails/rockchip-rk3288-display-fails.txt  |  15 +++
 .../xfails/rockchip-rk3288-display-flakes.txt |  13 +++
 .../xfails/rockchip-rk3288-display-skips.txt  |   8 ++
 .../xfails/rockchip-rk3399-display-fails.txt  |  69 +++++++++++
 .../xfails/rockchip-rk3399-display-flakes.txt |  20 ++++
 .../xfails/rockchip-rk3399-display-skips.txt  |   6 +
 22 files changed, 261 insertions(+), 30 deletions(-)
 rename drivers/gpu/drm/ci/xfails/{mediatek-mt8173-fails.txt => mediatek-mt8173-display-fails.txt} (100%)
 create mode 100644 drivers/gpu/drm/ci/xfails/mediatek-mt8173-display-flakes.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/mediatek-mt8183-display-fails.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/mediatek-mt8183-display-flakes.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/meson-g12b-display-fails.txt
 rename drivers/gpu/drm/ci/xfails/{meson-g12b-fails.txt => panfrost-g12b-gpu-fails.txt} (100%)
 rename drivers/gpu/drm/ci/xfails/{mediatek-mt8183-fails.txt => panfrost-mt8183-gpu-fails.txt} (100%)
 rename drivers/gpu/drm/ci/xfails/{rockchip-rk3288-fails.txt => panfrost-rk3288-gpu-fails.txt} (100%)
 rename drivers/gpu/drm/ci/xfails/{rockchip-rk3288-skips.txt => panfrost-rk3288-gpu-skips.txt} (100%)
 rename drivers/gpu/drm/ci/xfails/{rockchip-rk3399-fails.txt => panfrost-rk3399-gpu-fails.txt} (100%)
 rename drivers/gpu/drm/ci/xfails/{rockchip-rk3399-flakes.txt => panfrost-rk3399-gpu-flakes.txt} (100%)
 rename drivers/gpu/drm/ci/xfails/{rockchip-rk3399-skips.txt => panfrost-rk3399-gpu-skips.txt} (100%)
 create mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3288-display-fails.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3288-display-flakes.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3288-display-skips.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3399-display-fails.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3399-display-flakes.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3399-display-skips.txt

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
