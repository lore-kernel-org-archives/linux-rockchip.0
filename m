Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40AB6D78786
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yruj/y1Xp7a+6pOE1YvO3APtKDPC10bNoecW1zAR19g=; b=j9NShIxRoj1zaR
	p9qsgDdeiKhsqPjD72JnErFLHidN48G8ino0TiH8SWiA7yzG7PmcxR0PcMhW3ZKGL6Pic7ZsMIzuh
	JLQ6YECj8+3eFtSAbZJk2HBOMAjNnhvRT4LT3ykiqsp3bobQEKBLz/KYXDCp8+QOdRFS7OjmlaYEI
	XHbDZsjYleWupM3WEuKfXt+bWUyBmh6HfKQgKLeHkrHGt01WfVw57ao3itAOiQF1oTeW9FkFNkStS
	Mm8mX4roAjKXJVZ2sSlFAyyUTkBSFz6+ldhkyftYsMeN3ywGv62r9yTurzDstnEgPM3dfKer4x1L1
	GXJzVWUENnA1rqInkWlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaZ-0000000AQ08-1RPt;
	Fri, 19 Dec 2025 14:36:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaM-0000000APq6-337H
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 14:36:04 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJC2KD63991982
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:36:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mJ7RnbCsbqZV6SdekFc9SD1k8esD4C11UGzA5IGxZCQ=; b=Hnl+K3EYmUsBTOLP
	WKUR+pd29tzWcTrxfDnWjJym0NAIJMvzCAZo1XoIju72SabnOeH+Si/DSk7wWt9D
	oZMehEmfq4xBDwNtTOglEuyRmwgPGYyHIZ7vthx9Cp3LxdC5KHis5lVk+IbGd1AG
	ElFm+04c/XROzRn2bGmyaScKWTM3gcIW8QQFbwXq0V33Q2hFtJKWFfT23mz07ZNN
	1mJGKMxg3R6Rkdy8l9mIR42LL+sQ8vIvQIlYW7l0INl85Z3iYZgIVtFrNda77bWh
	ZjlQAfFoHLQPLMmUG5GeGzRg4E5HV7BLzPrqmLb5/JTr8N3JPKG6ipoSyi13Pn+m
	3fN/xA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2daw18-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:36:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee09211413so41640451cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 06:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766154961; x=1766759761; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mJ7RnbCsbqZV6SdekFc9SD1k8esD4C11UGzA5IGxZCQ=;
        b=YnOMj7x1wkf9XIBENqCeeVyTLn/tB3s5LRhAB4VXCMxGcgT3nisYhqM5wOhB0nPoVP
         qZ8abFlZnH61HeLTn1IQjfoErUcjCcF1tP/Ri/y5bGJHpTuqtCa6U3X+wgeUt4j/sRY7
         4cpLqtWc6KhRyHj/gx8Ua2H7SUfs3z1RM5BBv/j7/PzQvmfgiU4ckj98lFciJRsNINaj
         SeyKNpcxksnZ820LCy0T7HE7SHuK/EMrauedsLqF6ExGjtoBUIBpu9wlNiCF5kBgGFux
         HqeFWIBr6be56UkUfrYbXyizFXLhJyEo4Ry3Do6jJRSK9adlN+UGgeSARCmkI17jRv48
         9mTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766154961; x=1766759761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mJ7RnbCsbqZV6SdekFc9SD1k8esD4C11UGzA5IGxZCQ=;
        b=gYZONDd6izrIdHw95KGldBjmbOMkdMarmzV5ZxHFdqV/CRskGrHJm7mZBbqzPTHLpB
         70diZ8jw5x2mvOkd9mnjJ71T6wFBS8D0+xMNMBx75WRJcQ4fBGgdwar9DHx1JGI1SARr
         p5LZWeiwiv5t52kcVezxl1BxzjcJje8cwJQ+ru1RxiP1qY/mgfagbu17+HJJM9vI5a3L
         yg72ajUgPB4I99wfPJ6S4WZE4Imn8q3ekwzhGYNaNe7+6Y2VIyOUS+FvFztM+0QFouh+
         BYHpIzMs7xqwm2fCQVmrG4cwvB9D5OevTVqx6ktLuT5fV1g3TAqDne8YVcDu4PzHGs+b
         bZcw==
X-Forwarded-Encrypted: i=1; AJvYcCVCuDcA73ZYUTyeLEkiZIexTBMGvIafvYWO+2kj6i/c8j3pHNhJQBsYlEr74TUrPmbb+W5gAEmTop3AnLaNiQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxoUQ3BUOrS10zwlWov5yuQw71xrsnrKL3FoqP5jkQh5ShMNHN4
	vT0lR5ycqytm2m71r/QcHRN1h1LP2K7n4jkdxlLx9WYI6vDtzwChiEFvFZapiX6OlhkbM7xnCik
	ISzjZz+/ki5lfYD0ZwD1lKfdjAsQ9kd0qeYq7tOMhsTB/wjjyfpgKW2b+PyNb5GpR8btP3uiyCK
	s=
X-Gm-Gg: AY/fxX5laHcR7TasFzGdcEAZVz6rEkpP3LcpkcyIDTQCtkzYJf9ZLL1JU/sQdQKK/do
	uruwIdkLPaYG+9qHlyvO4yd+tu3eveF4eiILJ54eUSDhLAKrqGywo460vEFr/XyzMUokA47qHm0
	EhcA/QA9iEsYqJ2H3Yzdsw8In810SeHxlUZgOxmLZks43LTmz6ubLISGuh+Ahim1gP7rf04RlH1
	oUSZR4+9sOPlgGqKpWASu6FiG47NNr7rmmcVUodmminSEUvV6clHmyu7kzf7aRfvJFqcyA11JeZ
	Z/6N0kuFWele1FVa24nsBo9KFNvu0AOQIhmFYsqLsTcldvtJiLyLOh5L96iHYN/JIuUJEQhK4/R
	+qHk4m8fRAkdSod2TLvNSZAH8m6/45uLhHVxHSJO3+7unBe4b9FUl8nY5An4Dc9nwH6J/
X-Received: by 2002:a05:622a:64b:b0:4ee:4128:bec1 with SMTP id d75a77b69052e-4f4abcd0634mr42477761cf.1.1766154960549;
        Fri, 19 Dec 2025 06:36:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE14Hdyk6PYivkSsJrsYsK8HqoPfU/tUKnkUGbL/VoSc0mjAxe4s8KppQKyl06O0O0KHLdlBw==
X-Received: by 2002:a05:622a:64b:b0:4ee:4128:bec1 with SMTP id d75a77b69052e-4f4abcd0634mr42477181cf.1.1766154960101;
        Fri, 19 Dec 2025 06:36:00 -0800 (PST)
Received: from [127.0.1.1] (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab7f86sm245145966b.17.2025.12.19.06.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:35:59 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 15:31:52 +0100
Subject: [PATCH 3/5] iio: adc: qcom-spmi-rradc: Simplify with dev_err_probe
MIME-Version: 1.0
Message-Id: <20251219-iio-dev-err-probe-v1-3-bd0fbc83c8a0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1783;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Wr5/vHqfZ3Gkfva2+k6ouaLP7uADJ4+N3dLFOeSScgE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpRWLGmaXpsHKPVC+KP0GNHBF5FoyjkihTiGxVO
 0Wee7mEOLWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUVixgAKCRDBN2bmhouD
 1+tgEACJ9D5sTugYsbqYRRJ6CCQ3oNlqtf0R6GLUE4ytsf+XShS+0sC96+5R0EPmCZpzonwX3st
 rWjZ69pIrqkt8vi4/NGrDPo+3Adjwd+2aLuHyS3q5Zw2Mc1d6E+ZTr5VZuBvmK2h0A/+cLZOPaO
 LGen8z3hLH9M++ar0raTYwYjDOcIXvy/glGwyDie9kEZ0JFaLnCnQHv90k5gUAKx3G3V0zNHs4t
 jVLznzV0/bHuDILNvP3IC7IJIWbHSuj9uucQ452vB0a62/l9JI1Q/1UwDWU4oqSH8b7Nl+J+/j0
 ZmpCOAxvxAAttvndseS8PXRQcwhYfFublNu/KXHm8PcaDvkoPbtSP/9i/dOu1iUvznZfTwSdC9s
 5Smcy3zfm3Bkh4XKngX0bmVZN+5u2QFQAR6x4FrvtIMUKsn39QYc5nz9Iu8GE5RSIHZdPyK8NuP
 yWhRFxNJ6oX2Q1dPpYJO8vcm5MGfYVZC7+N2rCgl5u9M1NPv/8qmnFo+3/rdI5V/h2f4wXQcqII
 kkH49dB7Alz57gNeRKF27a5Gf/kY0/Fev/xjxyf77JZ+p+OUIDtgPgXX7/Oo9vWSkmWez62IGUM
 DRPR+FwkGYwPEUhasoSN5DCf5E0a+8HWt2Gm+zAX0hsAOUYNptE4rAXqrrr5Xxe1umf1ksteQNc
 q+XIrxE906tgOgg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=AcG83nXG c=1 sm=1 tr=0 ts=694562d1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=AYNcBwFTG3nuAf8aWDwA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfXz7RJdKA9a785
 CqIgyC3jZ5iCxfc4iHP3r7p/RJSx6lXKj7x6oId6T2jwNb8TGDpNAVAtwgJU/65+LgI8LxE0g11
 yMWgytwRdMbuorz28W7ENdvBlANbldxqlFWDIyd82osKXJRaLBSPSBXXJ1/U6bYxVz/7P660a3S
 JdfWte1pRxnvq5Q37fWvsWfKoWe84KNNxtA6RCsZMBfx9kliCB5h7aA1jNwWFarZ5SlWuYoCyyK
 LBvT1qiJQRMwM6sDTF4a1IuZCCHTWGkduhPAJfq1hmybx5NgIMhSh9cz2jRXFiO9hysGVBhhOYE
 +uKKf3r/Zk26kRc63F2XvNbmlTSqHFYOXdF2yXScP/Svp2USNrl50FBtnDLJgBoRdFH8wa5oC4n
 m4lqjUAgtNaNe81fDlphMJAnIu1lfGR+YjfAZX6Sjq7PI/hKzJq71ZMg+hfOMcSiqRrp67+UkXD
 bVWApqDDVh6H4gfloUQ==
X-Proofpoint-GUID: dHUIyEXUflLM5i4BLU3YB1_EkJYYhQKo
X-Proofpoint-ORIG-GUID: dHUIyEXUflLM5i4BLU3YB1_EkJYYhQKo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_063603_653172_5042C31C 
X-CRM114-Status: GOOD (  14.52  )
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

Use dev_err_probe() to make error code handling simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/iio/adc/qcom-spmi-rradc.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/iio/adc/qcom-spmi-rradc.c b/drivers/iio/adc/qcom-spmi-rradc.c
index b245416bae12..8e75665204d1 100644
--- a/drivers/iio/adc/qcom-spmi-rradc.c
+++ b/drivers/iio/adc/qcom-spmi-rradc.c
@@ -934,20 +934,15 @@ static int rradc_probe(struct platform_device *pdev)
 
 	chip = iio_priv(indio_dev);
 	chip->regmap = dev_get_regmap(pdev->dev.parent, NULL);
-	if (!chip->regmap) {
-		dev_err(dev, "Couldn't get parent's regmap\n");
-		return -EINVAL;
-	}
+	if (!chip->regmap)
+		return dev_err_probe(dev, -EINVAL, "Couldn't get parent's regmap\n");
 
 	chip->dev = dev;
 	mutex_init(&chip->conversion_lock);
 
 	ret = device_property_read_u32(dev, "reg", &chip->base);
-	if (ret < 0) {
-		dev_err(chip->dev, "Couldn't find reg address, ret = %d\n",
-			ret);
-		return ret;
-	}
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "Couldn't find reg address\n");
 
 	batt_id_delay = -1;
 	ret = device_property_read_u32(dev, "qcom,batt-id-delay-ms",
@@ -975,10 +970,9 @@ static int rradc_probe(struct platform_device *pdev)
 
 	/* Get the PMIC revision, we need it to handle some varying coefficients */
 	chip->pmic = qcom_pmic_get(chip->dev);
-	if (IS_ERR(chip->pmic)) {
-		dev_err(chip->dev, "Unable to get reference to PMIC device\n");
-		return PTR_ERR(chip->pmic);
-	}
+	if (IS_ERR(chip->pmic))
+		return dev_err_probe(dev, PTR_ERR(chip->pmic),
+				     "Unable to get reference to PMIC device\n");
 
 	switch (chip->pmic->subtype) {
 	case PMI8998_SUBTYPE:

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
