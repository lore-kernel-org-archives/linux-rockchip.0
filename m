Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07432C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tB2zgZOVYSM/nIH/l4n8lmtuazNmoLFmdoeOcL/Jcn4=; b=jOwmBm/yCx8Tco
	K/REV+oKacgbqt6JMTXfcGV4uCRAB73MsFG51o2WiSMWdWydJFiwwsC+Dktay6hNM8Cp2u4pTC+2J
	IMWq1rEMYbk+FANbQK7lQAO1c+On/szJsVc0b/c8FixWGxnjJxUK1rKpDVSdSirtywlyJcLHU1BcW
	XliX2XIV0dDhQLHm9knBwZo1JNs5LFMPLz1wjNZlukfFEPAzzQe7Hql+45/C99+DCtB082uw8JUbf
	zur7S/FRNwWbwSrifRz/WpsnKoo9mH9dRYz7MKcI0gAPk3V4evlUl+GD86DfWaa2FXKbhT8EPniV7
	0lP140ET8bVOGSOtPVQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKsc-009UGM-5A; Sun, 27 Feb 2022 14:50:34 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKsZ-009UFA-DQ; Sun, 27 Feb 2022 14:50:33 +0000
Received: by mail-ed1-x531.google.com with SMTP id s24so14066190edr.5;
 Sun, 27 Feb 2022 06:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OfaQxvNgMBgVBVbh1U+wBEbHSjlkePlNsaFk++CJO/A=;
 b=jWJnE1IxsQxmFtj/7wUA06044ZoLdn+WoSI4PhuUZYB7xEl2X3Y1efVw/ceQ8D5YFA
 0taHOo8EXyDrXtx2bbqvX2BDCgttbT29hBufa5lc5u9QQLNhrz5OoqNc9mEwkfwGFiRD
 1OcpyD/V/MJFC4/AG0c0RGHR3NnW+D0a7m4mPE0tFC31bOjCUTTsmDJaMSjBEjgMN7As
 UElRUevIIjC5PI3amBRmQ5nSK1FmXP/IzxtcabZkH7qsdWBGhO/WM61SgCzhql6jT9UM
 0dcO76SUrRR2yZSb0oyzHonzY6Y33mCrpy5xGrmNIQCo2kStUwo8EDst8caAH5o/bU8U
 TaUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OfaQxvNgMBgVBVbh1U+wBEbHSjlkePlNsaFk++CJO/A=;
 b=dTb/bXYDoujWEMuywVueP8CCLQw8c6DVEuHbOlGqJipg1+ZyOuA3A5fGaEoyyywwbn
 LA06p/z5qnmwvefV40lbObMhrfTUUgVJWdQvI2XaapB8gtAiUIpvZbINVRet6hWqv/OA
 7nF4qJkksCs+ww1RyzXsx3MwBovq+Cb8KbjyfX6PcS87OGR4ZYjlNWc0ewXT0gRW9ry8
 Y2cjQF+Kb9nL37+cTCXvxnFB5BmFW0rdiIROSccPRV7RtVwlZSK9Xz+W5fQVFri+Ou9H
 M/k1IUe+szskpJcV/r6VBwxgs5qAbhZuBJW+dvRMs31yP/sv+CEuo8LE8YWKbfJSj6y+
 6GTA==
X-Gm-Message-State: AOAM532Th4xHtpvpdQo6hucGOGB3wog2qufD3qvb6b31BT1ZnuIqf3wF
 62+QUggUEtVAw6hznZaFQ3w=
X-Google-Smtp-Source: ABdhPJyDSwZ5SFyTYb4xCunkFA4mylMDYXcPzpygzBsB+uEoEDogghqGdrYYbzUneMXJcGR0SRselA==
X-Received: by 2002:aa7:d7c8:0:b0:3f9:3b65:f2b3 with SMTP id
 e8-20020aa7d7c8000000b003f93b65f2b3mr15310530eds.389.1645973430285; 
 Sun, 27 Feb 2022 06:50:30 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:29 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 1/8] media: Add P010 tiled format
Date: Sun, 27 Feb 2022 15:49:19 +0100
Message-Id: <20220227144926.3006585-2-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065031_477760_8994AB02 
X-CRM114-Status: GOOD (  11.11  )
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

From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Add P010 tiled format

Signed-off-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
[rebased and updated pixel format name]
Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/media/v4l2-core/v4l2-common.c | 1 +
 drivers/media/v4l2-core/v4l2-ioctl.c  | 1 +
 include/uapi/linux/videodev2.h        | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index df34b2a283bc..1db0020e08c0 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -277,6 +277,7 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
 
 		/* Tiled YUV formats */
 		{ .format = V4L2_PIX_FMT_NV12_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 2 },
+		{ .format = V4L2_PIX_FMT_P010_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 2, 4, 0, 0 }, .hdiv = 2, .vdiv = 2 },
 
 		/* YUV planar formats, non contiguous variant */
 		{ .format = V4L2_PIX_FMT_YUV420M, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 3, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv = 2, .vdiv = 2 },
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 9ac557b8e146..048f326c57b9 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1302,6 +1302,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_PIX_FMT_NV12_4L4:	descr = "Y/CbCr 4:2:0 (4x4 Linear)"; break;
 	case V4L2_PIX_FMT_NV12_16L16:	descr = "Y/CbCr 4:2:0 (16x16 Linear)"; break;
 	case V4L2_PIX_FMT_NV12_32L32:   descr = "Y/CbCr 4:2:0 (32x32 Linear)"; break;
+	case V4L2_PIX_FMT_P010_4L4:	descr = "P010 tiled"; break;
 	case V4L2_PIX_FMT_NV12M:	descr = "Y/CbCr 4:2:0 (N-C)"; break;
 	case V4L2_PIX_FMT_NV21M:	descr = "Y/CrCb 4:2:0 (N-C)"; break;
 	case V4L2_PIX_FMT_NV16M:	descr = "Y/CbCr 4:2:2 (N-C)"; break;
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index df8b9c486ba1..772dbadd1a24 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -628,6 +628,7 @@ struct v4l2_pix_format {
 #define V4L2_PIX_FMT_NV12_4L4 v4l2_fourcc('V', 'T', '1', '2')   /* 12  Y/CbCr 4:2:0  4x4 tiles */
 #define V4L2_PIX_FMT_NV12_16L16 v4l2_fourcc('H', 'M', '1', '2') /* 12  Y/CbCr 4:2:0 16x16 tiles */
 #define V4L2_PIX_FMT_NV12_32L32 v4l2_fourcc('S', 'T', '1', '2') /* 12  Y/CbCr 4:2:0 32x32 tiles */
+#define V4L2_PIX_FMT_P010_4L4 v4l2_fourcc('T', '0', '1', '0') /* 12  Y/CbCr 4:2:0 10-bit 4x4 macroblocks */
 
 /* Tiled YUV formats, non contiguous planes */
 #define V4L2_PIX_FMT_NV12MT  v4l2_fourcc('T', 'M', '1', '2') /* 12  Y/CbCr 4:2:0 64x32 tiles */
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
