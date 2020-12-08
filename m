Return-Path: <SRS0=uTbi=FM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12A7CC4361B
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Dec 2020 15:56:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A37FC23AA9
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Dec 2020 15:56:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A37FC23AA9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yXNPHusIU5P3Bx6BVLOoEb1Z0PAsMchpXXaHJnBSA3Y=; b=3ZifU2lZegYW6ZN0bR0BsvY/Ox
	aBE0rt1b28D3jzWXajAttL0ph7NrMpLc0Cvdi0NbLPypyqfrK3doULdWrSuVNs0k+jDa9AmaWNjDU
	8jQyNCNS6fFVy1rPLVMu8AW6gO51uoS1zIUdy32hok9Gi1gAgzZj/swK2zZpx64oqNxkOzgvLVLoI
	PwDUT4LfMCv6G/4DR/0sAe45vb828LadEiufkhodbHTe3DycLczdhqZ0kCvruLiKEWVGTYX4SVZYi
	8rPcygxortJR3HIDUWWhkn+c5z+0J36C57R5gstwYmhg8QEHkLeLYeMz/IZs5CZhYMSqYbf7gZSVu
	/oNnt0zQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmfLK-00021C-Hy; Tue, 08 Dec 2020 15:55:58 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmfLF-0001yI-E3
 for linux-rockchip@lists.infradead.org; Tue, 08 Dec 2020 15:55:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 8564B1F44B0A
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: rkvdec: silence ktest bot build warning
Date: Tue,  8 Dec 2020 17:55:40 +0200
Message-Id: <20201208155540.340583-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201208_105553_625214_FBA0D788 
X-CRM114-Status: GOOD (  12.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 kernel test robot <lkp@intel.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Some configurations built by the ktest bot produce the following
warn, so mark the struct as __maybe_unused to avoid unnecessary
ML spam.

>> drivers/staging/media/rkvdec/rkvdec.c:967:34: warning: unused variable 'of_rkvdec_match' [-Wunused-const-variable]
   static const struct of_device_id of_rkvdec_match[] = {
				    ^
   1 warning generated.

vim +/of_rkvdec_match +967 drivers/staging/media/rkvdec/rkvdec.c

   966
 > 967	static const struct of_device_id of_rkvdec_match[] = {
   968		{ .compatible = "rockchip,rk3399-vdec" },
   969		{ /* sentinel */ }
   970	};
   971	MODULE_DEVICE_TABLE(of, of_rkvdec_match);
   972

Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index aa4f8c287618..3af0f02ec59b 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -992,7 +992,7 @@ static void rkvdec_watchdog_func(struct work_struct *work)
 	}
 }
 
-static const struct of_device_id of_rkvdec_match[] = {
+static const struct of_device_id __maybe_unused of_rkvdec_match[] = {
 	{ .compatible = "rockchip,rk3399-vdec" },
 	{ /* sentinel */ }
 };
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
