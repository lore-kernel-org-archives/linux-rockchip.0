Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEC14C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBrQdwRnqYo8BTQvErRnd8PWueWcjfrYXEDfzcfYiGs=; b=QOH4NIN3WQyGd+
	QVw2G6iePZ7zrf5YSfFp+v6bUBAy6mAND4IB43G9feDYPjxTwI/mqRvHYCDTZVpQ1hSu9eTh7yO0s
	E8BKvex4o2/10CuvxwnsFLJOlQWP/rNLDnkxw3Iwtj/55sgQykI5kAUIAzQML4o2cZJSVQIvf2fKu
	69pmZhyTsrw1BcCiFnx+uU7qkfXbDdfurZO7PtJlynADavZj1YOKbD2HPhNgl74hrASDYJnpD6ob6
	hb34UMcjS+Rjit81yEaqMrDeP44Azmciy9hVgOMQgulIqvXxdzghaEhhOX45hu1JgnXku8ICyQFLd
	AJm/CDrjC0RrSo4qHF8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Jqh-0000000AtRU-2ks6;
	Tue, 07 May 2024 12:23:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Jqc-0000000AtMn-3QJm;
	Tue, 07 May 2024 12:23:08 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s4Jqa-0006h6-8J; Tue, 07 May 2024 14:23:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: srinivas.kandagatla@linaro.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 3/3] nvmem: rockchip-efuse: set type to OTP
Date: Tue,  7 May 2024 14:22:56 +0200
Message-Id: <20240507122256.3765362-4-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240507122256.3765362-1-heiko@sntech.de>
References: <20240507122256.3765362-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_052306_951124_BA6AD316 
X-CRM114-Status: GOOD (  12.01  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

This device currently reports an "Unknown" type in sysfs.
Since it is an eFuse hardware device, set its type to OTP.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/nvmem/rockchip-efuse.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
index 2b40978ddb18c..013e67136f3b9 100644
--- a/drivers/nvmem/rockchip-efuse.c
+++ b/drivers/nvmem/rockchip-efuse.c
@@ -206,6 +206,7 @@ static int rockchip_rk3399_efuse_read(void *context, unsigned int offset,
 static struct nvmem_config econfig = {
 	.name = "rockchip-efuse",
 	.add_legacy_fixed_of_cells = true,
+	.type = NVMEM_TYPE_OTP,
 	.stride = 1,
 	.word_size = 1,
 	.read_only = true,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
