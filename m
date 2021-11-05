Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11B0FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:43:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DBFA1611EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:43:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DBFA1611EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wkyxhUGtZHE8izEF1TWm1Uome3XAmj6jxK5p3cyKgQo=; b=EnERmcctTJyMHQ
	uaL5ggLZJfXy2GVxkm4UiTJY4lW3w987vF+gn5C2ij958qlujdZizeldkJ53+JOdojW1n++wEBM9P
	zorYNQeza1HLw32Qeu99HA/E/UDlhUcujATrSegynMTx0oKa4tyrWG4f73YwofJIUa0acQ9CypuOo
	qJRw6wOrzf3DVLusoVO0rP9loW+FHWeBFt69GSmmHPydU/Il8q8LpBDM+mOQTJfcCKOJV3B5YPDUa
	PiPU4V8Xoqa0FGyXcupFU1IPsKTPM5cXdc0rkCPJ4J//XK6hWfscWb56t79IzjJTbv5T3aq6rVZ0/
	5MpCh5Zf+ErGg8mykZtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyZA-00BGfm-Ms; Fri, 05 Nov 2021 12:43:32 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYk-00BGUF-Hl; Fri, 05 Nov 2021 12:43:07 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="218789400"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="218789400"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="532577175"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga001.jf.intel.com with ESMTP; 05 Nov 2021 05:42:59 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 0C9D312B; Fri,  5 Nov 2021 14:43:00 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: [PATCH v1 01/19] lib/string_helpers: Introduce kasprintf_strarray()
Date: Fri,  5 Nov 2021 14:42:24 +0200
Message-Id: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054306_673047_C12E1444 
X-CRM114-Status: GOOD (  14.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

We have a few users already that basically want to have array of
sequential strings to be allocated and filled.

Provide a helper for them (basically adjusted version from gpio-mockup.c).

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 include/linux/string_helpers.h |  1 +
 lib/string_helpers.c           | 33 +++++++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/include/linux/string_helpers.h b/include/linux/string_helpers.h
index 4ba39e1403b2..f67a94013c87 100644
--- a/include/linux/string_helpers.h
+++ b/include/linux/string_helpers.h
@@ -100,6 +100,7 @@ char *kstrdup_quotable(const char *src, gfp_t gfp);
 char *kstrdup_quotable_cmdline(struct task_struct *task, gfp_t gfp);
 char *kstrdup_quotable_file(struct file *file, gfp_t gfp);
 
+char **kasprintf_strarray(gfp_t gfp, const char *prefix, size_t n);
 void kfree_strarray(char **array, size_t n);
 
 #endif
diff --git a/lib/string_helpers.c b/lib/string_helpers.c
index d5d008f5b1d9..9758997c465e 100644
--- a/lib/string_helpers.c
+++ b/lib/string_helpers.c
@@ -674,6 +674,39 @@ char *kstrdup_quotable_file(struct file *file, gfp_t gfp)
 }
 EXPORT_SYMBOL_GPL(kstrdup_quotable_file);
 
+/**
+ * kasprintf_strarray - allocate and fill array of sequential strings
+ * @gfp: flags for the slab allocator
+ * @prefix: prefix to be used
+ * @n: amount of lines to be allocated and filled
+ *
+ * Allocates and fills @n strings using pattern "%s-%zu", where prefix
+ * is provided by caller. The caller is responsible to free them with
+ * kfree_strarray() after use.
+ *
+ * Returns array of strings or NULL when memory can't be allocated.
+ */
+char **kasprintf_strarray(gfp_t gfp, const char *prefix, size_t n)
+{
+	char **names;
+	size_t i;
+
+	names = kcalloc(n + 1, sizeof(char *), gfp);
+	if (!names)
+		return NULL;
+
+	for (i = 0; i < n; i++) {
+		names[i] = kasprintf(gfp, "%s-%zu", prefix, i);
+		if (!names[i]) {
+			kfree_strarray(names, i);
+			return NULL;
+		}
+	}
+
+	return names;
+}
+EXPORT_SYMBOL_GPL(kasprintf_strarray);
+
 /**
  * kfree_strarray - free a number of dynamically allocated strings contained
  *                  in an array and the array itself
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
