Return-Path: <SRS0=jNzM=IK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D6E9C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Mar 2021 08:03:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E34C264DCC
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Mar 2021 08:03:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E34C264DCC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JNQ9eeiRt/0QluQIhLX6MK+V4hFkDkcVOWNSzPIvwYE=; b=IzVH56WAXn6tWu96N+00pjuF5E
	ZnN/mqTg/BCLEon80yauuOKxifu1KRmcpn/YWzWZRgK5LgPlsVbhs9vDbNf4sMeZPADPCnfugC353
	HIYQ/5YcScNXM9jNNPVexS7FyB1LP1ODzzVCQDt5P0++sOWhhnoW1PZS7Ve4UaHV2RlgMfCnRvp/C
	REEsecs0XSgDAxRDTLcThep8KlfaNNOpJ/+PYAq3diUUMcY4Gv57UemoWx+YmEA1Zk8hEBuE2C7Iz
	jEX04QaIIoL5v0cpt+HCRD+zH8S4nbpdo5EqQ+EvAlUTABhyahIQ2a3cYENtsVSB3B9+WNKAKR24a
	Sn8pIeqg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKclj-00AqBm-9k; Fri, 12 Mar 2021 08:03:36 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKcld-00AqAp-Us
 for linux-rockchip@lists.infradead.org; Fri, 12 Mar 2021 08:03:33 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id E926BB9646;
 Fri, 12 Mar 2021 16:03:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24306T139684564936448S1615536202373594_; 
 Fri, 12 Mar 2021 16:03:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f24013f2c7f2bb4a81e23a76373eb9fd>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: cl@linux.co
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: cl@linux.co, penberg@kernel.org, rientjes@google.com,
 iamjoonsoo.kim@lge.com, akpm@linux-foundation.org
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] mm/slab: kmalloc with GFP_DMA32 allocate from SLAB_CACHE_DMA32
Date: Fri, 12 Mar 2021 16:03:20 +0800
Message-Id: <20210312080320.1965201-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_080330_631885_AFAFC545 
X-CRM114-Status: GOOD (  12.51  )
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

The flag GFP_DMA32 only effect in kmalloc_large currently.

This patch will create caches with GFP_DMA32 to support kmalloc with
size under KMALLOC_MAX_CACHE_SIZE.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 include/linux/slab.h |  7 +++++++
 mm/slab_common.c     | 14 ++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index be4ba5867ac5..f4317663d148 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -307,6 +307,9 @@ enum kmalloc_cache_type {
 	KMALLOC_RECLAIM,
 #ifdef CONFIG_ZONE_DMA
 	KMALLOC_DMA,
+#endif
+#ifdef CONFIG_ZONE_DMA32
+	KMALLOC_DMA32,
 #endif
 	NR_KMALLOC_TYPES
 };
@@ -331,6 +334,10 @@ static __always_inline enum kmalloc_cache_type kmalloc_type(gfp_t flags)
 	 */
 	return flags & __GFP_DMA ? KMALLOC_DMA : KMALLOC_RECLAIM;
 #else
+#ifdef CONFIG_ZONE_DMA32
+	if (unlikely(flags & __GFP_DMA32))
+		return KMALLOC_DMA32;
+#endif
 	return flags & __GFP_RECLAIMABLE ? KMALLOC_RECLAIM : KMALLOC_NORMAL;
 #endif
 }
diff --git a/mm/slab_common.c b/mm/slab_common.c
index e981c80d216c..2a04736fe8f5 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -805,6 +805,20 @@ void __init create_kmalloc_caches(slab_flags_t flags)
 		}
 	}
 #endif
+#ifdef CONFIG_ZONE_DMA32
+	for (i = 0; i <= KMALLOC_SHIFT_HIGH; i++) {
+		struct kmem_cache *s = kmalloc_caches[KMALLOC_NORMAL][i];
+
+		if (s) {
+			unsigned int size = kmalloc_size(i);
+			const char *n = kmalloc_cache_name("dma32-kmalloc", size);
+
+			BUG_ON(!n);
+			kmalloc_caches[KMALLOC_DMA32][i] = create_kmalloc_cache(
+				n, size, SLAB_CACHE_DMA32 | flags, 0, 0);
+		}
+	}
+#endif
 }
 #endif /* !CONFIG_SLOB */
 
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
