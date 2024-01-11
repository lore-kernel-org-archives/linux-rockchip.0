Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12451C47077
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jan 2024 16:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92Hsbs4STzr7MgpHaIK97eRP/4DVOor3csyaVXtSOJk=; b=SBCaN8bNwALMdt
	LYTTgKaMEj5CD0bhLw+Vgz23FkCwYUmOKdOsROXl4AO89s1uwd2PIrzatrTrM+vrmwA17gqbQ+eTw
	3czT7ZhhJH9CElSAyQIIDQXNHXstMo30Wlwv4kJ1EPc4vx9gre69FkvTLNGFwzDsiQMoN6B3AMbyI
	NGitldlnloH6r5d3blZLNgqeBzap2xsLSLHOV7Fi6G1+oQCefO0vDx9NbuzDI/MOvEyIR+LG4cDbz
	uejXrWNn4b8W0p/iuBhZU8bybNiX/RPCf/U+6lAZP89NVtR3LTqyrHkBQBmdB8chHZ01pVsHb4lWW
	UnSSo5kHLsWGQXcR9TfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxag-000XNG-2P;
	Thu, 11 Jan 2024 16:07:34 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxad-000XKr-16
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jan 2024 16:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704989248;
	bh=4Ntkv53/ay1b9IY+9lgJ2+STZE4g9vhrLr7e58YkCSw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pfzq54u1c66toyzrg6Ae0/4xekI4QbiTFLBxcwK1U1zUVQyLlF0N4LA2MfFZ9qevQ
	 c5YbXpgf1HHmoWDMXAe/5TYTmga088smayHf5geKOHJgliMJK9bcVaAdFViPQegpqE
	 VtqNygrjEhu8QHVvOruLKp1XcF4LCBb6lpFlaGREt8GabhIiNIzKFjXmBy1UvgUCrU
	 3tazA6pEhOl/2BSs92cX7oxBkOR+OEu50J4ve6OGcLrqylhNFSD0E5ZqoOJIxJ+FZo
	 b2w89CdMxwkX/vjRJjDqpha7k89+GQGTW2wu3hs+uxaxtFQAlbp99xaR5SfwxcL6IW
	 n7aTJbucp/SKg==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 944693782011;
	Thu, 11 Jan 2024 16:07:27 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	p.zabel@pengutronix.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [RCF 1/2] media: videodev2: Add V4L2_FMT_FLAG_ALL_FORMATS flag
Date: Thu, 11 Jan 2024 17:07:20 +0100
Message-Id: <20240111160721.50020-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240111160721.50020-1-benjamin.gaignard@collabora.com>
References: <20240111160721.50020-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_080731_505546_3A22D41D 
X-CRM114-Status: GOOD (  17.86  )
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

Add new flag to allow enumerate all pixels formats when
calling VIDIOC_ENUM_FMT ioctl.
When this flag is set drivers must ignore the configuration
and return the hardware supported pixel formats for the specified queue.
This will permit to discover which pixels formats are supported
without setting codec-specific information so userland can more easily
knows if the driver suit well to what it needs.
The main target are stateless decoders so update the documentation
about how use this flag.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../userspace-api/media/v4l/dev-stateless-decoder.rst         | 3 +++
 Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst     | 4 ++++
 Documentation/userspace-api/media/videodev2.h.rst.exceptions  | 1 +
 drivers/media/v4l2-core/v4l2-ioctl.c                          | 2 +-
 include/uapi/linux/videodev2.h                                | 1 +
 5 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
index 35ed05f2695e..b7b650f1a18f 100644
--- a/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
+++ b/Documentation/userspace-api/media/v4l/dev-stateless-decoder.rst
@@ -58,6 +58,9 @@ Querying capabilities
      default values for these controls being used, and a returned set of formats
      that may not be usable for the media the client is trying to decode.
 
+   * If ``V4L2_FMT_FLAG_ALL_FORMATS`` flag is set the driver must enumerate
+     all the supported formats without taking care of codec-dependent controls.
+
 3. The client may use :c:func:`VIDIOC_ENUM_FRAMESIZES` to detect supported
    resolutions for a given format, passing desired pixel format in
    :c:type:`v4l2_frmsizeenum`'s ``pixel_format``.
diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
index 000c154b0f98..db8bc8e29a91 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
@@ -227,6 +227,10 @@ the ``mbus_code`` field is handled differently:
 	The application can ask to configure the quantization of the capture
 	device when calling the :ref:`VIDIOC_S_FMT <VIDIOC_G_FMT>` ioctl with
 	:ref:`V4L2_PIX_FMT_FLAG_SET_CSC <v4l2-pix-fmt-flag-set-csc>` set.
+    * - ``V4L2_FMT_FLAG_ALL_FORMATS``
+      - 0x0200
+      - Set by userland application to enumerate all possible pixels formats
+        without taking care of the current configuration.
 
 Return Value
 ============
diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
index 3e58aac4ef0b..42d9075b7fc2 100644
--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
@@ -215,6 +215,7 @@ replace define V4L2_FMT_FLAG_CSC_XFER_FUNC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
 replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
+replace define V4L2_FMT_FLAG_ALL_FORMATS fmtdesc-flags
 
 # V4L2 timecode types
 replace define V4L2_TC_TYPE_24FPS timecode-type
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 33076af4dfdb..22a93d074a5b 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1544,7 +1544,7 @@ static int v4l_enum_fmt(const struct v4l2_ioctl_ops *ops,
 		p->mbus_code = 0;
 
 	mbus_code = p->mbus_code;
-	memset_after(p, 0, type);
+	memset_after(p, 0, flags);
 	p->mbus_code = mbus_code;
 
 	switch (p->type) {
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 68e7ac178cc2..82d8c8a7fb7f 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -869,6 +869,7 @@ struct v4l2_fmtdesc {
 #define V4L2_FMT_FLAG_CSC_YCBCR_ENC		0x0080
 #define V4L2_FMT_FLAG_CSC_HSV_ENC		V4L2_FMT_FLAG_CSC_YCBCR_ENC
 #define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0100
+#define V4L2_FMT_FLAG_ALL_FORMATS		0x0200
 
 	/* Frame Size and frame rate enumeration */
 /*
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
