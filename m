Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84525CF6495
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 09:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1mLknYi0vjeYXTUxoyJnIJ7BNWkqtJPguk9RFrWqug=; b=jlYlMspvmOxlaC
	4irr8d4qqyOeF8o69vEBzrpTI7HX3D3QLfWZnTWjw9kM1XCnL3Pl8atReQ5gf2NSwksYrv7WNJpBf
	PxMm/8nbsDSJlxPtEIuFPSDEN6b41EOYLeGDwI8vYIf3bqzB3YqxGK958gqYlp8FWP2uz22HYBCGz
	YSppsQqQOo4nbmPnXVgHO+PU2qKV4LiMTlBPHOln4r16I2aXm2RMBc3oZ5jRgsRMWBzbUT7/Djawy
	mGYDyvCtL2ZNboG0sDVJFOlkoapQNRiRQ19dZ6Y/NYc/xxslcd1l9KaG/Pvim3iC9SgRtxU82bnWb
	p35yweKqN+xANDmmg2uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suqYd-0000000EYjh-1Quv;
	Sun, 29 Sep 2024 09:49:39 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suq8I-0000000EUpI-1oVe;
	Sun, 29 Sep 2024 09:22:30 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727601744;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VVqzY/8n0kj3yAF96lmKr1C9k/wOn5fp+Ckfts8zEko=;
	b=SQzVQMAM2CP0fe/Y0AL8iWa5e9oNhoOCl2GK2YZhWRAXhWYP82MOtxJPUUbtP4PHCjXUc3
	vvzN7PQB9etip21RLoZnNsY9dLHJla7REwNKlx8RAb+DMhfgP5905MXDRUpeojLL0ZeNBe
	RLfiFY95WvF7mAfgl/ZkGpdVubzQd9R04MTxqYiSR9ikDwD6+k94V+qlPQ+7PcmD8s3mWj
	2u/N5qukwQ5jGgWUF79ktBOBztAcCHoO2sFyHPzMZI+BE7PwJz/MeLBAmnYp5amQuIBBzN
	qW/c7F3unxboekjK4eZOKgkhZx9xXwbddchiBNPESaYO88oiad14V2ZF9hGCAQ==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/5] driver core: Add device probe log helper dev_warn_probe()
Date: Sun, 29 Sep 2024 11:21:16 +0200
Message-Id: <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727601608.git.dsimic@manjaro.org>
References: <cover.1727601608.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_022226_870206_1B54BC0E 
X-CRM114-Status: GOOD (  22.15  )
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

Some drivers can still provide their functionality to a certain extent even
some of their resource acquisitions eventually fail.  In such cases, emitting
errors isn't the desired action, but warnings should be emitted instead.

To solve this, introduce dev_warn_probe() as a new device probe log helper,
which behaves identically as the already existing dev_err_probe(), while it
produces warnings instead of errors.  The intended use is with the resources
that are actually optional for a particular driver.

While there, copyedit the kerneldoc for dev_err_probe() a bit, to simplify
its wording a bit, and reuse it as the kerneldoc for dev_warn_probe(), with
the necessary wording adjustments, of course.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/base/core.c        | 129 +++++++++++++++++++++++++++++--------
 include/linux/dev_printk.h |   1 +
 2 files changed, 102 insertions(+), 28 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 8c0733d3aad8..f2e41db0c09f 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -4982,71 +4982,144 @@ define_dev_printk_level(_dev_info, KERN_INFO);
 
 #endif
 
+static void __dev_probe_failed(const struct device *dev, int err, bool fatal,
+			       const char *fmt, va_list vargsp)
+{
+	struct va_format vaf;
+	va_list vargs;
+
+	/*
+	 * On x86_64 and possibly on other architectures, va_list is actually a
+	 * size-1 array containing a structure.  As a result, function parameter
+	 * vargps decays from T[1] to T*, and &vargsp has type T** rather than
+	 * T(*)[1], which is expected by its assignment to vaf.va below.
+	 *
+	 * One standard way to solve this mess is by creating a copy in a local
+	 * variable of type va_list and then using a pointer to that local copy
+	 * instead, which is the approach employed here.
+	 */
+	va_copy(vargs, vargsp);
+
+	vaf.fmt = fmt;
+	vaf.va = &vargs;
+
+	switch (err) {
+	case -EPROBE_DEFER:
+		device_set_deferred_probe_reason(dev, &vaf);
+		dev_dbg(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
+		break;
+
+	case -ENOMEM:
+		/* Don't print anything on -ENOMEM, there's already enough output */
+		break;
+
+	default:
+		/* Log fatal final failures as errors, otherwise produce warnings */
+		if (fatal)
+			dev_err(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
+		else
+			dev_warn(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
+		break;
+	}
+
+	va_end(vargs);
+}
+
 /**
  * dev_err_probe - probe error check and log helper
  * @dev: the pointer to the struct device
  * @err: error value to test
  * @fmt: printf-style format string
  * @...: arguments as specified in the format string
  *
  * This helper implements common pattern present in probe functions for error
  * checking: print debug or error message depending if the error value is
  * -EPROBE_DEFER and propagate error upwards.
  * In case of -EPROBE_DEFER it sets also defer probe reason, which can be
  * checked later by reading devices_deferred debugfs attribute.
- * It replaces code sequence::
+ * It replaces the following code sequence::
  *
  * 	if (err != -EPROBE_DEFER)
  * 		dev_err(dev, ...);
  * 	else
  * 		dev_dbg(dev, ...);
  * 	return err;
  *
  * with::
  *
  * 	return dev_err_probe(dev, err, ...);
  *
- * Using this helper in your probe function is totally fine even if @err is
- * known to never be -EPROBE_DEFER.
+ * Using this helper in your probe function is totally fine even if @err
+ * is known to never be -EPROBE_DEFER.
  * The benefit compared to a normal dev_err() is the standardized format
- * of the error code, it being emitted symbolically (i.e. you get "EAGAIN"
- * instead of "-35") and the fact that the error code is returned which allows
- * more compact error paths.
+ * of the error code, which is emitted symbolically (i.e. you get "EAGAIN"
+ * instead of "-35"), and having the error code returned allows more
+ * compact error paths.
  *
  * Returns @err.
  */
 int dev_err_probe(const struct device *dev, int err, const char *fmt, ...)
 {
-	struct va_format vaf;
-	va_list args;
+	va_list vargs;
 
-	va_start(args, fmt);
-	vaf.fmt = fmt;
-	vaf.va = &args;
+	va_start(vargs, fmt);
 
-	switch (err) {
-	case -EPROBE_DEFER:
-		device_set_deferred_probe_reason(dev, &vaf);
-		dev_dbg(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
-		break;
+	/* Use dev_err() for logging when err doesn't equal -EPROBE_DEFER */
+	__dev_probe_failed(dev, err, true, fmt, vargs);
 
-	case -ENOMEM:
-		/*
-		 * We don't print anything on -ENOMEM, there is already enough
-		 * output.
-		 */
-		break;
+	va_end(vargs);
 
-	default:
-		dev_err(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
-		break;
-	}
+	return err;
+}
+EXPORT_SYMBOL_GPL(dev_err_probe);
 
-	va_end(args);
+/**
+ * dev_warn_probe - probe error check and log helper
+ * @dev: the pointer to the struct device
+ * @err: error value to test
+ * @fmt: printf-style format string
+ * @...: arguments as specified in the format string
+ *
+ * This helper implements common pattern present in probe functions for error
+ * checking: print debug or warning message depending if the error value is
+ * -EPROBE_DEFER and propagate error upwards.
+ * In case of -EPROBE_DEFER it sets also defer probe reason, which can be
+ * checked later by reading devices_deferred debugfs attribute.
+ * It replaces the following code sequence::
+ *
+ * 	if (err != -EPROBE_DEFER)
+ * 		dev_warn(dev, ...);
+ * 	else
+ * 		dev_dbg(dev, ...);
+ * 	return err;
+ *
+ * with::
+ *
+ * 	return dev_warn_probe(dev, err, ...);
+ *
+ * Using this helper in your probe function is totally fine even if @err
+ * is known to never be -EPROBE_DEFER.
+ * The benefit compared to a normal dev_warn() is the standardized format
+ * of the error code, which is emitted symbolically (i.e. you get "EAGAIN"
+ * instead of "-35"), and having the error code returned allows more
+ * compact error paths.
+ *
+ * Returns @err.
+ */
+int dev_warn_probe(const struct device *dev, int err, const char *fmt, ...)
+{
+	va_list vargs;
+
+	va_start(vargs, fmt);
+
+	/* Use dev_warn() for logging when err doesn't equal -EPROBE_DEFER */
+	__dev_probe_failed(dev, err, false, fmt, vargs);
+
+	va_end(vargs);
 
 	return err;
 }
-EXPORT_SYMBOL_GPL(dev_err_probe);
+EXPORT_SYMBOL_GPL(dev_warn_probe);
 
 static inline bool fwnode_is_primary(struct fwnode_handle *fwnode)
 {
diff --git a/include/linux/dev_printk.h b/include/linux/dev_printk.h
index ca32b5bb28eb..eb2094e43050 100644
--- a/include/linux/dev_printk.h
+++ b/include/linux/dev_printk.h
@@ -276,6 +276,7 @@ do {									\
 			dev_driver_string(dev), dev_name(dev), ## arg)
 
 __printf(3, 4) int dev_err_probe(const struct device *dev, int err, const char *fmt, ...);
+__printf(3, 4) int dev_warn_probe(const struct device *dev, int err, const char *fmt, ...);
 
 /* Simple helper for dev_err_probe() when ERR_PTR() is to be returned. */
 #define dev_err_ptr_probe(dev, ___err, fmt, ...) \

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
