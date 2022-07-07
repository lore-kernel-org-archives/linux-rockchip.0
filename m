Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59B84C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 10:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsrAyd46cOBfriQpVUiOAA/CKwjdYAYqCHAKAmwPehg=; b=n8ZZ5U+5rt4UdU
	VWGGHpCqK+es+RyWbYpCLnSNC50J+j1xPIPtwsFH0PPH/m8mehGPthRvTyq6tgvTWdYxuQNh6RyQ6
	D3riY1r6ct/MAX2O+NLA5lNvWdQRACzceTVwpzcJGXO2KQDoLvT+xkjLCHG9+MH9qvm0HHw8+Vy8O
	lB5b/Al0D3+VqW+I8p9LVU4x+K/57KFBiWZF1e1m/4pLeBq/W9hegyUmAhg4jlPUHwcqv8ELpE+k+
	veyQ4RF4+t4YTDmbkXvUTyBp1ROL3Zem3dGb2M3J/fRhdxvJGhYFIhwNuBuNpQr1Ec9SHgUZhw6Gh
	HPLltPhDH/v2HfuzkywA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9OJ8-00FUYB-3f; Thu, 07 Jul 2022 10:00:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9OJ4-00FUWP-UC
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 10:00:24 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 03369326;
	Thu,  7 Jul 2022 12:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657188021;
	bh=HMyAsoWABtj3GSAqSXnx09nXmT4MIFWyFZBOl5ORMuY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=igm6TDf24LDT5cCja8CVY8Rw1AKdwywraeZGD5ku4oSqqyidyYrriRpv/VvboSgSn
	 emYq7u0njuJhI8WVIZCXHoVdcHTtJ6eOBLf9fzpp8dyFQFKMKMKbtGvYNb5GzhjOU8
	 Eex1kUow1xzTrnGbTh76b+ZX5hewHKsHcRiUNgrA=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: [PATCH v2.1 04/55] media: mc-entity: Add a new helper function to get a remote pad for a pad
Date: Thu,  7 Jul 2022 12:59:51 +0300
Message-Id: <20220707095952.6831-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-5-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-5-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_030023_168236_78DD3A6A 
X-CRM114-Status: GOOD (  15.53  )
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

The newly added media_entity_remote_source_pad_unique() helper function
handles use cases where the entity has a link enabled uniqueness
constraint covering all pads. There are use cases where the constraint
covers a specific pad only. Add a new media_pad_remote_pad_unique()
function to handle this. It operates as
media_entity_remote_source_pad_unique(), but on a given pad instead of
on the entity.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
Changes since v2:

- Update commit message

Changes since v1:

- Rename media_pad_remote_pad() to media_pad_remote_pad_unique()
---
 Documentation/driver-api/media/mc-core.rst |  5 ++--
 drivers/media/mc/mc-entity.c               | 31 ++++++++++++++++++++++
 include/media/media-entity.h               | 18 +++++++++++++
 3 files changed, 52 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/media/mc-core.rst b/Documentation/driver-api/media/mc-core.rst
index 66801506b2dd..644911936ad9 100644
--- a/Documentation/driver-api/media/mc-core.rst
+++ b/Documentation/driver-api/media/mc-core.rst
@@ -186,8 +186,9 @@ is required and the graph structure can be freed normally.
 
 Helper functions can be used to find a link between two given pads, or a pad
 connected to another pad through an enabled link
-(:c:func:`media_entity_find_link()`, :c:func:`media_pad_remote_pad_first()` and
-:c:func:`media_entity_remote_source_pad_unique()`).
+(:c:func:`media_entity_find_link()`, :c:func:`media_pad_remote_pad_first()`n
+:c:func:`media_entity_remote_source_pad_unique()` and
+:c:func:`media_pad_remote_pad_unique()`).
 
 Use count and power handling
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
index bd7145932137..7082403d5800 100644
--- a/drivers/media/mc/mc-entity.c
+++ b/drivers/media/mc/mc-entity.c
@@ -960,6 +960,37 @@ media_entity_remote_pad_unique(const struct media_entity *entity,
 }
 EXPORT_SYMBOL_GPL(media_entity_remote_pad_unique);
 
+struct media_pad *media_pad_remote_pad_unique(const struct media_pad *pad)
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
+EXPORT_SYMBOL_GPL(media_pad_remote_pad_unique);
+
 static void media_interface_init(struct media_device *mdev,
 				 struct media_interface *intf,
 				 u32 gobj_type,
diff --git a/include/media/media-entity.h b/include/media/media-entity.h
index aecd1691b297..cd0690cff4c2 100644
--- a/include/media/media-entity.h
+++ b/include/media/media-entity.h
@@ -859,6 +859,24 @@ struct media_link *media_entity_find_link(struct media_pad *source,
  */
 struct media_pad *media_pad_remote_pad_first(const struct media_pad *pad);
 
+/**
+ * media_pad_remote_pad_unique - Find a remote pad connected to a pad
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
+struct media_pad *media_pad_remote_pad_unique(const struct media_pad *pad);
+
 /**
  * media_entity_remote_pad_unique - Find a remote pad connected to an entity
  * @entity: The entity
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
