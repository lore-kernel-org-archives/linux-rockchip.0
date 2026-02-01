Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A94D6E7C70D
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Feb 2026 08:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vcv25tvoKBqiOT6lNh8vFjeSeXfMQ0dghy7KgRWHWc0=; b=UOVlnSTuv38vyz
	GWjR9WdG4ACFG5s3MjZpN+ovGPaxpMHZeQZ6gSdwL/pHEOSZ/cI118ISpvp2qeBofWxbeUkoboZrV
	1ia5Ugu5hwB6jLnbYLhr2lN+MWygzqlucfmxcZHMtQtaKMEqE1YRD5SAW2Vj7MtvMa+E/x33qsBK+
	GbtrWWp+nJA22uoC72vKpQ3fTWCheWIaCabtaj9M3KlJuGPRmLx1DoHSxUiZZlzml/ZA9rQHK67Ak
	c1EaRtV3kRLqGxRXP/m8jSklBoadJZ6OV6wvArtAvyX55/+y2ncUu4as3shB9WoWmNCh4+qZ9T6K7
	aZfBWMgTD0TTH8HqqioA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmSbt-00000003Lf9-2fo7;
	Sun, 01 Feb 2026 08:15:09 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmSbq-00000003LdC-2xII;
	Sun, 01 Feb 2026 08:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=aq
	RmpHo6XX+cmlEPlSDptfKyft1oOFmzNX1tdW6dbIM=; b=K9c/XmC4mo6lHM5a7w
	RczrDbm3oyC/hrWiARL5cVSkg48QS0UJnNXABTkVK2Tks/SNyVd9+A0yqZe/UH28
	tButDg/N45SPjPtc1yRI1AnA1PIGgYpGKBpZgUXLOs8yaOXEMxnkzg4FU4iF9dXj
	nyiCJFcqicqS8Hdyz0PdjCge4=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3Hz40C39pmxGTKQ--.55310S2;
	Sun, 01 Feb 2026 16:13:44 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Subject: [PATCH v2 0/5] Add DisplayPort support for rk3576
Date: Sun,  1 Feb 2026 16:13:26 +0800
Message-ID: <20260201081338.407999-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3Hz40C39pmxGTKQ--.55310S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr1DtFy7trW3Wr4rtw48tFb_yoW8Jw47pa
	nxuFyYyrZ7GFWava43Cr1Uurs0vr1ktrW8Kw17J3y7t3s8GF17Gwn8GFn8Jr9rXF18A348
	ur4UJa47Cr4jvrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jDrcfUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7RgLaWl-Czhr1gAA3P
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260201_001507_142686_D1E89133 
X-CRM114-Status: GOOD (  10.20  )
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
Cc: kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, alchark@gmail.com, tzimmermann@suse.de, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>


The DisplayPort found on RK3576 is very similar to that of RK3588,
but work in dual pixel mode and support for MST.

This patch series aims to add basic display output, not include audio
and MST, which will be the work for the next stage.

Tested with 2 lane standard DP port and USB-C Alt mode output now.
For those who want to give it a try, I have a reference branch here[0].

[0]https://github.com/andyshrk/linux/tree/rk3576-dp-upstream-v1


Changes in v2:
- Remove unnecessary maxItems
- Commit message improve: The pixel mode is determined during the IC
  integration stage

Andy Yan (5):
  dt-bindings: display: rockchip: Add rk3576 DisplayPort
  drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
  drm/bridge: synopsys: dw-dp: Make i2s/spdif clk optional
  drm/rockchip: dw_dp: Add DisplayPort support for rk3576
  arm64: dts: rockchip: Add DisplayPort dt node for rk3576

 .../display/rockchip/rockchip,dw-dp.yaml      | 27 ++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-dp.c       | 12 ++------
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c     | 27 +++++++++++++++---
 include/drm/bridge/dw_dp.h                    |  7 +++++
 5 files changed, 85 insertions(+), 16 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
