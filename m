Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81424C48285
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 00:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TZbECc/H+cKg7udK1N8vciGc/M8cBCo4wey2ucDDd1o=; b=1+FRhjHihQgRXI
	zq+8j3jFHUVDAH3P8mk+hM3vOWqcFyh7sD2ZbWDAd9uc1UlEhmPD7qbp3+J4zVM0euhkQsDlJhHRz
	2Fhlqo+FSo8U8bacTZC6BhXQjSZ4YjJMf/ow8h7O5qJH1XN91EymPCX6BGb60fw880i6jY4PrRoXN
	HgL4Gepa0lERrxRNm196Y9NDXJVoze34Z9zVZI+UBP/XIHAPfykfR8Im7cHftZUHmH6oulnZ6kCj2
	TYMpt0MTI5QS0znxM1sWdH+GDsXIzU8ZBcgchhU7wHTtOgsKlhECj45mh9AUPw/GKSkpTmK5fK/TG
	DdB+FQhDmuebp2ndIvdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTWQu-00000005xAN-0h1C;
	Sat, 27 Jan 2024 00:20:28 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQd-00000005iPs-2oBM
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:13 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-783d39b7469so75055485a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310964; x=1706915764; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m1FUbK+X4G1K2LR1tS4ThCJb/HchC8GmhhxPZxsSnw8=;
        b=BZkfcBhdbYaZiabHPNA8iM2d6Kb6+yO3uXMsKk7ZWKYTb1oS0TNegW5sHKag+7moLy
         Pb3lqf/zlUCwjmgTAHYGn4+YcMf9A/dRZyUXM/2c9Yd+R6CvYdZLo8IfhmnMK+SNUdm9
         0Ml0TaLmjT7YRKg5YGMbX+lhwYdfKDJotosdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310964; x=1706915764;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m1FUbK+X4G1K2LR1tS4ThCJb/HchC8GmhhxPZxsSnw8=;
        b=njhnnWZjnq9VCOBktRcFKFANIRtVwe9Nl5/xASDXPLpNOm87owgVUR8q+2e9oEXZRz
         AMWo5KpCZk/qzEiBJ1DiwlZ9wE6XoqskprYJa0aog2pedcfX+4jiYBbsTfC2/nHmPMhx
         ZKNYgQUT6E+OFobBGqh/R68KjCdaFIUutTpyMKlQy4IEP+8qFWHvi+NTa/QJGgPXGeSa
         JjBF/JeiTyYVTYOdIiDLDfuudVtUcQla/5Fl8eiSHpxHQhRH/a8A4u+W1k/hiMccP86g
         eZhTwDxtV2+cooDaT898qHu3+PhuBnbAN1t+zaj/S7Q/0JDBuW0mPkh6vpdB3EZGA5tF
         uPTg==
X-Gm-Message-State: AOJu0Yw9TBRt2chB8xnCk/JwUEB+4TwMxhPBOT4sc2TgMnHF697ZixEF
	dW6le5/Mqf1CILJu5GXs/jshPR3q3cuTXaYCBRWXDXhRqvUwgjp7fXRKkSxPig==
X-Google-Smtp-Source: AGHT+IEQ/tz8turm1P2FDbceVdQsCYW4IY1reD0BjYRsTNFIDrY6wN0U97EZCcKxKn339wiLqTkGcQ==
X-Received: by 2002:ae9:e647:0:b0:783:df7a:a7c4 with SMTP id x7-20020ae9e647000000b00783df7aa7c4mr586658qkl.51.1706310964150;
        Fri, 26 Jan 2024 15:16:04 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:03 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Subject: [PATCH 00/17] media: kerneldoc warnings
Date: Fri, 26 Jan 2024 23:15:59 +0000
Message-Id: <20240126-gix-mtk-warnings-v1-0-eed7865fce18@chromium.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC89tGUC/x3MQQqAIBBA0avErBtQK4WuEi2sRhsiC40KorsnL
 d/i/wcSRaYEbfFApJMTbyFDlgWMsw2ekKdsUELVQiqNnm9cjwUvGwMHn9CMRjjdVEaaAXK2R3J
 8/8uuf98PwmNAwWIAAAA=
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
X-CRM114-CacheID: sfid-20240126_151607_838060_27AEF021 
X-CRM114-Status: UNSURE (   8.40  )
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

While automating the CI, I found the following kernel-doc errors.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
Ricardo Ribalda (17):
      media: mediatek: vcodec: Fix kerneldoc warnings
      media: videodev2.h: Fix kerneldoc
      media: media-entity.h: Fix kerneldoc
      media: cec.h: Fix kerneldoc
      media: pci: dt315.h: Fix kerneldoc
      media: i2c: css-quirk.h: Fix kerneldoc
      media: i2c: adv748: Fix kerneldoc
      media: mediatek: jpeg: Fix kerneldoc
      media: mediatek: vcodec: Fix kerneldoc
      media: verisilicon: Fix kerneldoc
      media: qcom: venus: Fix kerneldoc
      media: samsung: exynos4-is: Fix kerneldoc
      media: samsung: s5p-mfc: Fix kerneldoc
      media: dvb-usb: Fix kerneldoc
      media: ipu3: Fix kerneldoc
      media: staging: meson: Fix kerneldoc
      linux: v4l2-vp9.h: Fix kerneldoc

 drivers/media/i2c/adv748x/adv748x.h                |  1 -
 drivers/media/i2c/ccs/ccs-quirk.h                  |  8 +++---
 drivers/media/pci/dt3155/dt3155.h                  |  1 -
 .../media/platform/mediatek/jpeg/mtk_jpeg_core.h   |  1 -
 .../mediatek/vcodec/decoder/mtk_vcodec_dec.h       |  1 -
 .../mediatek/vcodec/decoder/vdec/vdec_vp8_req_if.c |  1 -
 .../vcodec/decoder/vdec/vdec_vp9_req_lat_if.c      |  1 -
 .../platform/mediatek/vcodec/decoder/vdec_vpu_if.h |  1 -
 .../mediatek/vcodec/encoder/mtk_vcodec_enc.h       |  1 -
 drivers/media/platform/qcom/venus/core.h           |  1 -
 .../media/platform/samsung/exynos4-is/fimc-lite.h  |  3 --
 .../platform/samsung/s5p-mfc/s5p_mfc_common.h      |  1 -
 drivers/media/platform/verisilicon/hantro.h        |  1 -
 drivers/media/usb/dvb-usb/dvb-usb.h                |  2 --
 .../staging/media/ipu3/include/uapi/intel-ipu3.h   |  3 --
 drivers/staging/media/meson/vdec/vdec.h            |  1 -
 include/media/cec.h                                |  2 --
 include/media/media-entity.h                       |  4 ---
 include/media/v4l2-vp9.h                           |  6 +++-
 include/uapi/linux/videodev2.h                     | 32 +++++++++++-----------
 20 files changed, 25 insertions(+), 47 deletions(-)
---
base-commit: 615d300648869c774bd1fe54b4627bb0c20faed4
change-id: 20240126-gix-mtk-warnings-7c70f653717b

Best regards,
-- 
Ricardo Ribalda <ribalda@chromium.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
