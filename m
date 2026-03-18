Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB1CF10854D2
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WKh/yG/PhMa58t/HJqh4fr2l92mXNMcKjrcPcI4g+Jk=; b=NVQ47xG1A8o4u4
	iJiLZ8Lp7yY+ffghE6HVpqCy9hc9mAUlaUE/yTeeJe0Pwo8XVMcAwIqHe31mQsGSNKscfNoSVmlb5
	3whZQ7aN7xlppxOaVCeuMa/A4ROGmqT6ezl4Zkebq5AUbCXIWfCQqJK+fDZbLOd3D8Si8hOAKr2Uz
	lkFjVh99HLkWPqciuLVxOYz99jeNsbCJgZKS+KHpABI92KP0X7qX8MtYlgETUYdDof03+GPG8jIaL
	oNDkc4zwXmBmKQd4LTJcAsRYy9m4dDWtrxSHJEBwejoPU/MWtdbB3UPtaIPdMGgGtmtvoIY1rep0q
	e/NXonQvR2C/fkg4VOtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2gpf-00000007cYF-3f5R;
	Wed, 18 Mar 2026 02:40:27 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2gpZ-00000007cS2-36v2;
	Wed, 18 Mar 2026 02:40:24 +0000
X-UUID: c9068e8c227311f1a21c59e7364eecb8-20260318
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.11,REQID:9505b584-054f-4534-bd52-2ea0379afc6b,IP:0,U
	RL:0,TC:0,Content:-5,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:20
X-CID-META: VersionHash:89c9d04,CLOUDID:1b22b3f1c276df14806c3325f3681ae2,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|898,TC:nil,Content:0|15|50,EDM:5
	,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: c9068e8c227311f1a21c59e7364eecb8-20260318
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 659452620; Wed, 18 Mar 2026 10:40:11 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	openbmc@lists.ozlabs.org,
	linux-rockchip@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Pei Xiao <xiaopei01@kylinos.cn>
Subject: [PATCH v4 00/17] cleanup in spi by use devm_clk_get_enabled
Date: Wed, 18 Mar 2026 10:39:50 +0800
Message-Id: <cover.1773801401.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_194022_929236_CBD98E95 
X-CRM114-Status: UNSURE (   6.77  )
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

I know that many old SPI drivers should not be modified for hardware
stability and to reduce maintenance effort. But I can't help cleaning them
up. To minimize the introduction of issues, I tried not to modify the
timing of those hardware clock enables.

---
changes in v4: modify all commit info
changes in v3: remove disable clk in remove function
changes in v2: fix error message but having a line break
Missing error code argument to dev_err_probe()
---

Pei Xiao (17):
  spi: axiado: Simplify clock management with devm_clk_get_enabled()
  spi: bcm63xx-hsspi: Simplify clock handling with
    devm_clk_get_enabled()
  spi: bcmbca-hsspi: Simplify clock handling with devm_clk_get_enabled()
  spi: img-spfi: Simplify clock handling with devm_clk_get_enabled()
  spi: imx: Simplify clock handling with devm_clk_get_enabled()
  spi: npcm-pspi: Simplify clock handling with devm_clk_get_enabled()
  spi: orion: Simplify clock handling with devm_clk_get_enabled()
  spi: rockchip-sfc: Simplify clock handling with devm_clk_get_enabled()
  spi: sifive: Simplify clock handling with devm_clk_get_enabled()
  spi: slave-mt27xx: Simplify clock handling with devm_clk_get_enabled()
  spi: st: Simplify clock handling with devm_clk_get_enabled()
  spi: stm32-qspi: Simplify clock handling with devm_clk_get_enabled()
  spi: stm32: Simplify clock handling with devm_clk_get_enabled()
  spi: sunplus-sp7021: Simplify clock handling with
    devm_clk_get_enabled()
  spi: uniphier: Simplify clock handling with devm_clk_get_enabled()
  spi: zynq-qspi: Simplify clock handling with devm_clk_get_enabled()
  spi: zynqmp-gqspi: Simplify clock handling with devm_clk_get_enabled()

 drivers/spi/spi-axiado.c         | 31 +++++-----------
 drivers/spi/spi-bcm63xx-hsspi.c  | 46 +++++++-----------------
 drivers/spi/spi-bcmbca-hsspi.c   | 49 +++++++++----------------
 drivers/spi/spi-img-spfi.c       | 18 ++--------
 drivers/spi/spi-imx.c            | 15 ++------
 drivers/spi/spi-npcm-pspi.c      | 20 ++++-------
 drivers/spi/spi-orion.c          | 11 ++----
 drivers/spi/spi-rockchip-sfc.c   | 22 ++----------
 drivers/spi/spi-sifive.c         | 21 ++++-------
 drivers/spi/spi-slave-mt27xx.c   |  8 +----
 drivers/spi/spi-st-ssc4.c        | 16 +++------
 drivers/spi/spi-stm32-qspi.c     | 18 +++-------
 drivers/spi/spi-stm32.c          | 61 ++++++++++----------------------
 drivers/spi/spi-sunplus-sp7021.c | 15 +-------
 drivers/spi/spi-uniphier.c       | 17 +++------
 drivers/spi/spi-zynq-qspi.c      | 31 ++++------------
 drivers/spi/spi-zynqmp-gqspi.c   | 19 ++--------
 17 files changed, 98 insertions(+), 320 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
