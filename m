Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AA97CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 18:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcOJfmlsEZjWtJ7IiueUBUtrXk8F9TCttlEi0ZyllUk=; b=vNz8jEssZgW5Az
	xaJ5hlt9l73IicGI5d/3P7DjPqabW1JgATbx9GKMJ4JtEAVxW43AxemCgyGWwkoWmOss9by+PaGkd
	L3hEdXmVDPY4E3BNPKqeW/FuNxWMS2zezTID0FhcOd3zCvZSfjRR5D5WTCFAOgPs3/syIBRg2pu8v
	++cQ2K2GEbHKtqAf+ZfyKOnDdPT/GyfwMO4KNFTMed4tTAWVbUf+vKqiV9EBbFHEdyqr16bG80vCl
	DV3GnKupkY9ztTXZdTLrwfGEvcNZNrL4JZqcXaCi0QwR2Q1To4Bq9XChc98+QV5lDluDCOYPje3tU
	v4UWQvknzT5hSTbQD8tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoQsK-0000000BFw9-1DW6;
	Tue, 19 Aug 2025 18:16:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoNjk-0000000AobQ-39Fo;
	Tue, 19 Aug 2025 14:54:57 +0000
Received: from [192.168.1.106] (mob-5-90-52-92.net.vodafone.it [5.90.52.92])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 352392F81;
	Tue, 19 Aug 2025 16:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1755615237;
	bh=HlwIi27rkUKHSPwSnnoaeuLrWaHzhFaO+jtXJD7U8Tc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FMetXKF7itx5NumUmEl0pO5U8Ro5R8hUrdwICPMQCylzKbR1TU7gf+F+8txv1ii2r
	 yk4Uumj7ibqovBjLTCo2GsnW4jpSFFbOw7FhmGpepA4G5i4pXF5fGhwCH3ryx4TGq1
	 f2R1cvXdVeZro80OC5o0DmBIWtLnouTTF+ZUY3pA=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Tue, 19 Aug 2025 16:54:42 +0200
Subject: [PATCH v3 1/8] media: uapi: Introduce V4L2 extensible params
MIME-Version: 1.0
Message-Id: <20250819-extensible-parameters-validation-v3-1-9dc008348b30@ideasonboard.com>
References: <20250819-extensible-parameters-validation-v3-0-9dc008348b30@ideasonboard.com>
In-Reply-To: <20250819-extensible-parameters-validation-v3-0-9dc008348b30@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Keke Li <keke.li@amlogic.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dan Scally <dan.scally@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=8562;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=HlwIi27rkUKHSPwSnnoaeuLrWaHzhFaO+jtXJD7U8Tc=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBopJA6wwFbSYCNkUtHge/b2hOLJqpAxfUbxwsB6
 73Kf8SvcVSJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaKSQOgAKCRByNAaPFqFW
 PJ4gD/9bc4xg1J4lFYJwlhFh1z8M32kuAkkjIwZpqWJ3/ZZb02qNDr60kq0ELAKhivqbNNmqf91
 czQb7htw8awc4Y5s00X+qc0bpEViEJdltjcs5Rmev0xBOXzgOFKF9eeE6LpdcOzD96gSfRp+lSE
 eiirfJflibwYmQE9XKy20iyzr1vJv6J8wfY08SAO87lOmtAtlbn5R6bkzQMqoXgBrPCKypeXEy7
 L1Yr5mTgdkFwSkcY5RF0nqRD/XMevONKTt+cCTYOS6gAjsEfITP+HFPxQ5TFMjq20+gUlOwVERR
 fZ3aI2NkrOHTEJ0cfGts9Kb1ZmTgr19tC3UhW8KjK1rbvv4WjuGTwxhFiEtVA0MdeVRabPISVIn
 yL3+p8IVfDj+U2SX91p+HFA5UT/HGmRjzTOMqlpDt8a23UrFNJx2LGM/PttJ3wIO2vg7r464yjy
 PmBFnv9HGyz1Lt3tqThuQu9TqKSxLcxEhGxAkd+CLLgznLmmxAbj4db8VGfSIWt0JtHyfmr2R1n
 X4a9TUB40yWOOERZr6IrhfiOxaCufLMBiUaq4fMo+yefpQiDN+FR4S8808oTOnMqrZw4z+EIPT5
 gw/jN98Lq/u+81Vbyq0p2IFXJUgZ5CpeCjBnsUup3RZAQss8tPuaAtghJa6nX9LbjFVwFeLYxp7
 +Bi0sA71q5bB5Lg==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_075456_937024_0D3D7188 
X-CRM114-Status: GOOD (  31.29  )
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

Introduce v4l2-extensible-params.h in the Linux kernel uAPI.

The header defines two types that all drivers that use the extensible
parameters format for ISP configuration shall use to build their own
format versions.

The newly introduce type v4l2_params_block represent the
header to be prepend to each ISP configuration block and the
v4l2_params_buffer type represent the base type for the configuration
parameters buffer.

The v4l2_params_buffer represents the container for the ISP
configuration data block. The generic type is defined with a 0-sized
data block that specific ISP implementation shall properly size
according to their capabilities.

[Add v4l2_params_buffer_size()]

Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
Reviewed-by: Daniel Scally <dan.scally@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 MAINTAINERS                                       |   6 +
 include/uapi/linux/media/v4l2-extensible-params.h | 144 ++++++++++++++++++++++
 2 files changed, 150 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fe168477caa45799dfe07de2f54de6d6a1ce0615..67216d1e92d7ac81617bb3c4329e4096aa205706 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26380,6 +26380,12 @@ F:	drivers/media/i2c/vd55g1.c
 F:	drivers/media/i2c/vd56g3.c
 F:	drivers/media/i2c/vgxy61.c
 
+V4L2 EXTENSIBLE PARAMETERS FORMAT
+M:	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	include/uapi/linux/media/v4l2-extensible-params.h
+
 VF610 NAND DRIVER
 M:	Stefan Agner <stefan@agner.ch>
 L:	linux-mtd@lists.infradead.org
diff --git a/include/uapi/linux/media/v4l2-extensible-params.h b/include/uapi/linux/media/v4l2-extensible-params.h
new file mode 100644
index 0000000000000000000000000000000000000000..ace89299a4b37e428c0bc9a72fbc079b1dcda91a
--- /dev/null
+++ b/include/uapi/linux/media/v4l2-extensible-params.h
@@ -0,0 +1,144 @@
+/* SPDX-License-Identifier: ((GPL-2.0+ WITH Linux-syscall-note) OR MIT) */
+/*
+ * Video4Linux2 extensible configuration parameters base types
+ *
+ * Copyright (C) 2025 Ideas On Board Oy
+ * Author: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
+ */
+
+#ifndef _UAPI_V4L2_PARAMS_H_
+#define _UAPI_V4L2_PARAMS_H_
+
+#include <linux/types.h>
+
+#define V4L2_PARAMS_FL_BLOCK_DISABLE	(1U << 0)
+#define V4L2_PARAMS_FL_BLOCK_ENABLE	(1U << 1)
+
+/*
+ * Reserve the first 8 bits for V4L2_PARAMS_FL_* flag. Platform-specific flags
+ * should be defined as:
+ * #define PLATFORM_SPECIFIC_FLAG0	((1U << V4L2_PARAMS_FL_PLATFORM_FLAGS(0))
+ * #define PLATFORM_SPECIFIC_FLAG1	((1U << V4L2_PARAMS_FL_PLATFORM_FLAGS(1))
+ */
+#define V4L2_PARAMS_FL_PLATFORM_FLAGS(n)	((n) << 8)
+
+/**
+ * struct v4l2_params_block_header - V4L2 extensible parameters block header
+ *
+ * This structure represents the common part of all the ISP configuration
+ * blocks. Each parameters block shall embed an instance of this structure type
+ * as its first member, followed by the block-specific configuration data. The
+ * driver inspects this common header to discern the block type and its size and
+ * properly handle the block content by casting it to the correct block-specific
+ * type.
+ *
+ * The @type field is one of the values enumerated by each platform-specific ISP
+ * block types which specifies how the data should be interpreted by the driver.
+ * The @size field specifies the size of the parameters block and is used by the
+ * driver for validation purposes.
+ *
+ * The @flags field is a bitmask of per-block flags V4L2_PARAMS_FL_* and
+ * platform-specific flags specified by the platform-specific header.
+ *
+ * Documentation of the platform-specific flags handling is specified by the
+ * platform-specific block header type:
+ *
+ * - Rockchip RkISP1: :c:type:`rkisp1_ext_params_block_type`
+ * - Amlogic C3: :c:type:`c3_isp_params_block_type`
+ *
+ * Userspace is responsible for correctly populating the parameters block header
+ * fields (@type, @flags and @size) and the block-specific parameters.
+ *
+ * @type: The parameters block type (platform-specific)
+ * @flags: A bitmask of block flags (platform-specific)
+ * @size: Size (in bytes) of the parameters block, including this header
+ */
+struct v4l2_params_block_header {
+	__u16 type;
+	__u16 flags;
+	__u32 size;
+} __attribute__((aligned(8)));
+
+/**
+ * v4l2_params_buffer_size - Calculate size of v4l2_params_buffer for a platform
+ *
+ * Users of the v4l2 extensible parameters will have differing sized data arrays
+ * depending on their specific parameter buffers. Drivers and userspace will
+ * need to be able to calculate the appropriate size of the struct to
+ * accommodate all ISP configuration blocks provided by the platform.
+ * This macro provides a convenient tool for the calculation.
+ *
+ * Each driver shall provide a definition of their extensible parameters
+ * implementation data buffer size. As an example:
+ *
+ * #define PLATFORM_BLOCKS_MAX_SIZE		\
+ *	sizeof(platform_block_0)	+	\
+ *	sizeof(platform_block_1)
+ *
+ * #define PLATFORM_BUFFER_SIZE			\
+ *	v4l2_params_buffer_size(PLATFORM_BLOCKS_MAX_SIZE)
+ *
+ * Drivers are then responsible for allocating buffers of the proper size
+ * by assigning PLATFORM_BUFFER_SIZE to the per-plane size of the videobuf2
+ * .queue_setup() operation and userspace shall use PLATFORM_BUFFER_SIZE
+ * when populating the ISP configuration data buffer.
+ *
+ * @max_params_size: The total size of the ISP configuration blocks
+ */
+#define v4l2_params_buffer_size(max_params_size) \
+	(offsetof(struct v4l2_params_buffer, data) + (max_params_size))
+
+/**
+ * struct v4l2_params_buffer - V4L2 extensible parameters configuration
+ *
+ * This struct contains the configuration parameters of the ISP algorithms,
+ * serialized by userspace into a data buffer. Each configuration parameter
+ * block is represented by a block-specific structure which contains a
+ * :c:type:`v4l2_params_block_header` entry as first member. Userspace populates
+ * the @data buffer with configuration parameters for the blocks that it intends
+ * to configure. As a consequence, the data buffer effective size changes
+ * according to the number of ISP blocks that userspace intends to configure and
+ * is set by userspace in the @data_size field.
+ *
+ * The parameters buffer is versioned by the @version field to allow modifying
+ * and extending its definition. Userspace shall populate the @version field to
+ * inform the driver about the version it intends to use. The driver will parse
+ * and handle the @data buffer according to the data layout specific to the
+ * indicated version and return an error if the desired version is not
+ * supported.
+ *
+ * For each ISP block that userspace wants to configure, a block-specific
+ * structure is appended to the @data buffer, one after the other without gaps
+ * in between nor overlaps. Userspace shall populate the @data_size field with
+ * the effective size, in bytes, of the @data buffer.
+ *
+ * Drivers shall take care of properly sizing of the extensible parameters
+ * buffer @data array. The v4l2_params_buffer type is defined with a
+ * flexible-array-member at the end, which resolves to a size of 0 bytes when
+ * inspected with sizeof(struct v4l2_params_buffer). This of course is not
+ * suitable for neither buffer allocation in the kernel driver nor for proper
+ * handling in userspace of the @data buffer it has to populate.
+ *
+ * Drivers using this type in their userspace API definition are responsible
+ * for providing the exact definition of the @data buffer size using the
+ * v4l2_params_buffer_size() macro. The size shall be used
+ * by the driver for buffers allocation and by userspace for populating the
+ * @data buffer before queueing it to the driver
+ *
+ * Drivers that were already using extensible-parameters before the introduction
+ * of this file define their own type-convertible implementation of this
+ * type, see:
+ * - Rockchip RkISP1: :c:type:`rkisp1_ext_params_cfg`
+ * - Amlogic C3: :c:type:`c3_isp_params_cfg`
+ *
+ * @version: The parameters buffer version (platform-specific)
+ * @data_size: The configuration data effective size, excluding this header
+ * @data: The configuration data
+ */
+struct v4l2_params_buffer {
+	__u32 version;
+	__u32 data_size;
+	__u8 data[];
+};
+
+#endif /* _UAPI_V4L2_PARAMS_H_ */

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
