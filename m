Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 776EEC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJDqHU3WxcrvYECQdzFiEZhp4oXvwvkwiJ4c5Y9yyEc=; b=Dem2Rv23/TSako
	TiMpmcEh0gMx6Z4DogIO11ACP7Vq396Tg6OjMjJeaXI+yWzbBCVWSgJs6PaKK2TZig5nXInNtxQEa
	jZ1II4Ad0CnxTUxGAa5uKo/j1Zdkma4+Ha5g5TLfxwmqhXV6Dbu55tI1a/vXHU8rvuhy9Ja2WJl95
	ov4e3R5io2Ztiuz1Jlm3eSATMqy29QJtAUdSs3+ecjs3L9cUBd70h3XR5dPE0b1VG+ZSsIIbNm56h
	m592j/x+bLsmqh/JDTB/vamZTqZOG8pBPMVm6FZmGLmMOcenxQxK+U0SHK8CUTIgsnPNFqW6sLNTG
	eZuTeibV0wKodjSlMq/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKtZ-009UnH-6z; Sun, 27 Feb 2022 14:51:33 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKsa-009UFa-Px; Sun, 27 Feb 2022 14:50:38 +0000
Received: by mail-ed1-x529.google.com with SMTP id h15so14059429edv.7;
 Sun, 27 Feb 2022 06:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fGi7V8f/8PCG3FpLnmowzHOV4cFkD8Gq/ByZ6la1IPg=;
 b=hzPWe+jX/7+e9H8NqkS/+4rfUfunau4bHR/8ykqfml8K0ruAFohKPfLS+fwopvLj85
 89MBU3SIKprZGEMAv6O8Hr1cnUSMn4DK3/iSXFRwU50ZaQDnvxHk/TaEZ69uYk326rLN
 6tP6sTj2B80ssDDltzpJyVYnM/gtzCSLIiRDNlLrRTVAD4HtJYANiP4ZqAs9IxrffFUK
 Byhh8YX9H9CbUXoNTbGwM5bX0JyfX4pSNFSmItJonpRM8Fpb79O8KkkJv0VAqkeUtiL4
 zGldlts3dFqOCSuDpeA6H8t9TC5YJdg40yiSQ8ogR4Imkf3B1u554POVWa9Fmm7EzC4B
 dmGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fGi7V8f/8PCG3FpLnmowzHOV4cFkD8Gq/ByZ6la1IPg=;
 b=hWK4Z/6aXWaMPQ9kBDPpsE1V+W4MdQ9nAxucsRpvALhJML3QooVzJgFKfpQZYa9trd
 YvYMYx8wWZ3iea7URYSWk9xxw5akXtxzm8MT+71XmoPB9DGKOFMBu9wBFdLeWrtWaWKM
 1XMD0QnmbKq2epHOnEJLp79g7NgyTnvFi3Uv6n9l3DHHDPmqOJQYVVxyxBoMdwwnQPqi
 QmQPya8PQoSFjNvWuaZPZySOChUKOUx5RISZHYrqkBHqObnkB6k19PXT0PMHKj55QMat
 Zc6VVsbQYqLhOHi5hS15cXQnp3htj5DD+CLD95rI/wpd6QFxDWuXZW5ks2/73oy2IypL
 JSrQ==
X-Gm-Message-State: AOAM533yURpqgF8GqlIGy+yNtQqi7j7O+f+OPuy6ufrFUL0McwtR6ERH
 WWAKmMNlanmlaE4nB+cr4RY=
X-Google-Smtp-Source: ABdhPJyr6HTKorqbTa0EK/G4pBDfhQMVAgAD+XKw3QGDBOcDvTWfJd57g+f/QPZy6xOyUFjJd48viw==
X-Received: by 2002:a05:6402:4415:b0:410:d28b:1e14 with SMTP id
 y21-20020a056402441500b00410d28b1e14mr15428586eda.211.1645973431450; 
 Sun, 27 Feb 2022 06:50:31 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:31 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 2/8] media: Add P010 format
Date: Sun, 27 Feb 2022 15:49:20 +0100
Message-Id: <20220227144926.3006585-3-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065032_860867_D0300ABA 
X-CRM114-Status: GOOD (  12.33  )
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

Add P010 format, which is commonly used for 10-bit videos.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/media/v4l2-core/v4l2-common.c | 2 ++
 drivers/media/v4l2-core/v4l2-ioctl.c  | 1 +
 include/uapi/linux/videodev2.h        | 1 +
 3 files changed, 4 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 1db0020e08c0..4ede36546e9c 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -275,6 +275,8 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
 		{ .format = V4L2_PIX_FMT_YUV422P, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv = 2, .vdiv = 1 },
 		{ .format = V4L2_PIX_FMT_GREY,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 1, .bpp = { 1, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
 
+		{ .format = V4L2_PIX_FMT_P010,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 2, 4, 0, 0 }, .hdiv = 2, .vdiv = 2 },
+
 		/* Tiled YUV formats */
 		{ .format = V4L2_PIX_FMT_NV12_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 1, 2, 0, 0 }, .hdiv = 2, .vdiv = 2 },
 		{ .format = V4L2_PIX_FMT_P010_4L4, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 2, .bpp = { 2, 4, 0, 0 }, .hdiv = 2, .vdiv = 2 },
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index 048f326c57b9..a8d999e23e5b 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1295,6 +1295,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_PIX_FMT_M420:		descr = "YUV 4:2:0 (M420)"; break;
 	case V4L2_PIX_FMT_NV12:		descr = "Y/CbCr 4:2:0"; break;
 	case V4L2_PIX_FMT_NV21:		descr = "Y/CrCb 4:2:0"; break;
+	case V4L2_PIX_FMT_P010:		descr = "10-bit Y/CbCr 4:2:0"; break;
 	case V4L2_PIX_FMT_NV16:		descr = "Y/CbCr 4:2:2"; break;
 	case V4L2_PIX_FMT_NV61:		descr = "Y/CrCb 4:2:2"; break;
 	case V4L2_PIX_FMT_NV24:		descr = "Y/CbCr 4:4:4"; break;
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 772dbadd1a24..211bc11a48cb 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -597,6 +597,7 @@ struct v4l2_pix_format {
 /* two planes -- one Y, one Cr + Cb interleaved  */
 #define V4L2_PIX_FMT_NV12    v4l2_fourcc('N', 'V', '1', '2') /* 12  Y/CbCr 4:2:0  */
 #define V4L2_PIX_FMT_NV21    v4l2_fourcc('N', 'V', '2', '1') /* 12  Y/CrCb 4:2:0  */
+#define V4L2_PIX_FMT_P010    v4l2_fourcc('P', '0', '1', '0') /* 24  Y/CbCr 4:2:0 10-bit */
 #define V4L2_PIX_FMT_NV16    v4l2_fourcc('N', 'V', '1', '6') /* 16  Y/CbCr 4:2:2  */
 #define V4L2_PIX_FMT_NV61    v4l2_fourcc('N', 'V', '6', '1') /* 16  Y/CrCb 4:2:2  */
 #define V4L2_PIX_FMT_NV24    v4l2_fourcc('N', 'V', '2', '4') /* 24  Y/CbCr 4:4:4  */
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
