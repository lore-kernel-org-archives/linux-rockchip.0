Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F771CD4F2F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 05:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5FG3X9Ja2HXhhpfY2ZeNb8teudlypoKVGCplClEZ2Mg=; b=eyWmDR8vbjSeFX
	3KoL2a1laFBXFin9h3JHHRQSDCmDk7ummZXgvfUUtjZA71FeRVFmjHh9UAzrAS7AqPoT6DynjyJdz
	rrjKThY6L+gioz4UyLU5iMvlhG+wn5kdOLVMhqwCJrsk3FWDl6utN0BL7v4TLAv3xdNbVpMgJiBlX
	rIpyTruGluLHcObkfrK8IaC8/Ved3KGdWipa5XsgIXwrPjiQBxlsJa92D0w/fABRcC0Wl24lO7RSV
	J2RGJsX+jR0/wtvWVR+hn7cwNFO7mQ/Q31vsMAXxZQEUPc8xncRH1X/q1iF6iIXr+/pgHxrpedVNR
	BlutrAzMs+5aKFqFb73w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJPj1-00000009udI-2Y4m;
	Thu, 13 Nov 2025 05:18:28 +0000
Received: from mail-m49194.qiye.163.com ([45.254.49.194])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJPiy-00000009ucu-0bNq
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 05:18:26 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 296cb3bd9;
	Thu, 13 Nov 2025 13:18:19 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] scsi: ufs: rockchip: Fix compile error without CONFIG_GPIOLIB
Date: Thu, 13 Nov 2025 13:18:11 +0800
Message-Id: <1763011091-243727-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a7ba67a5e09cckunmbf7a407227c465
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkoaSFYYSRoZT05KT04eS0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cGynuQmeo5r/pOMUg0L1MqV/sw2qlW5PE0tGU9SxRwTM9WSrlzA5dmoxKAJAoALSL44uZXFd/d+75xrpPaqIx1QEa8NLkiG6sRgs1IJ8t5bKuvLMeMCJiT6JRX6TlPvvnVT88CpgyM6bAz0jehhAUxDCWxYVTM9JFjTE4jKyC9s=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=EuHff+UzGclYinLMWG1EV1RQo36xlHX9LHPO+bIQJ+o=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_211824_831497_AFCE793D 
X-CRM114-Status: UNSURE (   6.97  )
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

drivers/ufs/host/ufs-rockchip.c:168:19: error: implicit declaration of function
'devm_gpiod_get'; did you mean 'em_pd_get'? [-Werror=implicit-function-declaration]

drivers/ufs/host/ufs-rockchip.c:214:2: error: implicit declaration of function
'gpiod_set_value_cansleep'; did you mean 'gpio_set_value_cansleep'?
[-Werror=implicit-function-declaration]

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202511130238.LlA0MKxW-lkp@intel.com/
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/ufs/host/ufs-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ufs/host/ufs-rockchip.c b/drivers/ufs/host/ufs-rockchip.c
index 8cecb28..7fff345 100644
--- a/drivers/ufs/host/ufs-rockchip.c
+++ b/drivers/ufs/host/ufs-rockchip.c
@@ -7,6 +7,7 @@
 
 #include <linux/clk.h>
 #include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
