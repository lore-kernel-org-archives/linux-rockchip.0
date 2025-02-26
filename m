Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C562FC021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 14:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ypFpKoAbu1qlOwg9rIyNmqPnJLz03/vbbBbhBGFAaoA=; b=WvQYx/QfsEb+/u
	eVouxOWqedDIy75LRNIt8M4joUZ3LXHObj5kxAg2KMu37Gn8r+lcz6m+doylW0SJOfsG1UcHQOvRh
	7QPBVAydSEMal79NSNNYv+pg7ldAYbj8c2PY8Egd6EOqMdWkiPnwqZ5Tel5lHrXnEtr04UfI/KxVW
	5lH8TVpZzC6GU2AVRb5Wjr7zf6kv3Fsd+PmMcgXCzcw3Li73+QWqtcRggWefp9qyfla4phS9GQcTB
	g70RGIwt+IZw5uKbwXM6t3jeZzBaFH/nc6si02h/8tfPyuP0RrfOFnNC7Nof/fTYUNlkLCybRbkdl
	XZw1SpT1cQdid3PzsvdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnI9s-000000041mU-1cou;
	Wed, 26 Feb 2025 14:13:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnI6p-000000041Da-3Iek;
	Wed, 26 Feb 2025 14:10:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NrrAahS7bAG/932u+TcE7E528I9KC3f3lzOfCirWNaM=; b=pnBAVSEDSzEMElEtScfsFC/55k
	D/TOiSf3GMdySfss1K2a1FHUo8e2EotucbNlIDOBGi3MDK42Hmt5NjpGyy2y7J1WUJQdzYdzqbWFF
	T4kBSH4MmYpfE2VtlnfM0TS9zndb7xw/9BGVY4LHxmcAM23Zs4mCBVXBpO590Tok/STtE09FothpL
	PpG/oxQfdFltGVbe1pqZ+ADiVWLfRZrCDlscFTFauuxV3HwFiPLxzSB/F5YaqFYunuSERWygPAvs7
	F45oFD3trJ3cWwwYhs9i6iqgb13Gd7tz+V4SiDmPYAD7fTjY/w9muLNDONmDCQpmib5M7gYN/+RW0
	ONui82iQ==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnI6o-0000V2-6w; Wed, 26 Feb 2025 15:09:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dse@thaumatec.com
Subject: [PATCH v3 0/3] arm64: dts: rockchip: add and enable DSI2 on rk3588
Date: Wed, 26 Feb 2025 15:09:39 +0100
Message-ID: <20250226140942.3825223-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_060959_825571_118CC107 
X-CRM114-Status: GOOD (  11.18  )
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

This adds the dcphy and dsi2 controller nodes and adds an overlay
for the Tiger-Haikou Video-Demo adapter that provides a DSI display.

changes in v3:
- rebase on newly added overlay-test-infrastructure
- add reset-gpio to gpio expander

changes in v2:
- adapt to changed dcphy binding (phy-cells = 1)
- tiger-overlay changes (Quentin):
  - drop forgotten hdmi-connector node
  - improve description
  - fix node sorting
  - drop unnecessary pwm-pinctrl (set in tiger.dtsi)

Heiko Stuebner (3):
  arm64: dts: rockchip: add mipi dcphy nodes to rk3588
  arm64: dts: rockchip: add dsi controller nodes on rk3588
  arm64: dts: rockchip: add overlay for tiger-haikou video-demo adapter

 arch/arm64/boot/dts/rockchip/Makefile         |   5 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  99 ++++++++++++
 .../rk3588-tiger-haikou-video-demo.dtso       | 153 ++++++++++++++++++
 3 files changed, 257 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou-video-demo.dtso

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
