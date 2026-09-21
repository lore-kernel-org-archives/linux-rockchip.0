Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E368C982E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkjHCgkoyj8uJa1GvTZa6Sv8ktCWMab+doGCp2kA1qg=; b=OoCSrfVXtDSmyM
	V/nb+XULY8C60Zfj1J0R3Sr07/UT+7XRoL7S8C/Nhr4BMDlPXMIzDBQXSjBWkWMvu30/B+thKPqs+
	M2g5PVlA8+lD0t6hsP+yIkp0faN2iVDThJ/bJgqrFuqcnfgFfcpSmZz6UZxYXXSJsUwMkw7Zo33q9
	2nlEMaQgg/6ZpUm9Wq0hd8kXYenoXqmEAisWZkxR5aQJ1n+BVmpnH5VKsBxVZg8gH+QB8lxXaaA0H
	A6DdZ7h/mbfMyBR8cVY91Ai1127Nx6u1QiqTwRd0XRyv2tP5elAwwEB6TQPgvEPiDPAH9A17vJue/
	JE6U9f+1uhKNhrh+fddw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XuX-000000017wO-3aW6;
	Mon, 21 Sep 2026 06:53:57 +0000
Received: from mail-m8398.xmail.ntesmail.com ([156.224.83.98])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XuV-000000017uu-1qaK
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:53:56 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e88ba518;
	Mon, 21 Sep 2026 14:53:50 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 4/4] pmdomain: rockchip: drop duplicated errno from supply failure message
Date: Mon, 21 Sep 2026 14:52:53 +0800
Message-Id: <1789973573-151146-5-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
References: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0c2be0ee303a4kunmfcbddeea30c449
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSh4YVkofTkJIHRgdSx9CHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=bv/kN57fZCgG1WfpTjzu89UurjYUV3pzn7VJM/DYW7nfmwmQizLuThh8coRnssxTg2pGdofX64eNudhGfLZJHIAP7MeT67pfV5ksTecto/YMLwqcGzS8sLy5NO9RHqyJdkVtZ9PlwRbYwJxOFHeL2a0Bn02WjD6iN9Z1vpR344k=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=4rzdnvxtMOwoTstWH7ONpLzJxlyzR6V/AX+XUQsnn/8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_235355_743849_1EF7467B 
X-CRM114-Status: UNSURE (   9.79  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

dev_err_probe() already appends the error code.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes in v3: None
Changes in v2: None

 drivers/pmdomain/rockchip/pm-domains.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index e193f97..dd5e2987 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -721,7 +721,7 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 	ret = rockchip_pd_regulator_enable(pd);
 	if (ret)
 		return dev_err_probe(pd->pmu->dev, ret,
-				     "Failed to enable supply: %d\n", ret);
+				     "Failed to enable supply\n");
 
 	ret = rockchip_pd_power(pd, true);
 	if (ret)
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
