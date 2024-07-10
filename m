Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5E20C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 12:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jz0RM2YoKSH50QIPnkAjy6+BXUqMiWOjB9xKpFO8MKE=; b=nq/cdx67YWTrpMUVvwjuDJnq0e
	7vUAMizSPtjVJ72SZBh5WYSaWJFBrXKkXy4j9WDLXZQPg8icmpSKdVMpLJqqPF8dXoY9s6SuD65fA
	dlwCQV8g+ZYpwSODFXwET/TpT9kDaMC3TGSUDCzWa15TESgZ0FynoW7LtpCuDN3Ehm9KmjpCPXjor
	zD/5Ao+sS6caUONerwtthZO/fDBPVob1RDMnPavLBgi4GtZ+no5VezOLiAirSEYArdA02cZbtgC9Q
	+o5f8XeoV6maW5/SmX8ghpEIHhPKEU33E2wDoSnv/Rh6nv+yKIY2h5HwxDE+RU67Wg1RoLwFlDJ/m
	lIEZQScA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRWqw-0000000AYjS-2FVg;
	Wed, 10 Jul 2024 12:55:22 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRWqt-0000000AYin-1hu6
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 12:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720616118;
	bh=W3BXMoCI45NkvecO7Hi/HbUoqhtjsZPzYm0/TLf5aIU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=4rkAjvK/reEQlcMFZEC3M2e7PCM1ldRU/VdR6Tl3qDAyqm54MTXOgGTQcPzyRWJgD
	 4+ALz1cpXzzRdfH9VEx3rrfDXAABh5s5g+JpnCRzNVJvEuT8kZH3Emq63cPXsdL6Zy
	 Tp/baJwRgPocFEIMGd8sL3UsO9e41ugcHOmCvjek8JJIHKV3TUDCaF7NX57hDlzlgz
	 /rehOieKf3x7AXbtx+g7FeskUIJIcM0DJNu/BpgV4RldIElr2Ko2D7Yx/eGelcuSGZ
	 lAUdVhScvTxcLx7X8Nao2t0v+m9aWM7Bc2VIh+SN1sSrQFTEDrDq1vZ/Ju5e5cRbGk
	 /FWRbWbWK9tBw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DFF403780029;
	Wed, 10 Jul 2024 12:55:17 +0000 (UTC)
Date: Wed, 10 Jul 2024 14:55:16 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v3 1/2] media: videodev2: Add flags to unconditionnaly
 enumerate pixels formats
Message-ID: <20240710125516.k2a4v57h5yw6osyt@basti-XPS-13-9310>
References: <20240709161710.83109-1-benjamin.gaignard@collabora.com>
 <20240709161710.83109-2-benjamin.gaignard@collabora.com>
 <20240710124057.j3j4kow5fcvveyrm@basti-XPS-13-9310>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240710124057.j3j4kow5fcvveyrm@basti-XPS-13-9310>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_055519_608406_62D64319 
X-CRM114-Status: GOOD (  22.95  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey,

also this didn't reach patchwork because the mail address of the media
mailing list is wrong: linux-media@vger.kernel.or,

Regards,
Sebastian

On 10.07.2024 14:40, Sebastian Fricke wrote:
>Hey Benjamin,
>
>On 09.07.2024 18:17, Benjamin Gaignard wrote:
>>Add new flags to allow enumerate all pixels formats when
>
>s/enumerate all pixels formats/enumeration of pixel formats,/
>
>>calling VIDIOC_ENUM_FMT ioctl.
>>When this V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag is set drivers must
>>ignore the configuration and return the hardware supported pixel
>>formats for the specified queue.
>>To distinguish this partical enumeration case V4L2_FMT_FLAG_ALL_FORMATS
>
>s/partical/partiuclar/
>
>>flag must be set be drivers so user space applications can know that
>
>s/be/by the/
>
>>drivers support this feature.
>
>s/so user space applications can know that drivers support this feature./
>  , to highlight support for this feature to user space applications.
>
>>This will permit to discover which pixels formats are supported
>
>s/pixels/pixel/
>
>>without setting codec-specific information so userland can more easily
>>knows if the driver suit well to what it needs.
>
>s/knows/know/
>s/suit well to what it needs/suits its needs well/
>
>>The main target are stateless decoders so update the documentation
>>about how use this flag.
>
>s/how/how to/
>
>>
>>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>>---
>>changes in version 3:
>>- Add a flag to inform userspace application that driver
>> as take care of the flag.
>>
>>.../userspace-api/media/v4l/dev-stateless-decoder.rst  |  6 ++++++
>>.../userspace-api/media/v4l/vidioc-enum-fmt.rst        | 10 ++++++++++
>>.../userspace-api/media/videodev2.h.rst.exceptions     |  2 ++
>>drivers/media/v4l2-core/v4l2-ioctl.c                   |  3 +++
>>include/uapi/linux/videodev2.h                         |  2 ++
>>5 files changed, 23 insertions(+)
>>
>>diff --git a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
>>index 35ed05f2695e..de006a7fd02a 100644
>>--- a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
>>+++ b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
>>@@ -58,6 +58,12 @@ Querying capabilities
>>     default values for these controls being used, and a returned set of formats
>>     that may not be usable for the media the client is trying to decode.
>>
>>+   * If ``V4L2_FMT_FLAG_ENUM_ALL_FORMATS`` flag is set the driver must enumerate
>
>s/If/If the/
>
>>+     all the supported formats without taking care of codec-dependent controls
>>+     set on ``OUTPUT`` queue. To indicate that the driver has take care of this
>
>s/set on/set on the/
>s/has take/has taken/
>
>>+     flag it must set ``V4L2_FMT_FLAG_ALL_FORMATS`` flag when it enumerates the
>
>s/set/set the/
>s/when it enumerates/for each format, while enumerating/
>(to highlight that every enumerated format must carry the flag)
>
>>+     format.
>
>s/format/formats/
>
>>+
>>3. The client may use :c:func:`VIDIOC_ENUM_FRAMESIZES` to detect supported
>>   resolutions for a given format, passing desired pixel format in
>>   :c:type:`v4l2_frmsizeenum`'s ``pixel_format``.
>>diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>>index 3adb3d205531..510d2a6700aa 100644
>>--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>>+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>>@@ -234,6 +234,16 @@ the ``mbus_code`` field is handled differently:
>>	valid. The buffer consists of ``height`` lines, each having ``width``
>>	Data Units of data and the offset (in bytes) between the beginning of
>>	each two consecutive lines is ``bytesperline``.
>>+    * - ``V4L2_FMT_FLAG_ENUM_ALL_FORMATS``
>>+      - 0x0400
>>+      - Set by userland application to enumerate all possible pixels formats
>
>s/application/applications/
>s/pixels/pixel/
>
>>+        without taking care of any configuration done on OUTPUT or CAPTURE
>>+        queues.
>
>s/any configuration done on OUTPUT or CAPTURE queues/
>  any OUTPUT or CAPTURE queue configuration/
>
>>+    * - ``V4L2_FMT_FLAG_ALL_FORMATS``
>>+      - 0x0800
>>+      - Set by driver to indicated that format has been enumerated because
>
>s/driver to indicated that format has/
>  the driver to indicate, that formats have/
>
>>+        :ref:`V4L2_FMT_FLAG_ENUM_ALL_FORMATS <v4l2-pix-fmt-flag-set-csc>` has
>>+        been set by userland application.
>
>s/by/by the/
>
>Regards,
>Sebastian
>
>>
>>Return Value
>>============
>>diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>>index bdc628e8c1d6..7a3a1e9dc055 100644
>>--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>>+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
>>@@ -216,6 +216,8 @@ replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
>>replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
>>replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
>>replace define V4L2_FMT_FLAG_META_LINE_BASED fmtdesc-flags
>>+replace define V4L2_FMT_FLAG_ENUM_ALL_FORMATS fmtdesc-flags
>>+replace define V4L2_FMT_FLAG_ALL_FORMATS fmtdesc-flags
>>
>># V4L2 timecode types
>>replace define V4L2_TC_TYPE_24FPS timecode-type
>>diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
>>index 4c76d17b4629..5785a98b6ba2 100644
>>--- a/drivers/media/v4l2-core/v4l2-ioctl.c
>>+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
>>@@ -1569,6 +1569,7 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
>>	int ret = check_fmt(file, p->type);
>>	u32 mbus_code;
>>	u32 cap_mask;
>>+	u32 flags;
>>
>>	if (ret)
>>		return ret;
>>@@ -1578,8 +1579,10 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
>>		p->mbus_code = 0;
>>
>>	mbus_code = p->mbus_code;
>>+	flags = p->flags & V4L2_FMT_FLAG_ENUM_ALL_FORMATS;
>>	memset_after(p, 0, type);
>>	p->mbus_code = mbus_code;
>>+	p->flags = flags;
>>
>>	switch (p->type) {
>>	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
>>diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
>>index fe6b67e83751..b6a5da79ba21 100644
>>--- a/include/uapi/linux/videodev2.h
>>+++ b/include/uapi/linux/videodev2.h
>>@@ -886,6 +886,8 @@ struct v4l2_fmtdesc {
>>#define V4L2_FMT_FLAG_CSC_HSV_ENC		V4L2_FMT_FLAG_CSC_YCBCR_ENC
>>#define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
>>#define V4L2_FMT_FLAG_META_LINE_BASED		0x0200
>>+#define V4L2_FMT_FLAG_ENUM_ALL_FORMATS		0x0400
>>+#define V4L2_FMT_FLAG_ALL_FORMATS		0x0800
>>
>>	/* Frame Size and frame rate enumeration */
>>/*
>>-- 
>>2.43.0
>>
>>_______________________________________________
>>Kernel mailing list -- kernel@mailman.collabora.com
>>To unsubscribe send an email to kernel-leave@mailman.collabora.com
>>This list is managed by https://mailman.collabora.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
