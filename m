From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
Date: Wed, 25 Mar 2020 22:27:03 +0100
Message-ID: <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Add a flag to the flags field of 'struct media_pad_desc'
that indicates that the data transmitted by the pad is
metadata.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
 include/uapi/linux/media.h                        | 1 +
 2 files changed, 5 insertions(+)

diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
index 3af6a414b501..4ca902478971 100644
--- a/Documentation/media/uapi/mediactl/media-types.rst
+++ b/Documentation/media/uapi/mediactl/media-types.rst
@@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
 .. _MEDIA-PAD-FL-SINK:
 .. _MEDIA-PAD-FL-SOURCE:
 .. _MEDIA-PAD-FL-MUST-CONNECT:
+.. _MEDIA-PAD-FL-METADATA:
 
 .. flat-table:: Media pad flags
     :header-rows:  0
@@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
 	  configuration dependent) for the pad to need enabled links even
 	  when this flag isn't set; the absence of the flag doesn't imply
 	  there is none.
+    *  -  ``MEDIA_PAD_FL_METADATA``
+       -  This flag indicates that the data transmitted by the pad is of
+          type metadata.
 
 
 One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
index 383ac7b7d8f0..ae37226eb5c9 100644
--- a/include/uapi/linux/media.h
+++ b/include/uapi/linux/media.h
@@ -210,6 +210,7 @@ struct media_entity_desc {
 #define MEDIA_PAD_FL_SINK			(1 << 0)
 #define MEDIA_PAD_FL_SOURCE			(1 << 1)
 #define MEDIA_PAD_FL_MUST_CONNECT		(1 << 2)
+#define MEDIA_PAD_FL_METADATA			(1 << 3)
 
 struct media_pad_desc {
 	__u32 entity;		/* entity ID */
-- 
2.17.1
