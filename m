Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B67FD78783
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 14:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZcs1VvyypB7gjuHIt0nnb384obbwuiRCEDjLsQhwhI=; b=4tH7qG7m6lwGZn
	AD9Rapj8HNk8nWBd2UKO3tHq+bESO9z/RnmOrs4kCeLtv/S+2MAlTuAydzJhUfqXkJAGvva9otqxt
	ksJEdx9IaaZLQ6+XvFysOGr2p0AlgZoScyVBvwMQMtS9p+X/QFSUqmFRvYQR1FZTL1tZoeoBogOSL
	i6woGmQErDX9Hbw4JWlfgJnvikzyJ9C7YdEDeW8u6AG3D91yi1RMpllnPxoQKDZjNHcpdGbQrKg0P
	7MXtjUVYD9zKsatf2fCeOecqx+jl/sIb01q9Joe/ZOq1Kph4bZiViR8gqumJZgQNnR1j8DB5qRWoq
	+bdCwJMDbUcUQlUEndqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaS-0000000APvc-21Df;
	Fri, 19 Dec 2025 14:36:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaK-0000000APon-2Jgk
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 14:36:03 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBlE6K3975405
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:35:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MyMmVElDZvwdRIAby/7iW7vi4WeJE4eibZZHiU0BOnA=; b=nWMnW2ppEGj8sQO1
	72cd/O2SvycHwZ7mfK+mnsDlsERmYByJEzPltbj60Q+AIUnRJwaKAMUNtnd9sBgV
	mQnpWkAOzI5oDXDNOmhADGWtPkspwBO6OLbr3aRxqkQTbBc4KZRfKxXjRylK0JGg
	YusVtweDPoS/yOzIooZTZQELwNqQXAYnV05U1gYJyFp2jp7Nl+/57jhnjsZkqEQW
	WrCvAV6cCa5Elx5uZRFoNYwJTWu7B7dsEj9n6yKpMzeF+ZuAnI3v6VzKGsjGHBzo
	fPTjEEkH4SjwIYKQ1mGqONKLf5i3pXSk4T4mDpJsyWxGnp18xxYaDnMQ/2YqxLTx
	29VZ/g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2fjw2s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:35:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1d2aa793fso41309291cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 06:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766154959; x=1766759759; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MyMmVElDZvwdRIAby/7iW7vi4WeJE4eibZZHiU0BOnA=;
        b=UBBHI7bXYzSPxv+ogawOOK5dm68NMs5Rs9vdWm0JUAv1Yzciw+3VcCDI0LElDNbals
         nTrboO0badXjKxcE0By+kNN7JpYTNjxgwlowx/DjpG8aqDxqEGXb69A0oEKH6VTQpY++
         m373KlQQie8RTJNziWucEHz1c1HWqkI43Xm9QU7Z5WgDjXlMZLYUwa/4a33ahm5WBOe8
         IrAhNLmBrSs3vDFdz0t0wjwDpeAlhaviPpptzi/5e8S/k2dJPYlmEk9yCTLnFqd/j3Nz
         YP2SdgQ/k6ft4YJc37NwJjq5tPBS/PBeD7zQXuHjTqLKkhmo0GvUJLCaae7NkE3FbJ0o
         wEIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766154959; x=1766759759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MyMmVElDZvwdRIAby/7iW7vi4WeJE4eibZZHiU0BOnA=;
        b=MQFfRESA7rJAy2SgFnAOv9qTjxDnnguw7KOsS/cvq6vArm5tK7/pukgepAerFud0hg
         RZmtZIGa95WU8NrB2gG3C7yMoYSzwseotp0Nrsv5I2qE8CywmrIOkl2C3rOZQtv+kJ/5
         YlUAV74bHJONLzAK5u08YsCIuyORe0shoxRjkIbCXmqQHUUgGgDaH+k2LpINOgJR1q3N
         NskrPt6/JrrfPeewcBwyBzkExOt16F/BX3Cz2auzfzFh28DQKi+bQ/iagCoHNmZLT0Wp
         rHI1DkgwoESbJ2ESAUeqyBubx8saN/oo8dp6eJdyDkGLaG9wcGov/EvuR9n5gDFa+5SE
         zH5w==
X-Forwarded-Encrypted: i=1; AJvYcCWbSvavPvA3V2nJo8OvD9e7dIKMh3Z9rDQ6EFdH68QmL96w5DFsengSEwK/6HPD+x1EXYuKwumernVpkoHtmg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZq2ATZyFbWqyLorGW6pzIONptKfZP7qdIl/pmKK00n/yd2uFL
	JMCHFdXDBX31XWuLF0jhVY+44K3qO6YJjpNkYK4y5Mw4VzLLUwpEZa/goxyK5KN/DsbC044zz0M
	ycdQiXQYaN4S2ZLrv7CiUQnMQo5p2pqypwHfjyjPnvilu3xr1p34VbqfE3yWDg1jmJL7R6rnBPz
	Q=
X-Gm-Gg: AY/fxX4a9o5nxba+W0fnf55VsIWfelXkFioc/YdjRjBJ1rdQxLwX5hvS09SitTOnjLM
	/6rVtpbX9dZXgEsOvPYGqS0d9LotIvQplUHLlkj1C8TYZf8+DYhYfawE702N+WlNxS85E2rIgV6
	7xBPODV+pNKLArdYCXq12DfsAosKUTLJMJBFiTCb9MNhhx1tYL3aX4dKp+v2c/U9PeDYh8Fz8wW
	8UBrQy/JbrZs+vf2LIOTbpWTF3e6P0c3kK1MTDfdmX/udW3WjWpNcu47vfgHymDFPJQ1bl5v6kM
	lrrjym3ZTnjfcbHiDdizx4EW/DC3HSqtr5huOLPS5GPHp3mVKPVUWEhrKAbrNLkXUrofkcjdlIk
	z5xElTdx+c2NDKtTAk4kGsT3HHcgiiglr8pDwqwSXTJKkQ5Da6IU6bTdso1PvLvKlDrsN
X-Received: by 2002:a05:622a:1e94:b0:4ee:209c:be59 with SMTP id d75a77b69052e-4f4abd9541bmr48096141cf.55.1766154958922;
        Fri, 19 Dec 2025 06:35:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFy3s+cedRD+jScDO/yti3WIT0fmJUy0yEz4L9LKCuvDsUwnGPrO9lv5lNcy508pzCE+1Jc6A==
X-Received: by 2002:a05:622a:1e94:b0:4ee:209c:be59 with SMTP id d75a77b69052e-4f4abd9541bmr48095371cf.55.1766154958397;
        Fri, 19 Dec 2025 06:35:58 -0800 (PST)
Received: from [127.0.1.1] (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab7f86sm245145966b.17.2025.12.19.06.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:35:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 15:31:51 +0100
Subject: [PATCH 2/5] iio: adc: exynos: Simplify with dev_err_probe
MIME-Version: 1.0
Message-Id: <20251219-iio-dev-err-probe-v1-2-bd0fbc83c8a0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2371;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=5iVrwaVGkX/lz9WN7/1Hu0jkjOFLzSRBWe82w60UkjU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpRWLFkLm4i1w5ivMIJ1P76TTT6SODbzjV9Amfa
 9AuVP27BKyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUVixQAKCRDBN2bmhouD
 1355D/9zK05TIVLM90YKH+VJ22rkGMMZGxQjjUGFR0oKrTlLWycdW95453AT1vgoNi5JaUt7uhG
 EEm4uMIUCWH+8hMVEji27mf/TEh4IxaMOwaO679edjyhgWMLoV93nYZ3dIEHbA3pJU/dj2JBQ3C
 mRWJowsgDCUMxCHqy9iZAHAX5nTZYZlxArvoFGlaAMrya9ou9xnNapJXa+lRHk9/Zcyx6GudSge
 M71hRmDuvoU3UX3rdLU3Y2+2KjqIt/6cWBzm09etk280kbA4IU1Om9TgwNkN9ydPmDECDHPrftn
 FZYZ/9kAVjsqrPUkaMFBAhEXW4UowvR8EbZ4b8bXf1twI5WrtlGKwpsfXXkkiUJNdDg0RPBN1Zp
 bEXk5mcZg00qSFTFxZZdNuQSYV/USnXxwVpkNZ+uAvwRkGZWoAYSLBoS6uTz/sdoDQnJSUV4OQP
 UybAN7xllOhnQwQwxlyF7rXZNAVgo/aHHU/wiDGNrcDMix34ODC7ZIu5LqbaYe2bw+0nzCpy4wp
 GLj0CDDkP88fOOZ2vI/6mCHyZpXvBMcE12Jn6EFKBOQyxG9ju0A5khAGXp8vToVjZrdMhDi/f8U
 s9v0QkdA6kJF4TjZbVqsyIEr9GKmHiq/T9Hm7HB4od4NZSU3rm+SkVpm6RFCMeUBySXr9gQJ8Pd
 ONf3bUbf6HecpuA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=NODYOk6g c=1 sm=1 tr=0 ts=694562cf cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Y7nMzdyCy53GPDWIMu8A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: O5Jvy1vbLo0lYVKYZt0MUnvKNDIUN1RN
X-Proofpoint-GUID: O5Jvy1vbLo0lYVKYZt0MUnvKNDIUN1RN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfX23vH78YHzFZO
 twvDdTanXM756Hh3201p7DGdvDHnxHQ4jQ7Q7nQywoDf4u6BKZycb4Kw6u2zhx57wv/T0HcHsPa
 NpcMT3N9fr8HXrpdgy7eUmLwKlZpH+xurbj7Y0MLbFrxAybZsWgLceEymZ8RVI6OdseoDPrcqDd
 /u4dbPLJLk8bIvNv7jo/TyiqahOJd8FMIdkZ3rzAmCNVRurS0f6tODsKUvdabU08qN1Ae6xk3QZ
 XkTZ74IW5/tl+qF2DNNbnEO6FWp1DC2m1ds/3+z5/AmwkZoIGeDzELtYAhlwZAh+w5QM2MbnxCN
 F4B1yJ8YKmXmlzHN/jJKGQKtCYpoOLdZWWW3gMs6ErkE/Yyfgo7Tq2IIK3Jh+g4ohFI2h2f/U2P
 LzQUhidZ9WrbsSgO//QqNarP01ZQhGpdQyxsEzJEJaIiyi4g8YSGS8bggsl+j49EjaP1+Zv84si
 JZQgQKPNzsGVotzYbBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_063600_736947_F674B803 
X-CRM114-Status: GOOD (  12.42  )
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
 drivers/iio/adc/exynos_adc.c | 29 ++++++++++-------------------
 1 file changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c
index 1484adff00df..491e8dcfd91e 100644
--- a/drivers/iio/adc/exynos_adc.c
+++ b/drivers/iio/adc/exynos_adc.c
@@ -564,10 +564,8 @@ static int exynos_adc_probe(struct platform_device *pdev)
 	info = iio_priv(indio_dev);
 
 	info->data = exynos_adc_get_data(pdev);
-	if (!info->data) {
-		dev_err(&pdev->dev, "failed getting exynos_adc_data\n");
-		return -EINVAL;
-	}
+	if (!info->data)
+		return dev_err_probe(&pdev->dev, -EINVAL, "failed getting exynos_adc_data\n");
 
 	info->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(info->regs))
@@ -578,10 +576,9 @@ static int exynos_adc_probe(struct platform_device *pdev)
 		info->pmu_map = syscon_regmap_lookup_by_phandle(
 					pdev->dev.of_node,
 					"samsung,syscon-phandle");
-		if (IS_ERR(info->pmu_map)) {
-			dev_err(&pdev->dev, "syscon regmap lookup failed.\n");
-			return PTR_ERR(info->pmu_map);
-		}
+		if (IS_ERR(info->pmu_map))
+			return dev_err_probe(&pdev->dev, PTR_ERR(info->pmu_map),
+					     "syscon regmap lookup failed.\n");
 	}
 
 	irq = platform_get_irq(pdev, 0);
@@ -593,20 +590,14 @@ static int exynos_adc_probe(struct platform_device *pdev)
 	init_completion(&info->completion);
 
 	info->clk = devm_clk_get(&pdev->dev, "adc");
-	if (IS_ERR(info->clk)) {
-		dev_err(&pdev->dev, "failed getting clock, err = %ld\n",
-							PTR_ERR(info->clk));
-		return PTR_ERR(info->clk);
-	}
+	if (IS_ERR(info->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk), "failed getting clock\n");
 
 	if (info->data->needs_sclk) {
 		info->sclk = devm_clk_get(&pdev->dev, "sclk");
-		if (IS_ERR(info->sclk)) {
-			dev_err(&pdev->dev,
-				"failed getting sclk clock, err = %ld\n",
-				PTR_ERR(info->sclk));
-			return PTR_ERR(info->sclk);
-		}
+		if (IS_ERR(info->sclk))
+			return dev_err_probe(&pdev->dev, PTR_ERR(info->sclk),
+					     "failed getting sclk clock\n");
 	}
 
 	info->vdd = devm_regulator_get(&pdev->dev, "vdd");

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
