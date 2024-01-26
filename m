Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A44CC47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVnPw8wURaVf9F9qQxdp/dle+1mSNzJJiCky6VOHF1M=; b=eVzeSbpNYLYmDQ
	mVoaj0gYP4tIOFapn2vDx/RjaOMfOPS1MYXVzF4wzB2JBGzS66Tkn/f+ZBycKK9zl6dcEIIOztOuR
	yNSkJv+57yWb6C8fdU3ARy7EHoufPxPb6LLiTOZW7fZzlBdNO+ZyyqMLW3wlyra9GN5MH+iL96J0k
	C8S0uDm8rdmypLP0dtEJ4U4QFTOWfHopqoGlrvE0VILWfODAfhxYLrsieDO8c4a0VAWZs2LjB0KB5
	HWa+J1uJL/sTOvB7L8lh5IJwPNQAj03euPl6aCYwcSU7dXU8ZY8u5SRuaTNb7ahIrK0yLd5zc3ZWG
	vwVjnMYCXLo0a1UeSbwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVSh-00000005kEF-3GyE;
	Fri, 26 Jan 2024 23:18:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQy-00000005ike-2Sh2
	for linux-rockchip@bombadil.infradead.org;
	Fri, 26 Jan 2024 23:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=IQ2hVP5YSWUaFh2DmjHhBwG+r6f86O5FO2Ifv95SzW4=; b=dRtuKrCtWKto7Hak3VGaWPUv4J
	TKhIhe1X6ss2POSfQWIzPqXbbwFJKUiVhLnEnzOnSJ/U3DTZ6hvOIhPgbyxjJ2BpaTYbpT1zcN0NC
	nINhKN65lszNRtQiJKoVboNyoJyMk+e5z5D+VlzHzoBvbSvb/9zQg+phnte6o3zvbEmMon39MWprf
	NmOuRFw3y1yi04zQazstnl1JCmAS1Bt/LUWEliGU88UUBFxgOub5e/WZzKMCsiC0v8ZVwgrAzy5JR
	dU/Xw4XV/6KIApWhQzSirmBzqsvT1cIdzBjU7vlrM09NMmymATUuVsc4NydLl6vV89dXKc7PJcjk7
	H6qZqoWw==;
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQs-0000000F96R-486q
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:27 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-783cd284528so62925985a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310977; x=1706915777; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IQ2hVP5YSWUaFh2DmjHhBwG+r6f86O5FO2Ifv95SzW4=;
        b=S+/YLqV51YkHEpRBSjSayCHVqhv2eryiqhGUoqKDD6NkDvQQpArvgLAaNsfgFUzO9w
         hXFAo/hXdhB/gHKIc8VgOSsxLJZXLg9lrWxgBi+z8zNC4NltGc0/MvxGixRAqCY57Z7V
         IoF+QyETVObwU5fDsP9TctoFY+pcCbzAtkIK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310977; x=1706915777;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IQ2hVP5YSWUaFh2DmjHhBwG+r6f86O5FO2Ifv95SzW4=;
        b=um/p/eO1mRVZQRie+i3IECtlhyuj4BN8HIvugUzfZnx/rmGCANpe0FPIpSSHZNp/k6
         M+6sigSI3yD7RaTf49+eOjPELB4LdPbnMVEprvKaXkxqCC23h8zRu06osrFiquZQQPfJ
         oLBZdm+Vmbtwpj73qUmkCbG8JDRmvKVIDrKoMkrKIYX3P+c/Jk4LjVv/2nJ+Xf7TB98n
         b6BKGPxjY1XO7q4PGJNN8NaQaIwJmMHiJ+r5yfu4CQHMxvxcYoroFHjLO0C9LW423b6x
         yARKAFxEgD/QtlujMdBdhX5YVs54CIM87V5RgNmZcJ/2PIELSGP8/ni8n+5E24srTJOP
         wa9w==
X-Gm-Message-State: AOJu0Yw3e7UPxzHPHLCR9t6ZfC4W3yhhQfQzN1fgn00BSgwluOuiAuj4
	HgMqUuRlfLhrN9kHwqKDvDe7PAHAlGi+aJm8r/D/CelTEfCBQe8Kd6N8U04zUQ==
X-Google-Smtp-Source: AGHT+IHtaIwGnlHCGr2gV5vTdHthY/KJARNYO6pIlwA2CpmdH7LMlVQFPCHc4W3qOep8rQ/bvmYRGg==
X-Received: by 2002:a05:620a:12d9:b0:783:25ba:6c70 with SMTP id e25-20020a05620a12d900b0078325ba6c70mr576836qkl.129.1706310977198;
        Fri, 26 Jan 2024 15:16:17 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:16 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:10 +0000
Subject: [PATCH 11/17] media: qcom: venus: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-11-eed7865fce18@chromium.org>
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
X-CRM114-CacheID: sfid-20240126_231624_637417_1A5DBD79 
X-CRM114-Status: UNSURE (   9.83  )
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

Remove doc for missing field.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/qcom/venus/core.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
index 4a633261ece4..a39986ce79f1 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -428,7 +428,6 @@ enum venus_inst_modes {
  * @error:	an error returned during last HFI sync operation
  * @session_error:	a flag rised by HFI interface in case of session error
  * @ops:		HFI operations
- * @priv:	a private for HFI operations callbacks
  * @session_type:	the type of the session (decoder or encoder)
  * @hprop:	a union used as a holder by get property
  * @core_acquired:	the Core has been acquired

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
