Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9664C982DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ragDF4/MllgO6gECtHrfmHeS5BmXc2zspEqdRXQUgf8=; b=MyD/gsCu7H4YCr
	ljh8Kda7a0lSVaTIu3KakCEWzhQRGcLcILkzpxgskiR+znAepOP7LyJWh+eNKel9B0vwUBA8L01aZ
	kHtsScX2HQSN+RqpDxO6657a5rBQQyIEN+kHAqDsquqmMZzwUD4RDTj7g/uNB7vydn8gjHe5rBS1Q
	YW4X9H/S2kHFK+YxZhmUFEaHUZ/SnsshXzzfwn7b+uy1iG90Fcwya0hLyjwyKWY9yekFeW2rEt9r7
	JAZDtV7r02ks2Ia2Y3bpsMQlX+omPEMhN8cUswUh66VU68zVOJm/ld8FPUv5mFSHx0ZyR4dW6tNBo
	GuCMzrtqQkNTsxWMqlhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xu3-000000017l4-2Oo7;
	Mon, 21 Sep 2026 06:53:27 +0000
Received: from mail-m205210164254.xmail.ntesmail.com ([205.210.164.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xu0-000000017j7-3i6i
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:53:26 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e889bff6;
	Mon, 21 Sep 2026 14:53:19 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 1/4] pmdomain: rockchip: propagate subdomain add errors
Date: Mon, 21 Sep 2026 14:52:50 +0800
Message-Id: <1789973573-151146-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
References: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0c2bd967a03a4kunmfcbddeea30c2e6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSU8ZVhpPT0xKGk9ISRgYSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LBPGYBdmuaAr24n8dF1OXj6RrHKjT41icC3H/Ev+Xglpmcc4dfl85wJzN7futFWDmINYP05xPOTZ4lAhKyfZuzozDbxtgRd2OBPB2ujYTE8YGOMtBmbBDOMpULm1u3VlDKbe6e1AJLkK3mlWqdTCX5sjtprC1NOAV+xP0vMxM1c=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3u+OLviOh+30Qgil93VMxj2Y63V7hMkpx8B2ztNwZHQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_235325_222103_0F2855D2 
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

rockchip_pm_add_subdomain() ignored the return value of its recursive
call, so a failure deeper in the hierarchy was silently dropped and
probe still succeeded with an incomplete domain tree.

Fixes: 6be05b5ec161 ("soc: rockchip: power-domain: add support for sub-power domains")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes in v3: None
Changes in v2: None

 drivers/pmdomain/rockchip/pm-domains.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index ba66ae7..068dd4b3 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -1018,7 +1018,9 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 				parent_domain->name, child_domain->name);
 		}
 
-		rockchip_pm_add_subdomain(pmu, np);
+		error = rockchip_pm_add_subdomain(pmu, np);
+		if (error)
+			return error;
 	}
 
 	return 0;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
