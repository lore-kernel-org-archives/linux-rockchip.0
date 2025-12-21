Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAE33E66886
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Dec 2025 14:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0BFhNNyDm67OASoA6egsehM+VQUr/F5Mpc0FkmOdXo=; b=a7rmk0Uu/Hoz64
	gCcIXdqhceRG32TQHbDcXOscVvoTAfL0A4QgF7JzbNnppyha3lId+9HmttaMfeekUsx3hVSSAxZaN
	YSX9mpXroD5x6/RY7x39O+dak6Svj3U6pXQNN21k7551tF9FJq3DMxlmO56lOSh81CX5PYrSFGqFs
	FRTmMjtreuas/pvTjcwbySceg0fLb5il15P0pq3K1Hx10MnJw4yKJaPgqEOwvL9g8DDfuSLNAEfkK
	S4Wzk6sFotYgvg0642cJy8w6gpj+bECFhb34WG+x7LypJxo46YMcPsEXEspYIS8p5/Bidhm1ccChT
	034+0eA3NnQ9yRBqWIEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXKOL-0000000CVeT-3f1B;
	Sun, 21 Dec 2025 14:26:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXKOF-0000000CVZk-2O9g
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Dec 2025 14:26:33 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BL5sBdQ1804556
	for <linux-rockchip@lists.infradead.org>; Sun, 21 Dec 2025 14:26:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=N/Ya93eis3x
	qRDX4t6fcfXGbB6PyZ7xS9AaL1hTAB60=; b=FsRh4ae1DDi063NeFL/u8wjoPkP
	sN1VrGwgnaX/DgnI7mD43o25xSS/xFHXShyTridFFdVWZpPGo84Z/I+LjFv9ovDj
	LLyfTZ2ABPhXHSYNckKztW8l8a3UJSlHgeLHe55Y1Of9CDatGM4/RVVbdWGkp0vW
	osM7k2noJ4Oy5Vp1hc2ki10MluXc7IarvuJ1FydPxHvsxH1vGeAU8WrZ9VJ1JMYi
	ZJGz7keslpPULe87+fC4PKckLRziJA+8v5DskpSKLSXE7UX1U9iI8OzlTmIJAR6/
	/BejovyYdwu0O/Q7DM+unaC50m4e3+4qmFq1whpSy7K9Bz+hJ2Elux1atdQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry2dn7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 21 Dec 2025 14:26:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f35f31000cso42939951cf.2
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Dec 2025 06:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766327190; x=1766931990; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N/Ya93eis3xqRDX4t6fcfXGbB6PyZ7xS9AaL1hTAB60=;
        b=kbshksdww14YCVfY3NlJFMIBjqOdrDq0UqT8fuVo8domu2pcmACCc9RfQB5CAlhGxQ
         epGgg8kzFGpN8zM0mGv69nL4R5ptqIg34PYTowk4li1uPF0cZkXovnCMkzc1R+w/h70/
         pWhbwKxEkp9zNkN9llu8nFToNS1Bkza6ehOVcr8AZ3cn6RQgCKtxd4obh1YnQ/vE4bPJ
         3CFE9VnEZ6kBoe3+XnOqtZmgHTXCQ/Tqx7fCf3Qaxlb0+SNaia2H2JFKDz0QWhrLrNUK
         mUPjZGL3jPVplJRVHQfrhD/btuOb98+g1/wjA1LQiN2Xh6TMm4m7iLMi4xXECKXjzF9O
         //QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766327190; x=1766931990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N/Ya93eis3xqRDX4t6fcfXGbB6PyZ7xS9AaL1hTAB60=;
        b=hBiyeWZlfhUG8Hgb1pzwsySJMxzdHR4PzXDA8sNHPIq2da2D7KhqHmrMpiF+Nr1hgM
         u+YgbCYpG87Q3bS+JhR19gXF3cznH92F+MbEVc/5dsmiKeG3U94c2pvAtM71NcrsJKuP
         tOQ2sdLkjwVMQjpZuimypO4toIFdJ3wnbYOSh7GTTXF07Bc6jBdrUqBJ91NrbFSftlcO
         M6oSlLxJaDqCGsUgdvO3IvpaAXeawtqxXhWOG3EkeNXzX+yhosGvo0BP1eNYVJEyKxQb
         vkAruhH+EtyLijSz9BsN6hGZR17A9lg7ZREBo8E1Me3e4V8UTrSGnrNxBQ1sucbl37BE
         aykA==
X-Forwarded-Encrypted: i=1; AJvYcCXlV4YyP8YzuEeiIjAwCPENLtFIBTmUwPTbpTHOf0NCardQlFKQL9TiMAIu79Iw4zW+NON6hc3I+4VkZogDIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwwQbUIHSNsN1yHLJ4tRisrx4nfcvigBQQG4GGB/ilLDnASJBes
	43yr2lBqZwHon//wstabewXPwB0j312vb1+lL0OWypBZQG1dd78ieWc29YQy3l9H9Pu19GB7gEe
	yj3uVdI5Rvg+pJII3z6SrDXReHSiQ+BjsoHfi1xyvYBh5qoSRpSTA+pFoU297MdFisQ2yQTB4cC
	E=
X-Gm-Gg: AY/fxX4dXfp4tMMf/svHJ5lw33rsz+TrZ8Sf7hh4AqYyvfK/EClITH/Nu/y5Mrt3cih
	6kMLuhoykLV6NW3M0AKWknLK2AtOgkiyL2L0crc/LjgK0b+JjLv5NLW/giiDUEIgGRzoC9gbgsv
	eB5GYmaeFmZ6RgMlfMRDmQgNeUamu50gNGxqynh9xjv0CiWSh5Fzm/gX7SjDFcm0xs0/MT/BS55
	xKEhmYq37ETra/dVxshLhs8ViaxZPAmb97V1PDk31LJBtBK06+DC3vyWv0LozVV13ZF0mkE+x51
	JV6sO+Rs12PUcLthDt4NOZTTss5+8mWNSDJH2okgJiecjIW/n66uMadJzdp1mnVRdO+TNwIRInl
	Dv62d4K2qNDZTDcQAp/fdAFLZHAMb+WoR7WFTMk1joxG5LjC5DySLuDeF/oo+5C42qlM=
X-Received: by 2002:ac8:4808:0:b0:4f4:c11f:a893 with SMTP id d75a77b69052e-4f4c841ce15mr13310251cf.38.1766327189838;
        Sun, 21 Dec 2025 06:26:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH6MSj9kp3XaPt/Hj5dvTyhFXG7Ou9KvnYkLbuj3WrXScz5IKiaHkNRDJMrQqc7zufDKoYpDQ==
X-Received: by 2002:ac8:4808:0:b0:4f4:c11f:a893 with SMTP id d75a77b69052e-4f4c841ce15mr13309851cf.38.1766327189276;
        Sun, 21 Dec 2025 06:26:29 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80620c4520sm211742666b.28.2025.12.21.06.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 06:26:28 -0800 (PST)
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
Subject: [PATCH 3/3] iio: adc: rockchip: Simplify probe() with local 'dev'
Date: Sun, 21 Dec 2025 15:26:05 +0100
Message-ID: <20251221142602.47368-6-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251221142602.47368-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251221142602.47368-4-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6007; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=HCB26hEUOkbZ72ftaM1RnljHTQz/EsE98Plg38e2Ofw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSAN8/kcgZNFHUfB3Ke+DoF9mdl7RgO5jsfjBt
 eN2YOKEHeqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUgDfAAKCRDBN2bmhouD
 13OzD/93KT9dmliMmsuwd8OOM8ZuIX084rVOcADFrvVtzozY0sU8KlUTvYM/rPMk0reJd+QgIvq
 N1LZVujUSp3iYnYUk1v9/iaXKnbIUR+/kU5gNBZzoTz4FuoPXnQHzHjqJw1nPmrDaas93l0YR8M
 2F9VZuU7nELtirflYtOEOtzAHIfAwxc9GhcslUuHTD44dtc34W8s0xCzXB6m91DKH3T2u13q5/F
 BcS9YWPjAZ2kKw1Aa98hxwXSb7yTyZQn+D+74OeuF86xg8ADZOUV7By7uUJ19pR/uu2Pabl9Vit
 tk03JUTPTlUKzFOqQZ1N+5fTxjFgNRn8TdzVrQoy1t8QexBRo5lTSlpAQ5RTe6ft4lW6dDti54R
 b28cFZyN/z+a/lTu4eMvC1oRNEZuyGoWGTKxE2UnSTWcdzSebTUOXh/IgV+faAzEk4SRmMXsehU
 e03NBnIIcXoeoJbe99uJ65vYEPTD5PD8ktls9/3n4bMNjCscHwvkAyMWw4Q1GHDPbo+RFAvjP6b
 PQBZFt5IFj7vUJm5Y7zD0EK4CzgLbBrDhUtD1D0HIWOAGwpm42ytcF00VTiSJbwKoUPjsXWKMcl
 xmcwRIBdcM3Otrdvl/arbkZjZtD30tpJ8Ugl21DoVCX0mBCn8vziGIgCM8MlzXgoj7ax6ltia2L xCpbZ49NWUj7xbg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=69480396 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Dh8f_jLqcEms2xoULN4A:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIxMDEzNSBTYWx0ZWRfX5AUgqmaPYBzx
 h+tIJFeYqlJ8nce9JyzB6JBeVVf3BGwG1GVHbAlBE2SyBAXFKKefqjDRbO3ov01LzRkwLQH3OiY
 Ml8BBwCkk3sdYyDNnSKnyKCnv9JwvpCpCgh4OA05VDWjyyEqNRJXnjg7Xx6TenuPMXh5nAhBO/t
 fr938PUIC8Qf9aKOcRQ0Q9qxqO5fxu//N/2Hux/sy/XcbWvq7xS3dj1vUkkyCV+knqevvSuNqZX
 UkmmsuhW4f1FnRbplnhRGuoNmmwRr7ZXh4Y+LO0lE6qpAynk5ByW3VnB5R9BL3PKleNB2oR2eY3
 1pIoDMz1GKaucCi71X2ubB41PtP+dhX0uln2rxH5PeYh2HD3I4VkqS7sDbfXK04sOE4Szwa2e8u
 BJstpzl454WJUtP1hUoDi+0Sa7KDtFxB6qlZ3jvvxPUUDJsvcto20APRoD/iDfc/y8l0sqcoLBQ
 pAO/GSd3HejJshE+2wA==
X-Proofpoint-GUID: nRanzO4Nmu4f8eeu9w2G_s2nkX7OPIa1
X-Proofpoint-ORIG-GUID: nRanzO4Nmu4f8eeu9w2G_s2nkX7OPIa1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512210135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_062631_723741_CC4B4105 
X-CRM114-Status: GOOD (  17.52  )
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

Simplify the probe function by using a local 'dev' variable instead of
full pointer dereference.  This makes several lines shorter, which
allows to avoid wrapping making code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/iio/adc/rockchip_saradc.c | 50 ++++++++++++++-----------------
 1 file changed, 22 insertions(+), 28 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 263d80c5fc50..0f0bf2906af0 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -456,6 +456,7 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 {
 	const struct rockchip_saradc_data *match_data;
 	struct rockchip_saradc *info = NULL;
+	struct device *dev = &pdev->dev;
 	struct device_node *np = pdev->dev.of_node;
 	struct iio_dev *indio_dev = NULL;
 	int ret;
@@ -464,23 +465,21 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	if (!np)
 		return -ENODEV;
 
-	indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*info));
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*info));
 	if (!indio_dev)
 		return -ENOMEM;
 
 	info = iio_priv(indio_dev);
 
-	match_data = of_device_get_match_data(&pdev->dev);
+	match_data = of_device_get_match_data(dev);
 	if (!match_data)
-		return dev_err_probe(&pdev->dev, -ENODEV,
-				     "failed to match device\n");
+		return dev_err_probe(dev, -ENODEV, "failed to match device\n");
 
 	info->data = match_data;
 
 	/* Sanity check for possible later IP variants with more channels */
 	if (info->data->num_channels > SARADC_MAX_CHANNELS)
-		return dev_err_probe(&pdev->dev, -EINVAL,
-				     "max channels exceeded");
+		return dev_err_probe(dev, -EINVAL, "max channels exceeded");
 
 	info->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(info->regs))
@@ -490,10 +489,9 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	 * The reset should be an optional property, as it should work
 	 * with old devicetrees as well
 	 */
-	info->reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
-								"saradc-apb");
+	info->reset = devm_reset_control_get_optional_exclusive(dev, "saradc-apb");
 	if (IS_ERR(info->reset))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->reset),
+		return dev_err_probe(dev, PTR_ERR(info->reset),
 				     "failed to get saradc-apb\n");
 
 	init_completion(&info->completion);
@@ -502,14 +500,14 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	ret = devm_request_irq(&pdev->dev, irq, rockchip_saradc_isr,
+	ret = devm_request_irq(dev, irq, rockchip_saradc_isr,
 			       0, dev_name(&pdev->dev), info);
 	if (ret < 0)
-		return dev_err_probe(&pdev->dev, ret, "failed requesting irq %d\n", irq);
+		return dev_err_probe(dev, ret, "failed requesting irq %d\n", irq);
 
-	info->vref = devm_regulator_get(&pdev->dev, "vref");
+	info->vref = devm_regulator_get(dev, "vref");
 	if (IS_ERR(info->vref))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->vref),
+		return dev_err_probe(dev, PTR_ERR(info->vref),
 				     "failed to get regulator\n");
 
 	if (info->reset)
@@ -517,11 +515,9 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	ret = regulator_enable(info->vref);
 	if (ret < 0)
-		return dev_err_probe(&pdev->dev, ret,
-				     "failed to enable vref regulator\n");
+		return dev_err_probe(dev, ret, "failed to enable vref regulator\n");
 
-	ret = devm_add_action_or_reset(&pdev->dev,
-				       rockchip_saradc_regulator_disable, info);
+	ret = devm_add_action_or_reset(dev, rockchip_saradc_regulator_disable, info);
 	if (ret)
 		return ret;
 
@@ -531,14 +527,13 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	info->uv_vref = ret;
 
-	info->pclk = devm_clk_get_enabled(&pdev->dev, "apb_pclk");
+	info->pclk = devm_clk_get_enabled(dev, "apb_pclk");
 	if (IS_ERR(info->pclk))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->pclk),
-				     "failed to get pclk\n");
+		return dev_err_probe(dev, PTR_ERR(info->pclk), "failed to get pclk\n");
 
-	info->clk = devm_clk_get_enabled(&pdev->dev, "saradc");
+	info->clk = devm_clk_get_enabled(dev, "saradc");
 	if (IS_ERR(info->clk))
-		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk),
+		return dev_err_probe(dev, PTR_ERR(info->clk),
 				     "failed to get adc clock\n");
 	/*
 	 * Use a default value for the converter clock.
@@ -546,18 +541,17 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	 */
 	ret = clk_set_rate(info->clk, info->data->clk_rate);
 	if (ret < 0)
-		return dev_err_probe(&pdev->dev, ret,
-				     "failed to set adc clk rate\n");
+		return dev_err_probe(dev, ret, "failed to set adc clk rate\n");
 
 	platform_set_drvdata(pdev, indio_dev);
 
-	indio_dev->name = dev_name(&pdev->dev);
+	indio_dev->name = dev_name(dev);
 	indio_dev->info = &rockchip_saradc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	indio_dev->channels = info->data->channels;
 	indio_dev->num_channels = info->data->num_channels;
-	ret = devm_iio_triggered_buffer_setup(&indio_dev->dev, indio_dev, NULL,
+	ret = devm_iio_triggered_buffer_setup(dev, indio_dev, NULL,
 					      rockchip_saradc_trigger_handler,
 					      NULL);
 	if (ret)
@@ -568,7 +562,7 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = devm_add_action_or_reset(&pdev->dev,
+	ret = devm_add_action_or_reset(dev,
 				       rockchip_saradc_regulator_unreg_notifier,
 				       info);
 	if (ret)
@@ -576,7 +570,7 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	mutex_init(&info->lock);
 
-	return devm_iio_device_register(&pdev->dev, indio_dev);
+	return devm_iio_device_register(dev, indio_dev);
 }
 
 static int rockchip_saradc_suspend(struct device *dev)
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
