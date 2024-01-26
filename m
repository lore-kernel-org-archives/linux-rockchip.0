Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BF5BC47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/XnoHS2FjnmSZAjZnSTNtYXvIgXEeqepqka7mNpxPo=; b=JgxhE0wuUhoUlJ
	jKbzZ7ceJz6MFZpQOD6TYikOAP6JVRZXubGGxMm1Ccgw1Cgut0MzbIjRRA+yDw1aCHWF1lY56lLjO
	Yt+ghyip2miXRmqJ+AJhceXEWGcB/TFKV0hY+CUwIvMld/RP75bGff82RXKp9nAbglDWKFt6f21NC
	QisSgEPfhv6HWwRLSCBuuw3KcZsIINZcaRZ4vsbGUqYlZV+wWrZEvSvoVx+8ez1OVg2Op7+dEr0W+
	ckdpzeiQMU0i2RWfRDHkKEdcXHYSrEwTn/wMH3Q4yB9iE3EVZihyw54l6mlndD9t0VYGXb85B+B1B
	81fkS/5/KDefGK86h86A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVRs-00000005jXU-2ZiM;
	Fri, 26 Jan 2024 23:17:24 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQm-00000005iXM-00tZ
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:20 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-783dc658b59so61100385a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310975; x=1706915775; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2rgIqJyES8gEo830PNonJo5H+atO47Cm+Ctp+2scN+Q=;
        b=AgoAtrkQ1EGQbUQHJfj1XMt0KjjxV/RwqR46GgTnlqwUYb9hcImYznTE3lhmM5B/U2
         NJmV2wSUJpvqbJHKIOBksG7m7Ekzn67Q9fxq5sbUEjUtHB3wb9Cpujif6sQJQsYOJGcH
         QC1Y1X2ANe1LBXwtIUAH5lleU+vB+8gsEX/24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310975; x=1706915775;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2rgIqJyES8gEo830PNonJo5H+atO47Cm+Ctp+2scN+Q=;
        b=BThl+BznblJW+cPO5wNnWWOpIylUBTYC5X5V9V+UfjLfRIAsp3I6nf3+gUkBCIdNsD
         ZbpG4MK4HdkPL7CvF4QFc3VzrQoBls26TMTO6Q9ZJoa/n3ENijJz0B74oQQmxf+D7J7p
         XzDtRHlBF4Z/vdUhVzR2wOIrWXTip0lT5EQ2FbMk3xnNrn/Pz8MfC9VjCKrcZLf90LZt
         yPfDQgM+E5uIcwmKRQ9jjhVTocBdXTz9yF1x5xb7AZOYj90vZQadvmtEFnCJk8d5brIE
         kCtPmacaj4Pk9D3B9m+gW2yuiquBR6mT5Bm9lswz0SpjHa6losenOiJjKzAlU88Whrhb
         ZmPw==
X-Gm-Message-State: AOJu0YyrwQCrdx2yZTEmOybYrpYod8d425o+xz+2PCkqAScO2soIpk8Z
	hB40tQ43l6uJ2DYPdpziralSdQx7ZO8KEQsQLIh8wkXAlXtec99c3JLg1X4VVA==
X-Google-Smtp-Source: AGHT+IFd4epluudoTRMCuHg+DI2SZnbO+Lp5toeNsVP6WGNIo3gmA/FS5q4GFf/JRmu/UhK6CO/sRA==
X-Received: by 2002:a05:620a:137c:b0:783:9ab7:374 with SMTP id d28-20020a05620a137c00b007839ab70374mr557152qkl.8.1706310975053;
        Fri, 26 Jan 2024 15:16:15 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:14 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:08 +0000
Subject: [PATCH 09/17] media: mediatek: vcodec: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-9-eed7865fce18@chromium.org>
References: <20240126-gix-mtk-warnings-v1-0-eed7865fce18@chromium.org>
In-Reply-To: <20240126-gix-mtk-warnings-v1-0-eed7865fce18@chromium.org>
To: Tiffany Lin <tiffany.lin@mediatek.com>, 
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Yunfei Dong <yunfei.dong@mediatek.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Hans Verkuil <hverkuil@xs4all.nl>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Bin Liu <bin.liu@mediatek.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, 
 Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev, 
 linux-amlogic@lists.infradead.org, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_151616_326714_6F30A3F0 
X-CRM114-Status: GOOD (  11.26  )
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

Those fields have been removed. They do not need to be documented.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.h | 1 -
 drivers/media/platform/mediatek/vcodec/decoder/vdec_vpu_if.h    | 1 -
 drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.h | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.h b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.h
index ece27c880e50..1af075fc0194 100644
--- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.h
+++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec.h
@@ -39,7 +39,6 @@ struct vdec_fb {
 /**
  * struct mtk_video_dec_buf - Private data related to each VB2 buffer.
  * @m2m_buf:	M2M buffer
- * @list:	link list
  * @used:	Capture buffer contain decoded frame data and keep in
  *			codec data structure
  * @queued_in_vb2:	Capture buffer is queue in vb2
diff --git a/drivers/media/platform/mediatek/vcodec/decoder/vdec_vpu_if.h b/drivers/media/platform/mediatek/vcodec/decoder/vdec_vpu_if.h
index fbb3f34a73f0..aa7d08afc2f4 100644
--- a/drivers/media/platform/mediatek/vcodec/decoder/vdec_vpu_if.h
+++ b/drivers/media/platform/mediatek/vcodec/decoder/vdec_vpu_if.h
@@ -22,7 +22,6 @@ struct mtk_vcodec_dec_ctx;
  *                in place of inst_addr in messages.
  * @signaled    : 1 - Host has received ack message from VPU, 0 - not received
  * @ctx         : context for v4l2 layer integration
- * @dev		: platform device of VPU
  * @wq          : wait queue to wait VPU message ack
  * @handler     : ipi handler for each decoder
  * @codec_type     : use codec type to separate different codecs
diff --git a/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.h b/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.h
index 82246401ed4a..908d8179b2d2 100644
--- a/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.h
+++ b/drivers/media/platform/mediatek/vcodec/encoder/mtk_vcodec_enc.h
@@ -26,7 +26,6 @@
 /**
  * struct mtk_video_enc_buf - Private data related to each VB2 buffer.
  * @m2m_buf:	M2M buffer
- * @list:	list that buffer link to
  * @param_change: Types of encode parameter change before encoding this
  *				buffer
  * @enc_params: Encode parameters changed before encode this buffer

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
