Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1390C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhK7IXd3gnV5bfPPDnwa+/fKzJIFj3bSGWCdKARj4DU=; b=ieJ9GveepAkVjl
	4rC4up4m/0G+oVIbJEBbNTetJLh0KbOlh3nFBtnjcR4Og2bcRczshUoKgLgppz3lGO1/tSYdAsEAU
	oqrOw5hy2ynMG5guy4pcAwsJtLJ3knoDlVr0jQ0m/vGR+PLLskvzgGv7B+wNDma04DnafFikYoDUj
	BaYwOhi6IIs5BwMJOZmnk2iaFDB8kvfVYBKfGXxbBUUi+oOpGPzxvWuPWoVOLqcwo6ve4zDzEYyJ7
	vO2FkYH7ErRG26nTLVQBsi5YdupHPn05XPq4iS76EDtujWdibGCJdrpdHT4vai9lnqeeqv/UtktVw
	kh5FhIWPVbX6zrVGGz0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOh3-007Dwv-Ii; Wed, 15 Feb 2023 20:47:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOfG-007Cqm-4y; Wed, 15 Feb 2023 20:46:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DAC48B823AF;
	Wed, 15 Feb 2023 20:46:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F752C433EF;
	Wed, 15 Feb 2023 20:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676493961;
	bh=lhAXS7hXbodllx8n7UqUkj4H6xj4JSId1r6/xza38kE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QmOMZj4Z8ML7Uywrx6YkRPp+3zO3GVCOffEeOJcXeGJNrbHcX2DWPWHvXxLdp0e73
	 bLh3d5Anmv58vxEssPamPjWPR427EYUNbGKIDnFeh0QHBcUyaLSrPUlas/e9zGVr7R
	 qPGOGsjtpJoS0FscAqXrqJx4/rOdMXyEPg/XbDQvU4drrjZPz1RrgHv5FbJenYRvHR
	 0IzUt4wOomZXJidFQqizGmaR1qKGaN9UWxyBORro6TS0B3fC6b3oP5d6r8FGqkR4kr
	 oGGkh+Xasy0Wmm7/pP7IwCcJjREW7OGTsEuGi1rpW/2K4pjzPPenzkcJ1UGbEmdZrD
	 DlDQCjRUaQ9Sg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jensen Huang <jensenhuang@friendlyarm.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	pgwipeout@gmail.com,
	michael.riesch@wolfvision.net,
	s.hauer@pengutronix.de,
	frattaroli.nicolas@gmail.com,
	macromorgan@hotmail.com,
	yifeng.zhao@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 05/24] arm64: dts: rockchip: add missing #interrupt-cells to rk356x pcie2x1
Date: Wed, 15 Feb 2023 15:45:28 -0500
Message-Id: <20230215204547.2760761-5-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204547.2760761-1-sashal@kernel.org>
References: <20230215204547.2760761-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124606_382654_CA7AFECD 
X-CRM114-Status: GOOD (  10.95  )
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

From: Jensen Huang <jensenhuang@friendlyarm.com>

[ Upstream commit a323e6b5737bb6e3d3946369b97099abb7dde695 ]

This fixes the following issue:
  pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22

Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
Link: https://lore.kernel.org/r/20230113064457.7105-1-jensenhuang@friendlyarm.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb674..1d423daae971b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -966,6 +966,7 @@ pcie2x1: pcie@fe260000 {
 		clock-names = "aclk_mst", "aclk_slv",
 			      "aclk_dbi", "pclk", "aux";
 		device_type = "pci";
+		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 0 7>;
 		interrupt-map = <0 0 0 1 &pcie_intc 0>,
 				<0 0 0 2 &pcie_intc 1>,
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
