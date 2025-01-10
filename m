Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17381E7719C
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jan 2025 01:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlp6ybSP5RSBP/WYTJBij/3YUEiXPXfbs5b/o3gGRAs=; b=yzctwScZylZh0o
	55k8ARa6IJ8AMXL3O/w37oLH//GDdQ7XkgxhzHSVMx2j7fwZnCBBHrAL8G7PfBH40IO0aB6XLeRho
	O8haId/VyMC4ETZySxoHZ4o3K4uGAzgdh4d3Mqt5G6AvKfyJ6/oLQsZZAxkxljAhp/BDD4CYj3NW0
	JOsI5puG/P3pBWo2riaLxcdvlXuxGGTnEUE8O0bcc8RlcI19J2fhuIfyUsIZIoNQ5LMl/cDpHJ/Ja
	YFtUBTuSPm9BtFoLxX98mn6GgJFQtvwYYE00hgfAX2vVwIrIP9b3TYFOYbeOOlvCdoT+4F01v2yUB
	dIpjGChifrwWa3gpILcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW4A7-0000000DnJP-3PlH;
	Fri, 10 Jan 2025 01:50:11 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW4A4-0000000DnIB-2zNV;
	Fri, 10 Jan 2025 01:50:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=rp/KcRTe1MsmgU0PH0K2oNjpoThGJemgMsEfHLsmXZU=; b=W
	0+7i2RYJnb+IwDKnerRnHxSxLQCjeH0nmPAixXRZJIh73RBq6tWkXMlB8ARB+/jY
	np1B30dwgcuk3AfdfRFVCdiEx8UK+S2MJZD/8WuIfTW+pMd2/CA2ZVtLym/AK7/5
	ZlsIJ8WXsVg/F0EKQPdKfYxTn5KUwLSo/yOl2xLFwA=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-121 (Coremail) ; Fri, 10 Jan 2025 09:49:34 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 10 Jan 2025 09:49:34 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com, 
	simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, 
	linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org, 
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org
Subject: Re:[PATCH v2 02/25] drm/dumb-buffers: Provide helper to set pitch
 and size
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250109150310.219442-3-tzimmermann@suse.de>
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-3-tzimmermann@suse.de>
X-NTES-SC: AL_Qu2YBPicvE8s4iWYYukfmkcVgOw9UcO5v/Qk3oZXOJF8jArp+TAefEJSMWvIws60LDKUmgmGdih16sFZbLt8cLIWf0LCiIohAdHyNGUiBtRGKQ==
MIME-Version: 1.0
Message-ID: <94f78e1.19bf.1944de709b0.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eSgvCgDnqsWufIBna6lTAA--.18314W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBTQXmeAdu58vQABsN
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_175009_072565_CF572A17 
X-CRM114-Status: GOOD (  15.95  )
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


Hi Thomas,

At 2025-01-09 22:56:56, "Thomas Zimmermann" <tzimmermann@suse.de> wrote:
>Add drm_modes_size_dumb(), a helper to calculate the dumb-buffer
>scanline pitch and allocation size. Implementations of struct
>drm_driver.dumb_create can call the new helper for their size
>computations. There's currently quite a bit of code duplication
>among DRM's memory managers. Each calculates scanline pitch and
>buffer size from the given arguments, but the implementations are
>inconsistent in how they treat alignment and format support. Later
>patches will unify this code on top of drm_mode_size_dumb() as
>much as possible.
>
>drm_mode_size_dumb() uses existing 4CC format helpers to interpret the
>given color mode. This makes the dumb-buffer interface behave similar
>the kernel's video= parameter. Again, current per-driver implementations
>likely have subtle differences or bugs in how they support color modes.
>
>Future directions: one bug is present in the current input validation
>in drm_mode_create_dumb(). The dumb-buffer overflow tests round up any
>given bits-per-pixel value to a multiple of 8. So even one-bit formats,
>such as DRM_FORMAT_C1, require 8 bits per pixel. While not common,
>low-end displays use such formats; with a possible overcommitment of
>memory. At some point, the validation logic in drm_mode_size_dumb() is
>supposed to replace the erronous code.
>
>Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>---
> drivers/gpu/drm/drm_dumb_buffers.c | 93 ++++++++++++++++++++++++++++++
> include/drm/drm_dumb_buffers.h     | 14 +++++
> 2 files changed, 107 insertions(+)
> create mode 100644 include/drm/drm_dumb_buffers.h
>
>diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
>index 9916aaf5b3f2..fd39720bd617 100644
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
>@@ -57,6 +59,97 @@
>  * a hardware-specific ioctl to allocate suitable buffer objects.
>  */
> 
>+static int drm_mode_align_dumb(struct drm_mode_create_dumb *args,
>+			       unsigned long pitch_align,
>+			       unsigned long size_align)
>+{
>+	u32 pitch = args->pitch;
>+	u32 size;
>+
>+	if (!pitch)
>+		return -EINVAL;
>+
>+	if (pitch_align)
>+		pitch = roundup(pitch, pitch_align);
>+
>+	/* overflow checks for 32bit size calculations */
>+	if (args->height > U32_MAX / pitch)
>+		return -EINVAL;
>+
>+	if (!size_align)
>+		size_align = PAGE_SIZE;
>+	else if (!IS_ALIGNED(size_align, PAGE_SIZE))
>+		return -EINVAL;
>+
>+	size = ALIGN(args->height * pitch, size_align);
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
>+ * @pitch_align: Scanline alignment in bytes
>+ * @size_align: Buffer-size alignment in bytes
>+ *
>+ * The helper drm_mode_size_dumb() calculates the size of the buffer
>+ * allocation and the scanline size for a dumb buffer. Callers have to
>+ * set the buffers width, height and color mode in the argument @arg.
>+ * The helper validates the correctness of the input and tests for
>+ * possible overflows. If successful, it returns the dumb buffer's
>+ * required scanline pitch and size in &args.
>+ *
>+ * The parameter @pitch_align allows the driver to specifies an
>+ * alignment for the scanline pitch, if the hardware requires any. The
>+ * calculated pitch will be a multiple of the alignment. The parameter
>+ * @size_align allows to specify an alignment for buffer sizes. The
>+ * returned size is always a multiple of PAGE_SIZE.
>+ *
>+ * Returns:
>+ * Zero on success, or a negative error code otherwise.
>+ */
>+int drm_mode_size_dumb(struct drm_device *dev,
>+		       struct drm_mode_create_dumb *args,
>+		       unsigned long pitch_align,
>+		       unsigned long size_align)
>+{
>+	u32 fourcc;
>+	const struct drm_format_info *info;
>+	u64 pitch;
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

This will return -EINVAL with bpp drm_mode_legacy_fb_format doesn't support,
such as(NV15, NV20, NV30, bpp is 10)[0]

And there are also some AFBC based format with bpp can't be handled here, see:
static __u32 drm_gem_afbc_get_bpp(struct drm_device *dev,
                                  const struct drm_mode_fb_cmd2 *mode_cmd)
{               
        const struct drm_format_info *info;
                
        info = drm_get_format_info(dev, mode_cmd);
                
        switch (info->format) {
        case DRM_FORMAT_YUV420_8BIT:       
                return 12;
        case DRM_FORMAT_YUV420_10BIT:      
                return 15;                 
        case DRM_FORMAT_VUY101010:         
                return 30;                 
        default:
                return drm_format_info_bpp(info, 0);
        }
}



[0]https://gitlab.freedesktop.org/mesa/drm/-/blob/main/tests/modetest/buffers.c?ref_type=heads#L159

This introduce a modetest failure on rockchip platform:
# modetest -M rockchip -s 70@68:1920x1080 -P 32@68:1920x1080@NV30
setting mode 1920x1080-60.00Hz on connectors 70, crtc 68
testing 1920x1080@NV30 overlay plane 32
failed to create dumb buffer: Invalid argument

I think other platform with bpp can't handler by  drm_mode_legacy_fb_format will
also see this kind of failure:



>+	if (fourcc == DRM_FORMAT_INVALID)
>+		return -EINVAL;
>+	info = drm_format_info(fourcc);
>+	if (!info)
>+		return -EINVAL;
>+	pitch = drm_format_info_min_pitch(info, 0, args->width);
>+	if (!pitch || pitch > U32_MAX)
>+		return -EINVAL;
>+
>+	args->pitch = pitch;
>+
>+	return drm_mode_align_dumb(args, pitch_align, size_align);
>+}
>+EXPORT_SYMBOL(drm_mode_size_dumb);
>+
> int drm_mode_create_dumb(struct drm_device *dev,
> 			 struct drm_mode_create_dumb *args,
> 			 struct drm_file *file_priv)
>diff --git a/include/drm/drm_dumb_buffers.h b/include/drm/drm_dumb_buffers.h
>new file mode 100644
>index 000000000000..6fe36004b19d
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
>+		       unsigned long pitch_align,
>+		       unsigned long size_align);
>+
>+#endif
>-- 
>2.47.1
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
