Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D99C7115C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 07:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMqKrgP2DiBM87MFq7ikeR67P5eFANjD/DzM3UVJ5+g=; b=1E2SqrUaV9zPCT
	CfDkFDG2ucpRd7QJaGPqqlF6Co8Zk/hlqUwEx75FyngwAnFeZaiUuTSoMV8KoA9wgtxw664EDEwm2
	ggfo1lPIv2/vYxCnHNYaoRWcXbH8/5kEuD1dO+R8xYx07JIaX3JNMwSObrZW4aX9o/TVtb0em10xc
	0XeWNATCLryNHQ2QH6VlEnJJf9ikmomfLNOmmL1KUlk+Nmt4oVxIp7Jh9hq9i2pOJwnWf5UdKiyWv
	G98UPKmn7UnBg9pQ12v9jEn3zumb789MeAmt6ysVtzdUKnrUfsXzZI3NWVN1DBMEIn+qZz8U7wrS6
	71f6zbTEsG4+9FfoWvMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRnX0-00000009KLz-3bri;
	Wed, 18 Jun 2025 07:48:26 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRnUM-00000009Jq1-3Q0r;
	Wed, 18 Jun 2025 07:45:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=iJe8xguxUKaxBEIyQgGloMLTQZvG1pmxXtuDZXWFdMk=; b=o
	tcUhR4M2NRRiyHXlBSP8R9EjB3C0gNCiY2j/Cxf6MlBoWrnbQ0HI3uC1XcDDqdep
	Vy64Xqnph6RWZOZtTYws5G+AGfJpvS/TzRfXAxCiSzlanYJAu9SU6UEDzLjNBYpK
	dZf2bxBnrt0BDW3/atNvJflluCtwkq+QKmU7FGQFOc=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-103 (Coremail) ; Wed, 18 Jun 2025 15:45:00 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 18 Jun 2025 15:45:00 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: simona@ffwll.ch, airlied@gmail.com, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, geert@linux-m68k.org,
	tomi.valkeinen@ideasonboard.com, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
	linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org,
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org
Subject: Re:[PATCH v5 02/25] drm/dumb-buffers: Provide helper to set pitch
 and size
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250613090431.127087-3-tzimmermann@suse.de>
References: <20250613090431.127087-1-tzimmermann@suse.de>
 <20250613090431.127087-3-tzimmermann@suse.de>
X-NTES-SC: AL_Qu2eAv6YvU8r5iWeZekfmkcVgOw9UcO5v/Qk3oZXOJF8jC3pxB8AV3NTMGPMwcWDBhmonQiHSjJy8+ZjY5ByWr8wBZ26EkXLbzVmS1V4yXEbfg==
MIME-Version: 1.0
Message-ID: <6d7ec290.6d99.19781ff9696.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZygvCgD3n4h8blJoNyQfAA--.23669W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hNwXmhSbBhBTgABsv
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_004543_188513_F80B56AC 
X-CRM114-Status: GOOD (  25.29  )
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


Hi, 

At 2025-06-13 17:00:21, "Thomas Zimmermann" <tzimmermann@suse.de> wrote:
>Add drm_modes_size_dumb(), a helper to calculate the dumb-buffer
>scanline pitch and allocation size. Implementations of struct
>drm_driver.dumb_create can call the new helper for their size
>computations.
>
>There is currently quite a bit of code duplication among DRM's
>memory managers. Each calculates scanline pitch and buffer size
>from the given arguments, but the implementations are inconsistent
>in how they treat alignment and format support. Later patches will
>unify this code on top of drm_mode_size_dumb() as much as possible.
>
>drm_mode_size_dumb() uses existing 4CC format helpers to interpret
>the given color mode. This makes the dumb-buffer interface behave
>similar the kernel's video= parameter. Current per-driver implementations
>again likely have subtle differences or bugs in how they support color
>modes.
>
>The dumb-buffer UAPI is only specified for known color modes. These
>values describe linear, single-plane RGB color formats or legacy index
>formats. Other values should not be specified. But some user space
>still does. So for unknown color modes, there are a number of known
>exceptions for which drm_mode_size_dumb() calculates the pitch from
>the bpp value, as before. All other values work the same but print
>an error.
>
>v5:
>- check for overflows with check_mul_overflow() (Tomi)
>v4:
>- use %u conversion specifier (Geert)
>- list DRM_FORMAT_Dn in UAPI docs (Geert)
>- avoid dmesg spamming with drm_warn_once() (Sima)
>- add more information about bpp special case (Sima)
>- clarify parameters for hardware alignment
>- add a TODO item for DUMB_CREATE2
>v3:
>- document the UAPI semantics
>- compute scanline pitch from for unknown color modes (Andy, Tomi)
>
>Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
  Reviewed-by: Andy Yan <andyshrk@163.com>

>---
> Documentation/gpu/todo.rst         |  27 ++++++
> drivers/gpu/drm/drm_dumb_buffers.c | 130 +++++++++++++++++++++++++++++
> include/drm/drm_dumb_buffers.h     |  14 ++++
> include/uapi/drm/drm_mode.h        |  50 ++++++++++-
> 4 files changed, 220 insertions(+), 1 deletion(-)
> create mode 100644 include/drm/drm_dumb_buffers.h
>
>diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
>index be8637da3fe9..f7312afa87b5 100644
>--- a/Documentation/gpu/todo.rst
>+++ b/Documentation/gpu/todo.rst
>@@ -648,6 +648,33 @@ Contact: Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter
> 
> Level: Advanced
> 
>+Implement a new DUMB_CREATE2 ioctl
>+----------------------------------
>+
>+The current DUMB_CREATE ioctl is not well defined. Instead of a pixel and
>+framebuffer format, it only accepts a color mode of vague semantics. Assuming
>+a linear framebuffer, the color mode gives and idea of the supported pixel
>+format. But userspace effectively has to guess the correct values. It really
>+only works reliable with framebuffers in XRGB8888. Userspace has begun to
>+workaround these limitations by computing arbitrary format's buffer sizes and
>+calculating their sizes in terms of XRGB8888 pixels.
>+
>+One possible solution is a new ioctl DUMB_CREATE2. It should accept a DRM
>+format and a format modifier to resolve the color mode's ambiguity. As
>+framebuffers can be multi-planar, the new ioctl has to return the buffer size,
>+pitch and GEM handle for each individual color plane.
>+
>+In the first step, the new ioctl can be limited to the current features of
>+the existing DUMB_CREATE. Individual drivers can then be extended to support
>+multi-planar formats. Rockchip might require this and would be a good candidate.
>+
>+In addition to the kernel implementation, there must be user-space support
>+for the new ioctl. There's code in Mesa that might be able to use the new
>+call.
>+
>+Contact: Thomas Zimmermann <tzimmermann@suse.de>
>+
>+Level: Advanced
> 
> Better Testing
> ==============
>diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
>index 9916aaf5b3f2..e9eed9a5b760 100644
>--- a/drivers/gpu/drm/drm_dumb_buffers.c
>+++ b/drivers/gpu/drm/drm_dumb_buffers.c
>@@ -25,6 +25,8 @@
> 
> #include <drm/drm_device.h>
> #include <drm/drm_drv.h>
>+#include <drm/drm_dumb_buffers.h>
>+#include <drm/drm_fourcc.h>
> #include <drm/drm_gem.h>
> #include <drm/drm_mode.h>
> 
>@@ -57,6 +59,134 @@
>  * a hardware-specific ioctl to allocate suitable buffer objects.
>  */
> 
>+static int drm_mode_align_dumb(struct drm_mode_create_dumb *args,
>+			       unsigned long hw_pitch_align,
>+			       unsigned long hw_size_align)
>+{
>+	u32 pitch = args->pitch;
>+	u32 size;
>+
>+	if (!pitch)
>+		return -EINVAL;
>+
>+	if (hw_pitch_align)
>+		pitch = roundup(pitch, hw_pitch_align);
>+
>+	if (!hw_size_align)
>+		hw_size_align = PAGE_SIZE;
>+	else if (!IS_ALIGNED(hw_size_align, PAGE_SIZE))
>+		return -EINVAL; /* TODO: handle this if necessary */
>+
>+	if (check_mul_overflow(args->height, pitch, &size))
>+		return -EINVAL;
>+	size = ALIGN(size, hw_size_align);
>+	if (!size)
>+		return -EINVAL;
>+
>+	args->pitch = pitch;
>+	args->size = size;
>+
>+	return 0;
>+}
>+
>+/**
>+ * drm_mode_size_dumb - Calculates the scanline and buffer sizes for dumb buffers
>+ * @dev: DRM device
>+ * @args: Parameters for the dumb buffer
>+ * @hw_pitch_align: Hardware scanline alignment in bytes
>+ * @hw_size_align: Hardware buffer-size alignment in bytes
>+ *
>+ * The helper drm_mode_size_dumb() calculates the size of the buffer
>+ * allocation and the scanline size for a dumb buffer. Callers have to
>+ * set the buffers width, height and color mode in the argument @arg.
>+ * The helper validates the correctness of the input and tests for
>+ * possible overflows. If successful, it returns the dumb buffer's
>+ * required scanline pitch and size in &args.
>+ *
>+ * The parameter @hw_pitch_align allows the driver to specifies an
>+ * alignment for the scanline pitch, if the hardware requires any. The
>+ * calculated pitch will be a multiple of the alignment. The parameter
>+ * @hw_size_align allows to specify an alignment for buffer sizes. The
>+ * provided alignment should represent requirements of the graphics
>+ * hardware. drm_mode_size_dumb() handles GEM-related constraints
>+ * automatically across all drivers and hardware. For example, the
>+ * returned buffer size is always a multiple of PAGE_SIZE, which is
>+ * required by mmap().
>+ *
>+ * Returns:
>+ * Zero on success, or a negative error code otherwise.
>+ */
>+int drm_mode_size_dumb(struct drm_device *dev,
>+		       struct drm_mode_create_dumb *args,
>+		       unsigned long hw_pitch_align,
>+		       unsigned long hw_size_align)
>+{
>+	u64 pitch = 0;
>+	u32 fourcc;
>+
>+	/*
>+	 * The scanline pitch depends on the buffer width and the color
>+	 * format. The latter is specified as a color-mode constant for
>+	 * which we first have to find the corresponding color format.
>+	 *
>+	 * Different color formats can have the same color-mode constant.
>+	 * For example XRGB8888 and BGRX8888 both have a color mode of 32.
>+	 * It is possible to use different formats for dumb-buffer allocation
>+	 * and rendering as long as all involved formats share the same
>+	 * color-mode constant.
>+	 */
>+	fourcc = drm_driver_color_mode_format(dev, args->bpp);
>+	if (fourcc != DRM_FORMAT_INVALID) {
>+		const struct drm_format_info *info = drm_format_info(fourcc);
>+
>+		if (!info)
>+			return -EINVAL;
>+		pitch = drm_format_info_min_pitch(info, 0, args->width);
>+	} else if (args->bpp) {
>+		/*
>+		 * Some userspace throws in arbitrary values for bpp and
>+		 * relies on the kernel to figure it out. In this case we
>+		 * fall back to the old method of using bpp directly. The
>+		 * over-commitment of memory from the rounding is acceptable
>+		 * for compatibility with legacy userspace. We have a number
>+		 * of deprecated legacy values that are explicitly supported.
>+		 */
>+		switch (args->bpp) {
>+		default:
>+			drm_warn_once(dev,
>+				      "Unknown color mode %u; guessing buffer size.\n",
>+				      args->bpp);
>+			fallthrough;
>+		/*
>+		 * These constants represent various YUV formats supported by
>+		 * drm_gem_afbc_get_bpp().
>+		 */
>+		case 12: // DRM_FORMAT_YUV420_8BIT
>+		case 15: // DRM_FORMAT_YUV420_10BIT
>+		case 30: // DRM_FORMAT_VUY101010
>+			fallthrough;
>+		/*
>+		 * Used by Mesa and Gstreamer to allocate NV formats and others
>+		 * as RGB buffers. Technically, XRGB16161616F formats are RGB,
>+		 * but the dumb buffers are not supposed to be used for anything
>+		 * beyond 32 bits per pixels.
>+		 */
>+		case 10: // DRM_FORMAT_NV{15,20,30}, DRM_FORMAT_P010
>+		case 64: // DRM_FORMAT_{XRGB,XBGR,ARGB,ABGR}16161616F
>+			pitch = args->width * DIV_ROUND_UP(args->bpp, SZ_8);
>+			break;
>+		}
>+	}
>+
>+	if (!pitch || pitch > U32_MAX)
>+		return -EINVAL;
>+
>+	args->pitch = pitch;
>+
>+	return drm_mode_align_dumb(args, hw_pitch_align, hw_size_align);
>+}
>+EXPORT_SYMBOL(drm_mode_size_dumb);
>+
> int drm_mode_create_dumb(struct drm_device *dev,
> 			 struct drm_mode_create_dumb *args,
> 			 struct drm_file *file_priv)
>diff --git a/include/drm/drm_dumb_buffers.h b/include/drm/drm_dumb_buffers.h
>new file mode 100644
>index 000000000000..1f3a8236fb3d
>--- /dev/null
>+++ b/include/drm/drm_dumb_buffers.h
>@@ -0,0 +1,14 @@
>+/* SPDX-License-Identifier: MIT */
>+
>+#ifndef __DRM_DUMB_BUFFERS_H__
>+#define __DRM_DUMB_BUFFERS_H__
>+
>+struct drm_device;
>+struct drm_mode_create_dumb;
>+
>+int drm_mode_size_dumb(struct drm_device *dev,
>+		       struct drm_mode_create_dumb *args,
>+		       unsigned long hw_pitch_align,
>+		       unsigned long hw_size_align);
>+
>+#endif
>diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
>index c082810c08a8..efe8f5ad35ee 100644
>--- a/include/uapi/drm/drm_mode.h
>+++ b/include/uapi/drm/drm_mode.h
>@@ -1058,7 +1058,7 @@ struct drm_mode_crtc_page_flip_target {
>  * struct drm_mode_create_dumb - Create a KMS dumb buffer for scanout.
>  * @height: buffer height in pixels
>  * @width: buffer width in pixels
>- * @bpp: bits per pixel
>+ * @bpp: color mode
>  * @flags: must be zero
>  * @handle: buffer object handle
>  * @pitch: number of bytes between two consecutive lines
>@@ -1066,6 +1066,54 @@ struct drm_mode_crtc_page_flip_target {
>  *
>  * User-space fills @height, @width, @bpp and @flags. If the IOCTL succeeds,
>  * the kernel fills @handle, @pitch and @size.
>+ *
>+ * The value of @bpp is a color-mode number describing a specific format
>+ * or a variant thereof. The value often corresponds to the number of bits
>+ * per pixel for most modes, although there are exceptions. Each color mode
>+ * maps to a DRM format plus a number of modes with similar pixel layout.
>+ * Framebuffer layout is always linear.
>+ *
>+ * Support for all modes and formats is optional. Even if dumb-buffer
>+ * creation with a certain color mode succeeds, it is not guaranteed that
>+ * the DRM driver supports any of the related formats. Most drivers support
>+ * a color mode of 32 with a format of DRM_FORMAT_XRGB8888 on their primary
>+ * plane.
>+ *
>+ * +------------+------------------------+------------------------+
>+ * | Color mode | Framebuffer format     | Compatible formats     |
>+ * +============+========================+========================+
>+ * |     32     |  * DRM_FORMAT_XRGB8888 |  * DRM_FORMAT_BGRX8888 |
>+ * |            |                        |  * DRM_FORMAT_RGBX8888 |
>+ * |            |                        |  * DRM_FORMAT_XBGR8888 |
>+ * +------------+------------------------+------------------------+
>+ * |     24     |  * DRM_FORMAT_RGB888   |  * DRM_FORMAT_BGR888   |
>+ * +------------+------------------------+------------------------+
>+ * |     16     |  * DRM_FORMAT_RGB565   |  * DRM_FORMAT_BGR565   |
>+ * +------------+------------------------+------------------------+
>+ * |     15     |  * DRM_FORMAT_XRGB1555 |  * DRM_FORMAT_BGRX1555 |
>+ * |            |                        |  * DRM_FORMAT_RGBX1555 |
>+ * |            |                        |  * DRM_FORMAT_XBGR1555 |
>+ * +------------+------------------------+------------------------+
>+ * |      8     |  * DRM_FORMAT_C8       |  * DRM_FORMAT_D8       |
>+ * |            |                        |  * DRM_FORMAT_R8       |
>+ * +------------+------------------------+------------------------+
>+ * |      4     |  * DRM_FORMAT_C4       |  * DRM_FORMAT_D4       |
>+ * |            |                        |  * DRM_FORMAT_R4       |
>+ * +------------+------------------------+------------------------+
>+ * |      2     |  * DRM_FORMAT_C2       |  * DRM_FORMAT_D2       |
>+ * |            |                        |  * DRM_FORMAT_R2       |
>+ * +------------+------------------------+------------------------+
>+ * |      1     |  * DRM_FORMAT_C1       |  * DRM_FORMAT_D1       |
>+ * |            |                        |  * DRM_FORMAT_R1       |
>+ * +------------+------------------------+------------------------+
>+ *
>+ * Color modes of 10, 12, 15, 30 and 64 are only supported for use by
>+ * legacy user space. Please don't use them in new code. Other modes
>+ * are not support.
>+ *
>+ * Do not attempt to allocate anything but linear framebuffer memory
>+ * with single-plane RGB data. Allocation of other framebuffer
>+ * layouts requires dedicated ioctls in the respective DRM driver.
>  */
> struct drm_mode_create_dumb {
> 	__u32 height;
>-- 
>2.49.0
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
