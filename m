Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B3C2D59D6A
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 15:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CoSnbHEw2EcJhSizv0vwTJn4ffa+3XSMtvNmVMIMoBA=; b=cWf0BKvYYLlXcT
	weV9Q6HbsMRUAU3WQ8aVX25iveVrSzbg6/xCdff0CJxgptHkeKdjl9r/xXNbVPrMvtH/1jLAQdUnX
	FOPnZQliMjpC6aHDMKPYN8CJ9+rxkIXqAL7VtHTO7ZFDj0iTTQpk49WlTzBuWDZ2VLQvlx+t00LAu
	Wk3UdAaMvoFfu5PYeQcoAxtko90EmnnbzHXY0FtTSrQM0WuCtoGubUTLGfB0zK51LmFN/8mkQiq1x
	DzK37mDTFp8prpxsYbpC1I6W/oKU8Pk+LDN0EXSI2Hn3g1Y7igM+SeIZ85bbKx4Eg7capmWBc3o1B
	x/i4RaF61u9RO8NSA69A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5HR-00000000lBZ-27Ui;
	Fri, 12 Dec 2025 15:42:05 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5HO-00000000l9x-02vz
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Dec 2025 15:42:03 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-bd2decde440so79386a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Dec 2025 07:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765554121; x=1766158921; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zvs0Y9fjkfpuOjqGiS1GxL1BaXlJ2gCK5y9BuiQG+A8=;
        b=iFbJBqlHnev2ByorH9D9XrYGLvgtQcgmRXGMnVi4RtEnhLVsh4NQVkhu08Ofdj2M8E
         I3PoJLlxRgURaOv3pXgTeqAxpf+5FYXa1ihHMvT6Gc45O+oOVp/worhqjRIlZNAVkMm4
         IrhrPK8N2QN7nbmfnUFx1XYPPxaqdQHT1KM1CgM1vd6PR7vUIGZ4nUcz6waSunM2q+n7
         qcpognlciETccwWxoDpgXD37/3sN3o1JHVjJbAVc4itcNRhyKHyg4TQCOxCx4MBgKDZE
         48MYc2S/SQh6arQDpaAehz4iDfMOnYWR9KHKOiqMIhuw5bd3q345xz8+mnh6fLM+H0zp
         4LSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765554121; x=1766158921;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zvs0Y9fjkfpuOjqGiS1GxL1BaXlJ2gCK5y9BuiQG+A8=;
        b=HIc4GE4UKqbT9ALKGWsRENgca8UH65Y+7UsfSiDiUHWP3wiO/+M54LsQ5BxX2p0XZY
         PCjyrgHV/CwjLCiU57tfVhy1dh9Ae1ohAcf9/41yWvnrLhQordz7gUVljBrGxQtuHKsf
         4s8HVWN0ZGYgc+FwK8sHdtmTpgDw+tyzz9czj0slWo0uQkt86ZOu+Pa9RWqJ/dobTyZ5
         BJghhYY3144cZ9KMRxYzf6Dwpa+rk9Jy6UecwGNv/ZDvWiowav/PPMOCJEmXR2LJMxlZ
         B9+pHTJ57hKoNmwUgKeIOYZCtZuK3ed8VpoehkaFLyH2ZXR0TliNkcnSYIETgkwrVKEL
         FclA==
X-Gm-Message-State: AOJu0Yz7EzwI9Fu8tH4Jg7XTwhEn9HeWuRZJTfrS+klzx1VcnwSnsT5z
	emHl5zaxlKDMrIxYYV8kzNEcatsF2dPqeRzMp60w3mjUusSqZEqAxr7ancpScTPI0CZTQA==
X-Gm-Gg: AY/fxX4osSYQ1GgD3l+YCSUZbccKzrkyh10S5EIwsiP4jOfkaixUGM/KIGSAiUeSPuD
	zRN+1W+SAC8vaXH+DGmc2kSvd7XFmLj79X33eIZ6LaPaQWL9VCXMwNudiEF9JAUi24DQ+Q1lqIb
	IxsMeYXTW2dsqDw1aBziMkhwaoJXg8qi+g2Q8mkzoZyJnt0QL27Kgampp/gLX9yh9F7bQIBsNyy
	kBBBYT5pcwBlYAAcTxjKzJhWtWEB0Hk0UKCh1RLSoT3llPDwX9UXlAzAeYVDt/ePkmR2WjKie5g
	NgLd6ivLUDdfjPALXORMhtCaPVj2AhmCi5HLnT7w/4CM/hVumD7E7sRs0HfPkv/CRMVPJldWEHH
	qZMUe6o/NNWl2qKdGyB4dZTjiHAHiPFFxMEKfQWlhNb8MOFRu0yl9CJuLb5qZNfy6l+FflpnyZX
	N1qMqRD03i0C7ZbqY/Rdmt1A==
X-Google-Smtp-Source: AGHT+IGjNBsdS6Z+owU1Z6BbP/qc6a4XyvaU3uhlw6ok1WkouJ/+QBfVTxzeOJSOKmt+ehQ/bAIRmw==
X-Received: by 2002:a05:6a00:234c:b0:7a2:855f:f88b with SMTP id d2e1a72fcca58-7f668dc54a6mr2134871b3a.3.1765554120540;
        Fri, 12 Dec 2025 07:42:00 -0800 (PST)
Received: from rock-5b.. ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c237f357sm5652380b3a.6.2025.12.12.07.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 07:42:00 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: [PATCH] media: rkvdec: set ctx->image_fmt in rkvdec_s_capture_fmt
Date: Fri, 12 Dec 2025 23:41:32 +0800
Message-ID: <20251212154138.3042300-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_074202_230018_79ADD41B 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

ctx->image_fmt is initialized as RKVDEC_IMG_FMT_ANY at
rkvdec_s_output_fmt, and get set at rkvdec_s_ctrl when userspace sends
SPS info via VIDIOC_S_EXT_CTRLS. This works fine with gstreamer because
it sends SPS info to kernel driver before requesting capture queue bufs.

But chromium requests capture queue bufs first and then sends SPS info
to kernel, then rkvdec_s_ctrl will return -EBUSY, and the video is
displayed green.

Chromium calls VIDIOC_S_FMT to capture queue instead before requesting
capture queue bufs, so setting ctx->image_fmt in rkvdec_s_capture_fmt
will make rkvdec_s_ctrl return 0 when the first SPS info sent to driver.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Fixes: d35c64eccf3b1 ("media: rkvdec: Add get_image_fmt ops")
---

 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 5af9aa5ab353..e7939d604f64 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -537,6 +537,18 @@ static int rkvdec_s_capture_fmt(struct file *file, void *priv,
 		return ret;
 
 	ctx->decoded_fmt = *f;
+
+	u32 fourcc = f->fmt.pix_mp.pixelformat;
+
+	if (fourcc == V4L2_PIX_FMT_NV12)
+		ctx->image_fmt = RKVDEC_IMG_FMT_420_8BIT;
+	else if (fourcc == V4L2_PIX_FMT_NV15)
+		ctx->image_fmt = RKVDEC_IMG_FMT_420_10BIT;
+	else if (fourcc == V4L2_PIX_FMT_NV16)
+		ctx->image_fmt = RKVDEC_IMG_FMT_422_8BIT;
+	else if (fourcc == V4L2_PIX_FMT_NV20)
+		ctx->image_fmt = RKVDEC_IMG_FMT_422_10BIT;
+
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
