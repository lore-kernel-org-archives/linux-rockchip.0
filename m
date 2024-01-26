Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94E79C47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JbrH1v7/X8C0OEaYhmRoGTmOvdkQjX5hy33hrrZsg4=; b=UpH65D7rif5rQB
	mfgl0LjmqHdIPWIAibWD2+d3APlc0NyEo/InsXfpvYe0NB9YNWU3hOWC02NmfluCDLfPRI1m4dbkN
	EMJLWzSywJ43GsaD9Gz6hlOncsrRjJxltY/Xef2YSZKmK5DO/0bXsx10ICUivhkQwMEPaMPEF4Qek
	YX4GfYyrZIf/D019e7tCylaOeQRVARteunWFDIqpO4nuMLBhbrQeYBLLNjwPrsJmdKB72qTF0D8pL
	mZGjZovNz9QK0rG5EaE/aUvP3DX3m3x9evoNiqylYD66Z0bfn6W79RlsOizIy3+RS50KLDF+8Lv9j
	gyKUyqtts1VGj7nWxJPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVSS-00000005k0m-0lf3;
	Fri, 26 Jan 2024 23:18:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQy-00000005ikU-18oM
	for linux-rockchip@bombadil.infradead.org;
	Fri, 26 Jan 2024 23:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=stuI7gBMJumChDGNuDa5NAtrFPgVVPyF9dOhkVEQIZs=; b=YNFL+6xwLs7UGHUwxrMK9jP65Y
	nPxGqhiFnRIdioRqMK0Vx8MlcjHKAGlN5GkJTjUWLpbeUG6iGgzHU62/IDS31dyJokz12C3QznmhH
	0bw7YLApkf3g/S8MpGPr/rGxmBdQub79yHW36OkEe8KBbV5CJiC5muB2ohevOyffOsTpmgbiwvkXa
	h4COede26lW6l0a+ASm2r4dYrjtE8gDAhqntQHGEmEmItCVPsBT3uQse5ItG/I7+3pDHZHSPP9KzA
	NA9aDm7IjKJuOeetE2HhrNpP3utjZ+FlG39DuJ/bTfCtm2221rNFjZfxO+E6UNx/Xw9OQdWYkmmkU
	Drd+9iXA==;
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQr-00000006J4f-2d4z
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:24 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-783b5aeaa63so77650085a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310979; x=1706915779; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=stuI7gBMJumChDGNuDa5NAtrFPgVVPyF9dOhkVEQIZs=;
        b=AglH5q+0KCgMtV9gsNJ1IJqk0NOMITonNrRYODNbZKH7uQPhOC4cCaq5nAuz4cbrGL
         pASWXQFi3QIbQT8NdiSNJ4QcqFU1yAINTt0uUulpqrzmBRrbKAe8Qq/pJZLuvuJGHIS9
         QH2qQjCVgq0+gMNDTKb4LquBaMqobdAfWtIpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310979; x=1706915779;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=stuI7gBMJumChDGNuDa5NAtrFPgVVPyF9dOhkVEQIZs=;
        b=Qej7f1rXUj1Ha7kQYlAi5k2L2AaZnPdep8YKtFotcgKb68hefdt2ApYOjubyjgJeuD
         gKATC9mnbRj5vxnEmgJBkPNaVEgBT1zOhajgEdbADkKgFQy2Oix4QmHGYUhhdXhxnINv
         dGXlgNxQgP0p4bVCeYvuDY6bpDsLjaqewyaDbuuaEhJHaI4cD9qB4IgLHZgefaMn4dJr
         Tk0NXKLSYP5aJNP/nP9doq+DqUJUHAL9U85u+uVi7rQBJXHGbyTSvSkTzd60053hvuPw
         Z+wlD1WpNzwMNsNeAal0nDjwsKfVcCYVo1eVaJCZN7EthncyFkUUhhYcRcL6g9qy4YOv
         2JmQ==
X-Gm-Message-State: AOJu0YyPM7YMIo5VM844eBjjxSpe7Ytp59DcTLAOWxfEdvQBbt77M551
	1qzKBgT2On89Na/eP6R/qXV34moQxd4RUIDoKIPkMak442RbwQasRHAMupfQiA==
X-Google-Smtp-Source: AGHT+IEd+7JsySye9GLJ+DZua0TH24OzjziTyfzLeDvrZrUGlvpFgq8zte88/+mhTsCB6LhfusGKZw==
X-Received: by 2002:a05:620a:5593:b0:783:bd38:aca6 with SMTP id vq19-20020a05620a559300b00783bd38aca6mr655440qkn.82.1706310979526;
        Fri, 26 Jan 2024 15:16:19 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:19 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:12 +0000
Subject: [PATCH 13/17] media: samsung: s5p-mfc: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-13-eed7865fce18@chromium.org>
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
X-CRM114-CacheID: sfid-20240126_231622_196798_CF765E5B 
X-CRM114-Status: GOOD (  10.91  )
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

Remove doc from missing fields.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/samsung/s5p-mfc/s5p_mfc_common.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_common.h b/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_common.h
index 59450b324f7d..7e7e7b695b53 100644
--- a/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_common.h
+++ b/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_common.h
@@ -612,7 +612,6 @@ struct s5p_mfc_codec_ops {
  * @chroma_dpb_size:	dpb buffer size for chroma
  * @me_buffer_size:	size of the motion estimation buffer
  * @tmv_buffer_size:	size of temporal predictor motion vector buffer
- * @frame_type:		used to force the type of the next encoded frame
  * @ref_queue:		list of the reference buffers for encoding
  * @force_frame_type:	encoder's frame type forcing control
  * @ref_queue_cnt:	number of the buffers in the reference list

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
