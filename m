Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC631C04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 May 2024 15:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u9IpUvu98XjSS3tKT6EMXITv6ilRlqeJthnZpHKj4f8=; b=ps5Q7yY++oa3/G
	aJn5mzvTWcboCM+tFtQkUpTtaffWWPSf8flIb4/c6m07MNUMsdkL24k35960QRjbwCP2raPEESJDF
	4mb8EB4N3L03IZnZSTheNoUWVFU0t0k1N2V0LZdzFJPPCBGCD5aGYH5PwDEhyPdJrLCVLM4eKqxTT
	JwNmJuSXtzkqD0cVnqOIWHMqzVuGr+3dcpOHEQA7lVi08VkDSQMIyoPeD/gNxYxJCuM/yNofTvsZB
	DVq/SLKIWuA+Gm+hKQDTOL2jOmZ40kVy1HUHG+yHP8mOq4/YbdYQ5+k7Kej+aZG0OYLLRRcDrhi5I
	qi/xKItVLMCFJ10AHVKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6u0p-0000000GJXi-1gUM;
	Tue, 14 May 2024 15:24:19 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6u0l-0000000GJVD-2m0q;
	Tue, 14 May 2024 15:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715700250;
	bh=CqnaB1BN4nBb+zItuDL9d2XlJtw6H0xho2dEcrDXwOs=;
	h=From:To:Cc:Subject:Date:From;
	b=h6j0Oi32w48wjQBW7NWOXa7mbVqQFc69vrfraAeHWNegLn+qS56X3wPmDRBlxfTCA
	 nZ5rx+Fm1LJTt10D1FLZjSeLwXqxohZWaYkSmlUoXHiLdD2Xrpk2yutUzv+RQWYga9
	 T22iQyj1PzcD6/UWX5IePmOVIWFhOUQ4gXlXRxUr/lvx4/eQs0a1yiXOz6JHmRCyeT
	 6Ei4olmbRS/CMynULtfFHAC7COmP98F3SSY7pW3mBy6n5SyOBf3dbh0+RKqX6cUWm+
	 68fjXNy+SawuwicCdGep/8CKL520KVpe+q+BiGvWNNzsN8qZIo16wNFvG2FpvAGjeG
	 ZzYtNvIAbFeAQ==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1D45637811D1;
	Tue, 14 May 2024 15:24:06 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 0/3] drm/rockchip: vop2: Add VP clock resets support
Date: Tue, 14 May 2024 11:19:44 -0400
Message-ID: <20240514152328.21415-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_082416_022567_63F1073B 
X-CRM114-Status: UNSURE (   8.44  )
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

The clock reset must be used when the VOP is configured. Skipping it can
put the VOP in an unknown state where the HDMI signal is either lost or
not matching the selected mode.

This adds support for rk3588(s) based SoCs.

Detlev Casanova (3):
  drm/rockchip: vop2: Add clock resets support
  arm64: dts: rockchip: Add VOP clock resets for rk3588s
  dt-bindings: display: vop2: Add VP clock resets

 .../display/rockchip/rockchip-vop2.yaml       | 27 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  8 +++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 30 +++++++++++++++++++
 3 files changed, 65 insertions(+)

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
