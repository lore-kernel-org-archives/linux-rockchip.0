Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20615C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Apr 2022 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=co70UM7KvafCUrCJ3r6MyHFI+8f4ya1be58l5DMuW2s=; b=G5uGGX5V4Bh07I
	RLyEm2KHGbj/3lMmXIIppsRTbic+XXO/ZsDlAs4gCoTmDsPcfl1Dr+Mv0BnM3HHwvaIv2yb0qHuKm
	FWjYFDUodKwQozc2CJCo88Nf1Ouk5A59QMb5g7xplAWIxiGBZQ6HMNSMQQeXG1PxMZZr0Fls5frge
	snI6D4qKotpBF+BCWUT7V+PL0fGrXC5wsiuSdJ2Yauy/z05eczUhKd5DynLMp41QtREdnjO+6+qDN
	vKC3aHT/7hwBAOMGPbGo7trAospDJt7Jjy4+Fl8MfyxHemJ0NCIeCqrU/gAVuQ4PfOKfN8PYP8ckX
	jItQ77CeL21gmyO6d6Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncUXV-00CszS-Ty; Thu, 07 Apr 2022 15:59:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncU5K-00Chks-26; Thu, 07 Apr 2022 15:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=opaSl+A+IHw3zqGRpmc/1AwqH59QJT+wvAWtAKGYyq4=; b=ju28a483x8pogL6xN3CvSoLLjQ
 nD2r/ufqgol0dCIb75erLIHWcn7dv2Bm/jrXMNm6Rm6kiLCxGWicamgapf7sxdXXOGnYnBQVy79pZ
 mkL4FNQq4wVRKHKywjaeTzCgqJNFfc7WMKlAVN7E0+0QLLbvAWPWCXL7O5dRhPaOBVZXq1LX6njRZ
 caYh4kFgRNRtvtIQhAoWwC276TEOaQUxdxGi4b8gwVK4fTgAeoQmE5avc3j38DMYC+mkNwec7+bq9
 0ILzjgFjsBsOoQJ6VHR26AUAd3xHtKF2yui/sLiNFTLS/MOB2QfJhgaBlg/+OBvREZIZ2bNZEUq9t
 5HylcMAw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncU5F-002XLy-GL; Thu, 07 Apr 2022 15:30:07 +0000
Received: from benjamin-XPS-13-9310.. (unknown
 [IPv6:2a01:e0a:120:3210:4da4:8da5:b6b4:93c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8164B1F467AD;
 Thu,  7 Apr 2022 16:29:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649345399;
 bh=dxFd90PKaKs1drm560L1Ce28iJxwQPcN4TYFhRoGyhs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T0+o1SMjyTfUJ1JxuyqfIxLwsWc5AytKLHwNWsBY0f/TfUe5TOYxp3DX3sgsLlsmw
 ob1Fu51AMUUXE1dn8g9E/4xeF6bTIQe69h10h7cyLlht79925nE+dYU/iOCKhmR8Yj
 /cUEaMFq81FzLqcnaOeXpaS2G2YJMD8teswr+ynWpdZGc8i8DVVPXDlYMolD6JfHDg
 a2b80qpMeJH07ZivXjAjHz5qU8mC1modbfKTjQmuittdRA1Yz76OUH70YYe/w2Asao
 nZ6Zlw3PXE8jZGsXwDXuKlzHjKICUVKYP5qCGv8f09XSq6PMMy/UksupEuCNSLxv9M
 jN+Wwvc/L8J2w==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 sebastian.fricke@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 16/17] media: uapi: Change data_bit_offset definition
Date: Thu,  7 Apr 2022 17:29:39 +0200
Message-Id: <20220407152940.738159-17-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
References: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_163006_024419_E9D0ABA1 
X-CRM114-Status: GOOD (  13.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

'F.7.3.6.1 General slice segment header syntax' section of HEVC
specification describes that a slice header always end byte aligned,
therefore we only need to provide the data offset in byte.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 5:
- Fix numbers of bits computation in cedrus_h265_skip_bits() parameters
 Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 4 ++--
 drivers/staging/media/sunxi/cedrus/cedrus_h265.c          | 2 +-
 include/media/hevc-ctrls.h                                | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index a3b1a063deba..48b3f533bc17 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -2986,8 +2986,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
       - ``bit_size``
       - Size (in bits) of the current slice data.
     * - __u32
-      - ``data_bit_offset``
-      - Offset (in bits) to the video data in the current slice data.
+      - ``data_byte_offset``
+      - Offset (in bytes) to the video data in the current slice data.
     * - __u32
       - ``num_entry_point_offsets``
       - Specifies the number of entry point offset syntax elements in the slice header.
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
index d04521ffd920..4f31f2f3b745 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -405,7 +405,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	/* Initialize bitstream access. */
 	cedrus_write(dev, VE_DEC_H265_TRIGGER, VE_DEC_H265_TRIGGER_INIT_SWDEC);
 
-	cedrus_h265_skip_bits(dev, slice_params->data_bit_offset);
+	cedrus_h265_skip_bits(dev, slice_params->data_byte_offset * 8);
 
 	/* Bitstream parameters. */
 
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index e6cdd122726c..1834072c0a43 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -310,7 +310,7 @@ struct v4l2_hevc_pred_weight_table {
  * V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
  *
  * @bit_size: size (in bits) of the current slice data
- * @data_bit_offset: offset (in bits) to the video data in the current slice data
+ * @data_byte_offset: offset (in bytes) to the video data in the current slice data
  * @num_entry_point_offsets: specifies the number of entry point offset syntax
  *			     elements in the slice header.
  * @nal_unit_type: specifies the coding type of the slice (B, P or I)
@@ -354,7 +354,7 @@ struct v4l2_hevc_pred_weight_table {
  */
 struct v4l2_ctrl_hevc_slice_params {
 	__u32	bit_size;
-	__u32	data_bit_offset;
+	__u32	data_byte_offset;
 	__u32	num_entry_point_offsets;
 	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
 	__u8	nal_unit_type;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
