Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A9F8E6748D
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Dec 2025 14:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1TDcnh5UliJjw/YDsH9Ec/QB55sfZN9kM10APl1qW8=; b=3BvSV+/uUb3kpq
	l/UnGn0FsY6PUusV4Xd0ZLXKHGiEs+JkrQOf9pRflIO+xIfoW/cif5or4O88pJn777TdsQHl7OzBW
	qGlEZfZu8R6+SCjEMprYde1tsWpcNEg8/XS36coLXrSF/jF9S5HyLZCrK8EKW3pJiYS0eQAfgF3Op
	hvSsnxB3+U6uvKsmb/VFaGjype4tU+Bn8Pw4gnrya320A8ZhH/E2TY7Gu7wQp8pOs4DWB2XzjOB7T
	WfnrvMDJPbe2t06piMzKm4pEqFd3UUpSqcn2W+BvCtOOyUCJb4L0ku1DgOHblwzIHBS28BTvFt7Av
	xOgMwBQoJzkuViKSEhYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXKOF-0000000CVaE-3wKJ;
	Sun, 21 Dec 2025 14:26:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXKOC-0000000CVYX-3uwS
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Dec 2025 14:26:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BL9GoUr1783581
	for <linux-rockchip@lists.infradead.org>; Sun, 21 Dec 2025 14:26:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cXrQ0eZNLwv
	aZ+XYDJE/L7mMaZiYna99KUBbaqbUVsU=; b=ESqqQSPkedBLhNq/E4CyZq1vCkD
	mpS6lcHajHlLLq/IzjSJkGONW3Tznz5HDQnY+sJEDU44RT5HXK84eRAg4auDDsZt
	zLLXjBpYr1sqVkGKeMxBfU+iRF0ltmCP7OorhTUfUIrexKTjYOhdgXO1uRnmTTOo
	RYs66G5eVwg5VkaTjWa76ONagbOYxuX7LJ8ZseR6gac0w1VDbJtk+0tn2mZnS/p9
	RtpsflX7YiFYyf4JPZCHTg4e78dvWbgGf9ImF6xO9beP6TCqGEwd8DVsqpquJ/2m
	X42Ay2Vjkaz7PLsknBt5NgF2+BFa5mxDqxmuCUkOgnZuaWs4fT77J2KgHDA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mtqjdm1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 21 Dec 2025 14:26:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f4a5dba954so74342591cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Dec 2025 06:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766327187; x=1766931987; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXrQ0eZNLwvaZ+XYDJE/L7mMaZiYna99KUBbaqbUVsU=;
        b=biSV7DQLngO0r4Pc1rNfpJfcIQhXTfziHmO9i/vG3b5vHpzxJcfTNMjYWtYLFsEFpa
         XV6eMm/5KrZUPO9NbRHIoo3K/K2nJZ5k02rzxq5FdUhXudMjAoSxZ/7OIpwDXhlGRwUz
         qQSx6JXRHKWdgwkbyaRyBz6B9+j7CI+rd0fnZapoDGSfp/s1DQ9DUsd+AoX7RkF9C4TP
         Qk58SDZ5vikxiB4kSon1um0DwluV/I+KGxNEkYH4Sg+iEhtIkKrRLCaB0i3y6OVor9Ju
         g42rIxPlC4Hzv+UhRQ0gj2X3e1xdxotsG3ahNZreDH+iE2jVTigApRAGrlRze9iEesZR
         2SMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766327187; x=1766931987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cXrQ0eZNLwvaZ+XYDJE/L7mMaZiYna99KUBbaqbUVsU=;
        b=c/vCI9NgpXrtf+J5Er21I3Nguxp69Azb1WH1wwhG7182pyVEoXFFj2/8A5WjuQ174U
         7H/goq+QSaY79pLzFAjhaMVNPSaFn6EWneFuk9IFKP8MT4HtCTnwNNnLRGUWngyQLY+7
         vpbVGfrRp+a1YOyNu0OqZDrDOkvWk7z7K/+s5CHot3znIPf/rTKyZeshyvNmzr3dhp1Y
         D9foR4c21uvGLHPGzpJ2/P2FHYPaxL54KpnhN2qsPfUszZ0PRXvCSSGxBY/zrss86A9e
         mehyGumXPYfbeST2dmgM6sY9wufe3m5ZjjgiyC822GpTHDQs1frJ9LN96/FlDz2Jijxo
         PblA==
X-Forwarded-Encrypted: i=1; AJvYcCXQgO/c4ZF4v9MYKp3rlz1k83qmUSdjSzlnc4PMCoG9y35/0kVQTq14b7QK5glongUgGw2m8kfCOgjZa7ZyQA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwfiZJwBYzR9xew9is1DkAERjpw+dIEaBjFfdORfKLCENGhscyq
	peoQotksx41MnRDvCRMh7guszievCrjdelz+uOoa4y+uw54cfBDaHuGQbBW+KzAnwtAIovW+pyQ
	QUkYhsvm1vmC8YA1uvKixfiuVYpAhKkXYzELa8L11FgEyN2KRjhdVKyH0E3SFaSP0hfTFEhpqL0
	Q=
X-Gm-Gg: AY/fxX6eKinNDw4N4PJ8sG668Vz/qRhG1Giuq1VnYzD1csiNVR0FdJ0TAe52glguzx2
	WATnq4AIg0IOGytEKD0E6l/OVyMJiaKEH1ougU0LE9oIjYeHAgKKq18++xFkMNzBAoeE/4tulY7
	jUAWa9evqQlDBzttbVs1Ohs1KfVQ+149QAqEn1blOgNL50a9lOPP/ab3Y4Qv7S1V7nJcGN7NY5X
	5n8uNig26FYYjfSJU/Q22vKDku3z0yWo+b8IssTho4tebEB5qe2+nZEFVw/dk4sn9dU1LN0zZ5k
	iC5RPOji36FjtotzMxrE5TsN6DRM1L3DwQw6lBwpJEI5SR0LtNWva2cEGNv4OSKtUg+6RKk3VGJ
	cI5g+GHEy7Qisd1VDHncrgfOp+Q1SeV57YHPH9tNJYhQVDzPsJPja4z+Bxq0GgaLY4EM=
X-Received: by 2002:ac8:6f07:0:b0:4f1:83e3:bb1a with SMTP id d75a77b69052e-4f4abcf86abmr121194991cf.31.1766327187406;
        Sun, 21 Dec 2025 06:26:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG4X1T9bdZZS/qvpRUsFhD2vRTGIBwr1akucMiS/SqlqEtSXJi9+JqEGzxWGbwmBgDxvbN0gQ==
X-Received: by 2002:ac8:6f07:0:b0:4f1:83e3:bb1a with SMTP id d75a77b69052e-4f4abcf86abmr121194621cf.31.1766327186904;
        Sun, 21 Dec 2025 06:26:26 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80620c4520sm211742666b.28.2025.12.21.06.26.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 06:26:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@codeconstruct.com.au>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-iio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/3] iio: adc: exynos: Simplify probe() with local 'dev' and 'np'
Date: Sun, 21 Dec 2025 15:26:04 +0100
Message-ID: <20251221142602.47368-5-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251221142602.47368-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251221142602.47368-4-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4355; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=K0IQtqWX619jZ9YkzBmDaKMoDdmrpKcT02lv7CF+pGE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSAN7uXaCJu7ZGPqhfs4R9Ef5h9276gYJLaLUY
 YKtXtzQRLGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUgDewAKCRDBN2bmhouD
 1zfqD/wIktSEHD3nlDu4v1bjhJA+iTTRm5qqTc01Jd3T7PEFYcGXDQQwVYANojieNLNhQux9H/p
 NFLX3aSMRGGDEtulqa8DTrHo70IujJZnb2VvTTwdsT1tLHm2e3cIJu2tEdsuSICwS/NYNbpJahV
 BwjaeUk3isJfSeqXAP6Csj3zU4RfoaB92oRmTYaBj3eORohYq6iX/4Aau7uY4KTPR/L2Q979/L2
 oK46pTx6bcGRSMxerNyqWfkY7wFEnldgowWv+xTWy8+zUeEttz+1RTfu/TZN3KMTkwPJo6EQNHU
 cYv/XezRWPAZdmSeVmsNQARSPCZoXtMw8kY5rq3m6NdJaGe/epLes9YKEEVao3TqboDYEtFGpws
 +N1kQjjwOjdRLTBufFRlH7Srs3LK7s7fliDsvr4QC+Ds6HVcj9VQ629ELMv7HOVj5z1L6xtGB4/
 2uHJWxzoPAY0CvX1tuyVHtvXrc9W4i4hAe/dNXmPpkgY4sndzLGcjsLtfZNNSHzRozcPVo3LRmQ
 QEsDz+N1VL2jw2fvLPTeV4GlwIFvlwXk9g+Tp7XFsQroqX6D4OTzxudmqlMPnjJcrcF0tvZMlol
 mMO9nAe9r45SZ0mNUNB+DdalACiMKdZxySYOp6/HwvPbxNagKQxBEAAnkQS2cnW/OIZdKLBHhdD StOStPPzq1Gm0FA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: u4vRHLyZPsU6OSC9bB3ROJ6V9CsRjgsI
X-Authority-Analysis: v=2.4 cv=dPWrWeZb c=1 sm=1 tr=0 ts=69480393 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=XA6BSOE7zRTYN9-09qgA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: u4vRHLyZPsU6OSC9bB3ROJ6V9CsRjgsI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIxMDEzNSBTYWx0ZWRfX8CpVVKr9PF1e
 DS7G0uNoG7w8q2GRMRLY78E2IVLcDwH5UqYQDjDpd5LIRqJi5vNQrulW7xW3vP1ldaNzjp23zC3
 zxY07AUrotMp18DDvpHocFxtGIIBx0dwtyJ/5xx2S19BBk52cEHSpY3zQF3r8C/k6FVjPh1iRy4
 5rrT/XkDH54Nev3jxAEgVm+smMye6xCchnj/KZoxk03a1cYZHejrUvdenfRsdLzuuAw7t++6kc3
 SupRyaoSmzpmsDjc1AJpx2YnKZDj77Def9rmC1+rLwTz2KCQ/kkLGaM19AafpnZFrAeWJtn0LXt
 2CQ253EmT6+pD08XQ+asrPvaMCzV9YIitWrVeUCKhlQzyHDSIE69k0goLcrsMcnWgIKBV8rpqjU
 5geUxZukjKJSqVDW2n1s0Il9onYaSmqhUkBB8aod07Z0tZLK2y9reM/oayGp+m+Ei2rJzjrMm1M
 DZ3z55EBwXu2m4b0anA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512210135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_062629_110975_233E8380 
X-CRM114-Status: GOOD (  14.37  )
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

Simplify the probe function by using local 'dev' and 'np' variables
instead of full pointer dereferences.  This makes several lines shorter,
which allows to avoid wrapping making code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/iio/adc/exynos_adc.c | 36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c
index 491e8dcfd91e..aa287132a369 100644
--- a/drivers/iio/adc/exynos_adc.c
+++ b/drivers/iio/adc/exynos_adc.c
@@ -552,12 +552,13 @@ static int exynos_adc_remove_devices(struct device *dev, void *c)
 static int exynos_adc_probe(struct platform_device *pdev)
 {
 	struct exynos_adc *info = NULL;
+	struct device *dev = &pdev->dev;
 	struct device_node *np = pdev->dev.of_node;
 	struct iio_dev *indio_dev = NULL;
 	int ret;
 	int irq;
 
-	indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(struct exynos_adc));
+	indio_dev = devm_iio_device_alloc(dev, sizeof(struct exynos_adc));
 	if (!indio_dev)
 		return -ENOMEM;
 
@@ -565,7 +566,7 @@ static int exynos_adc_probe(struct platform_device *pdev)
 
 	info->data = exynos_adc_get_data(pdev);
 	if (!info->data)
-		return dev_err_probe(&pdev->dev, -EINVAL, "failed getting exynos_adc_data\n");
+		return dev_err_probe(dev, -EINVAL, "failed getting exynos_adc_data\n");
 
 	info->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(info->regs))
@@ -573,11 +574,9 @@ static int exynos_adc_probe(struct platform_device *pdev)
 
 
 	if (info->data->needs_adc_phy) {
-		info->pmu_map = syscon_regmap_lookup_by_phandle(
-					pdev->dev.of_node,
-					"samsung,syscon-phandle");
+		info->pmu_map = syscon_regmap_lookup_by_phandle(np, "samsung,syscon-phandle");
 		if (IS_ERR(info->pmu_map))
-			return dev_err_probe(&pdev->dev, PTR_ERR(info->pmu_map),
+			return dev_err_probe(dev, PTR_ERR(info->pmu_map),
 					     "syscon regmap lookup failed.\n");
 	}
 
@@ -585,25 +584,24 @@ static int exynos_adc_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 	info->irq = irq;
-	info->dev = &pdev->dev;
+	info->dev = dev;
 
 	init_completion(&info->completion);
 
-	info->clk = devm_clk_get(&pdev->dev, "adc");
+	info->clk = devm_clk_get(dev, "adc");
 	if (IS_ERR(info->clk))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk), "failed getting clock\n");
+		return dev_err_probe(dev, PTR_ERR(info->clk), "failed getting clock\n");
 
 	if (info->data->needs_sclk) {
-		info->sclk = devm_clk_get(&pdev->dev, "sclk");
+		info->sclk = devm_clk_get(dev, "sclk");
 		if (IS_ERR(info->sclk))
-			return dev_err_probe(&pdev->dev, PTR_ERR(info->sclk),
+			return dev_err_probe(dev, PTR_ERR(info->sclk),
 					     "failed getting sclk clock\n");
 	}
 
-	info->vdd = devm_regulator_get(&pdev->dev, "vdd");
+	info->vdd = devm_regulator_get(dev, "vdd");
 	if (IS_ERR(info->vdd))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->vdd),
-				     "failed getting regulator");
+		return dev_err_probe(dev, PTR_ERR(info->vdd), "failed getting regulator");
 
 	ret = regulator_enable(info->vdd);
 	if (ret)
@@ -619,7 +617,7 @@ static int exynos_adc_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, indio_dev);
 
-	indio_dev->name = dev_name(&pdev->dev);
+	indio_dev->name = dev_name(dev);
 	indio_dev->info = &exynos_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = exynos_adc_iio_channels;
@@ -627,11 +625,9 @@ static int exynos_adc_probe(struct platform_device *pdev)
 
 	mutex_init(&info->lock);
 
-	ret = request_irq(info->irq, exynos_adc_isr,
-					0, dev_name(&pdev->dev), info);
+	ret = request_irq(info->irq, exynos_adc_isr, 0, dev_name(dev), info);
 	if (ret < 0) {
-		dev_err(&pdev->dev, "failed requesting irq, irq = %d\n",
-							info->irq);
+		dev_err(dev, "failed requesting irq, irq = %d\n", info->irq);
 		goto err_disable_clk;
 	}
 
@@ -644,7 +640,7 @@ static int exynos_adc_probe(struct platform_device *pdev)
 
 	ret = of_platform_populate(np, exynos_adc_match, NULL, &indio_dev->dev);
 	if (ret < 0) {
-		dev_err(&pdev->dev, "failed adding child nodes\n");
+		dev_err(dev, "failed adding child nodes\n");
 		goto err_of_populate;
 	}
 
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
