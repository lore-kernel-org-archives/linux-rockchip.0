Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25837C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 03:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=47jtKirt2h6qOZpBadmfgyDJMgvfkcTkYoaScKBtZZ0=; b=aWq+bZLBe5dxqD
	ukNRiSjmy+48qnIIOT8hH8VkS+94b91zviPucM/sjgwu+44kRhMahXt9d3OizdmzinDFnbRk2FIaw
	UjTazEe4pMJLGjIk19hz6kinN3kjTRA73AV9ZnBZwEhzkpTJhPktoznAFxOiaPP1X1AikmRxwuFpd
	OmQCtU92Mgn5DzjCfdpjYvH35fI3aSCTHd7SC5ol/iBtRZZ6EMlhPeVR0IRYzzWRxOllagTwoLyDc
	MbmLD6Gkgqu+sE2iPlIXOZJSWVBW6NGypsf5HHqammtFdS5RU0Y32j92cvA2ykmbLZnrV3karNf19
	20xWkTzMbYfF4tfEauVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNlZJ-0000000HKuH-2yYN;
	Sun, 30 Jun 2024 03:49:37 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNlZ9-0000000HKsa-16iU;
	Sun, 30 Jun 2024 03:49:28 +0000
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0018688605;
	Sun, 30 Jun 2024 05:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719719365;
	bh=9ZFUecfJvnzkWEaRT2YFkSf/lrEu/HTQaebj0pMq5Xo=;
	h=From:To:Cc:Subject:Date:From;
	b=IQDVBWOOyxeH1wk4cTy0ZhsDpx7uvu5zAgTv7ZoBXrtvYBKDmcJg1KpZam2GBmILk
	 ApTpUuJz4UOuDs3MuNMgq4euhzn4lljdfL2PdXjLklNSSbKaH8ZVmX1F/G5Y7KXJYH
	 CPIPGB+qovoZSIDnf6fxTynxD/2MiPz2UIKKZ73hucg+0B/9uAeRbcuUtQpR9gU6w2
	 Pba6qhGxtSU+Y9/Vmc14Y5PYuewV7PmB7EVjbR/m4/6UURJQs4uZBsvJG0pBDVcLgT
	 sA0bf06e35rjBF6PPOv0F6A0aSK7LTgQMg95LbMbTQfqb4Ss7fsJupPCj4MP5Stent
	 3MWTUu3OZt5Fw==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: andrew@lunn.ch,
	kernel@dh-electronics.com,
	Marek Vasut <marex@denx.de>,
	kernel test robot <lkp@intel.com>,
	Alexey Charkov <alchark@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sam Edwards <cfsworks@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on edgeble-neu2
Date: Sun, 30 Jun 2024 05:48:41 +0200
Message-ID: <20240630034910.173552-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_204927_471856_39A69B03 
X-CRM114-Status: GOOD (  10.36  )
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

The rtl82xx DT bindings do not require ethernet-phy-ieee802.3-c22
as the fallback compatible string. There are fewer users of the
Realtek PHY compatible string with fallback compatible string than
there are users without fallback compatible string, so drop the
fallback compatible string from the few remaining users:

$ git grep -ho ethernet-phy-id001c....... | sort | uniq -c
      1 ethernet-phy-id001c.c816",
      2 ethernet-phy-id001c.c915",
      2 ethernet-phy-id001c.c915";
      5 ethernet-phy-id001c.c916",
     13 ethernet-phy-id001c.c916";

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406290316.YvZdvLxu-lkp@intel.com/
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexey Charkov <alchark@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Sam Edwards <cfsworks@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
---
Note: this closes only part of the report
---
 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index 0c2396b8f8db6..7707d1b01440b 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -69,8 +69,7 @@ &gmac {
 
 &mdio {
 	phy: ethernet-phy@0 {
-		compatible = "ethernet-phy-id001c.c916",
-			     "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&eth_phy_rst>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
