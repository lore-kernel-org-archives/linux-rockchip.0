Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0161C48285
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHWkcKwWUfYof3XdBl6/ICj1fEo9OrScjjFcU85WzyI=; b=LNBNeVVAfKHC7j
	HLbQj63saEvOSqzcdS4gqW+46p41wCtSMQSORG6gS5AI4hCkuqkKy/pF9QNh5KQRmD/mkFkicsIq4
	oUNXM5d1ZjCGlGINWSNzd0OHwZAVWsStW7A889reTxcL3RbgiTrehTu0w71gGFswWZfFZK5n8VdxZ
	tTndVIjxwBBkl65PQ/F3oIMQUIIY2xb7yi/nXcSW0YUbm0A7bnEqII6Zw/GmpVaISBUxtsZfGO6Fg
	XijqVuOelnquFCKP8XBg9EYNEO6S/ebNzPEBfPttL/eYxRNZOZOdbQvvj7ExhsSQoFuSvI78AOO/0
	hUaRk0UKRBQcHNuS39HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVRD-00000005iyl-3VX3;
	Fri, 26 Jan 2024 23:16:43 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQg-00000005iSV-0Pyr
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:17 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-783d4b3ad96so78735785a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310968; x=1706915768; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QQhDPXykohcFJW0qtm5EHtuEzwLA0yzgLshaZoliDrY=;
        b=cuGj6p2D+aEnexB2jqUuQfe5FpjwzlSuCMtfOjqvvHryrHQIvXdbNHnfK73jHWW9KD
         RwFLGosB8TkxZm3/7hTtXKQ6hvpptXGJgtbWtYHjJ4ZETEAI+7gHvgAu2iiOa9Qv5y/b
         FPJP0SK1AEuihUMdCdz1SepEgr+0j340p1pVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310968; x=1706915768;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QQhDPXykohcFJW0qtm5EHtuEzwLA0yzgLshaZoliDrY=;
        b=uaOdGqLqpO/BQn3RbFmtXVAtOYmqQsl3rUueBiatdIy+ZhqSZ/sRYWi2L5Mg6xKIlE
         WwZP7V2gXDFGr4Byo3fbTtIn2oPl+unHE8qGrf6p4Xy7j67+w2FWO7afrDu8mqHom9KZ
         /T0si/XU2WnDH/nxfuhMubvCCUDZaoUZogpQGbJ5mWPhCF/0t7fGY0pYYDVeD0mt+1YE
         fHlE+e+pwpa0PBNKG9FZucInQXvvN50mXjM77eq4KDFm5Fs1+9PQVaSb4va+R4hLrbPt
         1RCthRm108tzYAaShAvawNzQxUP+VCAqGax6tBX/JW+c3Q99iAjuvkhgP3dIrL/Pt5o6
         IWHA==
X-Gm-Message-State: AOJu0YwoO1AsByqQPtJPUYHLNUEY1/2LkwOQSVAhdm5rWyPn/V001ZIL
	X/gG07BA6F2DsBDe9aGAEV4mnhz8Ijn1f7d05OcgbV96JuC7Wu8Rfb+HQbk5Hw==
X-Google-Smtp-Source: AGHT+IEYax7waeMsYzBi1V5anUAE9029IxFY99+NqU01WUd1yOqmYKRjKVGaw0nUqApkIUGiDbz6Vw==
X-Received: by 2002:a05:620a:19aa:b0:783:e3be:9bb5 with SMTP id bm42-20020a05620a19aa00b00783e3be9bb5mr52250qkb.21.1706310968110;
        Fri, 26 Jan 2024 15:16:08 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:07 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:02 +0000
Subject: [PATCH 03/17] media: media-entity.h: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-3-eed7865fce18@chromium.org>
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
X-CRM114-CacheID: sfid-20240126_151610_150360_136C30CE 
X-CRM114-Status: UNSURE (   9.80  )
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

The fields seems to be documented twice.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 include/media/media-entity.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/media/media-entity.h b/include/media/media-entity.h
index 2b6cd343ee9e..c79176ed6299 100644
--- a/include/media/media-entity.h
+++ b/include/media/media-entity.h
@@ -337,10 +337,6 @@ enum media_entity_type {
  * @info.dev:	Contains device major and minor info.
  * @info.dev.major: device node major, if the device is a devnode.
  * @info.dev.minor: device node minor, if the device is a devnode.
- * @major:	Devnode major number (zero if not applicable). Kept just
- *		for backward compatibility.
- * @minor:	Devnode minor number (zero if not applicable). Kept just
- *		for backward compatibility.
  *
  * .. note::
  *

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
