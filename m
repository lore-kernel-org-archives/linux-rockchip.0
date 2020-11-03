Return-Path: <SRS0=SS7Y=EJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3599EC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 09:31:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C69D0223BD
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 09:31:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UMERzGq4"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C69D0223BD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4ZIJoJcP7R8zGApUBTKe3VB7j5xigzdlmXG5QSKmc3s=; b=UMERzGq4hSQxd+BbTVo8Z3/si
	A8q5oObYYAgNAm4syLKX0f86Q+fStsjyqsM45ArnnWHy8AKExTt7hTk06ZDNJjpjeujB4C6ez05ZC
	8z2zYjF8gwl43T24A6UY2kqiY+uCuO0oQuOvGtC4FqS761UzvHKvqTJiqLLdwcWhpD+VfLknbV33I
	d2cmlRl0piYFyCKfjuBLyaQBT2TieplRyF3+S7rCldM3lLREKkGnreJhIdBrTDSatTBXVEWW+DCbp
	ZBh/BjOAyaoYs71EYeCosI3j87YXfGSXZCu8IAVOWpuK11bXpT+JorRbj8zaXT2K57W3igXTE6fI+
	QtcxWIOVA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZsfB-0007SS-Qx; Tue, 03 Nov 2020 09:31:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZse7-0006xa-42; Tue, 03 Nov 2020 09:30:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id A49C2B1A6;
 Tue,  3 Nov 2020 09:30:24 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, kraxel@redhat.com, l.stach@pengutronix.de,
 linux+etnaviv@armlinux.org.uk, christian.gmeiner@gmail.com,
 inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org,
 yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Subject: [PATCH v7 09/10] dma-buf-map: Add memcpy and pointer-increment
 interfaces
Date: Tue,  3 Nov 2020 10:30:14 +0100
Message-Id: <20201103093015.1063-10-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201103093015.1063-1-tzimmermann@suse.de>
References: <20201103093015.1063-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201103_043032_941366_F5E8FFAF 
X-CRM114-Status: GOOD (  21.28  )
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
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 xen-devel@lists.xenproject.org, spice-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

To do framebuffer updates, one needs memcpy from system memory and a
pointer-increment function. Add both interfaces with documentation.

v5:
	* include <linux/string.h> to build on sparc64 (Sam)

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Tested-by: Sam Ravnborg <sam@ravnborg.org>
---
 include/linux/dma-buf-map.h | 73 ++++++++++++++++++++++++++++++++-----
 1 file changed, 63 insertions(+), 10 deletions(-)

diff --git a/include/linux/dma-buf-map.h b/include/linux/dma-buf-map.h
index 2e8bbecb5091..583a3a1f9447 100644
--- a/include/linux/dma-buf-map.h
+++ b/include/linux/dma-buf-map.h
@@ -7,6 +7,7 @@
 #define __DMA_BUF_MAP_H__
 
 #include <linux/io.h>
+#include <linux/string.h>
 
 /**
  * DOC: overview
@@ -32,6 +33,14 @@
  * accessing the buffer. Use the returned instance and the helper functions
  * to access the buffer's memory in the correct way.
  *
+ * The type :c:type:`struct dma_buf_map <dma_buf_map>` and its helpers are
+ * actually independent from the dma-buf infrastructure. When sharing buffers
+ * among devices, drivers have to know the location of the memory to access
+ * the buffers in a safe way. :c:type:`struct dma_buf_map <dma_buf_map>`
+ * solves this problem for dma-buf and its users. If other drivers or
+ * sub-systems require similar functionality, the type could be generalized
+ * and moved to a more prominent header file.
+ *
  * Open-coding access to :c:type:`struct dma_buf_map <dma_buf_map>` is
  * considered bad style. Rather then accessing its fields directly, use one
  * of the provided helper functions, or implement your own. For example,
@@ -51,6 +60,14 @@
  *
  *	dma_buf_map_set_vaddr_iomem(&map. 0xdeadbeaf);
  *
+ * Instances of struct dma_buf_map do not have to be cleaned up, but
+ * can be cleared to NULL with dma_buf_map_clear(). Cleared mappings
+ * always refer to system memory.
+ *
+ * .. code-block:: c
+ *
+ *	dma_buf_map_clear(&map);
+ *
  * Test if a mapping is valid with either dma_buf_map_is_set() or
  * dma_buf_map_is_null().
  *
@@ -73,17 +90,19 @@
  *	if (dma_buf_map_is_equal(&sys_map, &io_map))
  *		// always false
  *
- * Instances of struct dma_buf_map do not have to be cleaned up, but
- * can be cleared to NULL with dma_buf_map_clear(). Cleared mappings
- * always refer to system memory.
+ * A set up instance of struct dma_buf_map can be used to access or manipulate
+ * the buffer memory. Depending on the location of the memory, the provided
+ * helpers will pick the correct operations. Data can be copied into the memory
+ * with dma_buf_map_memcpy_to(). The address can be manipulated with
+ * dma_buf_map_incr().
  *
- * The type :c:type:`struct dma_buf_map <dma_buf_map>` and its helpers are
- * actually independent from the dma-buf infrastructure. When sharing buffers
- * among devices, drivers have to know the location of the memory to access
- * the buffers in a safe way. :c:type:`struct dma_buf_map <dma_buf_map>`
- * solves this problem for dma-buf and its users. If other drivers or
- * sub-systems require similar functionality, the type could be generalized
- * and moved to a more prominent header file.
+ * .. code-block:: c
+ *
+ *	const void *src = ...; // source buffer
+ *	size_t len = ...; // length of src
+ *
+ *	dma_buf_map_memcpy_to(&map, src, len);
+ *	dma_buf_map_incr(&map, len); // go to first byte after the memcpy
  */
 
 /**
@@ -210,4 +229,38 @@ static inline void dma_buf_map_clear(struct dma_buf_map *map)
 	}
 }
 
+/**
+ * dma_buf_map_memcpy_to - Memcpy into dma-buf mapping
+ * @dst:	The dma-buf mapping structure
+ * @src:	The source buffer
+ * @len:	The number of byte in src
+ *
+ * Copies data into a dma-buf mapping. The source buffer is in system
+ * memory. Depending on the buffer's location, the helper picks the correct
+ * method of accessing the memory.
+ */
+static inline void dma_buf_map_memcpy_to(struct dma_buf_map *dst, const void *src, size_t len)
+{
+	if (dst->is_iomem)
+		memcpy_toio(dst->vaddr_iomem, src, len);
+	else
+		memcpy(dst->vaddr, src, len);
+}
+
+/**
+ * dma_buf_map_incr - Increments the address stored in a dma-buf mapping
+ * @map:	The dma-buf mapping structure
+ * @incr:	The number of bytes to increment
+ *
+ * Increments the address stored in a dma-buf mapping. Depending on the
+ * buffer's location, the correct value will be updated.
+ */
+static inline void dma_buf_map_incr(struct dma_buf_map *map, size_t incr)
+{
+	if (map->is_iomem)
+		map->vaddr_iomem += incr;
+	else
+		map->vaddr += incr;
+}
+
 #endif /* __DMA_BUF_MAP_H__ */
-- 
2.29.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
