Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6994C982D8
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 00:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqDQjgCnn8VxsSSvrEMlpaCIO2of3rLtHeTsborG1u4=; b=gcGndl7Vp02OUq
	qObjsuAO0v1T2hg+LuAGKDBnA0PP/fyvDB1VZigwV5DDEtzyUFiVWWRneuun8diBIVo6xMTMVsM2j
	OLJ+WSzx1mt5Tu0t/xF6q+NVhfnHTO+zvr1Ecz5iTX/cVw3/uLiR1a2vjguK/EV46hyNs69XmkSQr
	7BWK79TMj8wDeAXdzx1DmBflr2thrldWfUoh/YNxE6epnfm24T0RrT3T7OKbq/UY6eNb2qG9tgYYU
	thguLD1DxCN1edd3XbjTslIdrX52QFiz5JWnneixbPHGIaLDDrgTtS3IcMKQbvSPvMSie+cuWNMVC
	zk+mCuhgIJ5e4mJn81Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7j3I-0000000Fm9z-2NAm;
	Sat, 19 Sep 2026 00:35:36 +0000
Received: from mail-m16023653252.xmail.ntesmail.com ([160.236.53.252])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7j3A-0000000Fm7O-48Av
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 00:35:31 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e57cbc16;
	Sat, 19 Sep 2026 08:35:24 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/4] pmdomain: rockchip: propagate subdomain add errors
Date: Sat, 19 Sep 2026 08:35:08 +0800
Message-Id: <1789778111-173149-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1789778111-173149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1789778111-173149-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0b716df2f03a4kunm44a9997f1a8efc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGk1JHlYYSUhITx0fT0
	8ZT0tWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OKko05HTPzW7zYzpvMdt5TnKlB+bXqBgGk99BYIlZ7o04ClzejjZoTxVDTwnFUiEUFGyNIt0ZDj2IMhk66VLmvmvXvWV8daV6h5Zs1+5URfF2d4OZts43Ye9/9jtaet1xQxpmI+Yf34wO2JYQ9vOURmpzpEE5T3QYuu3E51wubI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=xs9Xyt9DcDUp/WsLemhxxmoMv+x9NzL0ngcQsIgJ4Aw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_173529_278655_CE176F44 
X-CRM114-Status: GOOD (  10.96  )
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
