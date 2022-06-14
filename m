Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F06ACCA47A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FyCVg/bOvEGKtuyV+1P0qAn3c1L5aaYTXOa98Z+rxg=; b=npccQVGCfwxzZF
	7VeNUD0wq+x/tcNFaKHHWZEgTV8Cv5xqtD6/fBH9JcdOcAGiDbHQQrVR1R2S7tB+noBcLATx1ynPA
	wLx+AppypTQF8geh/2Bnz+ykN9mAosjdq5LRORNeX5tCwqmTZdP571Ob49EIrMhWgIjgxa2DDSMgY
	2KdVFZs/F3XzurXo/1IGlPQsUzqb1al8Quxwk3s+o+1oay3DdpBseEnSt1jWneS5OrONs6O7TjpLY
	SltfP/d8/tcSagNT7/jiZ3lft5S3eXMngMkquIUhd0OCu+BGIyiYL6bmo5yWLioBRf3slRYYS0T63
	+FtqHGSpHz4ZnNHuUpTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bze-00Av3F-Jc; Tue, 14 Jun 2022 19:14:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bzb-00Auyp-3U
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:24 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 34FF7EF1;
	Tue, 14 Jun 2022 21:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234061;
	bh=GIhvJxxbVqRLcGeLL6GwJpK7d1zU0sA9adbgCCbIZhs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WTlRkEcQmW6qIbNKJqv/Dmifftm/pXUbiAn3xBWjck2hsFIdCokVM+B5+ots8+LW3
	 FdAdslsFhhEYYnu9g1O7EwhQVjnQhP0zWzSrJ2BZcIlrEL4z971KBs/RmK0Va4sO0k
	 P0J5fmM6QI20HUnfABdR5sPPfpH2/78dfDJcxGzg=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 38/55] media: mc-entity: Add a new helper function to get a remote pad for a pad
Date: Wed, 15 Jun 2022 04:11:10 +0900
Message-Id: <20220614191127.3420492-39-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121423_325290_E813A4A9 
X-CRM114-Status: GOOD (  14.22  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The newly added media_entity_remote_source_pad() helper function handles
use cases where the entity has a link enabled uniqueness constraint
covering all pads. There are use cases where the constraint covers a
specific pad only. Add a new media_pad_remote_pad() function to handle
this. It operates as media_entity_remote_source_pad(), but on a given
pad instead of on the entity.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/driver-api/media/mc-core.rst |  4 +--
 drivers/media/mc/mc-entity.c               | 31 ++++++++++++++++++++++
 include/media/media-entity.h               | 18 +++++++++++++
 3 files changed, 51 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/media/mc-core.rst b/Documentation/driver-api/media/mc-core.rst
index a2d1e32e3abb..83c3bdbf67be 100644
--- a/Documentation/driver-api/media/mc-core.rst
+++ b/Documentation/driver-api/media/mc-core.rst
@@ -186,8 +186,8 @@ is required and the graph structure can be freed normally.
 
 Helper functions can be used to find a link between two given pads, or a pad
 connected to another pad through an enabled link
-(:c:func:`media_entity_find_link()`, :c:func:`media_entity_remote_pad()` and
-:c:func:`media_entity_remote_source_pad()`).
+(:c:func:`media_entity_find_link()`, :c:func:`media_entity_remote_pad()`,
+:c:func:`media_entity_remote_source_pad()` and :c:func:`media_pad_remote_pad()`).
 
 Use count and power handling
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
index 1febf5a86be6..6429b0510bfb 100644
--- a/drivers/media/mc/mc-entity.c
+++ b/drivers/media/mc/mc-entity.c
@@ -958,6 +958,37 @@ media_entity_remote_pad_unique(const struct media_entity *entity,
 }
 EXPORT_SYMBOL_GPL(media_entity_remote_pad_unique);
 
+struct media_pad *media_pad_remote_pad(const struct media_pad *pad)
+{
+	struct media_pad *found_pad = NULL;
+	struct media_link *link;
+
+	list_for_each_entry(link, &pad->entity->links, list) {
+		struct media_pad *remote_pad;
+
+		if (!(link->flags & MEDIA_LNK_FL_ENABLED))
+			continue;
+
+		if (link->sink == pad)
+			remote_pad = link->source;
+		else if (link->source == pad)
+			remote_pad = link->sink;
+		else
+			continue;
+
+		if (found_pad)
+			return ERR_PTR(-ENOTUNIQ);
+
+		found_pad = remote_pad;
+	}
+
+	if (!found_pad)
+		return ERR_PTR(-ENOLINK);
+
+	return found_pad;
+}
+EXPORT_SYMBOL_GPL(media_pad_remote_pad);
+
 static void media_interface_init(struct media_device *mdev,
 				 struct media_interface *intf,
 				 u32 gobj_type,
diff --git a/include/media/media-entity.h b/include/media/media-entity.h
index 33d5f52719a0..bfe6a7b10a68 100644
--- a/include/media/media-entity.h
+++ b/include/media/media-entity.h
@@ -904,6 +904,24 @@ media_entity_remote_source_pad(const struct media_entity *entity)
 	return media_entity_remote_pad_unique(entity, MEDIA_PAD_FL_SOURCE);
 }
 
+/**
+ * media_pad_remote_pad - Find a remote pad connected to a pad
+ * @pad: The pad
+ *
+ * Search for and return a remote pad connected to @pad through an enabled
+ * link. If multiple (or no) remote pads are found, an error is returned.
+ *
+ * The uniqueness constraint makes this helper function suitable for entities
+ * that support a single active source at a time on a given pad.
+ *
+ * Return: A pointer to the remote pad, or one of the following error pointers
+ * if an error occurs:
+ *
+ * * -ENOTUNIQ - Multiple links are enabled
+ * * -ENOLINK - No connected pad found
+ */
+struct media_pad *media_pad_remote_pad(const struct media_pad *pad);
+
 /**
  * media_entity_is_streaming - Test if an entity is part of a streaming pipeline
  * @entity: The entity
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
