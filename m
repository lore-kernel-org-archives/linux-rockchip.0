Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC87C021B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 23:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNE4vDVwU295VZzTfh4r4nSnfLfdmrtdajNse0Xyfe8=; b=OPXosbRyeHTbKl
	1f9FDTiJL9koiu0Je/MXXmxtyrNf8oDAKgApe9zehiXf7JqZz9TnebEb6ZeGeiSAsfgw6k03Qz6na
	HXt9WgcOIz5bapWm1f8pOW9I5euf56fc8le6anjoKsQ/I4d0O51GzXgjTNimnXthAwezeW+4VTvn5
	AurkVBjEyqPU1L7eW0Ga7QY0728H00ZdqSHtbirVXuj5XragRSOM9jAX3ikk3oqT9I9wlL5sE9liB
	RhXN8sxKqpQGWEU4afeYRkcS4Vz0Jjgtk+EzyE+iDJ6biIZOFUuMsHxmTei3nTMgt+tmQKC9RiBUm
	u9OAQghs5BNWdPFLJM+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlGFj-00000003NrV-0vna;
	Thu, 20 Feb 2025 23:46:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlGBI-00000003Mjb-0Jdv;
	Thu, 20 Feb 2025 23:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8ei/G/C+Q2EB4HolW6F+KXHikaTWJisX5oA6+ZThEK8=; b=lPMEb5bIU9ybnKqWwCujlG8mZ+
	+nrXybstNXgJrS/gk9FKpnPBrt4LdexLrxAh6ngSYgDYdscNrm6grTGIh8daT0i+/744cO/kTGtXm
	TrFzZq+Gn+1Yht+okl3AuxMo3ck21UwFeXLBjS+Hsfj+CbOld+kzMEqUp1/y5hU4oWbPpD01ChFC/
	h1QLCsBnTcXxKx8caaERXETyL5XSBgpMQVJjRrckjGVzDawDcdr45XOa2ly1HqleO1TcY9xMxkSGS
	EaZpdkB94mynONN90I4JJF+taU3sCB+jOfuxVRkoSeX+BjPUbDP3K2xmv1vjFFV5Q3bJ8TtvfgX0Q
	Wq1eJi0A==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tlGAy-0004Wc-Dt; Fri, 21 Feb 2025 00:41:52 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: gregkh@linuxfoundation.org,
	heiko@sntech.de
Cc: rafael@kernel.org,
	dakr@kernel.org,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	quentin.schulz@cherry.de
Subject: [PATCH 1/2] drivers: base: component: add function to query the bound status
Date: Fri, 21 Feb 2025 00:41:40 +0100
Message-ID: <20250220234141.2788785-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250220234141.2788785-1-heiko@sntech.de>
References: <20250220234141.2788785-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_154212_108223_BB417A28 
X-CRM114-Status: GOOD (  18.53  )
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

The component helpers already expose the bound status in debugfs, but at
times it might be necessary to also check that state in the kernel and
act differently depending on the result.

For example the shutdown handler of a drm-driver might need to stop
a whole output pipeline if the drm device is up and running, but may
run into problems if that drm-device has never been set up before,
for example because the binding deferred.

So add a little helper that returns the bound status for a componet
device.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/base/component.c  | 14 ++++++++++++++
 include/linux/component.h |  4 +++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/base/component.c b/drivers/base/component.c
index 741497324d78..d63e01f4851d 100644
--- a/drivers/base/component.c
+++ b/drivers/base/component.c
@@ -569,6 +569,20 @@ void component_master_del(struct device *parent,
 }
 EXPORT_SYMBOL_GPL(component_master_del);
 
+bool component_master_is_bound(struct device *parent,
+	const struct component_master_ops *ops)
+{
+	struct aggregate_device *adev;
+
+	guard(mutex)(&component_mutex);
+	adev = __aggregate_find(parent, ops);
+	if (!adev)
+		return 0;
+
+	return adev->bound;
+}
+EXPORT_SYMBOL_GPL(component_master_is_bound);
+
 static void component_unbind(struct component *component,
 	struct aggregate_device *adev, void *data)
 {
diff --git a/include/linux/component.h b/include/linux/component.h
index df4aa75c9e7c..9d6c66401280 100644
--- a/include/linux/component.h
+++ b/include/linux/component.h
@@ -3,7 +3,7 @@
 #define COMPONENT_H
 
 #include <linux/stddef.h>
-
+#include <linux/types.h>
 
 struct device;
 
@@ -90,6 +90,8 @@ int component_compare_dev_name(struct device *dev, void *data);
 
 void component_master_del(struct device *,
 	const struct component_master_ops *);
+bool component_master_is_bound(struct device *parent,
+	const struct component_master_ops *ops);
 
 struct component_match;
 
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
