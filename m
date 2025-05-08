Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C84B7C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 18:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d536OZYwZpQTS8Vak2P242/+C/kbpDg7kN3Ug7esNMY=; b=hfCG7cjR9Ubzh8
	eZYRBn57SuiMIg1/V04bcoT9UP+2bCRhMCmQxmAuy66k4hAjHE+lhKBNnOw4e72fIDYNIfQUMfPTr
	7zNYuKaHLDebbr9/vzIB5jiuCso2yCPctr0a/hiuaIQvJ7cSn6Ne8dlzUz1OtufViBI8vTaXSK/RW
	/HACU4JV+y75Sxcs+npv/n0Tjvz1bPhIpLkN86ehel5W7g9a3PX1LlY/qbVQTmNBpCM5fX095AMu2
	NyWFrb8psst7wbs831tXlXvvx39w4zCzVtIp/OR6I8NTt8Y/mnwAlOs4yqn97sDzpY2+2/wVgQzMm
	QTt5YN2/R4Eew0+4PBJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD64V-00000001Ydz-1GoH;
	Thu, 08 May 2025 18:34:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD5ye-00000001Xfm-29SM;
	Thu, 08 May 2025 18:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=RunLEOIGqZcaHH5istx3/NRLaEmuvJ3v+u+tkMxtecY=; b=B8CFgnA/nvIjBiXcN3f6gyLwts
	NVXKQl5zaHVKcoAlQDm7NxjfNzwCxZ67VW2B9mIDZxLw8UUCZR26UbN4648Zt4z+wHyKvErtME6am
	8IPC4fzbwYxJnB8BhgoVk1r+rDPFN27etC6wqb4blNajN5SO/byBAf9HfSDoW7tEQL9l1Y+yhkkCe
	RIFPN6OaimgMiXO5Schn66jG6JMUFQrPp2FzMXX3DO0hiWE7tUR7t1FfLn5xac4mrAVXwmI2GLVr1
	KSRasTa11xw+7Ixt1HUjbvNBu/Q+eeDD3Dbp6BgvCfBoQGXdQjfP2god0L1FfMiJ6b/p4dvtK+8Pg
	mHAfUf0A==;
Received: from [61.8.144.177] (helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uD5ya-0000tP-I3; Thu, 08 May 2025 20:28:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 0/2] Some minor cleanup in the Rockchip clock driver
Date: Thu,  8 May 2025 20:27:50 +0200
Message-ID: <20250508182752.1925313-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_112812_568450_CA533314 
X-CRM114-Status: GOOD (  10.44  )
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

One fixup for the new grf-gate and bringing the grf-mux branch naming
in line with the oher newly added grf clock-types.

Heiko Stuebner (2):
  clk: rockchip: rename branch_muxgrf to branch_grf_mux
  clk: rockchip: rename gate-grf clk file

 drivers/clk/rockchip/Makefile                       | 2 +-
 drivers/clk/rockchip/{gate-grf.c => clk-gate-grf.c} | 0
 drivers/clk/rockchip/clk.c                          | 4 ++--
 drivers/clk/rockchip/clk.h                          | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)
 rename drivers/clk/rockchip/{gate-grf.c => clk-gate-grf.c} (100%)

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
