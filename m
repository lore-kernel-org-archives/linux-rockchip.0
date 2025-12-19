Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BF7DD78786
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 14:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x5C+Zz0Z3YSsKOOGPTT4rlRJwj30tkcysi2xByCesgc=; b=l8cMRvNtAUTL+J
	P6Vgo26817TAi4fJzUNfroHuVBDwV6huqnZc4esIOH7HKsFuzxi9F5ajiFMHa4LKvF2SwIv3WhgXS
	X61gJYet9GCkxc6tYYQIjkZ3lrieXOxo/Akl+WrmsWJhRuNnhYRFjwVYNYyQVdm9qn70mEsj0/JPT
	0tRZMoUUVTdw64BwMOEzhjIEt7A+flSoSxtVTlA9xY69yRFJAplatIONrvMVnFdjKMl0lFDNoHEQn
	cZ8WnZcCDSXsUpVvrlGp9Vle2HzwSQP70mWEaYGVN2fK7NDm5CYWVzpaBtlrDux+ljVcBG7Dq310V
	QYIBmjzHLReVsb42McHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaL-0000000APpo-0rFN;
	Fri, 19 Dec 2025 14:36:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbaH-0000000APnD-1jWV
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 14:36:00 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBdDM53700752
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:35:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bdVHcop5XYNpYgY2yr+3Fk
	dwW8jh3IpYWt3xSgH8iKA=; b=H8MbEeMcDR3OAyNCv7ZbaT2jGgjxnspKFvfma+
	vScLZ9gcIKUB6mzGCGSe+SxrLuEEDnIbhO1DoJYyP7+dNsiltp4LXZv/n9omciUp
	pypqg41B//O4+bkm7RqZbiq86vn0gkxpau8mlREVwrUfL9IDtwx2A4oFyE7L43Im
	JlMVs3ZcmKnE8+hCLCoWOBwuMHZ0MQWhQ37xONF7dIS6FmijR3ekq0KhWEB3zyoi
	UIe94lKxvqPbtGJDSj8vKtJBOSVbxN6fow7n9s1gDjJt2X4sul/5TfpErnoUeCwP
	tJrAxrFfXlH1yNXXRiCjiyRZcIQB/eWgFOKuxJHxPpCZ8NnA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ejw07-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:35:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed6ceab125so42594391cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 06:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766154956; x=1766759756; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bdVHcop5XYNpYgY2yr+3FkdwW8jh3IpYWt3xSgH8iKA=;
        b=Az+5IPGX6XPi9lJn4Z2cxNXhuh3PNpK24MQZUYD+BniJtxDTD69oeYrtzmtbkLrD0T
         jbANhnJTQWRiMBLDDAtQfYy0ZBGgYvNP1GbUBVJsAVH4keGIrfrVyuKOAvhhlwwJFOVv
         4zSeD4ivmlfEcCFHCh4Fxr1Zoxyz6CJGvU8b7nu3bcRF79mxyuUfrWrBy6kStW9+6/M4
         LFdy/VO9xRaYBAHrvJgHTHsgXt5nxJFYL5i6OZnOVmNlhGYOdUG4p996oeXdPksuTRLt
         4Y1yhkWXn92IvFEvJ0XoEaVdvBfOC6Yx3zTbqBsCgvY3yLZf1yS+sMuu/cy4LzRS7OgY
         zq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766154956; x=1766759756;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bdVHcop5XYNpYgY2yr+3FkdwW8jh3IpYWt3xSgH8iKA=;
        b=bcWpVkdcZd1iUiayLa2InkftnsP40Ymg70EvDF2jfuI86nhKGJDl2St0m5G8+AQj5S
         +twLt56yrnIbxMb68FP8hLDRH9JlTcevz9GtXTGi5i60tquYNimqYc+NLpcVt7z4PxmJ
         nuZu6nKdWKo+p6MalucC5LZsWRZ5CEY7CJRxTqgRqNAk6wW1yBOKKgMiGhpC9vhScEQf
         YgF+/AYsiFrn1K1lUE9oxtODovKTaXOG6Mj6B89Cg1TfCuq1h9nCrpOLPEeVxySAruET
         5x3QSisJ3/F0kfCusSRyTYR0X6Zoc9OfL9DjTSyEXQxOj+UeeeAoz6AJttkpearHB2UL
         aKCA==
X-Forwarded-Encrypted: i=1; AJvYcCX+x/XSzNcQBozYJRUxTtjSKaMJlbAZz+xDZcgkv3+q35ry/oPtPvv/QsubGNksM2NAph9IOKFBhAuNT/utAw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzPLvyX59bvfn8mzQJtsP0AfCtaQDBPB3YxxdwQ35mY6sxAuc3/
	JzJ7zdu+2cy6bdJOryGmAF3Z2n3CSImvhb0MRa8L96h2No2qIhC01vyEiRSyAeFfCNX0gTdOL4v
	KrS5GIF5FH9DB1QiVrFf9nZfHFYn7vNNyGNQ/l96KQPXTKP3mund9iK4oCRegf/pXShEnyKXnfC
	Q=
X-Gm-Gg: AY/fxX767mRiVGzHOWUl+oyVmDjmi6SZ8Lvv6FVFNF4Jnpj73zkXheeiKvedmTAxoLR
	QeBAJfJEjOxpkVgX4Elr1iQOccBpMkjVyIBaVWdJCqmROAg/2/K/Q4peFHGzSWyPjJ/WvF6HPGT
	aqyyq4bVn0KxvF17Kgs9BbVtM/8YgLon3miWA/pEh7pq0D2wksR4X/cZQPShW9appzOcMRliqtx
	Pd8yN9mSgkHMXJYfZQDXwWfkFTtNJ7i+2Jf5RzhejsKnSVR7u7qZaS7DN00+IYxogFOFVsWRVMb
	0TimkDRGSPpI2OVTKL/ZMecHUCoJqTqAojbOEO/bab/B8N5Sf/LVDI1/wp2O+AqVY8eNowwUpVW
	L4FqLKvH7v86317IcuNXxL47FTXdJ42Nda1o/2KzmiXsLnaRmjRI1Si4jTqoOl9ckBNi6
X-Received: by 2002:ac8:5d08:0:b0:4ed:ba76:a008 with SMTP id d75a77b69052e-4f4abdb4c88mr38662961cf.73.1766154955447;
        Fri, 19 Dec 2025 06:35:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEffbFxw8X7dSObyQoz5slOTM2CgBwKcXa5e7U5F4RvPeNF54VvXGRIgsWbtWtrOWj00iptUQ==
X-Received: by 2002:ac8:5d08:0:b0:4ed:ba76:a008 with SMTP id d75a77b69052e-4f4abdb4c88mr38662351cf.73.1766154954913;
        Fri, 19 Dec 2025 06:35:54 -0800 (PST)
Received: from [127.0.1.1] (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab7f86sm245145966b.17.2025.12.19.06.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:35:54 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 0/5] iio: adc: Simplify with dev_err_probe
Date: Fri, 19 Dec 2025 15:31:49 +0100
Message-Id: <20251219-iio-dev-err-probe-v1-0-bd0fbc83c8a0@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANVhRWkC/x3MQQqAIBBA0avErBtQU6iuEi0yp5pNyggShHdPW
 r7F/y9kEqYMc/eCUOHM8W7QfQf7td0nIYdmMMo4bfSEzBEDFSQRTBI9oZv8oJXdx2A9tC4JHfz
 8z2Wt9QO2tb1AYwAAAA==
X-Change-ID: 20251219-iio-dev-err-probe-59b3104c8d4b
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1006;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=yDoEuSqPknkwVP0vazPsHzAq74kjVOByu3+rGhvA4Fg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpRWLDVzK3BklVItpqweq/1miLacOG2Cpj1HQRt
 qYMIHAS116JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUViwwAKCRDBN2bmhouD
 1472EACOzRsssmSeIC4dDsW9cdUyuX/1DfAEF31eNrw1wC0pyBMfIWJNnL2LSlQaWhLMVwkDaRx
 Q6qs5PZ+m5HSWN0c9B1IYnCaBdkg9i1tYfZx91zD3cFo8C3sFJ4cHai7H7f0h5OmhvOyZ8FxR0l
 al06ryQgbWCkyk9k/tWLHL+q2IAlhtfGuCtZ0+fD5kpkZLoVtbbKrTKNwlVTaY+cXWQF4BIIyDV
 AMV/sIPce94hEHphyKJlCqioXya+WMGdqumincCRkLKMIeFBE/peXUw5dYNkajIMJM6xU8axA9R
 lR5qS6Vd9zzuiKbtXRwkUBxu6Iv1eQsH449ypPIU4urZxHPbWefEF8x+KFqIL8jM9LWWev1CAwJ
 uVo9yYZ46EPZiYJe+xWkunZymrftSRkCkihcfalicTpVtRcgFWH13sIFqP9XK+0nlXJ4AXngRjp
 4hS92gmbRS6+yzCsyH9TqRxujuDbowBSxua62u0DdBeX3T47ruoQmDUCcaEPA/SKd3HLoYtpSCU
 SGunXOmPp04MuDM//S4PdHiyTXk7EzNoF6JXSrC7AjaZoEuWbadPnfJGv0EEIJLHvzKkLDByrgB
 RtS/oL0QhQ6zURKrKaZrsnxmBVjr09C/uqHNhnmkj7XmZNMFWZ7b1G8b5QH0AjIGARciWoIiza4
 zNl2KZibzhmH4ZA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: BIi_UZOsFIGg9HwGalihiZDdSRDBC884
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfX05UfrX2xP6Za
 Mb0llP9WIVNM0p72p04VMBY4GDOCwiz0qt8D5eLj9P0jg7yFs9wJTwWCtzo+yspbb/1+brjd5M2
 PbVPOb8pviJyhMfb+H2lSe16gZqzt4WU2iV4kWoUJPf86JTsKwlTRdDZfozOvuxIgkAUcP6wPrT
 4V/QQYEPLTwqO27zzJ1SpytQCBql+NR6uCyKx1psdkxgGyYjyZsxU3R1qA8lyNUfqTsXvY66mHg
 Zcg6UPcANZakXdSVzA4A3QBcwXhfCk3JzzW6EQLw/cz+nh4HfClt33bsCdp61PtuYv0fSdlqisB
 T4PrpJonnqLP5DK5d+gpf/fF5cDidRUXgTTNBpGR1foF4X7zSziKfim/9UFuXRpho02a3fBNlTw
 bbIPwITz3a9Mk9lWRkuWov+A0X9QMC/Pmr1R8dKQfbDnJMgoYbasQiWkVdRQNQzVyvtQnUEwgHN
 aCcf3fw46kEjJFSX9KQ==
X-Proofpoint-ORIG-GUID: BIi_UZOsFIGg9HwGalihiZDdSRDBC884
X-Authority-Analysis: v=2.4 cv=EabFgfmC c=1 sm=1 tr=0 ts=694562cc cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pGHnGGPHKRB7WeD4iHgA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_063558_733850_87EB1109 
X-CRM114-Status: UNSURE (   8.97  )
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

Use dev_err_probe() to make error code handling simpler and handle
deferred probe nicely (avoid spamming logs).

Best regards,
Krzysztof

---
Krzysztof Kozlowski (5):
      iio: adc: aspeed: Simplify with dev_err_probe
      iio: adc: exynos: Simplify with dev_err_probe
      iio: adc: qcom-spmi-rradc: Simplify with dev_err_probe
      iio: adc: rockchip: Simplify with dev_err_probe
      iio: adc: sc27xx: Simplify with dev_err_probe

 drivers/iio/adc/aspeed_adc.c      |  9 ++++---
 drivers/iio/adc/exynos_adc.c      | 29 ++++++++---------------
 drivers/iio/adc/qcom-spmi-rradc.c | 20 ++++++----------
 drivers/iio/adc/rockchip_saradc.c | 13 ++++-------
 drivers/iio/adc/sc27xx_adc.c      | 49 ++++++++++++++-------------------------
 5 files changed, 43 insertions(+), 77 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251219-iio-dev-err-probe-59b3104c8d4b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
