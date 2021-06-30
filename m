Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB34C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 14:01:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 995C161433
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 14:01:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 995C161433
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tx44Gl6BHE3gfeNorHSdaagupgLfFVr1kXql+DvozRQ=; b=fDXAx2lMEV9aEt
	iB/J82EWoCvJlFBL0pI2xKbDuYxRH/qt7fXRMNShHzNfdMV+X1Yxmn6g2HbePR1KzypeBY0G5D7BI
	2OsF4w4rf0nBVLbsAAnadne5GC7CCWk1QKCl9ShkgqlgRY0yAuf6GS0O51rDTR50kSg4utud7Smgn
	cb6cjN94EHJtUxXO8SXtiUtz6Pk4JYVc+HB9pelj32KdfDG3xg7jOGoWrJ+XSk8kbJnxO/bDmzOko
	2ic+ueRYISjNiVnPmrOfpHbDoPWh4yfS1KdcSpv+FhDRsoJ3TSQNakmiDBq1FDI10bVqLbOc83mUZ
	ws1RYhL73HZINq+N9r2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyamL-00EFAF-Nq; Wed, 30 Jun 2021 14:01:25 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyaYl-00E9Z1-Qv; Wed, 30 Jun 2021 13:47:26 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 125DBFAAA6;
 Wed, 30 Jun 2021 21:47:14 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P12363T139710748759808S1625060824073628_; 
 Wed, 30 Jun 2021 21:47:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <262c7d1e35095930349ec063e9c5b33f>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: linux-spi@vger.kernel.org
X-RCPT-COUNT: 20
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: linux-spi@vger.kernel.org
Cc: jon.lin@rock-chips.com, broonie@kernel.org, robh+dt@kernel.org,
 heiko@sntech.de, jbx6244@gmail.com, hjc@rock-chips.com,
 yifeng.zhao@rock-chips.com, sugar.zhang@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 p.yadav@ti.com, macroalpha82@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v10 04/10] clk: rockchip: rk3036: fix up the sclk_sfc parent
 error
Date: Wed, 30 Jun 2021 21:46:56 +0800
Message-Id: <20210630134702.7346-5-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210630134702.7346-1-jon.lin@rock-chips.com>
References: <20210630134702.7346-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_064724_174607_B7CA2BBD 
X-CRM114-Status: GOOD (  10.71  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Choose the correct pll

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

Changes in v10: None
Changes in v9: None
Changes in v8: None
Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None
Changes in v1: None

 drivers/clk/rockchip/clk-rk3036.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3036.c b/drivers/clk/rockchip/clk-rk3036.c
index 91d56ad45817..1986856d94b2 100644
--- a/drivers/clk/rockchip/clk-rk3036.c
+++ b/drivers/clk/rockchip/clk-rk3036.c
@@ -121,6 +121,7 @@ PNAME(mux_pll_src_3plls_p)	= { "apll", "dpll", "gpll" };
 PNAME(mux_timer_p)		= { "xin24m", "pclk_peri_src" };
 
 PNAME(mux_pll_src_apll_dpll_gpll_usb480m_p)	= { "apll", "dpll", "gpll", "usb480m" };
+PNAME(mux_pll_src_dmyapll_dpll_gpll_xin24_p)   = { "dummy_apll", "dpll", "gpll", "xin24m" };
 
 PNAME(mux_mmc_src_p)	= { "apll", "dpll", "gpll", "xin24m" };
 PNAME(mux_i2s_pre_p)	= { "i2s_src", "i2s_frac", "ext_i2s", "xin12m" };
@@ -340,7 +341,7 @@ static struct rockchip_clk_branch rk3036_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(16), 8, 2, MFLAGS, 10, 5, DFLAGS,
 			RK2928_CLKGATE_CON(10), 4, GFLAGS),
 
-	COMPOSITE(SCLK_SFC, "sclk_sfc", mux_pll_src_apll_dpll_gpll_usb480m_p, 0,
+	COMPOSITE(SCLK_SFC, "sclk_sfc", mux_pll_src_dmyapll_dpll_gpll_xin24_p, 0,
 			RK2928_CLKSEL_CON(16), 0, 2, MFLAGS, 2, 5, DFLAGS,
 			RK2928_CLKGATE_CON(10), 5, GFLAGS),
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
