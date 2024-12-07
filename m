Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C21E7717D
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Dec 2024 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EdXsUbR8s//UuRwdqTHgX0RKdZfaqjSihEJXBGhqavk=; b=WkUyeO+NxkFn/K
	VWMxkGOPrzNJrdN5SfuDlgndS7rxH4MGKET0+Z99AC7JuxS+OcxX2ltLz6uVhkrcfHoEEVj7Sf7s1
	POgFNcKhFHBAYNnv9FKOGAeS7Nt03waNrdmXwueUHyaY+UwuWQDzQGMSX+qhip/C4+s23T4z0Gboe
	lG5PVfMfrTNmnJVAysNsI6YtsfmO83pWfJCjw7f83eN3jaEKMbb9Nc55jOl2tgq33BtKoQCM6NztA
	Z2enICcXHhNUmBCiIthkvAvDEiD9uLJzKQ/osSOb8PvHj/NspDlwllp/fleusrDeXWeKAhgkCPXxg
	aA/oRAIcv/dlN/ve5YQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tK2R6-00000004Ril-0Nio;
	Sat, 07 Dec 2024 21:34:00 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tK2Q2-00000004ROX-2eDN;
	Sat, 07 Dec 2024 21:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733607171;
	bh=e/F5YyK5MttfQZR5pjBEF/euITS0jR40bnuYvHJXw08=;
	h=From:Subject:Date:To:Cc:From;
	b=FuHnvg7p9ZFYZBs0s2l+Qp4zdmkfmcQyewSCFvqLzzSfDjhJfQ8h8L7HRYNtUFCVe
	 QYMVe+Y97Fxscl1XjOasF8D8CmJCsXrD0gBU3TroAiMQILui7u4jSbq85oGY8ADPIj
	 lQnKPq9737QDNcudJqNCNXtRhbSM0/YVmMczW6RRtxOKLO6ZLgT22xOQRiRIiC1AcH
	 mWGJoSAWZvKoRU89qFyu6Xb+UPV4FqId5iG4s72Xm+PB31xZBcoFdemw1VfDsROBz9
	 vh5cFeJ18IXv51kmgIH4fqEbzRzGrnbPmXkUkeYVnFlz6DPjbCla7feF93twdg7KTf
	 j/58AyQV+Vchg==
Received: from localhost (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 869D417E37FF;
	Sat,  7 Dec 2024 22:32:51 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/4] Add support for HDMI1 output on RK3588 SoC
Date: Sat, 07 Dec 2024 23:32:23 +0200
Message-Id: <20241207-rk3588-hdmi1-v1-0-ca3a99b46a40@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOe+VGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDIwNz3aJsY1MLC92MlNxMQ11zA5PkpCTz5BRz0zQloJaCotS0zAqwcdG
 xtbUA1V/m1F4AAAA=
X-Change-ID: 20241207-rk3588-hdmi1-704cbb7cd75f
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241207_133254_841710_19935B2A 
X-CRM114-Status: GOOD (  10.10  )
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

The patches provide the basic support to handle the second HDMI output
port found on Rockchip RK3588 SoC.

For now I enabled it on Radxa ROCK 5B only, the board I've been using to
validate this.

** IMPORTANT **

The series has a runtime dependency on "phy: phy-rockchip-samsung-hdptx:
Don't use dt aliases to determine phy-id", a patch submitted recently by
Heiko [1].  Without applying it, the functionality on both HDMI TX ports
will break.

Furthermore, please note this is subject to the same limitations as
HDMI0 when it comes to the supported display modes.  The fixes provided
via [2] are not applicable to HDMI1, hence I will handle it separately
as soon as all dependencies are merged.

Thanks,
Cristian

[1] https://lore.kernel.org/lkml/20241206103401.1780416-3-heiko@sntech.de/
[2] https://lore.kernel.org/all/20241116-vop2-hdmi0-disp-modes-v1-0-2bca51db4898@collabora.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (4):
      drm/rockchip: dw_hdmi_qp: Add support for RK3588 HDMI1 output
      arm64: dts: rockchip: Add PHY node for HDMI1 TX port on RK3588
      arm64: dts: rockchip: Add HDMI1 node on RK3588
      arm64: dts: rockchip: Enable HDMI1 on rock-5b

 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi  |  62 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts |  42 ++++++++-
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c  | 119 +++++++++++++++++++-----
 3 files changed, 198 insertions(+), 25 deletions(-)
---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20241207-rk3588-hdmi1-704cbb7cd75f


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
