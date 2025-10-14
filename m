Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A0A3CCD187
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 08:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JESLDAdmDum/62nyqDzf0meNeYEfWQWyk605s4zkoY=; b=N4xK/5ZYYgs0xS
	CWuIsxch4bBQF4EPxGQAQyQ9aFQL6At70K6nGZCfYt0KYpZHp23CyxpiFWVR7OVq953BdBFDZl+bA
	/ePw4oLxgU0Pbg+t/yEhk2+Q/XayoUJ/KxVg319WV8nxZ4fpE+0UilDDt+lDL7QdAMTE0ySKpP+7m
	QKdpbQ3HGwDZozoSQIrtUf2CVFvxjCpckFiRYivoXRKCnssWSzcssZeZS+0KqKqWqje4A29huOexP
	nHk0+eK8BffSOZp8TsOvLBsrTTWXiuRx7wgqSZxJS9/5nna+E2cMKv0/DoFGu8q4gzSyrYzi0WQRK
	ENLIXusiel3TCZqY4Heg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ZyH-0000000FWv4-0rN8;
	Tue, 14 Oct 2025 08:01:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ZyA-0000000FWoN-0eAS;
	Tue, 14 Oct 2025 08:01:21 +0000
Received: from [192.168.1.182] (93-46-82-201.ip106.fastwebnet.it [93.46.82.201])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 41C85E70;
	Tue, 14 Oct 2025 09:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1760428775;
	bh=v3kCxecTZZjO4f1wnxHon/EzaHjCSwCFdWq9smjYTII=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ek8Pg1M9nqwnez+l9hyKwWQQIL4i8gkOlQ7CrEcilxWZWUrTQMIIvmR2XNLQztSxJ
	 K+xitslqh73c+SBIsJEKYfJI/99hOHjZ0fn0LQ9f4SUteYA610uXs9P7dlbesVvU4X
	 ZKEkqLpyUQHBV5v6WYY92JkXwcDzJylaYUDrnMdM=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Tue, 14 Oct 2025 10:00:55 +0200
Subject: [PATCH v7 3/8] media: uapi: Convert Amlogic C3 to V4L2 extensible
 params
MIME-Version: 1.0
Message-Id: <20251014-extensible-parameters-validation-v7-3-6628bed5ca98@ideasonboard.com>
References: <20251014-extensible-parameters-validation-v7-0-6628bed5ca98@ideasonboard.com>
In-Reply-To: <20251014-extensible-parameters-validation-v7-0-6628bed5ca98@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Keke Li <keke.li@amlogic.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dan Scally <dan.scally@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Antoine Bouyer <antoine.bouyer@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6820;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=v3kCxecTZZjO4f1wnxHon/EzaHjCSwCFdWq9smjYTII=;
 b=kA0DAAoBcjQGjxahVjwByyZiAGjuA0aiB993IKCXp3n3m3w9WLuXJHixAEG8P2RnJWpCyNPQS
 4kCMwQAAQoAHRYhBLXEPUiAmiCKj1g4wHI0Bo8WoVY8BQJo7gNGAAoJEHI0Bo8WoVY8WfYQALlj
 8vTagujfPBC+Z7oMVLYRRt73hyFjDfUYcX+3Kd173hLNtNyCquQpJQt4KVjOiTEslnIV/P2OZ4X
 AtITWai9aOV5STv2cO7h1Z/POPLK1gB5w3Y98PoAUAN58LqDl6QoTiXKGG1cyLQ7XfNUpP2Fw/s
 ax1oy7VBpi8DIhJHdD86MCn30Fs8zz280yIt2+VCfojAMdZxqyDbQM4tbW9iG9q3DBcx4BGU6c2
 gG6anjx6YwIgNKSgnzJMD/I5zl4p/hO/GJP7nVP6/NROSzBanSFdw39tmKha35SFBpwXo7Tpi4s
 rZvDbpv/88Lqu+yJygy9QwN5lUOVqt6z+VFm5lsVgL5ZDtI282gp30ZMTP8M2MYWupPv/fY9Ld2
 upj3UFCiXtLodb4Nhx1EDoVMb8IqpcMPbv/O5zxlkigJniSdq8Tk1BJwcz43DAZlRVM+ddtj8Uq
 ryIVb1z7popBYdu9TCb6TpuuzKi5SXnb/pijcs/39xS3UikVsBTuc6rGev3rVUOb1qtTMU6VAa+
 2wNdZfutVNg+LaR33zFEAfQ0h+GzW5EBETA7n9sQOMDsHsk2RCpXYbWcGuV6FlvKgxQlWUaN1tR
 9PaFOMzxQmuJ+l5Nlx0ks7GplODk8Yss5wooRZO8B2YhoT63tf32iITblyrmOI7AoI0B19uD0kf
 T4E3u
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_010118_336522_E3917214 
X-CRM114-Status: GOOD (  25.61  )
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

Reviewed-by: Daniel Scally <dan.scally@ideasonboard.com>
Reviewed-by: Keke Li <keke.li@amlogic.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
 include/uapi/linux/media/amlogic/c3-isp-config.h | 92 +++++++-----------------
 1 file changed, 24 insertions(+), 68 deletions(-)

diff --git a/include/uapi/linux/media/amlogic/c3-isp-config.h b/include/uapi/linux/media/amlogic/c3-isp-config.h
index ed085ea62a574932c7ad8d59d34b2c5c74a597d8..0a3c1cc55ccbbad12f18037d65f32ec9ca1a4ec0 100644
--- a/include/uapi/linux/media/amlogic/c3-isp-config.h
+++ b/include/uapi/linux/media/amlogic/c3-isp-config.h
@@ -6,8 +6,13 @@
 #ifndef _UAPI_C3_ISP_CONFIG_H_
 #define _UAPI_C3_ISP_CONFIG_H_
 
+#ifdef __KERNEL__
+#include <linux/build_bug.h>
+#endif /* __KERNEL__ */
 #include <linux/types.h>
 
+#include <linux/media/v4l2-isp.h>
+
 /*
  * Frames are split into zones of almost equal width and height - a zone is a
  * rectangular tile of a frame. The metering blocks within the ISP collect
@@ -141,7 +146,7 @@ struct c3_isp_stats_info {
  * @C3_ISP_PARAMS_BUFFER_V0: First version of C3 ISP parameters block
  */
 enum c3_isp_params_buffer_version {
-	C3_ISP_PARAMS_BUFFER_V0,
+	C3_ISP_PARAMS_BUFFER_V0 = V4L2_ISP_PARAMS_VERSION_V0,
 };
 
 /**
@@ -176,62 +181,23 @@ enum c3_isp_params_block_type {
 	C3_ISP_PARAMS_BLOCK_SENTINEL
 };
 
-#define C3_ISP_PARAMS_BLOCK_FL_DISABLE (1U << 0)
-#define C3_ISP_PARAMS_BLOCK_FL_ENABLE (1U << 1)
+/* For backward compatibility */
+#define C3_ISP_PARAMS_BLOCK_FL_DISABLE	V4L2_ISP_PARAMS_FL_BLOCK_DISABLE
+#define C3_ISP_PARAMS_BLOCK_FL_ENABLE	V4L2_ISP_PARAMS_FL_BLOCK_ENABLE
 
 /**
  * struct c3_isp_params_block_header - C3 ISP parameter block header
  *
  * This structure represents the common part of all the ISP configuration
- * blocks. Each parameters block shall embed an instance of this structure type
- * as its first member, followed by the block-specific configuration data. The
- * driver inspects this common header to discern the block type and its size and
- * properly handle the block content by casting it to the correct block-specific
- * type.
+ * blocks and is identical to :c:type:`v4l2_isp_params_block_header`.
  *
- * The @type field is one of the values enumerated by
+ * The type field is one of the values enumerated by
  * :c:type:`c3_isp_params_block_type` and specifies how the data should be
- * interpreted by the driver. The @size field specifies the size of the
- * parameters block and is used by the driver for validation purposes. The
- * @flags field is a bitmask of per-block flags C3_ISP_PARAMS_FL*.
- *
- * When userspace wants to disable an ISP block the
- * C3_ISP_PARAMS_BLOCK_FL_DISABLED bit should be set in the @flags field. In
- * this case userspace may optionally omit the remainder of the configuration
- * block, which will be ignored by the driver.
- *
- * When a new configuration of an ISP block needs to be applied userspace
- * shall fully populate the ISP block and omit setting the
- * C3_ISP_PARAMS_BLOCK_FL_DISABLED bit in the @flags field.
- *
- * Userspace is responsible for correctly populating the parameters block header
- * fields (@type, @flags and @size) and the block-specific parameters.
- *
- * For example:
- *
- * .. code-block:: c
+ * interpreted by the driver.
  *
- *	void populate_pst_gamma(struct c3_isp_params_block_header *block) {
- *		struct c3_isp_params_pst_gamma *gamma =
- *			(struct c3_isp_params_pst_gamma *)block;
- *
- *		gamma->header.type = C3_ISP_PARAMS_BLOCK_PST_GAMMA;
- *		gamma->header.flags = C3_ISP_PARAMS_BLOCK_FL_ENABLE;
- *		gamma->header.size = sizeof(*gamma);
- *
- *		for (unsigned int i = 0; i < 129; i++)
- *			gamma->pst_gamma_lut[i] = i;
- *	}
- *
- * @type: The parameters block type from :c:type:`c3_isp_params_block_type`
- * @flags: A bitmask of block flags
- * @size: Size (in bytes) of the parameters block, including this header
+ * The flags field is a bitmask of per-block flags C3_ISP_PARAMS_FL_*.
  */
-struct c3_isp_params_block_header {
-	__u16 type;
-	__u16 flags;
-	__u32 size;
-};
+#define c3_isp_params_block_header v4l2_isp_params_block_header
 
 /**
  * struct c3_isp_params_awb_gains - Gains for auto-white balance
@@ -498,26 +464,10 @@ struct c3_isp_params_blc {
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
+ * This is the driver-specific implementation of
+ * :c:type:`v4l2_isp_params_buffer`.
+ *
+ * Currently only C3_ISP_PARAM_BUFFER_V0 is supported.
  *
  * The expected memory layout of the parameters buffer is::
  *
@@ -561,4 +511,10 @@ struct c3_isp_params_cfg {
 	__u8 data[C3_ISP_PARAMS_MAX_SIZE];
 };
 
+#ifdef __KERNEL__
+/* Make sure the header is type-convertible to the generic v4l2 params one */
+static_assert((sizeof(struct c3_isp_params_cfg) - C3_ISP_PARAMS_MAX_SIZE) ==
+	      sizeof(struct v4l2_isp_params_buffer));
+#endif /* __KERNEL__ */
+
 #endif

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
