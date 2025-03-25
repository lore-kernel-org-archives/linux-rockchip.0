Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 452EDC35FFC
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Mar 2025 13:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wwtR0K1nTeibRl9YYCGb4l3FyBXGlw4z7jjYRn9e7jA=; b=cAvrwGuh2M5weW
	1PEzT/EDSLD64RaL6hROVx45CcLPAzVww0jmAeJlIdPLtbLjNklGa3O1/Fgp0+QDFwr51+fEHE5pu
	NPDYf6Xc6Felbsly6c03tDdvVAn9CtNGc+j5EVVQq8AbKJ0o7Hpte/RqevisevCQMT1XKzqaFQJYF
	5j2N/QVm+BGqUT7QPIudIuI5+DvbV8z6ZfD2ykQ9zpKBG2Og+hiIXUDedZu8TZyYRCdrbLu0MqAQp
	seLbAzUGFOwBexdNX7i1oJrYl8N2sp7CqBNIUCvLALw4A49gnNYyFwbfmdc9QG6jBfCwKtSVl3AgK
	H1qFmPLo2o/NHtvSGmnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx4YZ-000000064RO-3ODF;
	Tue, 25 Mar 2025 13:43:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx4ML-000000062H8-2Px2;
	Tue, 25 Mar 2025 13:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=3ucf6AoqLVgzdE7q3wAWYQlze/5NWs4H0gsNuLMxD1E=; b=eKRGS7hLnHSHYXiSvjHqCPSJ0K
	mlrIwHTlnVrhLvFOH77P8H+wcc9/QDLK2Dluh1iC4IcrNprR35d9N41j57rSnPnK5e5SMPX8VHN7X
	jqF8pK6KgOnk0t26G82ul6dy6SpQ1X0gfZ2prunpEeIIHtymBs2bOfxS8pm2xUtU7rLbwENnDKG40
	7FAy/mZIvdcRWCoVZ4b2oWzV2RhYvuAPQbw7HhOt5bslsWx5rZKguItoYR5FI9+Larlro1Nt5Tpko
	U9PLmJ2VphHoGkPt/tU3C+j9YzmsvuA7Ca1UYgj4rubbsG8Net7hnaYipgDyWH+7MLWN8obXTUO5X
	4kOJdIMQ==;
Received: from m16.mail.163.com ([117.135.210.2])
	by desiato.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tx4MH-00000005Snj-31JN;
	Tue, 25 Mar 2025 13:30:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=3ucf6
	AoqLVgzdE7q3wAWYQlze/5NWs4H0gsNuLMxD1E=; b=dxreNc9ccopxYG01xgXf4
	/H+rax6ja1dbu4x7Tml1Gi1mxwvl30pxLoNj8lu5dvHci2tyvABU8VUrjHWs3gO3
	G640giOhtilpMw/LxyvgFB05eTSoSBwoUP7oZ5Tm6xPGTKminiwCeq6njim3Yozm
	+3B1a/roYWau4zgGiwIEzQ=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgAnc2bLr+JnWNnrAA--.35530S2;
	Tue, 25 Mar 2025 21:29:51 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 0/6] Two fixes of RK3036 HDMI
Date: Tue, 25 Mar 2025 21:29:34 +0800
Message-ID: <20250325132944.171111-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: PygvCgAnc2bLr+JnWNnrAA--.35530S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CF47WFy5uF1rJF4fGr48JFb_yoW8XF1kpa
	98Ca98Xrn7G3WSqrnIyF4kAFWYyF95Gan5GrWfJw1xAr4Ygw1IvryagwsYvFn8C3WxZasF
	yw18KFWUCrs7Z3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j1HqcUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g0bXmfirF9iZQAAsr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_133023_033623_C19F06EA 
X-CRM114-Status: GOOD (  11.54  )
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

From: Andy Yan <andy.yan@rock-chips.com>

When preparing to convert the current inno hdmi driver into a bridge driver,
I found that there are several issues currently existing with it:

1. When the system starts up, the first time it reads the EDID, it will
   fail.
   This is because RK3036 HDMI DDC bus requires it's PHY's reference clock
   to be enabled first before normal DDC communication can be carried out.

2. The signal is unstable. When running the glmark2 test on the screen,
   there is a small probability of seeing some screen flickering.
   This is because The HSYNC/VSYNC polarity of rk3036 HDMI are controlled
   by GRF. This part is missing in the current driver.

This series first try to Fix Document in the dt-binding, then add the
missing part in driver and dts.

Changes in v2:
- Included the HSYNC/VSYNC polarity fix

Andy Yan (6):
  dt-bindings: display: rockchip,inno-hdmi: Fix Document of RK3036
    compatible
  dt-bindings: display: rockchip,inno-hdmi: Document GRF for RK3036 HDMI
  drm/rockchip: inno-hdmi: Simplify error handler with dev_err_probe
  drm/rockchip: inno-hdmi: Fix video timing HSYNC/VSYNC polarity setting
    for rk3036
  ARM: dts: rockchip: Add ref clk for hdmi
  Revert "ARM: dts: rockchip: drop grf reference from rk3036 hdmi"

 .../display/rockchip/rockchip,inno-hdmi.yaml  | 20 ++++---
 arch/arm/boot/dts/rockchip/rk3036.dtsi        |  5 +-
 drivers/gpu/drm/rockchip/inno_hdmi.c          | 55 ++++++++++++++-----
 3 files changed, 55 insertions(+), 25 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
