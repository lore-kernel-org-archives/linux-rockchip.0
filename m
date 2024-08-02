Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 925B5C52D6F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 14:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=93kMZnIFJEBMlfIA0dtU1Xh1d/HIG+Mj6J411vEGlb8=; b=eiPv3JR/uncxxA
	ETfqcmnVB1650gCdxewsWzSWNuWgB9I0Wm8/1XLt2YzL6WWKnlNiBg197Nahk/tKKEFHZlLlyDDju
	ta5ncHr75kWeFrc/LbUk4rwfSM0ETLATUm50hmgxwQ/ThM6rfymyUXbl1sDewOrUi/iz8ZoYMVdN9
	KEFp7Gaegx5nnY9QG2PNGMq1v3x4YKgU9a9U7V6OU8CfinMFtZ3dJ9oTgGcVVhWHctNM9r4ZjopTg
	KNfrJ3hsPlM2+IFbXCjSUTltNZ7sBm/2Fwn6kRE1rsaUbXL6Ag8oMfgl7es2N1k3qIbqb+LicKFHL
	cwVpKYpcspeDLi2bbSKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZt6L-000000093D9-2xwQ;
	Fri, 02 Aug 2024 14:17:49 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZt5o-0000000934o-471j;
	Fri, 02 Aug 2024 14:17:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722608232;
	bh=F27qf+/aidpVlH+J0uQc/en8+v4v4owFpY+E4ck8mds=;
	h=From:To:Cc:Subject:Date:From;
	b=3qGZM3aWPZ5N58fnbh9lgA5I5ZHgSVCVbrZpBqpPhRdsYdwW+GsAg1oGIbHwX+Pdb
	 GEDR7B3sA93tddxkNjbSm8/hwR52texpQsu+r+Bq606G65ivzSDZzSJm50Q1DTheNd
	 emcRIUm4LfQuldkGHhoR6MerEvOS8kXFteM0PdHF9vLsQHkQFIEdzxFZE+o1oyGzFP
	 F4EalWayh6nrpAiBI51ztXdTyahr+VTmzK5OVt7opKUFKVgGCpR93+IS2b/1/O5Qzi
	 foe2J9lbiJYeRRqOaFWcOp5JrqqtL99afGTcf0yQf2TJ7mRFS4SuweJniAEE45OcPa
	 R/8TE3wopPdkQ==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 637D23782214;
	Fri,  2 Aug 2024 14:17:10 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 0/3] Add CRU support for rk3576 SoC
Date: Fri,  2 Aug 2024 10:12:47 -0400
Message-ID: <20240802141816.288337-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_071717_202043_85F2E5EF 
X-CRM114-Status: UNSURE (   9.46  )
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

Add support for clocks and resets on the rk3576.
Patches from downstream have been squashed and rebased.

Detlev Casanova (1):
  dt-bindings: clock: add rk3576 cru bindings

Elaine Zhang (2):
  clk: rockchip: Add dt-binding header for rk3576
  clk: rockchip: Add clock controller for the RK3576

 .../bindings/clock/rockchip,rk3576-cru.yaml   |   73 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rk3576.c             | 1818 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   52 +
 .../dt-bindings/clock/rockchip,rk3576-cru.h   | 1149 +++++++++++
 6 files changed, 3100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3576.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
