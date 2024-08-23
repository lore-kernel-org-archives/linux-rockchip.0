Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 080BEC5321E
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ui6x0vHhWs4bC6L0moglhGJkOyRteJMUNFH9FC+uMb8=; b=vh7ZzjJ+kqurjM
	2Tmgp5mD8SCKzO5wO1h8BjF2Xi64pdd/y656eemGzXT/h6xSPWJFJgmrBs8a586V26mHAGFRpN/yC
	1tNRy4DwztGoRVnAy90Nm1WZzRELd/u2yh587Lv6jZK0QAKtIZiG3iwm+yOzz7Oys+parGUIXm0Yk
	SqWTwjfKeWWpY1hCvekTKDysSaPfj9ZviX5BQe5/mnV/Iw7JTnvEti0A2ut1m/4+8AbpoBaU+evS6
	jVt/eeyFIvJz9iLO2FL3oflYaIpX3YV43L2O7AKOmTqHM/RwLwS6kOyQqzBBOySYMggYWqUzGf4fe
	38/mDMtii+mysiekwaqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTqW-0000000GmQ1-1MsT;
	Fri, 23 Aug 2024 12:56:52 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlX-0000000GlDj-0NKD
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:45 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5334832fb94so440440e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417501; x=1725022301; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LWSvBRmFgwiSd3F2eMmjx+EmKWHuqV0doCXLi3Lc+dM=;
        b=Btnh+ypkALidOGHPoE4G9AeGl0joYDY1tQFlBlUHrLlgvq2ornBOpr1cX5pGXjktbs
         qkvj/9phLykShS9pE5UmJko1cnMWo9SiFH8jqGGIogT6ggyl6lVSmOyNtY0bnFuO/dkF
         Sqon5++cx3VbKiGlXqXAUsl+Ogi+VuPopk4DGRpTwlrjI2rMEEg/8fxxsGu15qBZ2yVm
         Amsp2/5zt77PdNUyllQDTQV7Mt2DRLLyS24s1+Qz96Vbgf7hsWPhCywQbAhwUhdGO/Ko
         /w0c22+yq0nWOmpFelty0p7EcPWWrDHq2C01u8fkHpfsJBGrHPEO/ZBJopzxyJvWSONh
         HH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417501; x=1725022301;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LWSvBRmFgwiSd3F2eMmjx+EmKWHuqV0doCXLi3Lc+dM=;
        b=CQH2fY9JKm6K1+OjB2eZ4BhWFPF7ZI+3UW/CCeVNBDAglgE8tBg/0YxcOANFjYKuI3
         nu+Y59fObKd9ujXk2nQIvzQl033lUTNLsaFYXttwVo+MfLjV26V76d68ZESkt7ybh8mM
         oLmwS6AI4aHsdXCeyIop1w7Wd2wM5MKm4EubolaQ42WGfiv6P2/aIZw36fQueibDk97a
         mI84dyY8TS/gcBHTUX1EKf+ExnCpohmnWgsZV9KREiRezEBl7NXk/we6lP3rHPRN+Rlj
         Yhd4tGwg0H8gYzwh46hvVh+KFS0Clx+UmhRn7Hz15EnaoTO4aTQx7EsLJxIsY6Lb1Hyr
         1kdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUN8tTSD/HF6bbMcQgd9l0jZrATkNMtgqaLZTA3ACuzflw+O/i9mx0LChyIoBP7dE/0ztL07m7YoKxQKaDeOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxltjMoHaGozVVZxdVe6wGTvA19kB2dqDomAq6uxmryMFiiQnvL
	GFol/KV3tHXIUUvu/RHva57NhbmhFM2JrEoW5NMCSv/IP5FtaZEd+6mmvp0OraQ=
X-Google-Smtp-Source: AGHT+IGLzwRApWGomk3qx7J1YXzN02rn4ed9Sav7TouTOUXRpc+oqNnzZE3qUGBBhBfveVxwQKMi4Q==
X-Received: by 2002:a05:6512:1592:b0:52f:c142:6530 with SMTP id 2adb3069b0e04-534387c4976mr838734e87.6.1724417501464;
        Fri, 23 Aug 2024 05:51:41 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:12 +0200
Subject: [PATCH 08/10] pmdomain: qcom: rpmpd: Simplify locking with guard()
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-8-8320722eaf39@linaro.org>
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1922;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=dEBqeOHv8ua+SDX2xXix8P9X1j2XB3X9nrWuqhTFOoY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXLBp4hGT8aL0uXmCvXIwXYIZJjssZSgqVDO
 1PWGdPkEI6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFywAKCRDBN2bmhouD
 17+LEACYB2RFCyuya6wvvIC2WOhsGUn/MwYWW26D+fCbIN3o0SrRL0t2RUDZEA6ix5++ngYOHHz
 QzLYgCb0NHUJyStgjAPq4rdjorCAfCMNPzPRzcKMz7Ni4uLeVgMM7Y5K79/3fJ95/Xm5iKCPxoe
 3HSnllESICwowfturIQwU2ysa7Ge0sRD+cmfbl09MpqsieJTpUb4bDR5UZWGQe7c3za/UBg3lmu
 3gyghMwahQlUz6gDqQP6MUtcpRBn1lXXZhzrvp/V6Qt7fAcC27W0AhVj0rJm33YiJJfSFc3Ofjc
 ztvOWf2PN9LIjEEXuGVN99lJ3FNoiBGv+9k5vEkWRCbg3jaQdZGUfLeM+vQ+u8XH6NPzGj4ysae
 FVHwHV+i/7fjb3Juob8j4ggZGkBGZfvikKcr77+YRYu6Lx7cflUhRU2MFQHi27YUL0kV9FLZq+V
 tHs4IhWcQk6eLe1IWsqjBAOhDSKeXHuTWXJfNOEz0Jy+8aFrGwqfg1lhAS9OC/v4X1en+mmoDty
 IcGGsSXywdd7ALcchH6LZL4snqzzWY89VlAyuiq70LeUbCKPU3KzBFIuahkawgYnuUu73eqKSEP
 IWvOoXAm/T0Jo2MFaLy499xsUXDMPZKRmx4DA9rOM8hTxlZJ+Exu9F5QoZJVQXHK1tsmeYlGacT
 8GcUEqo80oZTQ0g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055143_174141_36B92E4C 
X-CRM114-Status: GOOD (  14.05  )
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

Simplify error handling (less gotos) over locks with guard().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/qcom/rpmpd.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/pmdomain/qcom/rpmpd.c b/drivers/pmdomain/qcom/rpmpd.c
index 5e6280b4cf70..0be6b3026e3a 100644
--- a/drivers/pmdomain/qcom/rpmpd.c
+++ b/drivers/pmdomain/qcom/rpmpd.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2017-2018, The Linux Foundation. All rights reserved. */
 
+#include <linux/cleanup.h>
 #include <linux/err.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -1024,20 +1025,17 @@ static int rpmpd_power_on(struct generic_pm_domain *domain)
 	int ret;
 	struct rpmpd *pd = domain_to_rpmpd(domain);
 
-	mutex_lock(&rpmpd_lock);
+	guard(mutex)(&rpmpd_lock);
 
 	ret = rpmpd_send_enable(pd, true);
 	if (ret)
-		goto out;
+		return ret;
 
 	pd->enabled = true;
 
 	if (pd->corner)
 		ret = rpmpd_aggregate_corner(pd);
 
-out:
-	mutex_unlock(&rpmpd_lock);
-
 	return ret;
 }
 
@@ -1060,27 +1058,21 @@ static int rpmpd_power_off(struct generic_pm_domain *domain)
 static int rpmpd_set_performance(struct generic_pm_domain *domain,
 				 unsigned int state)
 {
-	int ret = 0;
 	struct rpmpd *pd = domain_to_rpmpd(domain);
 
 	if (state > pd->max_state)
 		state = pd->max_state;
 
-	mutex_lock(&rpmpd_lock);
+	guard(mutex)(&rpmpd_lock);
 
 	pd->corner = state;
 
 	/* Always send updates for vfc and vfl */
 	if (!pd->enabled && pd->key != cpu_to_le32(KEY_FLOOR_CORNER) &&
 	    pd->key != cpu_to_le32(KEY_FLOOR_LEVEL))
-		goto out;
+		return 0;
 
-	ret = rpmpd_aggregate_corner(pd);
-
-out:
-	mutex_unlock(&rpmpd_lock);
-
-	return ret;
+	return rpmpd_aggregate_corner(pd);
 }
 
 static int rpmpd_probe(struct platform_device *pdev)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
