Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70E94D78786
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 14:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YZXACnpjdAqToWu8cQRwB7tEtsVeK7l5UAG+w1gpjA=; b=EHVHnQunzVAWoP
	QSHpSI6ZB1+eneW3e3fuCKRO878gPtLwRxMX9s6iuXTPPA2rVsjMyoy4d64ECOKLkz70HXk7j9TyS
	LOzEoqvzUdBCc8RIFLSAFvag+kRYcDZIDP6RmtKJhEhuSIDd1A9o0WJrnRjKt3zQ4uJQ04oKoshhn
	HRH7cho7PhY6yRT4ITqh3PShZXRMdvHxsxArOuNtjKkl2Wo12jKcdwcmnYJ7KXLTRzoSKHgUQYJl7
	PlDslBWwzeEBlDp8riGZZgmbcS1exOqOcluhlTujEGuZk50rHMyEWbFLmjX6cI73IJv4Bk4xkiFB/
	g3qAd56kia2WrBWxOpgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaS-0000000APw1-3B39;
	Fri, 19 Dec 2025 14:36:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaI-0000000APnJ-3WSe
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 14:36:03 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBlFPm3975656
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:35:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xV7Sj1lP+ipO/vMdQQDAnXh1FyZ9JEzti6vulzMdahc=; b=aAO6xiK7B2Ahpu0Q
	tStX64yB/Oyj6iYNxsdek7WORUjXVMmB1EL6+Wo81vsth5sEsUNHmvEBxPaakkiT
	3WXMe9musPUKGR66HMiUIVPfcEIYimPkz8v+nn5K5fZ/ot581KTdLa2XOFf9SC3G
	yKvrcxcYJxj5Zm2LKOXeDZS61VYFmeBQk4w+V48PN/LZSjl4Hvuyy9Rak2s+wL9V
	GRCZXgEVJ5hMXictveqt3ggt1808OhVYh55oeeXcA4/BqHqX8Qj8pBVlO07OmyJI
	tUd5Qv3CNWYPQZF0FaRzPBUdlbC7lgYYqyx6sA3bQ0YIuCRo22y6rQg+MYvAEJOf
	t2aX0A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2fjw2j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:35:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0193a239so18270911cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 06:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766154957; x=1766759757; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xV7Sj1lP+ipO/vMdQQDAnXh1FyZ9JEzti6vulzMdahc=;
        b=O9nzCb6aRP6LXv3DeCPW2Kh4r9QS3JzaDlqMMx4D9UGngp4hWLOJY19lASZ2wVASCJ
         Ul2Fn9lsKE7F7HZ+npL+OtcUggJjPPQ9xU6a98Dz8Wyh6VtgrenCM4xNLvQAj+BVMIvM
         YILNvBKUxEG0VyPAt9Tm+2q8WlXTpoRXjzGdO8XwTjr1cRJe9H6Vx7wdfX94MHTxITmH
         IsfIMV0IEu6wFffdC1mJi8zA9007Upx8iSXP7zIKR9e0SJ2emf80kZJVd2RjWnCacWjZ
         GcztAVbpjGsqx9yJVgjfJcD4Xb2RIEZR/t8o1HmPiYFxQDOBToSqw3sj88io/ECbdql1
         dbqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766154957; x=1766759757;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xV7Sj1lP+ipO/vMdQQDAnXh1FyZ9JEzti6vulzMdahc=;
        b=ZZs5r4zhBLCl7U3oj2c+UKxyASyhj3rC/F0w3U5dllxpi29IHAgmMGiIrzfSLEbZQZ
         lsRGxRthu0VYHbd5yfEFQiULL9OXP5E8BuJp/jNyzSoDjs4YjKZ2chezM8zomX8mfZgu
         5V9iSXegz+ryhdHeoZVvG0nYuPGQ6HkI99kgLvmzkXTtYUELMgeAhJO+5WKgcrro5m+h
         P3Df8qxfpuhwm7P/jOMuMkSTVkdoqY6yj9nbV66mVHeqEt8/4VhHvBYFGKQlC3RIFoiY
         BzSyiBGxr+Z7su/UiOETYSU+Z+CgdbcrCr89G8FxwRgzjLTdO0odrlVaXUZZhGnoULbW
         rQ/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWyrih6kaoPgHoRiurTSdOaKTmdkV9LJ1GTm/jXFfnH5CtiIaVgZSFgjGJ7dtwQT+tyxVDKW4l8j0oR5eDvvQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzvDV/8TQnFJ55pziy5WKKd5ddwq3GkLpPAQrVjGIiAOhyb80F+
	KoN1U28BjDF55wArgrHx5m9TCzXbuQU0cQ1mdCG+bmbxfVio6PKwRxwEDMSfN0+uwsGZN4JTTWW
	aG74TOcxlhfS1ErajQZm6lYyBHlyIy4z08zo+1RevKcBr6KYX85FpnJIf7zEpIWhA2eCp6ht4ZX
	E=
X-Gm-Gg: AY/fxX745vJN9WRjwlaloNcwQUmPGZAzGkwFjmKlzWcyWgjHtPZmAIGnJ6pRQZFReUD
	uC/sSU5v/UWV57WnmPgH4SUScnuiiMXPCWySCbPCbtkIXbO4aPA+m65ddjJca33TNUdcA24gn/Z
	X7TU/PmRNlB+EK222Id3MUfv/wVLjiFxsj0fjJ5XCn1QHYvzQ93p4ANaIoCGqtJN7WFSVMGCKDc
	/tFDo9guEd0DLMRvBqTZaHB/GadVyA6fcORx+lvmytPWhdLDPB+SL1DP7OMDsJQEzSdeW0lIT4E
	v16d6Zpqrbhw9CSKWJ3EZjw+l2L86voHAnEZtdtS8SCFXHm2arvZ2PklvrcJWQ2aXQswhPIiZY8
	TyCEIbtlJ3fmrMtu+jAfWBDu9KxpCZ4divD/+2XOJrX9mVRIPCHeme2o6cia7n8E40Euk
X-Received: by 2002:a05:622a:4c15:b0:4ec:fdaa:b31e with SMTP id d75a77b69052e-4f4abce094cmr43174081cf.32.1766154957157;
        Fri, 19 Dec 2025 06:35:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpXU5pTYf8IAIDbE0Sqzc6Vk3SDvjFDfm4RPQu+aDyXRPlzu/xbQTB4M/gboaQR6K2hZYIIA==
X-Received: by 2002:a05:622a:4c15:b0:4ec:fdaa:b31e with SMTP id d75a77b69052e-4f4abce094cmr43173611cf.32.1766154956699;
        Fri, 19 Dec 2025 06:35:56 -0800 (PST)
Received: from [127.0.1.1] (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab7f86sm245145966b.17.2025.12.19.06.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:35:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 15:31:50 +0100
Subject: [PATCH 1/5] iio: adc: aspeed: Simplify with dev_err_probe
MIME-Version: 1.0
Message-Id: <20251219-iio-dev-err-probe-v1-1-bd0fbc83c8a0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1098;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=z3gIGj1oIvvmH82pocqz/4k2PQOnpGa3jr5JHcWhyj8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpRWLEcsg/U41BoWF/u0CzNiG+xeoGWVjGVoXoT
 NfSmwwYEgaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUVixAAKCRDBN2bmhouD
 17LSD/9ruRFSUuxVXUPfzteRn2rDyimSpK7gTLu+xZB/8ccc5jh3NFxaTc82kprKc9KeXopFpk7
 sxqJAClDY/CkpObXefij8urEBNLvrMDnI2eShXdGAumF4Re2rxTN2eN4fpTrEsHeVCeRn/GUiTm
 aqd8AWv2WVpUQocZdUlWsHte9x4AyuaQiclWlO2P/+ESmUygqA526P77fL+zqusY8dl1Qx/mLZl
 0Fj9c5zLge/Pdq6xHeypu8XYSNPOeFtFIu4bjKsusMTEzUmFcfEs4PcejG89bsqU21BGciXyuCj
 VDozY6YnIFEx8SvMmhcSZeXZ1hH9yn6PHBevAuaxu4jdUVVhe7WFjiKht6Q/J1KECutkpfaQ7Ut
 /CZjinA1SFtrdElPEAfnk5RXoXjxH8VdVzcEFz/hbgzOR0pDj81MJnNJYyX0wBCFZ6uqWFfQfxw
 foCaRbwDfrobfvdERQQb8brmubRaYWsJPduVobsoGGGm9GCqzCFf8QoqtaWV0vG55G6vnuLCktx
 jK8PiB2fsLJ6Tf8T938FxIEAkBGN799ClXQq6w07f+8xN1d6kqIGHE3RDvu8eVdfqEvu9PEeyKm
 oUutIFIRV+Ua5vv9o5gi4gWG3SfHKRQq+UEMXE1nm7Z8KS7cy4Kymsd/ds1yZD71QXN8clXwwKl
 b/wRwDEQRYvMMdA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=NODYOk6g c=1 sm=1 tr=0 ts=694562cd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=dK7io7gEiNwTpUlzFjcA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: DF4eZYXIjQBRXub_L0SjJxtYBvM0eIfa
X-Proofpoint-GUID: DF4eZYXIjQBRXub_L0SjJxtYBvM0eIfa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfX2SzmbGHUx+kG
 3qyc0TJQMmLXbyUehwlIr9YoO8rgo4ASX2Pw0Ic/WWcjoaxnJUgD6oxEMb7otIzVZS+6PbM0Ln6
 Od0farmfr31ma9xYN4NBqBsIGmbybqVRr8QIDKs1q0KTnvCd9YQSmun/04QclkYj2lp4i/ETTi9
 zTSZnR99Os71U2TNUp6ijq6/GYodVXR9p3bvN/o7LELkerk/aWJkT6jijiewAzfYvW0tGJzmt32
 Nkt3AxdIlN37x+oBYCzROKxZhOMi/s90j9jSxI7OB0bkOFPaU3Xz02qNPWG6GztKfhUoEvn2u7J
 PcK5wmNL+WsLUfTRYe3EhQu8xWxZCnQTaGgoxuL9fRL5BeXJ2mCdyIHqx+LzgS4leNLaOiPbrrc
 INKVAqwHNTD+B6QYUVGILe+jBrFQ16wW4x2E+YksBiLoh6ERoG6r7GWW3KE7GeDNAhoFVkDrqQ9
 z1m+DlNu5/lmuClE15A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_063558_988702_228D5C89 
X-CRM114-Status: GOOD (  13.30  )
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
 drivers/iio/adc/aspeed_adc.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/aspeed_adc.c b/drivers/iio/adc/aspeed_adc.c
index bf2bfd6bdc41..1ae45fe90e6c 100644
--- a/drivers/iio/adc/aspeed_adc.c
+++ b/drivers/iio/adc/aspeed_adc.c
@@ -535,11 +535,10 @@ static int aspeed_adc_probe(struct platform_device *pdev)
 		return PTR_ERR(data->clk_scaler);
 
 	data->rst = devm_reset_control_get_shared(&pdev->dev, NULL);
-	if (IS_ERR(data->rst)) {
-		dev_err(&pdev->dev,
-			"invalid or missing reset controller device tree entry");
-		return PTR_ERR(data->rst);
-	}
+	if (IS_ERR(data->rst))
+		return dev_err_probe(&pdev->dev, PTR_ERR(data->rst),
+				     "invalid or missing reset controller device tree entry");
+
 	reset_control_deassert(data->rst);
 
 	ret = devm_add_action_or_reset(data->dev, aspeed_adc_reset_assert,

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
