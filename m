Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E51C0E9E301
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 13:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nakq62yM2Fjfm5KRODmCGLBo1DLduMGjBQDzeJq40eg=; b=GvR1PojU7kuoVU
	1XPybBX2ZOBzTN/Yx1ZF1a7glbwO8PaBTiglf+nwWl2j1qVruiupcmyeFGl6PYutwCowKjjsyQ2Pk
	+MXGQ3HhoMH1i2Sx2uMKGSeeoB25bglMnHl+jfgKp4xJvC0N4J1C0csnnG3Y3OfoFGqxOuhUMd/hI
	5hjmmyyRJixfiqD6vJGO/KrpN+CXR1E8arQYijq2mYx5SN4GJ4mnon2R9fd5YrfWM5DoYigH6M/fR
	C4DTP1BhIamz22L+iRjikxJig5PYZsqiO8Z06h1Ucfmck4A1J0C4+g5SIlsKdyIceyDiNiUzVdPRX
	rRxXp0CvbRcgtH40phLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq9rx-00000000fGV-3BjN;
	Wed, 11 Feb 2026 13:03:01 +0000
Received: from mail-m49243.qiye.163.com ([45.254.49.243])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq9ru-00000000fFl-1BtU
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Feb 2026 13:03:00 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33df9a402;
	Wed, 11 Feb 2026 21:02:46 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] soc: rockchip: grf: Add missing of_node_put() when returning
Date: Wed, 11 Feb 2026 21:02:37 +0800
Message-Id: <1770814957-17762-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9c4ccc0a6c09cckunmb9a5c3a410b89b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh8dQ1ZDQ0lOTBlLQ08eQhlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	pVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=htvfCnzsY3ZdFlOZ+4hIGrDNvLJ5MluEGEWtjBLY9aA7J4h/x8hMTyhwc6Lr3xiOG2AVrX+qdy/vQ8b5ksbmmFOp6Vh1VJR3HxLChC6+OJBOXLK+BbrFfkJOTlfv7U3fO0Xwq2vnUTWWvRHCFnxY+GI9bpwuXsS01Q+99PlyDEE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=zbSq1A/0x+K1mL4t4CXGZbSXK+QJXQfRUcPiMSVkxXQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_050258_822042_66CAB232 
X-CRM114-Status: UNSURE (   7.92  )
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

Fix the smatch checking:
drivers/soc/rockchip/grf.c:249 rockchip_grf_init()
warn: inconsistent refcounting 'np->kobj.kref.refcount.refs.counter':

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Fixes: 75fb63ae0312 ("soc: rockchip: grf: Support multiple grf to be
handled")
Closes: https://lore.kernel.org/all/aYXvgTcUJWQL2can@stanley.mountain/
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

 drivers/soc/rockchip/grf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 04937c4..b459607 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -231,6 +231,7 @@ static int __init rockchip_grf_init(void)
 		grf = syscon_node_to_regmap(np);
 		if (IS_ERR(grf)) {
 			pr_err("%s: could not get grf syscon\n", __func__);
+			of_node_put(np);
 			return PTR_ERR(grf);
 		}
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
