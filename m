Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C91A6C83F0F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 11:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnOPURLtUpd/9G2sMHkbYf1hHOFRns6yoipsVKe33Yw=; b=NhHM9/Ruq+KSF8
	S4Jghv5ovAd5GEz7/4oy2KbRfjtKUmZNj5l52YWjZrcAw9MjdcczddViWFpsYzNJRRCDA3sTvESIQ
	9mWUbFc+KUmt2LE5NZGBddiVjhnSkXmkUHWyaWfOZB17kvJSjScpo89U3cURdTIem52Sdpv+svGon
	F1j5zfCOYiu4/vnK6IbdjoR9J7RKBsp/DhHRolQbHI7L1ARejwkHHAEKOgSPFzX9HYQmNIzx7mwa9
	RGsyBVZBzNIzuIZJdp8dy7ilE5KaZqB3jtEz7PmiejVS8R7WrW8Z2wJs66qVMz3DwHKzslql8/DQ6
	x8b5wmuDPEiIN1VdOCDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ6Aw-000000059QJ-25Zd;
	Tue, 08 Jul 2025 11:07:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ5l9-000000055Zg-35nb;
	Tue, 08 Jul 2025 10:41:14 +0000
Received: from [192.168.0.172] (mob-5-90-136-241.net.vodafone.it [5.90.136.241])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 163EC257A;
	Tue,  8 Jul 2025 12:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1751971241;
	bh=p4L6wr15gyO3Czyhf4gFVbw8Kqtw7/NE02pdJDjPsEY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Xo1mrj9OXR01XnmaVt91yJFD6LZ+8/nYO61WNfBqtsfLGtKATxplpxms+kbMsCzlI
	 raQxEpXEEzKJYtwTxpSiykZh4xe6mTMCcB97fa6i6mK89zxwvQQaY5ZsOqVNuQFUC+
	 rqaCiYHrBV6HVa4QKnZuHU4OxUvouo2ifIvmrmuQ=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Tue, 08 Jul 2025 12:40:50 +0200
Subject: [PATCH 3/8] media: uapi: Convert Amlogic C3 to V4L2 extensible
 params
MIME-Version: 1.0
Message-Id: <20250708-extensible-parameters-validation-v1-3-9fc27c9c728c@ideasonboard.com>
References: <20250708-extensible-parameters-validation-v1-0-9fc27c9c728c@ideasonboard.com>
In-Reply-To: <20250708-extensible-parameters-validation-v1-0-9fc27c9c728c@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Keke Li <keke.li@amlogic.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dan Scally <dan.scally@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4522;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=p4L6wr15gyO3Czyhf4gFVbw8Kqtw7/NE02pdJDjPsEY=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBobPXAjwOgVvHvlTbfdy9z3kjKRUkxCE5oYaghE
 RL4cNGa8GKJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaGz1wAAKCRByNAaPFqFW
 PHMBEAC9hp0LHxG121QpB5kk9BqA0eDQQvoyzrpCcA+cQsHh9D0J+xNUtBrUk1reGM5/OTqpJBb
 oEz/fduBCbvh8rrDNZXleUq5F+umB3e3CyACyb0Hr6vjMG60zaPlJ/A6Nua358RABr9seMM+yub
 BBdEWb+vlBLP48actbAnkPFaYQA1SVRAp+OcTk4InGJOQiJOZmW1zwmAYervAUVJT+YOVw72PjB
 1keZs3Hevo09wvDF73EdmzROuHKAveVGP9UY/QUNxNF0/v0Hz7WGWYdGbZQBf5PNn+zfxwp1E2i
 Lcd13NgLG1EcO0qQuMrJ/Du3oyk6sKtT2Nwfh0h8QkJHC+xgJb1CaOb+km05VwyNwApETVKhHqF
 lFxsDKflK3Mcdq/1TbNmw+BK4jHdC8GB8RIGjW9v3DQC47NfDhR+on/ZXVfNLfljQTjhO/4IJDE
 nSJbftIX3MxZvwm6V7iFyBlFTwbF0Z1ScguHaTDoEuxU6NiNNaVzLExsUVgk7Ox+2nIte8AgOQ9
 kJQcKZKECGxEwUAsrCaY/B5tN7F0ejI0vrBgTcg5/V2JTv26ZxLN+lbNLB8YWZmd5iz9EvBgd9A
 CyOAZjKDaqg3UwAqEz+NaYGjuSAgCdUyYo/WWLxFrJrLeF+uowC1UdDj4f+g/NDdAp2+0m5M7av
 XC2Fh/mgc1XxBdw==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_034111_920402_5D1B60D4 
X-CRM114-Status: GOOD (  19.28  )
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

With the introduction of common types for extensible parameters
format, convert the c3-isp-config.h header to use the new types.

Factor-out the documentation that is now part of the common header
and only keep the driver-specific on in place.

The conversion to use common types doesn't impact userspace as the
new types are either identical to the ones already existing in the
C3 ISP uAPI or are 1-to-1 type convertible.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 include/uapi/linux/media/amlogic/c3-isp-config.h | 45 +++++++-----------------
 1 file changed, 12 insertions(+), 33 deletions(-)

diff --git a/include/uapi/linux/media/amlogic/c3-isp-config.h b/include/uapi/linux/media/amlogic/c3-isp-config.h
index ed085ea62a574932c7ad8d59d34b2c5c74a597d8..203116cdfb89356301c16c98cb40e5b83efe71d6 100644
--- a/include/uapi/linux/media/amlogic/c3-isp-config.h
+++ b/include/uapi/linux/media/amlogic/c3-isp-config.h
@@ -6,8 +6,12 @@
 #ifndef _UAPI_C3_ISP_CONFIG_H_
 #define _UAPI_C3_ISP_CONFIG_H_
 
+#include <linux/build_bug.h>
 #include <linux/types.h>
 
+#define _UAPI_V4L2_EXTENSIBLE_PARAMS_GUARD_
+#include <linux/media/v4l2-extensible-params.h>
+
 /*
  * Frames are split into zones of almost equal width and height - a zone is a
  * rectangular tile of a frame. The metering blocks within the ISP collect
@@ -183,11 +187,6 @@ enum c3_isp_params_block_type {
  * struct c3_isp_params_block_header - C3 ISP parameter block header
  *
  * This structure represents the common part of all the ISP configuration
- * blocks. Each parameters block shall embed an instance of this structure type
- * as its first member, followed by the block-specific configuration data. The
- * driver inspects this common header to discern the block type and its size and
- * properly handle the block content by casting it to the correct block-specific
- * type.
  *
  * The @type field is one of the values enumerated by
  * :c:type:`c3_isp_params_block_type` and specifies how the data should be
@@ -223,15 +222,8 @@ enum c3_isp_params_block_type {
  *			gamma->pst_gamma_lut[i] = i;
  *	}
  *
- * @type: The parameters block type from :c:type:`c3_isp_params_block_type`
- * @flags: A bitmask of block flags
- * @size: Size (in bytes) of the parameters block, including this header
  */
-struct c3_isp_params_block_header {
-	__u16 type;
-	__u16 flags;
-	__u32 size;
-};
+#define c3_isp_params_block_header v4l2_params_block
 
 /**
  * struct c3_isp_params_awb_gains - Gains for auto-white balance
@@ -498,26 +490,9 @@ struct c3_isp_params_blc {
 /**
  * struct c3_isp_params_cfg - C3 ISP configuration parameters
  *
- * This struct contains the configuration parameters of the C3 ISP
- * algorithms, serialized by userspace into an opaque data buffer. Each
- * configuration parameter block is represented by a block-specific structure
- * which contains a :c:type:`c3_isp_param_block_header` entry as first
- * member. Userspace populates the @data buffer with configuration parameters
- * for the blocks that it intends to configure. As a consequence, the data
- * buffer effective size changes according to the number of ISP blocks that
- * userspace intends to configure.
- *
- * The parameters buffer is versioned by the @version field to allow modifying
- * and extending its definition. Userspace should populate the @version field to
- * inform the driver about the version it intends to use. The driver will parse
- * and handle the @data buffer according to the data layout specific to the
- * indicated revision and return an error if the desired revision is not
- * supported.
- *
- * For each ISP block that userspace wants to configure, a block-specific
- * structure is appended to the @data buffer, one after the other without gaps
- * in between nor overlaps. Userspace shall populate the @total_size field with
- * the effective size, in bytes, of the @data buffer.
+ * This is the driver-specific implementation of :c:type:`v4l2_params_buffer`.
+ *
+ * Currently only C3_ISP_PARAM_BUFFER_V0 is supported.
  *
  * The expected memory layout of the parameters buffer is::
  *
@@ -561,4 +536,8 @@ struct c3_isp_params_cfg {
 	__u8 data[C3_ISP_PARAMS_MAX_SIZE];
 };
 
+/* Make sure the header is type-convertible to the generic v4l2 params one */
+static_assert((sizeof(struct c3_isp_params_cfg) - C3_ISP_PARAMS_MAX_SIZE) ==
+	      sizeof(struct v4l2_params_buffer));
+
 #endif

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
