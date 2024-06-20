Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79857C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 14:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G/KHfB36qyIyr8CyTdto61hEhLb0f5sf1t1vAp2MNVQ=; b=Px0WbVuMuDmlVM
	v/5QD1jWefAAyyDvkwS0gAG+qGBm+IMpr9VGyw77knspiG0UpWK8fWD0Ey/oCRUSsFTuXqbgHAh1M
	rlXJkWEv4SfUAjg+TsVxpQFty6Jhlx8bTM3N4uM3AaahWjw3m/nQ385X7/VGOQQrpDChW7jCykyzg
	G79D6B/I3doS4yYHnE7+Maynh9Flgza4GZsVgR635GifiLDxjUgf9woF++ntUXB7Eh4XY4FdbR1C6
	E5zY6jIUs9EYDHIW+BmooBOVyso77abNOwrNKqcm3e22pfHbKvXM+V/cFCtnZzOZvYTl6VVRWt+MG
	Gnq1/p65k/43T7G/7/ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKIjt-00000005QoR-4AIx;
	Thu, 20 Jun 2024 14:26:13 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKIjp-00000005Qlo-0Rnm;
	Thu, 20 Jun 2024 14:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718893567;
	bh=0/FfAt3cSYRx0NHA0nqVIaLGkcN+3itJkOw3CRTTXcw=;
	h=From:To:Cc:Subject:Date:From;
	b=3av3fyJ8qpK83vb7XS+AGaXwQBHXIG10nU980ofHt7F9LVF2Hy6yHyhJzZLnGFwEM
	 8n8PLMhF9+6mD2MItdoiawBvntnqlYBljLsFlu8bznzfo0e2YNr2LRTTQAHby9zSYQ
	 k5Pn1sWlnPW+VIEGj6CAXgfB73Qy0Lcs6wWiaigCHOqFq+SBz2aulYLVHlY+TVgF/l
	 Zc6hiPUU6LuGcJh7ABTk4BCEgDGcVBjIYZtF9lDBho9Q9HjnDYxv9iBuXOSD3AMZiI
	 8Dx4mjz7nT1sXsudtboOi906aNj9X4x8mT20MIhMG+R1DwUSYraFkCb3fOPjeIqPfP
	 Fj2rfyJthY7JQ==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C90283782159;
	Thu, 20 Jun 2024 14:26:03 +0000 (UTC)
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
Subject: [PATCH v3 0/4] media: rockchip: Add rkvdec2 driver
Date: Thu, 20 Jun 2024 10:19:42 -0400
Message-ID: <20240620142532.406564-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_072609_323116_6A90EEFE 
X-CRM114-Status: GOOD (  16.12  )
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

The support for IOMMU will be added later as preliminary tests show that
the current rockchip iommu driver fails to allocate pages for the video
decoder iommu.

See the second commit message for more details.

Changes since v2:
- doc: Disable resets and sram for other platforms, add maxItems for
  clocks
- Fix h264 spec equation number in comment
- Remove superfluous status field in dtsi
- Add TODO item for IOMMU

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

 .../bindings/media/rockchip,vdec.yaml         |   55 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |   48 +
 drivers/staging/media/Kconfig                 |    1 +
 drivers/staging/media/Makefile                |    1 +
 .../staging/media/rkvdec/rkvdec-h264-cabac.h  |  509 +++++++
 drivers/staging/media/rkvdec/rkvdec-h264.c    |  500 +------
 drivers/staging/media/rkvdec2/Kconfig         |   15 +
 drivers/staging/media/rkvdec2/Makefile        |    3 +
 drivers/staging/media/rkvdec2/TODO            |    9 +
 drivers/staging/media/rkvdec2/rkvdec2-h264.c  |  739 ++++++++++
 drivers/staging/media/rkvdec2/rkvdec2-regs.h  |  345 +++++
 drivers/staging/media/rkvdec2/rkvdec2.c       | 1253 +++++++++++++++++
 drivers/staging/media/rkvdec2/rkvdec2.h       |  130 ++
 13 files changed, 3109 insertions(+), 499 deletions(-)
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
