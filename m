Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5F75CCA480
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjSjwazRIkKWpa4XOhkfOXfQvWa4IO/ZZwECyASKIPs=; b=jE6NV5AcCkJ5p7
	KFMBrigDqWyw5Vwd/whIL9UMS9WsP/7uhRlqQxMY4BRjOlutexVKKgSEMaBMdeDG9EvUc3Mxarg18
	V0tlEEuvsf9z4Vep/P1f7sciAfYtBJJrSISwGzRqjJq5ZTsuTdTVmqT6OquLLOJ7RaZOdT2XsG3G/
	DuV1VvEe6E8CCNxTnbX0Cn89Gq44Bptfs5gH/JUqPCIqqGHlD1TIY5W9xQiuz7LBmBYi24P2XUTxE
	TtxlvuQWkGN8Lkp992Mjeyn5v4MBWuIxiijsREaJjIPrz9eKm4Uqm04/W6yXF7+ejxNcIzQfBwjqo
	B504Y2mzDQbGYCfYzh6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsxT-001exP-6q; Mon, 11 Jul 2022 12:56:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl0-001Y2Q-Rp
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:26 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E078A87F;
	Mon, 11 Jul 2022 14:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543401;
	bh=jotMXSHy3q0Hj0KwIvP1tGaPsx9R35OcUNtbxnUUm2w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qsp3gi5zZqg2ZhLt6/EnT32nAvh3CsuhQQtvvwYM0QeHT5XLJJvSFEvm2Mn6Hcm2t
	 U6Uk3bkPRJ84EXw7hDT/yI/Nv7iYQHKKLMtrj0hx7nUAqVa4sFN/U2/P/UAzqcz+Oj
	 TtGU20B2FF+5pOQcbXtP8udy2vfUGqH+18u3kyOI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 03/46] media: mc-entity: Add a new helper function to get a remote pad
Date: Mon, 11 Jul 2022 15:42:05 +0300
Message-Id: <20220711124248.2683-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054323_102737_4DE24469 
X-CRM114-Status: GOOD (  19.73  )
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

The media_entity_remote_pad_first() helper function returns the first
remote pad it finds connected to a given pad. Beside being possibly
non-deterministic (as it stops at the first enabled link), the fact that
it returns the first match makes it unsuitable for drivers that need to
guarantee that a single link is enabled, for instance when an entity can
process data from one of multiple sources at a time.

For those use cases, add a new helper function,
media_entity_remote_pad_unique(), that operates on an entity and returns
a remote pad, with a guarantee that only one link is enabled. To ease
its use in drivers, also add an inline wrapper that locates source pads
specifically. A wrapper that locates sink pads can easily be added when
needed.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
Changes since v2:

- Update commit message

Changes since v1:

- Rename media_entity_remote_source_pad() to
  media_entity_remote_source_pad_unique()
- Skip non-data links
---
 Documentation/driver-api/media/mc-core.rst |  3 +-
 drivers/media/mc/mc-entity.c               | 40 +++++++++++++++++++
 include/media/media-entity.h               | 46 ++++++++++++++++++++++
 3 files changed, 88 insertions(+), 1 deletion(-)

diff --git a/Documentation/driver-api/media/mc-core.rst b/Documentation/driver-api/media/mc-core.rst
index 6eea6a3b6441..66801506b2dd 100644
--- a/Documentation/driver-api/media/mc-core.rst
+++ b/Documentation/driver-api/media/mc-core.rst
@@ -186,7 +186,8 @@ is required and the graph structure can be freed normally.
 
 Helper functions can be used to find a link between two given pads, or a pad
 connected to another pad through an enabled link
-:c:func:`media_entity_find_link()` and :c:func:`media_pad_remote_pad_first()`.
+(:c:func:`media_entity_find_link()`, :c:func:`media_pad_remote_pad_first()` and
+:c:func:`media_entity_remote_source_pad_unique()`).
 
 Use count and power handling
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
index 55076fea7b58..bd7145932137 100644
--- a/drivers/media/mc/mc-entity.c
+++ b/drivers/media/mc/mc-entity.c
@@ -9,6 +9,7 @@
  */
 
 #include <linux/bitmap.h>
+#include <linux/list.h>
 #include <linux/property.h>
 #include <linux/slab.h>
 #include <media/media-entity.h>
@@ -920,6 +921,45 @@ struct media_pad *media_pad_remote_pad_first(const struct media_pad *pad)
 }
 EXPORT_SYMBOL_GPL(media_pad_remote_pad_first);
 
+struct media_pad *
+media_entity_remote_pad_unique(const struct media_entity *entity,
+			       unsigned int type)
+{
+	struct media_pad *pad = NULL;
+	struct media_link *link;
+
+	list_for_each_entry(link, &entity->links, list) {
+		struct media_pad *local_pad;
+		struct media_pad *remote_pad;
+
+		if (((link->flags & MEDIA_LNK_FL_LINK_TYPE) !=
+		     MEDIA_LNK_FL_DATA_LINK) ||
+		    !(link->flags & MEDIA_LNK_FL_ENABLED))
+			continue;
+
+		if (type == MEDIA_PAD_FL_SOURCE) {
+			local_pad = link->sink;
+			remote_pad = link->source;
+		} else {
+			local_pad = link->source;
+			remote_pad = link->sink;
+		}
+
+		if (local_pad->entity == entity) {
+			if (pad)
+				return ERR_PTR(-ENOTUNIQ);
+
+			pad = remote_pad;
+		}
+	}
+
+	if (!pad)
+		return ERR_PTR(-ENOLINK);
+
+	return pad;
+}
+EXPORT_SYMBOL_GPL(media_entity_remote_pad_unique);
+
 static void media_interface_init(struct media_device *mdev,
 				 struct media_interface *intf,
 				 u32 gobj_type,
diff --git a/include/media/media-entity.h b/include/media/media-entity.h
index ab84476b25c8..aecd1691b297 100644
--- a/include/media/media-entity.h
+++ b/include/media/media-entity.h
@@ -859,6 +859,52 @@ struct media_link *media_entity_find_link(struct media_pad *source,
  */
 struct media_pad *media_pad_remote_pad_first(const struct media_pad *pad);
 
+/**
+ * media_entity_remote_pad_unique - Find a remote pad connected to an entity
+ * @entity: The entity
+ * @type: The type of pad to find (MEDIA_PAD_FL_SINK or MEDIA_PAD_FL_SOURCE)
+ *
+ * Search for and return a remote pad of @type connected to @entity through an
+ * enabled link. If multiple (or no) remote pads match these criteria, an error
+ * is returned.
+ *
+ * The uniqueness constraint makes this helper function suitable for entities
+ * that support a single active source or sink at a time.
+ *
+ * Return: A pointer to the remote pad, or one of the following error pointers
+ * if an error occurs:
+ *
+ * * -ENOTUNIQ - Multiple links are enabled
+ * * -ENOLINK - No connected pad found
+ */
+struct media_pad *
+media_entity_remote_pad_unique(const struct media_entity *entity,
+			       unsigned int type);
+
+/**
+ * media_entity_remote_source_pad_unique - Find a remote source pad connected to
+ *	an entity
+ * @entity: The entity
+ *
+ * Search for and return a remote source pad connected to @entity through an
+ * enabled link. If multiple (or no) remote pads match these criteria, an error
+ * is returned.
+ *
+ * The uniqueness constraint makes this helper function suitable for entities
+ * that support a single active source at a time.
+ *
+ * Return: A pointer to the remote pad, or one of the following error pointers
+ * if an error occurs:
+ *
+ * * -ENOTUNIQ - Multiple links are enabled
+ * * -ENOLINK - No connected pad found
+ */
+static inline struct media_pad *
+media_entity_remote_source_pad_unique(const struct media_entity *entity)
+{
+	return media_entity_remote_pad_unique(entity, MEDIA_PAD_FL_SOURCE);
+}
+
 /**
  * media_entity_is_streaming - Test if an entity is part of a streaming pipeline
  * @entity: The entity
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
