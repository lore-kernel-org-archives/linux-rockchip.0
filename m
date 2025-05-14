Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4753C3ABCC
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 15:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s36CJ/vUtTCfeX/MgXcQWSD0dsnug5AYiATmLLVjJVg=; b=VyXpXGhYeqVrFB
	BPMnFpudMF8RmmAcohQPPceeQDBv+5aC41bGcW2RLWRoTZA1sMaUKrhT3iUsnKnfHCdU/p9Z1taxl
	m2aemXMn/wduDXNKkBPCEbqUjiJV5VUDLGgCcXKZ3CE3O8AxPxoQ+0qWQPwUGbDhPWoZrNy63WcWW
	skCexNOC33vgfmnsCpJDR2gwVsd1j4D2XOLvsbBzrh0/d2aYsJrgG9TDrkt46eNqUJ3MOGuXS9Yj6
	Nl4xIdEVVeaaUCh5eigIinE5kTAEZiocQ3JuSRTa0QL6okjDP4BJDiTbvbPtVzZLYRrXPT2TqSdN+
	3760C9wmE/hf/aTFDOtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFDxd-0000000FaDj-2ySr;
	Wed, 14 May 2025 15:23:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFDiE-0000000FWUE-0yHy;
	Wed, 14 May 2025 15:08:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=r/T8u/YGlcTXI2+Z4Mxkx4Z7ysJrrW1T+OiQN9/psA4=; b=nmMZlAUtD26M4CHaTIx4uVLVUw
	+UZ9azbw7wp9o/g1QjCoRTiIfJPSlfHaIR1ezi5M95CkQ+YGD7ILiw8NMeAn/vdKNjOGGzIydY6Jc
	utweStC/GCfqCZtJJ87PbzocU9ZoIpAFTCtjyB0MTVqx0q7E8A6m0D7q4M+RShjotQbc/PZRk5Uv7
	gQ0vTYRNthbmEtML6O49xfTDVzsjaPfJLpVpePbfuga7LK1JlHzffyq2lky9srj1SOOc6ziBJh7ul
	Lt1i29LESv9xnNXCLYGyT8JEPT3SsQASOLk1NUbAZzDFL9hlX6bbA9IFZ353g4mZ+jaJeQcIbtR8k
	31ZKS/KQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uFDi9-0000000HE2j-3U3w;
	Wed, 14 May 2025 15:08:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=r/T8u/YGlcTXI2+Z4Mxkx4Z7ysJrrW1T+OiQN9/psA4=; b=Wehp5NrskZ74iDp1HpaA1cAZWF
	m/op1NJ/aypjE44REZtffndjc6zKYnfMotDPTxjiOtusAUmgvWppl/q+ZkT+SSkN+WqQZO2qOJ5PL
	KHLmfaLXx218Vk5ppWEwbusjuhMCzXsn6MOOB7kQpLgd+fA/gwHGTUp2qXd3LAh9TmicNvutNVPTk
	5R8BX4KGkNurQIpF641Fi6OOfcA+VvqLzy4oV3nZ4UMx6nE46urKnUStpY2imU9KSVuPkmp7B28H6
	8jd202o13PgJEmNHXbWi4vtHouWPJh5hud7MwNa93S8HUN3qWfYa8838gDxU6Dpf6jlukguCg77x4
	C+TTAEQw==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uFDi7-0006vE-Ne; Wed, 14 May 2025 17:07:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/6] Add two board-families from Theobroma-Systems
Date: Wed, 14 May 2025 17:07:39 +0200
Message-ID: <20250514150745.2437804-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_160757_936398_987AEA0F 
X-CRM114-Status: GOOD (  15.57  )
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

Both the Cobra and PP1516 boards are based around the PX30 SoC and can be
found with a variety of display options.

As new boards should not use the deprecated snps,reset-* properties
in the gmac node, I also added a core mdio-node for the gmac and
converted the Theobroma Ringneck board over.

Testing with the new node both before and after converting Ringneck
showed the board finding its network both when booting locally and
from the tftp/nfs.

changes in v4:
- fix mistake of "," and ";" in pinctrl-hogs after moving entries around
- the port properties for the DSI displays were added in
  - https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bf0636f4348e098e2338eebbe42d7780c58a1195
  - https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=e782ac936941cff4c5580bb5cc2ec0e91468068c

changes in v3:
- more sorting
- more Reviewed-bys
- pull-down for dsp-rst
- pp1516 accel pinctrl group

changes in v2:
- add received Acks/Reviews
- drop "rockchip" prefix from system-power-controller (Diederik)
- split out prototype-pins to prototype variant
- address Quentin's review comments
  - ethernet0 alias for Cobra
  - a number more pinctrl entries for gpios
  - drop unused slp pinctrl entries
  - additional comments
  - use gpio-constants for pmic int
  - ordering (nodes + properties)
  - clarify vccio_sd more
  - interrupt line for pp1516 accelerometer

Heiko Stuebner (6):
  arm64: dts: rockchip: add basic mdio node to px30
  arm64: dts: rockchip: move reset to dedicated eth-phy node on ringneck
  dt-bindings: arm: rockchip: add PX30-Cobra boards from Theobroma
    Systems
  arm64: dts: rockchip: add px30-cobra base dtsi and board variants
  dt-bindings: arm: rockchip: add PX30-PP1516 boards from Theobroma
    Systems
  arm64: dts: rockchip: add px30-pp1516 base dtsi and board variants

 .../devicetree/bindings/arm/rockchip.yaml     |  18 +
 arch/arm64/boot/dts/rockchip/Makefile         |   6 +
 .../rockchip/px30-cobra-ltk050h3146w-a2.dts   |  39 ++
 .../dts/rockchip/px30-cobra-ltk050h3146w.dts  |  39 ++
 .../dts/rockchip/px30-cobra-ltk050h3148w.dts  |  39 ++
 .../dts/rockchip/px30-cobra-ltk500hd1829.dts  |  73 +++
 arch/arm64/boot/dts/rockchip/px30-cobra.dtsi  | 566 ++++++++++++++++
 .../rockchip/px30-pp1516-ltk050h3146w-a2.dts  |  39 ++
 .../dts/rockchip/px30-pp1516-ltk050h3148w.dts |  39 ++
 arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi | 602 ++++++++++++++++++
 .../boot/dts/rockchip/px30-ringneck.dtsi      |  22 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   6 +
 12 files changed, 1485 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-cobra-ltk050h3146w-a2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-cobra-ltk050h3146w.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-cobra-ltk050h3148w.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-cobra-ltk500hd1829.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-pp1516-ltk050h3146w-a2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-pp1516-ltk050h3148w.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
