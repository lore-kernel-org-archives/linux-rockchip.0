Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43E57C49EA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 02:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RNLyw66qlPOKr6FQQk5QEF/Y6aSJVu2pfvg0/J8GfhU=; b=IWzu+eHd6kp5zR
	K+tIcqlzHP9C0as9uOamnwT6PLh1tdLwkUS0EB7SYs1mPjDhjiS7xhZabj0ZK2FQpnbOKhFhGAFlU
	KMDO2NQ9Bpl0k32KJZWTG2adUrK1dMTih3AH9RVE5UNtYu9/gw6uNQZ4sxf0wnlA6uaAtTGar3sNc
	l9k88xBnuxZwRVtMpKy4YOtvajRu0uUyLLFGukSdMd8au7wRzrmuiyHgkjiI2hsQMKdr3UIjl0nr2
	vOKEay93rYVhfKMdBWD/pJY+jnWZ+OS7iQccEAuOZ/IqEQW9CwNX3Den3Gifamxdi5GefHUHSjADo
	Q/vvSYMRDva+X90QceJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYcQ4-0000000DKBX-1neO;
	Tue, 30 Jul 2024 02:16:56 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYcPp-0000000DK3X-04RE;
	Tue, 30 Jul 2024 02:16:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722305797;
	bh=9oRikuIjBeqowAAlsBB19ZugmBxBNVEEhZNvOJNY0EM=;
	h=From:To:Cc:Subject:Date:From;
	b=d7+7tAMzg034Q6hb+PheTRmGGdCSeSco+Y1qjunn9X4foOCRvBCjvMbviWdmRiezw
	 GwO1fSlOIHN8KFMIyx+0MpWkL1/VnrV/LHsOKPmvrNtJEug2L5c2000yTWWXHdVZgp
	 nwtHY5W7nhyInReyTCExYmisJfIDMXFKqXzj8sr1RJai258jBHUo8xl7dy6pzNxjue
	 9++jWqQBiACeZwgxBrXtkdFGMrdqTAfubOJdGIpAYRemCOqj9qOhRVDzp0pigneKd5
	 L7nBKx6Fmv9Ufrmb4Dv32oTT3Uluz/6bDP/eCC/eGI3ZTpLkv4yI1N0MU7c1+/iun7
	 LoLkBx3RjdLbQ==
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B741F3780521;
	Tue, 30 Jul 2024 02:16:32 +0000 (UTC)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robdclark@gmail.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	deborah.brouwer@collabora.com,
	dmitry.baryshkov@linaro.org,
	mcanal@igalia.com,
	melissa.srw@gmail.com,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v9 0/6] drm/ci: Add support for GPU and display testing
Date: Tue, 30 Jul 2024 07:45:35 +0530
Message-ID: <20240730021545.912271-1-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_191641_213805_F2057DDB 
X-CRM114-Status: GOOD (  13.43  )
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
display driver is rockchip. For amlogic meson G12B (A311D) SOC, the
GPU driver is panfrost, and the display driver is meson.

IGT tests run various tests with different xfails and can test both
GPU devices and KMS/display devices. Currently, in drm-ci for MediaTek,
Rockchip, and Amlogic Meson platforms, only the GPU driver is tested.
This leads to incomplete coverage since the display is never tested on
these platforms. This commit series adds support in drm-ci to run tests
for both GPU and display drivers for MediaTek mt8173/mt8183, Rockchip
rk3288/rk3399, and Amlogic Meson G12B (A311D) platforms.

Update the expectations file, and skip driver-specific tests and
tools_test on non-intel platforms.

Working pipeline link,
https://gitlab.freedesktop.org/vigneshraman/linux/-/pipelines/1235518

Vignesh Raman (6):
  drm/ci: arm64.config: Enable CONFIG_DRM_ANALOGIX_ANX7625
  drm/ci: skip tools_test on non-intel platforms
  drm/ci: mediatek: add tests for mediatek display driver
  drm/ci: mediatek: add tests for powervr gpu driver
  drm/ci: meson: add tests for meson display driver
  drm/ci: rockchip: add tests for rockchip display driver

 MAINTAINERS                                   |   2 +
 drivers/gpu/drm/ci/arm64.config               |   1 +
 drivers/gpu/drm/ci/gitlab-ci.yml              |   3 +-
 drivers/gpu/drm/ci/igt_runner.sh              |  10 --
 drivers/gpu/drm/ci/test.yml                   | 123 ++++++++++++++----
 .../gpu/drm/ci/xfails/amdgpu-stoney-fails.txt |   1 -
 .../gpu/drm/ci/xfails/amdgpu-stoney-skips.txt |   1 +
 .../drm/ci/xfails/mediatek-mt8173-fails.txt   |   1 -
 .../drm/ci/xfails/mediatek-mt8173-skips.txt   |   1 +
 .../drm/ci/xfails/mediatek-mt8183-fails.txt   |  28 +++-
 .../drm/ci/xfails/mediatek-mt8183-flakes.txt  |  20 +++
 .../drm/ci/xfails/mediatek-mt8183-skips.txt   |   5 +-
 .../gpu/drm/ci/xfails/meson-g12b-fails.txt    |  19 ++-
 .../gpu/drm/ci/xfails/meson-g12b-skips.txt    |   5 +-
 .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |   1 -
 .../gpu/drm/ci/xfails/msm-apq8016-skips.txt   |   1 +
 .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |   1 -
 .../gpu/drm/ci/xfails/msm-apq8096-skips.txt   |   1 +
 .../msm-sc7180-trogdor-kingoftown-fails.txt   |   1 -
 .../msm-sc7180-trogdor-kingoftown-skips.txt   |   1 +
 ...sm-sc7180-trogdor-lazor-limozeen-fails.txt |   1 -
 ...sm-sc7180-trogdor-lazor-limozeen-skips.txt |   1 +
 .../gpu/drm/ci/xfails/msm-sdm845-fails.txt    |   1 -
 .../gpu/drm/ci/xfails/msm-sdm845-skips.txt    |   1 +
 .../gpu/drm/ci/xfails/panfrost-g12b-fails.txt |   1 +
 .../gpu/drm/ci/xfails/panfrost-g12b-skips.txt |  23 ++++
 .../drm/ci/xfails/panfrost-mt8183-fails.txt   |   1 +
 .../drm/ci/xfails/panfrost-mt8183-skips.txt   |  23 ++++
 .../drm/ci/xfails/panfrost-rk3288-fails.txt   |   1 +
 .../drm/ci/xfails/panfrost-rk3288-skips.txt   |  26 ++++
 .../drm/ci/xfails/panfrost-rk3399-fails.txt   |   1 +
 .../drm/ci/xfails/panfrost-rk3399-flakes.txt  |   6 +
 .../drm/ci/xfails/panfrost-rk3399-skips.txt   |  26 ++++
 .../drm/ci/xfails/rockchip-rk3288-fails.txt   |  22 +++-
 .../drm/ci/xfails/rockchip-rk3288-flakes.txt  |   6 +
 .../drm/ci/xfails/rockchip-rk3288-skips.txt   |  55 +-------
 .../drm/ci/xfails/rockchip-rk3399-fails.txt   |  90 ++++++++++++-
 .../drm/ci/xfails/rockchip-rk3399-flakes.txt  |  50 ++++++-
 .../drm/ci/xfails/rockchip-rk3399-skips.txt   |   8 +-
 .../drm/ci/xfails/virtio_gpu-none-fails.txt   |   1 -
 .../drm/ci/xfails/virtio_gpu-none-skips.txt   |   1 +
 drivers/gpu/drm/ci/xfails/vkms-none-fails.txt |   1 -
 drivers/gpu/drm/ci/xfails/vkms-none-skips.txt |   1 +
 43 files changed, 433 insertions(+), 140 deletions(-)
 create mode 100644 drivers/gpu/drm/ci/xfails/mediatek-mt8183-flakes.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-g12b-fails.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-g12b-skips.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-mt8183-fails.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-mt8183-skips.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-rk3288-fails.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-rk3288-skips.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-rk3399-fails.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-rk3399-flakes.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-rk3399-skips.txt
 create mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3288-flakes.txt

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
