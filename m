Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C164ECD98E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUcEd0etjZscszevw+vawE/2fUc/GeZVjJfblQhiLtQ=; b=DJNFfDc84cxDDF
	cc+IFhhV+2NKBjUO0eLN+MxDs3ERdIUp0THAGp1AiTXuCJaBP0wEh4X6MGjQ/g4pMMUENqGiVaOL+
	Njwg0quT2O/LUHTgGParoF52iFYkZozoaeFtA79B4lSwp6lwDcng39hLATZpiEUkomcgE9jGlCWtQ
	exVkLjWT4bGKz84R1bhgXq5EjforLo2nO67xBKPCj4RPVA8eEF1OwSciWT5aJo9QG0tr8g063exi/
	UaJZdygCe7Exwxl45U9B6GUyksG6r4G0TQu6cK86dO+tWJi9MB2c/+J4MxgVjj9xM+xITTxBVYDyk
	+8ZlDTWi6jJFNYPIB+bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsL-0000000GUAD-0v5y;
	Wed, 17 Jun 2026 02:19:33 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsG-0000000GU7L-1pbP
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:30 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-9159da9bba5so392004285a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662767; x=1782267567; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XZ9wck5P6r9OGqEQx9lSHX/yZ9cfcypeRcv1sXaGY/s=;
        b=Vtz7TE9C4Bxx7p21OYMnluANdz11eEu76GO1rnhWEL4aMc5vsXBbomZauEJ9ZolY5S
         WVmOPS7bkHH4vabJwt/2bsMEQRu51+5GKqT8kYLOT65/xRuQbv33UDu+nxjVxQwDyG/y
         rzxpVOBefsMUphfXTAo5AKKIzPlaSie9CM9vR//E9PIrvB+mIi3S7MhgHN3aRKEhO8Z5
         n3xDgfB3zpxyqNH80XURM/qVwRZh3tegroMn6XH7uvOi35cK0TEe/9AcMyO27jPMQzh2
         Av24BqY3QDDlmgWJSPqYXA2zILKddiSuNGWd+7UcZNAQa7yAQ3RTL0NCx/jJvjdXQzZe
         WnPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662767; x=1782267567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XZ9wck5P6r9OGqEQx9lSHX/yZ9cfcypeRcv1sXaGY/s=;
        b=aJv7gVEFkqH3Nm6u/2ygNdlNBZG4wwUj5obPUnn5nJm03ujqqm0sJPMK94ZmcbPErt
         xkOWwYpSmSHDLvPMOUoVOe9A6DuiBz2d3NoYh+FInZ3sqX0mYdNkmj73D/7JbdaZ1cYu
         R4GsHO/6OePepQAhWv4OUxbQTUB41aI8wrvZj5FoJe2WZoIrlKeQZoGLmwRKG7+sXr6D
         fw7EWjANd0IOdmm793a3Q8uJ8wMLhXmX7/y4eI1SrUls+BUeuzvJ/Kbi7SfziNLp545v
         90qQtg9Ca+WM49zyJ6Yml4VCX65/VuD7IwEvKTxjlLcsGFRYkJov/N9p2bQg1j+c1Lg9
         8uQA==
X-Forwarded-Encrypted: i=1; AFNElJ9hPaKXL8pTK4m9OrLaSc3CbDBVfVLc8MZW1mx6eWbt/JfZWJmY7wTv5r9Hrq4G8mozKPzVxTMLPCFZZWI0pQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAtfsVr7vSKt4u0k4YCNwB7rMzWECkMXVMPdddzDAKKtadbXJd
	gYDG4OojOMRUB/Qv97t4Wd9j6yHLPVHdiE2LbDOD9c4i8P/hWelkG3lG
X-Gm-Gg: Acq92OHj+rZzcscXECd4Y2P0TtNPDFH4OyCfKz0tZ4oogl8PT/MadnsxPuSO1GdP1qW
	+qjXfTMZI4tV/1NREhX4wHac37KLxDty0WhXVF/9PI6SQflGyIpgxO2To9qgEp9gIeJzi4ikhOU
	K7xo/rIl8IsoM6rlS0hrTZxEMeneiXATvxFtz/ahQeJRzCF601Y2gMQTI7x5MsHvCqo0eVphl/y
	0i71MknOcVdIK6ppv+ltBszhDtatFj3e4NOkOVnE0DHD/FVyy0nhsNZMsF4i8Ho+kEjf7d1TJD5
	sywhxOvD54VPmId2o4/XlkRL67prdKhJqtpKHyZDVXTE/AHI8Oi7b1XfOZL7v4J5F1ZF6SO9vJP
	KtGL7X9PDXY6OTi69QyyScaw5ujGhnY2TCbUPp2q7DJ8CtMGHSIdppPJaX/1Ud72p0gtOniTfEb
	YmHU+BkHIo8I8aBn2qQxLr8aZ4qLqe6JqEKNissjKyj2BmNo5Rh+W4UOLbskN+/6yF4MEkI455V
	87GRiP9r1dGM0ym83FDhdHowBNN46h+
X-Received: by 2002:a05:620a:280a:b0:915:6504:2a11 with SMTP id af79cd13be357-91d8d7a6a6fmr417807285a.44.1781662767410;
        Tue, 16 Jun 2026 19:19:27 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:26 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Kees Cook <kees@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/9] media: v4l2-ctrls: validate HEVC tile counts
Date: Tue, 16 Jun 2026 22:18:58 -0400
Message-ID: <20260617021906.2746743-2-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260617021906.2746743-1-michael.bommarito@gmail.com>
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191928_506515_B950BC98 
X-CRM114-Status: GOOD (  10.66  )
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

The stateless HEVC decoders read num_tile_columns_minus1 + 1 entries from
column_width_minus1[] and num_tile_rows_minus1 + 1 from row_height_minus1[]
and use them as tile-loop bounds, but std_validate_compound() does not
bound these u8 counts. Reject a V4L2_CTRL_TYPE_HEVC_PPS with tiling
enabled whose tile counts exceed the uAPI array capacity, mirroring the
existing compound-control range checks.

Fixes: 256fa3920874 ("media: v4l: Add definitions for HEVC stateless decoding")
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-core.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index 6b375720e395c..6d478e1a5ef22 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -1242,6 +1242,18 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 
 			p_hevc_pps->flags &=
 				~V4L2_HEVC_PPS_FLAG_LOOP_FILTER_ACROSS_TILES_ENABLED;
+		} else {
+			/*
+			 * These count the entries the stateless HEVC drivers
+			 * read from column_width_minus1[] / row_height_minus1[]
+			 * and use as tile-loop bounds.
+			 */
+			if (p_hevc_pps->num_tile_columns_minus1 >=
+			    ARRAY_SIZE(p_hevc_pps->column_width_minus1))
+				return -EINVAL;
+			if (p_hevc_pps->num_tile_rows_minus1 >=
+			    ARRAY_SIZE(p_hevc_pps->row_height_minus1))
+				return -EINVAL;
 		}
 
 		if (p_hevc_pps->flags &
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
