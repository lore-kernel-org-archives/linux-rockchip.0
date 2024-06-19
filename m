Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C35EC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 15:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4dRfnURO46+CypKNqZ9JkNZ0g6tTtr4DGNK7NDH2RRU=; b=oDWQHRipnTBgjC
	E8y8u+w7r2BvWEkHBdj2QTi1DAA4DZLrdG2Cy1+B04BCAZiYTBYyYI3HBZ1CwLZzyKX3qkvMe2ww1
	fcf7UG64bEnYxIIMOxF8kOvpFc4S82bTEOUh6SpjDE/0kwFgF8B4qqDiCK/uj3TbSXrPfBMEhCgDb
	5uQ4UfOxk6VYFlS6/TbBoaVFZ1mqoRFe1US2g7h2i/8Eci/z90+sYZDgGaW68GiUqST3TtmESutEt
	vI/X6RihX8+1JFLvREk4JthHowZr4U03mFqD5t1seEBPUPInLgZhjR0fupYe8DmfT5dxvzYeHsIoi
	OWw7DwZSCBdL88YIHIFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJwoB-00000001htO-2pab;
	Wed, 19 Jun 2024 15:01:11 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJwo8-00000001hrH-0cNs;
	Wed, 19 Jun 2024 15:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718809265;
	bh=zanBBbhUSUzvxGGaNzk/QEbKprwMw6zlEJFEv9KYrhw=;
	h=From:To:Cc:Subject:Date:From;
	b=xEEOoJUbzid+AQms47rmzZYzthkCTzPo2/w/6U93UPr3VyvGaGc0/yebZLuCA/KTl
	 HMlInQuZ1sekEExosPOoQzcFxot1rkB1qpjyszJhnINuTawutKh9NFZfbg0dPurW25
	 /jkAz330eYYgs+yiaHDlSHPjZKazxQkXEnXvNpGdHQvAp3ocVMJpdaGeMaw3q6RhEe
	 jHIkMtiy8/joEQeBJ24h3FDp8T9OR3hMKjKRsnxc3NttMVAO6DikV2MVU5BQL8qOD0
	 1Qnm2gWxU5So4NCtgW9SA+jkbSg2BAv+QAjIxUzGUE8sdtltODuoMFC+rQ36Zhrbju
	 HjN6Ag0vOfpjw==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0593E3780B79;
	Wed, 19 Jun 2024 15:01:00 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Alex Bee <knaerzche@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 0/4] media: rockchip: Add rkvdec2 driver
Date: Wed, 19 Jun 2024 10:57:17 -0400
Message-ID: <20240619150029.59730-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_080108_351436_348E6340 
X-CRM114-Status: GOOD (  16.02  )
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

Add a rkvdec2 driver for newer video decoder found on rk3588 based SoC.

It is also found on other hardware like the RK356x, but not tested yet,
so it will be added later.

Support for yuv 4:2:2 and 10 bits streams will also be added later, when the
https://lore.kernel.org/linux-media/20240618194647.742037-1-jonas@kwiboo.se
patch set is merged.

See the second commit message for more details.

Changes since v1:
- Add support for RCB in SRAM
- Move bindings to rockchip,vdec.yaml
- Add resets bindings
- Add second core and enable them from dtsi file
- Only expose one video device to userspace (but don't support multicore yet)
- Share CABAC table with rkvdec
- Fix iowrite32 call and add preliminary support for arm
- Remove unused code
- Improve registers naming and code style
- Remove DMA_ATTR_ALLOC_SINGLE_PAGES flag

Detlev Casanova (4):
  media: rockchip: Move H264 CABAC table to header file
  media: rockchip: Introduce the rkvdec2 driver
  media: dt-bindings: rockchip: Document RK3588 Video Decoder bindings
  arm64: dts: rockchip: Add rkvdec2 Video Decoder on rk3588(s)

 .../bindings/media/rockchip,vdec.yaml         |   46 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |   50 +
 drivers/staging/media/Kconfig                 |    1 +
 drivers/staging/media/Makefile                |    1 +
 .../staging/media/rkvdec/rkvdec-h264-cabac.h  |  509 +++++++
 drivers/staging/media/rkvdec/rkvdec-h264.c    |  500 +------
 drivers/staging/media/rkvdec2/Kconfig         |   15 +
 drivers/staging/media/rkvdec2/Makefile        |    3 +
 drivers/staging/media/rkvdec2/TODO            |   12 +
 drivers/staging/media/rkvdec2/rkvdec2-h264.c  |  739 ++++++++++
 drivers/staging/media/rkvdec2/rkvdec2-regs.h  |  345 +++++
 drivers/staging/media/rkvdec2/rkvdec2.c       | 1253 +++++++++++++++++
 drivers/staging/media/rkvdec2/rkvdec2.h       |  130 ++
 13 files changed, 3105 insertions(+), 499 deletions(-)
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-h264-cabac.h
 create mode 100644 drivers/staging/media/rkvdec2/Kconfig
 create mode 100644 drivers/staging/media/rkvdec2/Makefile
 create mode 100644 drivers/staging/media/rkvdec2/TODO
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-h264.c
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-regs.h
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.c
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.h

-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
