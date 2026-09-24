Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08FC1C98311
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 08:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfQL3xah7h0BvzRYYV698E+JP95gr0oOxKKxPntDU1k=; b=wm6cnEeLI3Tikm
	i7muUyaniM9LwZUP+mLXwLnK7SKiEbBK8DfmPwHRWUshO3fGx9IqzpIOoCWktB9Ga7BRYtQ5pBnGd
	fRKP41wVNtx0lkgxBh6gHRu9b5cmfFz+qDTPCoh/h5bzS/u+oGwbywTYwsIvLD3HJ1igD7x74KHf6
	7Th6ygFgz0NeorfXvoBuQcaSZZr1z9ItfX1xcEjt3r7xIuZ5xoJs2c6hokP32VQpiBocaQzt/Kn3O
	fJgYudYprt6QW1QbaGpL2E55wD7rmlqAJWqlSC7BYVnmyaYz3kuYzfnCvLFaP7ABkAOflslzJ1aSs
	lLWjCkFzc95wOWvzdjyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fAW-0000000AUkb-1jTB;
	Thu, 24 Sep 2026 08:51:04 +0000
Received: from mail-m160236529.xmail.ntesmail.com ([160.236.52.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fAS-0000000AUiV-0RhQ
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 08:51:02 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4f01e1b9b;
	Thu, 24 Sep 2026 16:50:53 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/2] mmc: dw_mmc-rockchip: use a tighter per-command tuning timeout
Date: Thu, 24 Sep 2026 16:50:23 +0800
Message-Id: <1790239823-139583-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1790239823-139583-1-git-send-email-shawn.lin@rock-chips.com>
References: <1790239823-139583-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0d29c4a5c03a4kunm11feacd55405ff
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUpDSFYeHUhLSUxJTx
	lMGk5WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=F0EVsE/DdWQuIxPSmpyQ+PaH1eSB7OZpjUJjgqJKl0MICkJNHRg5X1KSHmYYbjSlp7kHCaaLrrz+N/IvbBko6vWbbx/LUwLqP1v2m6eviLLqdILtdGiYmfn9LZQxF2SbVeZEXlww74eJOgeZh9ekv02Kj5x3Sp4xGKOqwJjwlrk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=+nj5+tRCIA4j3XVHMniMQPIvm7tZysjqPVhHEgXS1Og=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_015100_424153_A9AAF1B0 
X-CRM114-Status: GOOD (  13.53  )
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

dw_mmc-rockchip's execute_tuning() scans the tuning window phase by phase
through mmc_send_tuning(), which applied the whole-sequence 150 ms
bound as the data timeout of every single CMD19/CMD21.  With HS200
eMMC the TMOUT register saturates at ~112 ms for the requested
150 ms, so every phase that misses the window stalls that long, and
multi-second boot slowdowns have been reported[1].

Use 5 ms per tuning command via mmc_send_tuning_timeout() instead:
~1.3x the spec-implied per-execution device budget (150 ms / 40 =
3.75 ms, excluding host overhead), 30x below the 150 ms ceiling, and
the reporter verified that tuning keeps passing with it.  A wrong
sampling phase normally fails fast with a CRC error anyway, so the
timeout only catches devices which never return the tuning block at
all.  This also bounds the cost of runtime re-tuning.

[1] Link: https://bugzilla.kernel.org/show_bug.cgi?id=221781
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- Let drivers provide the timeout via a new mmc_send_tuning_timeout()
  instead of shortening the default for everybody, as suggested by
  Adrian, so it is less likely to cause a regression.
- Split into two patches; mmc_send_tuning() keeps its current
  behaviour (150 ms) and dw_mmc-rockchip opts in with 5 ms.

 drivers/mmc/host/dw_mmc-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 75c82ff..a07707a 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -327,7 +327,7 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci *host, u32 opcode)
 						i,
 						priv->num_phases));
 
-		v = !mmc_send_tuning(mmc, opcode, NULL);
+		v = !mmc_send_tuning_timeout(mmc, opcode, NULL, 5);
 
 		if (i == 0)
 			first_v = v;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
