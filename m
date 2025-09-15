Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 398EACAC599
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 08:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWZDOgpT/ho+2ygnJorCTYoio+CA5t8EyF5NVpQp8g8=; b=tKC9FtDOOQm1Dl
	63oZuDQY3zzz2tDRlFU8op7SXIw3dfNA+Ldtz74/eu8wZQn/B5kYbkC+vwDlgIfTmnFYs2utPI4P1
	YBggID3pzunV68UNCpYTWRtQ57ym8JhZH+fsorxJnEfePVN7icMddWP9mTDi2B++8jzbsnURQ8N1L
	+QcvmOr184v9lNb4GOQRZhmuMKigRlfE8CQ82lE8jQM4JqMQ3T4RgvzHWnx7zgF23jaV1pMXGoY+h
	IUmleMZCzh0ppZw+0KlrpOALleBW6jF5qW1Q7tGOjtGa8Nps54MgCwNaXzzf4SyZwYjZnkh3/6KPS
	NIvOv/9sTIdnlm3RFqjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4ek-00000003EFy-1ipA;
	Mon, 15 Sep 2025 08:33:50 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4ed-00000003E7n-40qy
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Sep 2025 08:33:45 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5607c2f1598so4412722e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Sep 2025 01:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757925222; x=1758530022; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9SAepVheBc2VKd/HWr2jgYD1wCXMnZhybbLdY99EVCQ=;
        b=kk8NF3zDARxygVg9PL42glyPHUsidL+gYREwjVlg8mZP4CL43JfUiAHLHQN3Yh5pgL
         bjEYFbJVyXt6r2PwLEecOTkaxEtFsHs999Engt7K9DlPOYef16FkeuuzVvwO0qAdOB1/
         ZrDz7RdEpC0vkzAVtTMElvfJ70RHNTrIo95wn4llXTx3W+FmxRASPaTtx6Xd0IlRpFWE
         jGJW8qjUfSKYjABHPAZFBtZ3F5yI8y7OQh4hyP8cxcMhhFB4j9UGEC3kd7iEYtWfKxUI
         uu0DaKJUiC+kCxtmsyRSANvxwnrn4TFt2UsUsoaWbE4RW1BqSfI1osplL7eFmM9XoGCs
         6nzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757925222; x=1758530022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9SAepVheBc2VKd/HWr2jgYD1wCXMnZhybbLdY99EVCQ=;
        b=MDXYLX1PFLPLK5Rk9EUEQb2vbRV6Y2rJJPzMttD1+EnRzLzC47ZsUNy5xdg5Ua4mBI
         m3Nv+19lUZxGs0Qj9LppTbcXv30zxzepFVEWI815X7ox8IrXKXHoqhbl7SxXHtGUXZwi
         EEEzGwcJgQsqYqZBJ7Eh5E0vwDhk2JtTpYbrRhHYsr2pQx3OAIFnduYIoN0Bn2W196tJ
         yktLxjOBlcAQC+WawvxmadvnA1IrcF22cJp6uLDHma0tf+8y2OuR9XQDzlbNeLcvwf4T
         fmjQqR8H93YgU8HFT+yq8WtZddm17eB54i+aE6pbnTDOY7TAlJa2U1N50z7G23LCBmCk
         KCTw==
X-Forwarded-Encrypted: i=1; AJvYcCXYmiCkIgqwd2RGTR+V1FxNFqN/NNK65RJP1OnnAr642wcyuN0VlB9JLny82V++YXhwGtoEYeesav85OtOc4A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvQU/XQEBIN6N+jMwLgeHS+LRS7rtprCGLnUewzBhQ5DR8RSPs
	+e9W9Oj7YyR1sP+CzEaikExSYpR18N9tj+PGsfNKPn6Xqok0R8W6DGl4mPuXeEzAOBY=
X-Gm-Gg: ASbGncsB3Q/Q2ehVZ5OkOLAP+cDdhPUJKWAmvH71GjktdM15CT64QjxhXdq631QDL+q
	6Q1imvvoGKYDppNgycIpstvGKEZcmLWupPxf4xNQZHI8oIjfFDHN2bqgQYZuDAGY8UJNYhQyHGY
	MlWPsag7YotexGWwNx8A2IhvB4Lq1auTHnRYbRDj0fzmTjbM+nqg/B5f0S42RwyznA0jEVn5Hn1
	m6CPEjo60jjNh2KS6Go9KsClmaasMrjpfc7OSD8SN2xT+zcsy6UUHul6MLdLRAhQoZ4NHih6/oN
	pVupV2Qp+9SHW3P9Hk566AfPtA4tbRrHNkWIy0X8GWh/fUjpTf1zq1PL7JikALSNDPwkD6aCPOr
	eFwDpquN2M+PAcHapvm7hHCYuPsL+Z27GXYn+OEGPvhsfzjNrhJGUkFg=
X-Google-Smtp-Source: AGHT+IFijRhuu9NRr2ZBM2GuQ4gfxZbDSURIOqckSOM/gNBlLBKx7V4oU2eD/51Fe4veRTnL+2Myuw==
X-Received: by 2002:a05:6512:4024:b0:55f:3d7c:3880 with SMTP id 2adb3069b0e04-57050fe1dd2mr3397083e87.48.1757925221761;
        Mon, 15 Sep 2025 01:33:41 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a6a33ba8sm2335142e87.46.2025.09.15.01.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:33:41 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v4 3/4] mmc: select REGMAP_MMIO with MMC_LOONGSON2
Date: Mon, 15 Sep 2025 11:33:16 +0300
Message-ID: <20250915083317.2885761-4-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
References: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_013344_020962_27381DB4 
X-CRM114-Status: UNSURE (   8.65  )
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

COMPILE_TEST with MMC_LOONGSON2 failed to link due to
undeclared dependency:

ERROR: modpost: "__devm_regmap_init_mmio_clk"
[drivers/mmc/host/loongson2-mmc.ko] undefined!

Fixes: 2115772014bd ("mmc: loongson2: Add Loongson-2K SD/SDIO controller driver")

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Binbin Zhou <zhoubinbin@loongson.cn>
Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 drivers/mmc/host/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index b14daa045eff9..394724dcee8f8 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -1116,6 +1116,7 @@ config MMC_LOONGSON2
 	tristate "Loongson-2K SD/SDIO/eMMC Host Interface support"
 	depends on LOONGARCH || COMPILE_TEST
 	depends on HAS_DMA
+	select REGMAP_MMIO
 	help
 	  This selects support for the SD/SDIO/eMMC Host Controller on
 	  Loongson-2K series CPUs.
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
