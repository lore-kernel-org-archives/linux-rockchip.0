Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9416CD4846
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iZNAlwejyNMY5qy/Ob5xZ6oY30Alu1VTSBaP82+efLE=; b=Vty/LoA3anQIDv
	4j6UdShxn5ns23XQech6Ac7FffX3X6XqUptNxweoyqNtQLRCFsWOhV+4HgkP5q+6dffvJkZ1SeRtB
	8o+QGkwYtAI5Vf7FxEZusTBS/dYqey4K+2DfCT4z0Ot5+g+RwoupPq/jm+bfA7oZx2Kfvpgd9HGjT
	jMoC4nny/OMHxTx51J6XLUBF76aWST7XcXPZth7EBBMraSLyx2CeWq6HZmG+eAmw8OFp+H7v31Szh
	f1TpQDEldd3kkFM6aoBJSFh0+x5QOHdytUysNtLhtUG8b/5qSfA9QgYaUOnqUjPXY5vkrn0E9HsOh
	Ofeu3BzSpB1fuqUMJS6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlwS-0000000ED5G-0IY5;
	Sat, 07 Sep 2024 03:16:52 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlqT-0000000EBCd-1JfD;
	Sat, 07 Sep 2024 03:10:45 +0000
Received: from mail.maildlp.com (unknown [172.19.163.17])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4X0yds3ykNz20nY1;
	Sat,  7 Sep 2024 11:05:37 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 8C0041A0188;
	Sat,  7 Sep 2024 11:10:37 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 7 Sep
 2024 11:10:36 +0800
From: Li Zetao <lizetao1@huawei.com>
To: <mchehab@kernel.org>, <florian.fainelli@broadcom.com>, <andrew@lunn.ch>,
	<olteanv@gmail.com>, <davem@davemloft.net>, <edumazet@google.com>,
	<kuba@kernel.org>, <pabeni@redhat.com>, <wens@csie.org>,
	<jernej.skrabec@gmail.com>, <samuel@sholland.org>, <heiko@sntech.de>,
	<yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>, <hauke@hauke-m.de>,
	<alexandre.torgue@foss.st.com>, <joabreu@synopsys.com>,
	<mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
	<radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>, <hdegoede@redhat.com>,
	<ilpo.jarvinen@linux.intel.com>, <ruanjinjie@huawei.com>,
	<lizetao1@huawei.com>, <hverkuil-cisco@xs4all.nl>,
	<u.kleine-koenig@pengutronix.de>, <jacky_chou@aspeedtech.com>,
	<jacob.e.keller@intel.com>
CC: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>,
	<platform-driver-x86@vger.kernel.org>
Subject: [PATCH net-next v2 00/10] net: Convert using devm_clk_get_enabled()/devm_clk_get_optional_enabled()
Date: Sat, 7 Sep 2024 11:19:16 +0800
Message-ID: <20240907031926.3591353-1-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_201042_528607_C6417EAA 
X-CRM114-Status: UNSURE (   8.52  )
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

v1 -> v2:
  1) Patch 5 optimizes the check and adds commit information for easier
  inspection.
  2) It is no longer necessary to use clk, so delete the clk member of
  the spl2sw_common structure.
  3) Remove patches 11 and 12, they should be sent to wireless-next
  individually

v1:
https://lore.kernel.org/all/20240831021334.1907921-1-lizetao1@huawei.com/

There are many examples[1][2] of clk resource leakage in LTS. The
reason is that developers need to maintain the allocation and release
of clk resources themselves, but this will increase the burden on
developers. Using the API related to devm_clk_get_*_enable ensures
that the life cycle of clk is consistent with that of the device,
reducing the risk of unreleased resources like clk.

Several other developers are also working on converting to more
secure interfaces, and this patch set is in principle the same as
theirs.

[1]:
https://lore.kernel.org/all/20240812160128.338041191@linuxfoundation.org/
[2]:
https://lore.kernel.org/all/20240812160135.992451065@linuxfoundation.org/

Li Zetao (10):
  net: dsa: bcm_sf2: Convert using devm_clk_get_optional_enabled() in
    bcm_sf2_sw_probe()
  net: ethernet: Convert using devm_clk_get_enabled() in emac_probe()
  net: ethernet: arc: Convert using devm_clk_get_enabled() in
    emac_probe()
  net: ethernet: ethoc: Convert using devm_clk_get_enabled() in
    ethoc_probe()
  net: ftgmac100: Convert using devm_clk_get_enabled() in
    ftgmac100_setup_clk()
  net: ethernet: hisilicon: Convert using devm_clk_get_enabled() in
    hisi_femac_drv_probe()
  net: lantiq_xrx200: Convert using devm_clk_get_enabled() in
    xrx200_probe()
  net: stmmac: dwmac-dwc-qos-eth: Convert using devm_clk_get_enabled()
    in dwc_qos_probe()
  net: ethernet: sunplus: Convert using devm_clk_get_enabled() in
    spl2sw_probe()
  net: xilinx: axienet: Convert using devm_clk_get_optional_enabled() in
    axienet_probe()

 drivers/net/dsa/bcm_sf2.c                     | 28 ++----
 drivers/net/ethernet/allwinner/sun4i-emac.c   | 13 +--
 drivers/net/ethernet/arc/emac_rockchip.c      | 34 ++-----
 drivers/net/ethernet/ethoc.c                  | 18 ++--
 drivers/net/ethernet/faraday/ftgmac100.c      | 26 +----
 drivers/net/ethernet/hisilicon/hisi_femac.c   | 17 +---
 drivers/net/ethernet/lantiq_xrx200.c          | 17 +---
 .../stmicro/stmmac/dwmac-dwc-qos-eth.c        | 98 ++++---------------
 drivers/net/ethernet/sunplus/spl2sw_define.h  |  1 -
 drivers/net/ethernet/sunplus/spl2sw_driver.c  | 25 ++---
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 15 +--
 11 files changed, 62 insertions(+), 230 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
