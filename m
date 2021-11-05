Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97090C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:43:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6007761212
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:43:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6007761212
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GS4eLHzCdUolPi8hAw6EBtLGmSGc+GkxbtcJ4IqFf0=; b=OBjG/WOBjR35OD
	rcRpqSPkaCD869r9Kywl+SrSThmkaREaVR/bQc6R6PNahWq50wIOEuYHVEPvByipAhkmwtdOrnYCz
	Wnp8PtUvHMjnmH6PhKCEapZcSaV2wfl2S2soz0NI2N53q6+wkhpJIMEQ+XPJuu52z46+fCUVpdec+
	PW4oDkYoBUfdlwB/8vxXQzYn1gBh3glMVJhDwuSqL0E+F+QO66QsGazRPHKvKbsE0k52wCgwFTkEG
	TGKbFbTbkbwHnOyg2QSMo0x4Abo8gscOZ9yFnIqDar4YrnRaTHF/CFmV3QwLFz/suRMbtkMmNjVkC
	seum+T+j0x290vqt8DDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyZM-00BGkr-KT; Fri, 05 Nov 2021 12:43:44 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYl-00BGUF-W1; Fri, 05 Nov 2021 12:43:09 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="218789408"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="218789408"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="579644106"
Received: from black.fi.intel.com ([10.237.72.28])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Nov 2021 05:42:59 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 1BE5C11E; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
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
Subject: [PATCH v1 02/19] lib/string_helpers: Introduce managed variant of
 kasprintf_strarray()
Date: Fri,  5 Nov 2021 14:42:25 +0200
Message-Id: <20211105124242.27288-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054308_115425_D4D26880 
X-CRM114-Status: GOOD (  14.83  )
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

Some of the users want to have easy way to allocate array of strings
that will be automatically cleaned when associated device is gone.

Introduce managed variant of kasprintf_strarray() for such use cases.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 include/linux/string_helpers.h |  3 +++
 lib/string_helpers.c           | 31 +++++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/include/linux/string_helpers.h b/include/linux/string_helpers.h
index f67a94013c87..7a22921c9db7 100644
--- a/include/linux/string_helpers.h
+++ b/include/linux/string_helpers.h
@@ -7,6 +7,7 @@
 #include <linux/string.h>
 #include <linux/types.h>
 
+struct device;
 struct file;
 struct task_struct;
 
@@ -103,4 +104,6 @@ char *kstrdup_quotable_file(struct file *file, gfp_t gfp);
 char **kasprintf_strarray(gfp_t gfp, const char *prefix, size_t n);
 void kfree_strarray(char **array, size_t n);
 
+char **devm_kasprintf_strarray(struct device *dev, const char *prefix, size_t n);
+
 #endif
diff --git a/lib/string_helpers.c b/lib/string_helpers.c
index 9758997c465e..90f9f1b7afec 100644
--- a/lib/string_helpers.c
+++ b/lib/string_helpers.c
@@ -10,6 +10,7 @@
 #include <linux/math64.h>
 #include <linux/export.h>
 #include <linux/ctype.h>
+#include <linux/device.h>
 #include <linux/errno.h>
 #include <linux/fs.h>
 #include <linux/limits.h>
@@ -730,6 +731,36 @@ void kfree_strarray(char **array, size_t n)
 }
 EXPORT_SYMBOL_GPL(kfree_strarray);
 
+struct strarray {
+	char **array;
+	size_t n;
+};
+
+static void devm_kfree_strarray(struct device *dev, void *res)
+{
+	struct strarray *array = res;
+
+	kfree_strarray(array->array, array->n);
+}
+
+char **devm_kasprintf_strarray(struct device *dev, const char *prefix, size_t n)
+{
+	struct strarray *ptr;
+
+	ptr = devres_alloc(devm_kfree_strarray, sizeof(*ptr), GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	ptr->array = kasprintf_strarray(GFP_KERNEL, prefix, n);
+	if (!ptr->array) {
+		devres_free(ptr);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	return ptr->array;
+}
+EXPORT_SYMBOL_GPL(devm_kasprintf_strarray);
+
 /**
  * strscpy_pad() - Copy a C-string into a sized buffer
  * @dest: Where to copy the string to
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
