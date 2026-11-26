Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011CC606A321
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 19:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HWCJG6XY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DCWs+HrY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EYJtabz33GsNFVLx0xRYSXue0pfjpPj/1AztNlqZTwM=; b=HWCJG6XYIS5xGsf/39IqZu4+wl
	AQZlbxaeSaYjpJ7lopK6CJxzVaJR/QWZ+M27pbrVGOaLrjZd+qY2sIv60EGMnLJr+yzIGo5EPW/eQ
	NteGa8btLVtnPX8AhlFYu+QwbTBqFE1I2U1I0caMOfSuCKQ1yPaLOJu7zA7jLhDDLp7b2h2uU3vI+
	Joe6IW3q/7mHOFdq4Sc6Sw0gSpM8usR7lPQNN88VpiPQbj0dgo85iTuIdHX2TChpl44Ylu0vjS95D
	oJFH0+2qMNE/Yhu+6IuiLeei9qhh3WxyQy+tghpuv8jta0DD/xA924/osOaR3AiSZ09SdmXx+WqZd
	T1x7xvrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWfVa-0000000EOHZ-0cCi;
	Thu, 26 Nov 2026 19:51:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWfVP-0000000EOA8-1tiM;
	Thu, 26 Nov 2026 19:51:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2A840433CB;
	Thu, 26 Nov 2026 19:51:43 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795722703;
	b=ftrnPErU9B2rVT3y0t2DpZI1JsXchpM2PR+7KABoT9X7OYAO4H9mjRzlziXHy5FSM+JU
	 xNrf+pR6ZdytpXKYOskeRFMX0d27zhCAuuhV5IzhUPwHi4TkuHJIqtFpTwn5tidBPopSU
	 3DDhqHGLnLx9oBe9WYg9BHbAUxt2PRSRkz5jQDaYrFRghmW5sPoLjuZ20u9+MGMnzUsHy
	 E1QXYoEBr13ebEr+XBE9Hg+swffSPdf4tPrQm3rTfh9axlMtz9b88aoMuZFb7DxH1h5qu
	 kWM1jZ0MmyiniTVmuLIvvjoL9m9OmPAqVk98rg25skK3M9fFnrAKJl9do0hJYbfkicw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795722703;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=PQT2g9NtqryhXDaZPwW4FMHwt9rFBQBYCcXfTffnNLw=;
	b=ibpIP4NT1A6Vt5lZQInov8OftK+e3H0itN9/UXU1KghbKc3ZEh4klxEQc7iCmDOawX5A
	 XKPFv+v16xjt1CcloFVJDIBpgfXagt7rULxJOsmERKLgCGEajrmBps1gZl9ifZ59whvK7
	 5x4oaz+ogvvJLRbfMiTV76bn/XEmgxQwOHTzFx6Lvy1C42+kf45AH3U3G3YHeQIltYVrC
	 d/JUYzHsQfmeYdotE7g3K40VvraD6V4BdYNyRR1rg6hvYwUTICzcTO1bm1w/bFkmmDVM0
	 LnX161mfez5Sh1MeKy3hFmO7EwRMEYvmaKRNMIKjl0mSws5/0KCPWyj7oOJrV74lVqA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 0FC5F1F000C0;
	Thu, 26 Nov 2026 19:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795722703;
	bh=PQT2g9NtqryhXDaZPwW4FMHwt9rFBQBYCcXfTffnNLw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=DCWs+HrYkgrUamFit+5b8KM+9uq9kaOLM/mhksL5W8Od9nJss7Ux2naOKQU7aTcYK
	 truVQXvzAcyh+eH5VLj75v6bRIoRlTzeBVBB9b35yUQfQ9WjtB9zM1v9fSS+InN8Qk
	 U0uqBRz/SJaLA3yMxk4fEGepAqC2a/vbLr/a4g0mcwkxrJ9O2GU3JmrskgA1/U5NTz
	 oHerVPYFhctKSpzwVotkL3/fSTqEXCBAHh7mm9gl5b4k7uhIPP1iPS9qLxCwEIIZql
	 6IQPCGfHwEmQwusg9TFd+0CRyLPHCcU3CwvTjfPGG5iXOgnyfzRWJfuN2yRgBnGUk/
	 wXgDyT3mfd8TA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 8FD694D7CE;
	Thu, 26 Nov 2026 19:51:28 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Thu, 26 Nov 2026 19:51:28 +0000
Subject: [PATCH v5 2/4] iommu/rockchip: Add rockchip_iommu_restore()
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261126-iep2-v5-2-3deac0976f10@gmail.com>
References: <20261126-iep2-v5-0-3deac0976f10@gmail.com>
In-Reply-To: <20261126-iep2-v5-0-3deac0976f10@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, iommu@lists.linux.dev, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Alex Bee <knaerzche@gmail.com>, Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795722687; l=2709;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=R0H+lHztEJpQyhHftKqrGxobTadThHr2EDqVCQv3DQg=;
 b=amwYeQOaVvCSbjB2xfboms8H0EAgda42FrMdyTTwQLEIRgpuSprKYHp8gj5qjLI4RJXqWxTfl
 Y3eod4qxFJrDKZBWFMHHPgN3ajF2/p79dfdrZC2AA4r5u1FI2/t81iA
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

Some masters reset their IOMMU along with themselves. The RK3588 IEP2
does: after its soft reset, paging is off and its DMA is untranslated.

Add a helper to reprogram the IOMMU of such a master, so that its
driver need not attach and detach an empty domain to do it. rkvdec
does the same with rkvdec_iommu_restore().

Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/iommu/rockchip-iommu.c        | 36 +++++++++++++++++++++++++++++++++++
 include/soc/rockchip/rockchip_iommu.h | 17 +++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 21af2f621c76..81cad102929e 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -27,6 +27,8 @@
 #include <linux/spinlock.h>
 #include <linux/string_choices.h>
 
+#include <soc/rockchip/rockchip_iommu.h>
+
 #include "iommu-pages.h"
 
 /** MMU register offsets */
@@ -1349,6 +1351,40 @@ static int __maybe_unused rk_iommu_resume(struct device *dev)
 	return rk_iommu_enable(iommu);
 }
 
+/**
+ * rockchip_iommu_restore() - Reprogram the IOMMU of a master after its reset
+ * @dev: master device, runtime active, with no DMA in flight
+ *
+ * Some masters reset their IOMMU with themselves, which turns paging off.
+ *
+ * Context: may sleep.
+ *
+ * Return: 0 on success or a negative error code.
+ */
+int rockchip_iommu_restore(struct device *dev)
+{
+	struct rk_iommu *iommu;
+	int ret;
+
+	if (!device_iommu_mapped(dev) ||
+	    dev->iommu->iommu_dev->ops != &rk_iommu_ops)
+		return 0;
+
+	iommu = rk_iommu_from_dev(dev);
+	if (!iommu || iommu->domain == &rk_identity_domain)
+		return 0;
+
+	ret = pm_runtime_get_if_in_use(iommu->dev);
+	if (ret <= 0)
+		return ret;
+
+	ret = rk_iommu_enable(iommu);
+	pm_runtime_put(iommu->dev);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(rockchip_iommu_restore);
+
 static const struct dev_pm_ops rk_iommu_pm_ops = {
 	SET_RUNTIME_PM_OPS(rk_iommu_suspend, rk_iommu_resume, NULL)
 	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
diff --git a/include/soc/rockchip/rockchip_iommu.h b/include/soc/rockchip/rockchip_iommu.h
new file mode 100644
index 000000000000..79fdd898a0fc
--- /dev/null
+++ b/include/soc/rockchip/rockchip_iommu.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __SOC_ROCKCHIP_IOMMU_H__
+#define __SOC_ROCKCHIP_IOMMU_H__
+
+struct device;
+
+#ifdef CONFIG_ROCKCHIP_IOMMU
+int rockchip_iommu_restore(struct device *dev);
+#else
+static inline int rockchip_iommu_restore(struct device *dev)
+{
+	return 0;
+}
+#endif
+
+#endif /* __SOC_ROCKCHIP_IOMMU_H__ */

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
