Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83693C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:35:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8FEA613CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:34:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8FEA613CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CeBhmzAmu7UQdDq4igtvKGCtwF6XONq+86UN+fVz6OY=; b=qma8SuuTa1Xoj+Qz4++bUTHPcc
	KoumIB/7psmnXh5yIrdxGqBTrC/E1l1xXEPubG1lmv3eQIs/7w+r0QtgzMrDtefWZZ8tThm688yXO
	Ee3QnGnSQeQWWwFvMl6lWbxGTBkABDP2oZh7iV1o5+yezy+C4fQWZGdIWxt6HRuSd3euKh2Z52w+D
	XBMI92P46z7MMPSluuv2kt1O3GfkoDFn5Z6uKrB2ihgifpsHqiJhh8cwZ5mXRXaiCGzXIwCkPfLg+
	OSp6ZE+CX2Z6VdDkjQ2h8uTTZpUn6TOUaNHvPAo6KPAAYJZsv+otu77kQEJaZFwWJIzg1wdySnmV1
	UfoP92ig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZJYf-00F9aC-Mt; Wed, 21 Apr 2021 20:34:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJYG-00F9MN-PX
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 20:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=DupSBO/viCVNH2GmngdkLfSCacujfUWoEB5KX7K2KQ0=; b=ht5rageehVMWPWax0mYR2acoK0
 PPujKAfpf7DGu1lCrvNSz4n52etZKdqMg3iRXqVSabPz/tGjqqjlz7n0t3aYI56uqRkqj965Ucc+g
 xn4LV4xEj0DtqGDaf4H4Tt8Q/oUZBwsdKUWOr6gjeqClGpbY0j24HkzpwtQEr6ZBP/CeDbYehnIYB
 2dL4Rb/hLmsONJooLz/XW79RSg4vd65JWF5X+9zVeYPrBJFd4ui2mMRKdP+kPu6WCID2KJxeI3Rxm
 gvIEgmCqJmBBtXWE159strCF49KGmEK6YYJ/DXwa1tEgWi4eXHLSBYR1ZXqHbK7hwXACQ5Gz1XzAQ
 VTeDLzeA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJYE-00DAoU-0Y
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 20:34:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8B78E1F42674
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH v2 net-next 0/3] net: stmmac: RK3566
Date: Wed, 21 Apr 2021 17:34:06 -0300
Message-Id: <20210421203409.40717-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_133422_204965_F393D158 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Now that RK3568 SoC devicetree upstreaming is happening [1],
here's another round for the RK3566 dwmac. There wasn't any clear
consensus on how to implement the two interfaces present
on RK3568, so I decided to drop that and just submit RK3566 for now.

This has been tested on a Pine64 RK3566 Quartz64 Model B board,
DHCP and iperf are looking good.

For all the people testing, here's Quartz 64 Model B device tree
snippet:

        gmac1: ethernet@fe010000 {
                compatible = "rockchip,rk3566-gmac", "snps,dwmac-4.20a";
                reg = <0x0 0xfe010000 0x0 0x10000>;
                interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
                             <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
                interrupt-names = "macirq", "eth_wake_irq";
                rockchip,grf = <&grf>;
                clocks = <&cru SCLK_GMAC1>, <&cru SCLK_GMAC1_RX_TX>,
                         <&cru SCLK_GMAC1_RX_TX>, <&cru CLK_MAC1_REFOUT>,
                         <&cru ACLK_GMAC1>, <&cru PCLK_GMAC1>,
                         <&cru SCLK_GMAC1_RX_TX>, <&cru CLK_GMAC1_PTP_REF>;
                clock-names = "stmmaceth", "mac_clk_rx",
                              "mac_clk_tx", "clk_mac_refout",
                              "aclk_mac", "pclk_mac",
                              "clk_mac_speed", "ptp_ref";
                resets = <&cru SRST_A_GMAC1>;
                reset-names = "stmmaceth";

                snps,mixed-burst;
                snps,tso;

                snps,axi-config = <&gmac1_stmmac_axi_setup>;
                snps,mtl-rx-config = <&gmac1_mtl_rx_setup>;
                snps,mtl-tx-config = <&gmac1_mtl_tx_setup>;
                status = "disabled";

                mdio1: mdio {
                        compatible = "snps,dwmac-mdio";
                        #address-cells = <0x1>;
                        #size-cells = <0x0>;
                };

                gmac1_stmmac_axi_setup: stmmac-axi-config {
                        snps,wr_osr_lmt = <4>;
                        snps,rd_osr_lmt = <8>;
                        snps,blen = <0 0 0 0 16 8 4>;
                };

                gmac1_mtl_rx_setup: rx-queues-config {
                        snps,rx-queues-to-use = <1>;
                        queue0 {};
                };

                gmac1_mtl_tx_setup: tx-queues-config {
                        snps,tx-queues-to-use = <1>;
                        queue0 {};
                };
        };

While here, I'm adding a small patch from David Wu, for some
sanity checks for dwmac-rockchip-specific non-NULL ops.

Thanks!

[1] http://lore.kernel.org/r/20210421065921.23917-1-cl@rock-chips.com

David Wu (2):
  net: stmmac: dwmac-rk: Check platform-specific ops
  net: stmmac: Add RK3566 SoC support

Ezequiel Garcia (1):
  net: stmmac: Don't set has_gmac if has_gmac4 is set

 .../bindings/net/rockchip-dwmac.txt           |   1 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 126 +++++++++++++++++-
 2 files changed, 124 insertions(+), 3 deletions(-)

-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
