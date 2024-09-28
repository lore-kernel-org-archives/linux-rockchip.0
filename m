Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C247CF649A
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Sep 2024 04:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fs+Kii/r2r2vvoUhW8X/eumFRVPZJQDR6vtHTtlff7I=; b=WfR/MSWHKRLqtW
	6uGqyfdouiySDPz7wqRm2mqMOLI22fq9AHe9bRULhU4A06DiAaVYFV46NH4DMgT8V0K35ox9AMWTk
	KlTKNhJZz7Acb6NqDPpfuKfrpVmM/n41O8suoFYtsXsiLphHjTZB5mQjjtNs7F/DIMbWNVlgpg2T2
	2rymUJJlQ/POAEDqotWr7ystRRrERWH7W0ATlU4z/e3ac16gXw+VLRX6KXzGoilKxLwcvnjd48q8B
	xJiGXHA+C4b8edeRWFEhPqZRlOs//YooJuiju8C9z1Mt9UOkYJykq0K62QCnLGJELy8gyI3Be1Ho+
	pYbd5CYDcydgcpSJpbFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suOrh-0000000CZzx-0cfT;
	Sat, 28 Sep 2024 04:15:29 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suOpK-0000000CZbc-0ISB;
	Sat, 28 Sep 2024 04:13:04 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727496780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rKsTa/7rhm4a+RlN32Byj4tfrxf7+of7JzY7hJesRZ4=;
	b=y2WoFxeFfI2AKDIiPU6N0JB5zuc5QehUTZ35W2W1yLQNoFk7BdxJHHjy/ylXFRmZVttB4X
	ZMCfcuC9tqWEg9nbfEoY6DHtRp5Ogbe3l8hteoNlQEhGmvXIpuwSvO5S+ybexoC0AwkFf6
	I6aMHf4TX8kNHavMvxzIGLlPgnXi5z1twYr6xRDGnNBDwv27cRbUgJK9jxxoZMuRxOR1fu
	l7tmbTxqoZ491jQRH+lEdmqG/4rKPIEsnFcT7+58fUssip0THFtN38ptRHWgBhdWW9NXpl
	8F++KnEbrpMk0/uO5jGrIgYvNAhfDUQYV6myNXHG/YstnNPWNgiIYdmUMvPrVg==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] driver core: Add device probe log helper dev_warn_probe()
Date: Sat, 28 Sep 2024 06:12:48 +0200
Message-Id: <2fd9a60e0efe906dc7a203cd652c8d0b7f932470.1727496560.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727496560.git.dsimic@manjaro.org>
References: <cover.1727496560.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_211302_616715_982D39C9 
X-CRM114-Status: GOOD (  20.04  )
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
 drivers/base/core.c        | 110 ++++++++++++++++++++++++++++---------
 include/linux/dev_printk.h |   1 +
 2 files changed, 84 insertions(+), 27 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 8c0733d3aad8..a4592b7ffa5d 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -4982,71 +4982,127 @@ define_dev_printk_level(_dev_info, KERN_INFO);
 
 #endif
 
+static int dev_probe_failed(const struct device *dev, int err, bool fatal,
+			    const char *fmt, va_list args)
+{
+	struct va_format vaf;
+
+	vaf.fmt = fmt;
+	vaf.va = &args;
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
+	return err;
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
 	va_list args;
 
 	va_start(args, fmt);
-	vaf.fmt = fmt;
-	vaf.va = &args;
 
-	switch (err) {
-	case -EPROBE_DEFER:
-		device_set_deferred_probe_reason(dev, &vaf);
-		dev_dbg(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
-		break;
+	/* Use dev_err() for logging when err doesn't equal -EPROBE_DEFER */
+	dev_probe_failed(dev, err, true, fmt, args);
 
-	case -ENOMEM:
-		/*
-		 * We don't print anything on -ENOMEM, there is already enough
-		 * output.
-		 */
-		break;
+	va_end(args);
+}
+EXPORT_SYMBOL_GPL(dev_err_probe);
 
-	default:
-		dev_err(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
-		break;
-	}
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
+	va_list args;
 
-	va_end(args);
+	va_start(args, fmt);
 
-	return err;
+	/* Use dev_warn() for logging when err doesn't equal -EPROBE_DEFER */
+	dev_probe_failed(dev, err, false, fmt, args);
+
+	va_end(args);
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
