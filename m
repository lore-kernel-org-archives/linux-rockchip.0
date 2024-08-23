Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA498C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSWbTS4w5VyT53T1eXl72dlzPkbP6IhuRDcXUd7cw2s=; b=uK/wlEI3SSd6lc
	eLgBTM1mFRrkub1zb+kPs+5oNom2M2akXnt6pCspx+EtjKoN0xI6lGD7wst2IWTuR18pEB+sHjH4o
	kTqLvBpgx2RiNz3auO4JC/9DmXz9NL7ePUb239gZFJHPJg0cH4mx8sbowbQtV8X8Z6b1wybVtChy/
	ZUF8sF02zSkBw/U9Maf9C07+DhF3vToMbw1UG65Xhx15vwUnTLGTlAh1XkSuLgNfMIl/Y5oBsmAwc
	ImPVleqeAEReZBTA+1HmN2KtnsuaSXdHwCxn9zUQdOG2IYeFaogQdlbT76V3BWNdSfXGUy8HiMw9F
	jVGkuOH6GDcMqNyHxWmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTmq-0000000Glax-2TWY;
	Fri, 23 Aug 2024 12:53:04 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlM-0000000Gl8w-3IDn
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:34 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4280772333eso3413185e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417491; x=1725022291; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=08WjYAlBBFEeMm+hEjWVyH9fkJaAAMN7ZuFtniSsgzY=;
        b=dTKoOXbqwbk7N+kHSN9d+z6HLwE0lgSS85dv2BKGHrU3DgXyz4gIsUhVmHQ8Rd2TsE
         184FunHG/WjSdXPWQWgqrRK37Kt43T8LTfQLaZv9qXGmq7dT2/DaQ6oYMO9YLwOhyUok
         17cIlRsje+A95nYGQiyHMyRlCUyfQYmdqlqT/H8yIXc9hC8bi3MfgRABjO2XaHH4Uq4w
         fYyPD9G6+o868QLJvKT0FVyNwiL2qLu95u3IpChISA/YJNPGPATRmXZzyi2GxReRy4OF
         2w/NVLbOpfyfc1liWTn1Pnws3Mk5NZlaKc5xMgbxI+pove6cjupucE+GiRxj/QKMSrgQ
         lt6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417491; x=1725022291;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=08WjYAlBBFEeMm+hEjWVyH9fkJaAAMN7ZuFtniSsgzY=;
        b=aOCxmeC086et0wbwobu6qbFQ/ss1b/UVo+5uoUFIr7EIiaj1hoA9j0XpAmV9ClXUNS
         lEInazTNjt8xoD/XOfndxET9eM//4PQpBNJZY57rW4wLukj9kGgwMkGm/8d2XGKk3DN8
         5XE/1ue2qAmQQVwYbs7gJ/s9OjW33gE6txURMUOkePDZeMuzB4KKVbMrnaSILts0hk5l
         ZL85JD+2wk54pi5VLHc009qmOa1rLxBLAUY/fo/Eppo7djrUDDtKzCfTPhVzSADWlHYe
         ozjHJ1VZaDASGBHJRrRTC9d6fDAZbIY9PNgxg7i9718lXK6WYDdQzxiHNseg+4o4cNiE
         CKOA==
X-Forwarded-Encrypted: i=1; AJvYcCV0Qe8ibt15onBkxkEVewoqitYiIgiEJSqRk+7vNglw/fN7Kr5+HqBGWB6KK+o0ZrUJRhD51fqF4XUpVcUWAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwaxlamKSLE+nRUedo+lcM33yJqHsZSd1+e7FKoI8sA8ez3k83M
	qtJF8QP69R8SQjgYQGQPR5Ha6y+wqx63tMmKwIUp0X7HVCFaK+vyyabCPfB3UsA=
X-Google-Smtp-Source: AGHT+IFvESEynb7DEBYY8hzcsJgziySe0iFY1cy2WIsrs8d5Dw+VUq4IdBOvbW6RhGMnpPDiy3f+xg==
X-Received: by 2002:a05:6000:402a:b0:367:95e3:e4c6 with SMTP id ffacd0b85a97d-373118310a2mr763684f8f.1.1724417490919;
        Fri, 23 Aug 2024 05:51:30 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:06 +0200
Subject: [PATCH 02/10] pmdomain: rockchip: Simplify locking with guard()
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-2-8320722eaf39@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1181;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=tKIx1euz/voqGvTWXrKxtVVbTahOhXCIVgZ5jLT/O6E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXFrRydBY7pj/F8sriEDoh64iP0CNuv6npaj
 HfeNRwU4H2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFxQAKCRDBN2bmhouD
 1ydTD/9YGdRcqk+Zok98MLP0sxqW8OpRmhtYJW2V4NNNbYyyky4ZJr4aGR1Odu+U8AtBgSsNa47
 2nLXZ2bJ/5YbwBxRXa1l30xja/ULnh17kbIf7MVIbVbbuXU1oqsAyqX9zuje16YcLC5qF3v5ATI
 BCrONFjJ2VsbJgn4GHfBK89oDUSVCXIPjrzONIpHVL5vqBv0hBtzSAYjXcqtBAzvCcpGNRT0zDf
 LLAB5t2TCzU0sxWRUhXWVTGXcq6LRh178lslP4leZ0m2NrwNTRR2A2xbY90vS+yjVEXQJOGh00m
 VGi/TyviAJK/vok5UfhiiCnLk171BkRPjlAEv6BG6Pc8qLj/LWjCPJNlbwqD3LT+yvv05kEpmeP
 R/BGeiUEtv4xxgpRxfIuSZJhx8iDXIoog+OhAqs4FsFU1CY3Hz4SgTlVI2nkPthKcYdS8U2V16R
 452XzYefITynrpOSYMuxMwfO/7/lil34uB1lR3L2Rc2ltoMqmrUpCr0p3qsuxfZdBogfQsvIpEZ
 dPcBUzyYD1q8vqQJveSoOBN1E5cDJuOiT39Yar1sk03UVz1B2MbvwJiE0L/ORWvknPaKPFbvtEX
 QY243Ebc6HD3s/4s6YzaO097h0Ba5tySJAZBbSKWoAHDKYpgQ3/NaSheTq0SdA+D6L2xGHJQ59p
 WJa/6IY/F6V89qQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055132_896739_825F2154 
X-CRM114-Status: GOOD (  11.41  )
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

Simplify error handling (smaller error handling) over locks with
guard().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/rockchip/pm-domains.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 5679ad336a11..538dde58d924 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -910,7 +910,7 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 	 * Prevent any rockchip_pmu_block() from racing with the remainder of
 	 * setup (clocks, register initialization).
 	 */
-	mutex_lock(&dmc_pmu_mutex);
+	guard(mutex)(&dmc_pmu_mutex);
 
 	for_each_available_child_of_node_scoped(np, node) {
 		error = rockchip_pm_add_one_domain(pmu, node);
@@ -943,13 +943,10 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 	if (!WARN_ON_ONCE(dmc_pmu))
 		dmc_pmu = pmu;
 
-	mutex_unlock(&dmc_pmu_mutex);
-
 	return 0;
 
 err_out:
 	rockchip_pm_domain_cleanup(pmu);
-	mutex_unlock(&dmc_pmu_mutex);
 	return error;
 }
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
