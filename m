Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1872D78787
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 14:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pxljedn2QGIoETN2Iu/TV8+0bedEOnzXPLauQWcYzSA=; b=p6rQApDR89adl5
	DHNY1BaGLZFA1FD/9tn3FGHot0QxGZVo2SIfpgcOnXBzBwllOM2D7D8vfYw1oJneAumuLtDso+3vn
	9WYDC0J2tzpjURs3dWEHZD/jWWmEjnL/vF/3CflKmy492P7ZqSChH9XFMJ9FOfJP7LHDo2DPoPgcj
	opECn65twvJKHlmSLU1o8hrRo3cVEPpsktWkjObxPmJszTOvkQQzrq1I5QkVbwaKJ+kt7jp9otF+M
	UQz7mwjR+JrXKIvN9x/u1UX//BoSOi7sa5ZEnK5Opu2No6JG9cmq3HbpCe3Zs0HbbLDSNaXxlFIRm
	fe31hbMlYXWuLkDNbsWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbab-0000000AQ1g-3ijR;
	Fri, 19 Dec 2025 14:36:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaO-0000000APqC-0JXM
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 14:36:05 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBkQWN3992425
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:36:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6KPYVk+CR22m/g5FBCc99SLHEDjfYAU2ih06ixsTGRk=; b=Dx6RAz2MmQbVOKoW
	UDi0K93jkktF0Nszi/pD8lDSsAqYLALDNIz8FwmlIXxBTLlZzeHqx4R7pTt7UhIG
	DWmkliMOf4jN/ZqpamEBz3dOcSS7LwJdW7a23TY7OZqHT94/fYay94YEaGDt2bCg
	eNWxmLyJm3NJOorIOvXcle/4rrXsHtln0vtt5DzVBlYaxJhYfeQsTUSftPurIdlQ
	CziXMC4GXW1tnfR43T+5Uy0uXJn9CEF2E3ohrI8zJzQ4kFYweHWwvMbLzqxPDzC/
	bJhfDsut1yCEbk0zbCdA4ouj3hRi0woR18qT0YgOSfXRgJG7elKeZhYay+WFtIgo
	uEmzCw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2daw1e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:36:02 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f4a92bf359so28596511cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 06:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766154962; x=1766759762; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6KPYVk+CR22m/g5FBCc99SLHEDjfYAU2ih06ixsTGRk=;
        b=UIQ09wVSdH6UW68pO614QbT7T6yxlFvNwozpMxdUaJsth7DtacnGoW+6glfyLFlr4q
         hAaL7ehw0J18Q6OCGWnWJraO2CksudDRw7ImfW+fKFituH9QkOVsexSTnNXEcPQ2kyJm
         cMSpalw2j/3SeUA/gLY9ez+x8/ijqBqkdOnV2ZznXK7nzEks1PFRraPjk+YDlauG+tMS
         c7ZYUhdye5pekz+U2ZMShDTi42Uhye6NRd5f2o2K3PXnSfalHnbs1eGcEpS8R/b8rGQM
         /KanYVOpjlvgJ17AMUHN9VtAK+d+6x6FvHQwW4R0yIHMp/F5iTEOty9Z6JE8fjRm5zbB
         jytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766154962; x=1766759762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6KPYVk+CR22m/g5FBCc99SLHEDjfYAU2ih06ixsTGRk=;
        b=CfUfEGjyQ0+TMCr57NuHfDV08xP3GLJMtipTv0QK7MUyQfvi3Ph2BojwEsNsFyxPPY
         /TSdV+6kJD98JvlYNN5IE8YoO38Rvv1jMWAAaenlC9l09SrbnntKGAFsO2XfLmAJ/o3h
         YF3lmqpzQkbKd52JimozEmoXxZWn9qY7tLv+M2Z90fFqDl5xL/5zbzJwcWafegElaFjm
         +4FGb9hA/hgqI1eJssb04avsMlGhPQMAppGx7xRYCvdzYJEWMo64IsK5mXSfnjKiyosj
         1zaEbGD+ICbbaE4MHgqY1Zmd1RFnsyV6NlHm1FNWD/lyM7U2X9bY8yW1LQVTxBHStXPP
         kasQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyp89z7ba5QWFSMtBdtgLK18VuubO0Xn5NGmvC4Dh6UpujhXMlDV6BbEu67LtRdqisuCi08CtFxR/E+hgF9w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRHQWzCHmQhQqIimOgTJiRybJhskT4yyEHi7Ueyrjgd9bLP30D
	DbWhr6FYGoIigeWMEf6RQraffcxXA8d6a+ENfQyEmrBW7KetN4UEhhyIt/nPRg5Oa/AAQtRoOqA
	S5hQcx4jh5GcC1j2uJNqfQypJ65gp+dwE7mw+hJ5YG7l0y+SjAAzapJYcZBQDonluZa5p4GsLC9
	Q=
X-Gm-Gg: AY/fxX6+Df8wobHzay8jsPwk4gh1PxnYISjDtdXhsJes6rFhuDYlyhZUT9HoZDdR0HT
	zYK3bTtuyI+imFkGaWAeG+Ccwms3d9wRoW1emFjZzITJMhlcfhhGtikD9/JXpRhDYbnTHQpEX58
	jW8MIq2RhTUmdjEmAaNEUI6m8xcW41QzTWP4Al4W4dhoYLpLpPcS58IVwCqZOXYt4g246Dur7J4
	9HiJUfBIlxNp+aGCd6qsmUW8p0co8HWoMrfe3+A5LwLv6F3hb3acOs5ZUQdVZuhPo7ojn9qCmSM
	mKkNisZlPG1h6gkQbkjKKdTjUBzv6cTetucaAanc7V58g1mIBKTiUUsYp+riqWD0SAXkNXNgmXq
	2YfB22ZNnEHICOISxWCJy+3ojtUHmpNlh+c9fsyO1qV96eCGs2IchYBpoYqBAFUAUUmS8
X-Received: by 2002:a05:622a:5909:b0:4ee:2c3c:6e with SMTP id d75a77b69052e-4f4abd0cafbmr40586041cf.30.1766154962207;
        Fri, 19 Dec 2025 06:36:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEf/8P/7gffTggqaLL7XA+UX+u7FNuz6BrjE8UubcGAq9Jn0DzHD2i139MD/SRvhbhO2DTJMw==
X-Received: by 2002:a05:622a:5909:b0:4ee:2c3c:6e with SMTP id d75a77b69052e-4f4abd0cafbmr40585381cf.30.1766154961735;
        Fri, 19 Dec 2025 06:36:01 -0800 (PST)
Received: from [127.0.1.1] (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab7f86sm245145966b.17.2025.12.19.06.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:36:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 15:31:53 +0100
Subject: [PATCH 4/5] iio: adc: rockchip: Simplify with dev_err_probe
MIME-Version: 1.0
Message-Id: <20251219-iio-dev-err-probe-v1-4-bd0fbc83c8a0@oss.qualcomm.com>
References: <20251219-iio-dev-err-probe-v1-0-bd0fbc83c8a0@oss.qualcomm.com>
In-Reply-To: <20251219-iio-dev-err-probe-v1-0-bd0fbc83c8a0@oss.qualcomm.com>
To: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
        =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@codeconstruct.com.au>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Heiko Stuebner <heiko@sntech.de>, Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1502;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Fmnj6mVvpbfLtwijoNhLAn9j7guM9pp4HVJeADMhGe0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpRWLH1EFl2sCBthzt79pkShZZiMmOVlFkKcQCW
 mlR1bgxXBeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUVixwAKCRDBN2bmhouD
 1yneEACQf/jyEI6/m6DrHaosqP0fY91Xp3YLGPZnm/1USifaPKrakFkvixtn0eSGYllX4PXMDgd
 duf5nq+PPq67Mbt2J6GvQ80K55z+C99pMr/xL1KxwOqk7vbu18uyryGnjYDo/O3ra1OFDJUCBL1
 xbEmsfWqd15AUJcY74qMPZW30zYCuLScdNNvhWpQvsURFVXzruPmXAUEA1LZDkD13KfhiF+4hd6
 0+cey9A7YbrHXZuLIjkq+EKDRu5c1HY7nFEXeRjZG/VdRpNHnnrZOYLeoSg89UD3d9zHAoAIlC6
 k2HwnIcyCIoM1VTZcC0v71LYPm9FtsIMbZ94VyqS7JIzAkn9JWACeavbmC8utEloLZ1sdxRA5fw
 j+nj7Ugdy0niu9678mY+/hCHp0pGpfxC4S5L2uAkyze9Be1VsT/nJ8+rY7+yrfcULh0awxpWvCY
 yq3qH+6xgGymoG7C/DWWg1p2Tc2UT5VXyB1wlUZ3Dy7rs1t6MPOoW0m6Y8GpIoqbxKl95Ot07Ql
 yxXnHOIsTgub0fbyrI3uwQNMn2b2HkGofj5xJHACHWk+TZRseG+oRZoNhk6gO/t5QSrT80IQCqV
 dapzjsOgJWWyp4u5wm7f/aXgCFoj+c/zRYy4LBpWkRFxP+7dqmmB8UObF1SIb2AyV0JQKEvlVEB
 VKH7vTQ/hvVYXJA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=AcG83nXG c=1 sm=1 tr=0 ts=694562d3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=UodCGf9HWxkVo1034I8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfX3LjTZOnmoD14
 ZgQPqNdrU0L/M60Vo7Lg0EI4OzqlabyGiYemjlXBP916xgmEvzbET7mb4B+kSSSuUNUw/d6Q2TK
 HnSNSmWMTOoF3y8OQeMhTsOP4Q3VrBH7OAf7bZjzChvGscrLMTB7h4G1BTzk2navdRC88S4vXyq
 jJ/pwXrgW9qIgqEvWqtK3M/GLyoQMMTygSPZDDSrXjbYSMKIBm25qOERZK0+aYGgkz6rdF5aF7Q
 iatHqZL4ORE6V8vF+gFnhKxDey3ywCvYd05N616bEs0tc4pEYaixUlgi06RkuHeaFkQf8v8QUlN
 ZGZQJAQmVobOLwz/WlFLY11JXbmxxdbLAe7uQ+VBvoJFnkKX3GYgXHfGG6kPo+pz1qbYQRPBMKM
 Z6c6bWT7o4+vCoZy+zyecXT+mSR4Jvb9jm8fb6xujHQhSmLLUVgpyfMhrM6aAQMICh0+7DG4mF1
 G/DnS37G6XjQ5T7jIFQ==
X-Proofpoint-GUID: D-2Ki2nv9QEII22iTRk0K_xh_ltV9AWu
X-Proofpoint-ORIG-GUID: D-2Ki2nv9QEII22iTRk0K_xh_ltV9AWu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_063604_297582_36B9BE72 
X-CRM114-Status: GOOD (  14.71  )
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

Use dev_err_probe() to make error code handling simpler and handle
deferred probe nicely (avoid spamming logs).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/iio/adc/rockchip_saradc.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 6721da0ed7bb..263d80c5fc50 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -492,10 +492,9 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	 */
 	info->reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
 								"saradc-apb");
-	if (IS_ERR(info->reset)) {
-		ret = PTR_ERR(info->reset);
-		return dev_err_probe(&pdev->dev, ret, "failed to get saradc-apb\n");
-	}
+	if (IS_ERR(info->reset))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->reset),
+				     "failed to get saradc-apb\n");
 
 	init_completion(&info->completion);
 
@@ -505,10 +504,8 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	ret = devm_request_irq(&pdev->dev, irq, rockchip_saradc_isr,
 			       0, dev_name(&pdev->dev), info);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "failed requesting irq %d\n", irq);
-		return ret;
-	}
+	if (ret < 0)
+		return dev_err_probe(&pdev->dev, ret, "failed requesting irq %d\n", irq);
 
 	info->vref = devm_regulator_get(&pdev->dev, "vref");
 	if (IS_ERR(info->vref))

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
