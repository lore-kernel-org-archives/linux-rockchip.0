Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72697C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AH3rI9nnYARusDYmJjG4OdT4Y0Q1S6Keuc2VyU1yaQ4=; b=oA2iSmwGuTkv5e
	cmjervIf9R8nHFCZEG+FIlp4hWeSMo3Rk3cQ8958SNFLN+jMqP12tpobpyXQ/isdZ8zEovmGH01ml
	xaQuAaD4LnVISq0epKrF+LG+A3XmEdVBsUrgeg/xZkkU4CybM/X2j4vHEiCckcrbP6O9dueM7A75O
	xkGtRVkIBX9QtJN0d8zSt5K9WPJNfbuRUSyayiSWWCsuQEph7p/FjrDynx8+/OFuHkT2aOW8+h13L
	P1X/c8bGDI9ZsUfi1yPznNWRtF22u1mTCt8lfZ49KOZMt/l52YKwuqFL18pOIfrZQmJKQxDitYSwX
	9yuCz3xdmlZzHTp72Etw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PcK-00Fqx5-4P; Thu, 23 Jun 2022 16:23:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pc0-00Fqro-9u; Thu, 23 Jun 2022 16:23:21 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C751666017E1;
	Thu, 23 Jun 2022 17:23:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001398;
	bh=Lei1cNU5r5uoxZWN//akVgMG8Tm8ZaXeftFmYYRlE+s=;
	h=From:To:Cc:Subject:Date:From;
	b=QP5ogNh/QVJ0rn26VZgN/0a2Z3JW/3ii+95DwLNRgjCKnhmh3a0J2IMvjntKKxZGX
	 isKN4FJ2pDmfBCwPj48UcMfY4UZwoSADa2YTfqZfPtxiQAGlDMylbs3IKv++15kHAH
	 AKQpRIXbluk7RunuvitO5Hn4H40/uC5MVMs5VZ5j5fNiJtELqyFoYqIHhfdOEfr0jq
	 LZKG2rVGQly7A7u14DUzADOGlvNHWf4kW8U4Ds7gD0jTH/zqMe1y+cKbUmvr9+U36E
	 68uehlm8FoRQQeXlAJ/w7uJDqv9NoOC6NNeU4hGvBNHOEjkupwyLqUhcHA6SF27USM
	 4nIUMuvc2oNBA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6C752480122; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/6] RK3588 Power Domain Support
Date: Thu, 23 Jun 2022 18:23:03 +0200
Message-Id: <20220623162309.243766-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092320_531473_C8F699DC 
X-CRM114-Status: UNSURE (   9.36  )
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

This adds power domain support for the new RK3588(s) SoC
series. The series has been tested with ethernet on the
RK3588 EVB1 board.

-- Sebastian

Elaine Zhang (1):
  soc: rockchip: power-domain: do not enable PD

Finley Xiao (2):
  dt-bindings: add power-domain header for rk3588
  soc: rockchip: power-domain: add power domain support for rk3588

Sebastian Reichel (3):
  dt-bindings: arm: rockchip: add rk3388 compatible string to pmu.yaml
  dt-bindings: power: rockchip: Add bindings for rk3588
  dt-bindings: mfd: syscon: Add rk3388 QoS register compatible

 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../devicetree/bindings/mfd/syscon.yaml       |   1 +
 .../power/rockchip,power-controller.yaml      |   2 +
 drivers/soc/rockchip/pm_domains.c             | 101 +++++++++++++++---
 include/dt-bindings/power/rk3588-power.h      |  69 ++++++++++++
 5 files changed, 162 insertions(+), 13 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3588-power.h

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
