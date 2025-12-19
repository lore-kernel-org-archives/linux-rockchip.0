Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4609AD78783
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 14:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SxSczQg2hMyVhJC6mTejE4ECg7B097R1Z0w1c+UXtNQ=; b=gFl/0nBK5yFFk1
	j/dLevthjb+OlL/b8z7FD6xOjVpdsVegfARsQIEY5fxyTPSjAC2bRZEwyknr+sk22qKJJi61otnq7
	pFg82wQYfh3RwPwMEfTzyQzXlit5nFk3KNvfK7VYX0yypc+WOLcAvDbvjt2C6QGeXgHvA24fUWaIn
	Iz7CePy3552lOkd8r+obPTYDFkV8fv4knvwBLjbALg3T/ff1FZeb4KnDim4anbMSnMh3giU94ihNC
	AZvXH+7aGUvYxqEIpVrYaThFFo/rNIQkZ9Hxb9I8PL+hK/L+Pm6/t9y0bhlXS26t3Z/yuYX6JespH
	P1bb4Z5slGb6DYCub2Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbai-0000000AQ8A-2PqP;
	Fri, 19 Dec 2025 14:36:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaP-0000000APsR-44Vt
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 14:36:07 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJC0Uxx091969
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:36:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QO7v3mInpyxqmqngfzK6cMArjVhYiK5JPVpSUzcyyGQ=; b=WAIpjOpQ+PoNwSKf
	y6JtoIF7TqlCyNrzHYGE+yWtSdWoOyxksM5aRSYFA8xjuacFCIiBdanU0xMirIwc
	HvvXytN5sQL9MThx09ocL96j496Kwdh1HT/ShkbLg+avvHcZOQyP0aQcLTJjdjNS
	plwyUlhPM5DGO7yfqsRg7kNjM3mghrWuzrUg4NZSiwgykJ0l3J1XJiVeohj5EvBg
	ZwM7Hk4vg/6y/A39PL5MEv/AFz7koX2K9SDHVI/Su1KtYGcY+uEGI6Nx5NjVhRjX
	TOpKAI0d9aANoZ5kav6OUUVD8dNycvwl6xva9HaolBGgAafQsUkpDV4jOb5etk2Q
	ME8/Dw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2eay4c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:36:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4eff973c491so41774561cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 06:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766154964; x=1766759764; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QO7v3mInpyxqmqngfzK6cMArjVhYiK5JPVpSUzcyyGQ=;
        b=C5UndrmOQkha7iO4GLGQ4/Fk6eW39CXUeesohaH74j13Tptg8Ol2ehdQ4T+5wWWia3
         mdsYFGYexA/b0NmRDXNpng+nG33f8HPZj/wlHtXBvLrxPWyUqykPDjNRY2JFfwEgc3vX
         4mR8uleiyRCSkMULhtiW45nyiPqCtpJBdf8NSockm1NGR41YtBBigFxv1s/KvudWORlq
         75fRpKnzSokrOla/zGGINLYZYNTQZ46vzu4W2R5rhyAuo0o7FJVAE+f+RgjX5KO3CQ/0
         ZvSSUjX5KuNFb/XMBUgB/1+iDGfJhthVmxI3WKlX7YaU7wMafQ8RTno3f7LQgmg9Z3MB
         FMrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766154964; x=1766759764;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QO7v3mInpyxqmqngfzK6cMArjVhYiK5JPVpSUzcyyGQ=;
        b=dOZreqvdWz3Lq83OK+2kaJjRlxshXvwxKZd/DUePQYbh65qTqFKUgL1ob0R2mjlUwR
         bVTpGtfNu1b1zI4WVvVMII9PqS2ZivKEOepRDDC/JpuZdSoo1D0cu+ipqdpCe/FFK3QB
         wQ7/3usMTuidcwfrQslnO6z0xiQrHFha30vwdfSYCsDxz/oXShA8hykq35+ZiIzB2HEY
         lLKlcK6Q6MGjciLjaQlzDSL1RqXVJwxqdEIwsIqTbZJgbqe2SipPHIrT7lSyfqqQmP56
         qHS1Yq+ODc7wo7Upskhf6JtajUt48sQm6irqQOLBSerjdp0LCFj+oeip9g/3jH6oerIf
         XZKQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6KhNEwChpSjBM2icwRqDBdkdXy062rIA4EIgWj5AR4Cxmk6Itvi6cIKfjW74+08YVyHH6m1WAKZC81JJZEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzuegaESBuqF+yXlTqSoWOESAmESPpg5GF0sKd06Do35FAbyQLd
	7WBNGsXWxe3jnhJtskLwCfI44/WOKjAkR9Pf18xSgNjHus+nm5n//mR3Kix0PUfKGY66qISupz8
	J6VWZ4Dqqre8p7U9rdd+a48BIfLhZtU0/gqyyus8hyjqN9ThuV8/WubSxiuOPWy3ta4PLDJja2o
	E=
X-Gm-Gg: AY/fxX49itlmSuhXubL0Ur5qiBbqKOosWbWMa+8u3iERRQa6TW+A/gYDRZ3gOadob99
	Rker2RRSmQYw0wA4tn08MtvV5pOh+JA4ySAekApkVh7R5XUyf7/+O85aOP2Nvp13wpN5jyC+w7Y
	BwH7HUBazdTaxLTUAzaW7e7/4fC6Wuhw8CxULf+fLrs0yk63saXh0icpCXH8Z4J4ZVTaIrj4Hqf
	ITbSdorJqE6CvxVSDxlLeRhGSHvwdEeXktN3wTUC+g3yUa/0M43+IoUbVMJASdxSJH5NSMHDHBF
	UjjJHWZTtrMv9rfiUk2S7bj75Bss+JA6MO2mdnFMuXO720ii0iCZ4WcKG1WCmFbYrmZS6Wylcce
	gN666hiGgXaer9j6hxSAud90cr8xv/bN65Vt851mGUQRQ2bQdK6xpXZFCKNG4ts/mBvrH
X-Received: by 2002:a05:622a:11cb:b0:4ed:a6b0:5c39 with SMTP id d75a77b69052e-4f4abdc6a4dmr43263631cf.63.1766154964152;
        Fri, 19 Dec 2025 06:36:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYupEl3gYLzDt53suprXOO0WmjuzlD6rknnropJD9KMCWfnffglHqPJoWvFjr/nYkg2I6ZFg==
X-Received: by 2002:a05:622a:11cb:b0:4ed:a6b0:5c39 with SMTP id d75a77b69052e-4f4abdc6a4dmr43262891cf.63.1766154963604;
        Fri, 19 Dec 2025 06:36:03 -0800 (PST)
Received: from [127.0.1.1] (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab7f86sm245145966b.17.2025.12.19.06.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:36:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 15:31:54 +0100
Subject: [PATCH 5/5] iio: adc: sc27xx: Simplify with dev_err_probe
MIME-Version: 1.0
Message-Id: <20251219-iio-dev-err-probe-v1-5-bd0fbc83c8a0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3222;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=FwErtDRj45YR9+G3sGWpElTdT9H2524MS3PEIg8X+gs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpRWLIBxhyFmOssOsCYuSdWCS+KQ38MQOZRW/DR
 UUjiKlsTFiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUViyAAKCRDBN2bmhouD
 14EwD/9O5g0sKxohmlPbWRb5GCF+Zyv/zhIM4UOKtjqVRmXpwhQlQ5PPhdnKhun24YiM5mVrrTJ
 jazVQ0q7AS3Pd2nhNF4aEli4cGK6v+5tsbY+W+Z0S4brTp60yR3kHRWKRCH1obXF5k//KG88vDI
 utRrA3kUsFGOuVY7/mGT6u70Y3vLUHvpOIePcaw7yO9ZGQDh1fhrk3V3xE726Y05GFCMAGboP75
 e5VMg8CddWKpb7pPw6KRXj6vMp3stkIQKd2FwIKY+ZVmeuk/WbgJCkyb7JgtONVtYQ7HhS5kv5V
 quVBHJXrbe7XoEpzecJg2KoIlIGSd1hkMo3M3rO6eKwxyyDiwo+IbO+1tAiGJ6z94+0rB3TWS0z
 JCwZsFz7fcLYl/27TiOCXPxoBnkGkpvwMCilqcQ0wuG8Na42nRitMIu5+E2veKtiSHsZkYBaOyR
 qHojscW3lXvVSO1PfjMjpFwqaB3byNdUl96aEpaSezOibzXovGjyYtcrkVErlwWYnUUgSm7JDfd
 SuH2bGvlkFDQDgaR7/uudIXSCccjtRXp+GjB0rZJLAgTtoPW+LIukSddD2zmR6Pz+gV0UFqZSMK
 mAbcTZA4Xd+e1kCf+Aey0jp6AP4Fkt9KxCEvNYvSGtubZ60ve7d5mAoLFT1jAeudBulbCHSu47V
 dnwL6XXYday0k5w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfXy5D5k7sdKkES
 S4EYMFY1p2EwgvydJYB0T/NtXm7pXNSyG1AskgocwKzO26S2w3VPftWcBF0fsSeD1oPDxJ49wIW
 TI/A3qtOa1edSwPK0xfZbTriE1M1oZnvG8uSJn2X7KMGENNW8WvBjd/ztDqKFelPO21omajsimD
 ZJrk/lrKUC6Y5F8k1g96TtMYYZo4sFErEb12e47lRf5MHGsFO0mYraISaXsy5EMySJfDK78HC85
 wBF7mwiuA7gp5nH7DMZ2N9Ks5T71Y9HGeVKPOS4m32W4hkFlcvDuRO8KLuKVCQXZKiEIm82Cve6
 wwdR8xkvlvBQSb+f5sb5NHmYa4Mn3DtnmHY8mOhpxg/1xTmMv3p6SPWN4/SpNF6JunwU/FdB0Ih
 iNFUMNMhTPXVtCOoPggZlRoIMcvLY54Pj0KJPhKeVpU+R8zlwGMlmFtM8si9DLM5bOqqc9if7jB
 OweEVBaH5oK7iYDYAnQ==
X-Authority-Analysis: v=2.4 cv=W+c1lBWk c=1 sm=1 tr=0 ts=694562d4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cWTT0jPcX04evTyD5nUA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: _dj9b_WLwWPuNpZRdVpcRVd_2pkbK4Jr
X-Proofpoint-GUID: _dj9b_WLwWPuNpZRdVpcRVd_2pkbK4Jr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_063606_132851_C035148F 
X-CRM114-Status: GOOD (  14.93  )
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
 drivers/iio/adc/sc27xx_adc.c | 49 +++++++++++++++-----------------------------
 1 file changed, 17 insertions(+), 32 deletions(-)

diff --git a/drivers/iio/adc/sc27xx_adc.c b/drivers/iio/adc/sc27xx_adc.c
index 2535c2c3e60b..6209499c5c37 100644
--- a/drivers/iio/adc/sc27xx_adc.c
+++ b/drivers/iio/adc/sc27xx_adc.c
@@ -867,10 +867,8 @@ static int sc27xx_adc_probe(struct platform_device *pdev)
 	int ret;
 
 	pdata = of_device_get_match_data(dev);
-	if (!pdata) {
-		dev_err(dev, "No matching driver data found\n");
-		return -EINVAL;
-	}
+	if (!pdata)
+		return dev_err_probe(dev, -EINVAL, "No matching driver data found\n");
 
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*sc27xx_data));
 	if (!indio_dev)
@@ -879,56 +877,43 @@ static int sc27xx_adc_probe(struct platform_device *pdev)
 	sc27xx_data = iio_priv(indio_dev);
 
 	sc27xx_data->regmap = dev_get_regmap(dev->parent, NULL);
-	if (!sc27xx_data->regmap) {
-		dev_err(dev, "failed to get ADC regmap\n");
-		return -ENODEV;
-	}
+	if (!sc27xx_data->regmap)
+		return dev_err_probe(dev, -ENODEV, "failed to get ADC regmap\n");
 
 	ret = of_property_read_u32(np, "reg", &sc27xx_data->base);
-	if (ret) {
-		dev_err(dev, "failed to get ADC base address\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get ADC base address\n");
 
 	sc27xx_data->irq = platform_get_irq(pdev, 0);
 	if (sc27xx_data->irq < 0)
 		return sc27xx_data->irq;
 
 	ret = of_hwspin_lock_get_id(np, 0);
-	if (ret < 0) {
-		dev_err(dev, "failed to get hwspinlock id\n");
-		return ret;
-	}
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to get hwspinlock id\n");
 
 	sc27xx_data->hwlock = devm_hwspin_lock_request_specific(dev, ret);
-	if (!sc27xx_data->hwlock) {
-		dev_err(dev, "failed to request hwspinlock\n");
-		return -ENXIO;
-	}
+	if (!sc27xx_data->hwlock)
+		return dev_err_probe(dev, -ENXIO, "failed to request hwspinlock\n");
 
 	sc27xx_data->dev = dev;
 	if (pdata->set_volref) {
 		sc27xx_data->volref = devm_regulator_get(dev, "vref");
-		if (IS_ERR(sc27xx_data->volref)) {
-			ret = PTR_ERR(sc27xx_data->volref);
-			return dev_err_probe(dev, ret, "failed to get ADC volref\n");
-		}
+		if (IS_ERR(sc27xx_data->volref))
+			return dev_err_probe(dev, PTR_ERR(sc27xx_data->volref),
+					     "failed to get ADC volref\n");
 	}
 
 	sc27xx_data->var_data = pdata;
 	sc27xx_data->var_data->init_scale(sc27xx_data);
 
 	ret = sc27xx_adc_enable(sc27xx_data);
-	if (ret) {
-		dev_err(dev, "failed to enable ADC module\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to enable ADC module\n");
 
 	ret = devm_add_action_or_reset(dev, sc27xx_adc_disable, sc27xx_data);
-	if (ret) {
-		dev_err(dev, "failed to add ADC disable action\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to add ADC disable action\n");
 
 	indio_dev->name = dev_name(dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
