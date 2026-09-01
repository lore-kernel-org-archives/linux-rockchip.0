Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CBB9C61DD6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E68GtrNtwBASnybSRJRvKCXccNd4O1OypPHnbt+/s1I=; b=lPLThEasOgP3xy
	wiyAJBj3bZyLG9RwaqjJ5JqTDmS/9eFZRaqBv2JvcRVdS9iEn5QZ6tl6uOiKf50zsbQNd8zsyGNE8
	Kdu7/gFGZvDcALqRv7QZZvLhhhi59hBBxXKiiSysTUXYMB3n/Uv/4NeHZwPs8DQ3XWbbrLeNoWTmp
	JTpShwH5sF1QUS3eQIZzns8fW1axXZBnNLQ5ESFMsSRL40K6wuunb+xEWjIDtYJeI1H9nZgI/rPVd
	aQ2qe5KmBNKpPTvpQRIgfl9Dpc5F5qyoVC6Qg6qI4gF627lnbhrl6Xc/JkLB4shPL/+qgio6FnN2+
	Xdg2Db5C202k59iSQkpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBj-0000000CRtD-1Td4;
	Tue, 01 Sep 2026 15:14:15 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBg-0000000CRqD-3Y2p;
	Tue, 01 Sep 2026 15:14:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788275637; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VXyw//D9atWhae4pSE5cGcAIjgUbqZv5Q+/++J/8ZwwGtL1HaV/1qXdu88Kd+WR386Cx8jjzrQJN1PUV7BS1tgNGHd/76duWW651d2uJGvP0fghHAgremEAJ8Tx50afxSMztLlLzNEpWSTzakKpBU5GwHPqbAPHZ3esw/k6pQRo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788275637; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=o4KYhJdCwBe+SxoLEa4AxrQNZqlmNDYC6sJ8UWY4Hc0=; 
	b=QCw9PSIS2A7oAUJShvxQywxoSp57bg00U4bWU3T8R4/er/5Q2WCGqQuBfoVX5twygpupL/4aU15/GDLgtC/k8jOBpKVxzTdXeOFFHQMfipZhmXuZIEqt6p5WzfPpthRwWaVRbiB5hcFgoElz9yzix5l4p3FhO7ekMGqAnymjyq4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788275637;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=o4KYhJdCwBe+SxoLEa4AxrQNZqlmNDYC6sJ8UWY4Hc0=;
	b=c1kzbC5GPWrFe/4tByq97LXZvLIf3tKO2YjgrNtq+IS20jqciqIQDPfe2Hm6N866
	WKREsg/jFsiQwwGXBo1hREnf2GWPorGoPbNM3DSViByOk1M+h9P2jUeebcR2BstpjZQ
	hJDtbLuBcr8My3+O7dqVB7sPMg5g+UEPmHLeoids=
Received: by mx.zohomail.com with SMTPS id 1788275634800229.52516383730926;
	Tue, 1 Sep 2026 08:13:54 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 01 Sep 2026 17:13:35 +0200
Subject: [PATCH 2/2] clk: rockchip: softrst: Remove unused num_regs member
MIME-Version: 1.0
Message-Id: <20260901-rockchip-reset-refactor-v1-2-936576523b21@collabora.com>
References: <20260901-rockchip-reset-refactor-v1-0-936576523b21@collabora.com>
In-Reply-To: <20260901-rockchip-reset-refactor-v1-0-936576523b21@collabora.com>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081412_935198_B2EC7683 
X-CRM114-Status: GOOD (  10.83  )
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

Not used by anything, but set. Get rid of it to save an entire 4 bytes
of memory, which is not nothing in this economy.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/clk/rockchip/softrst.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clk/rockchip/softrst.c b/drivers/clk/rockchip/softrst.c
index c59589b02963..b463f59cbf36 100644
--- a/drivers/clk/rockchip/softrst.c
+++ b/drivers/clk/rockchip/softrst.c
@@ -13,7 +13,6 @@ struct rockchip_softrst {
 	struct reset_controller_dev	rcdev;
 	const int			*lut;
 	void __iomem			*reg_base;
-	int				num_regs;
 };
 
 #define NUM_PER_REG	16
@@ -75,7 +74,6 @@ void rockchip_register_softrst_lut(struct device_node *np,
 
 	softrst->reg_base = base;
 	softrst->lut = lookup_table;
-	softrst->num_regs = num_regs;
 
 	softrst->rcdev.owner = THIS_MODULE;
 	if (lookup_table)

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
