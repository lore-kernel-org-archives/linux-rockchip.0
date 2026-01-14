Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F955D37E4D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIGk6AEhQZknzSdABy780T5h4H62BPGLET0lGfrPM7E=; b=YZmyC/ZBKLOEA0
	pAS6CNc7w7FCeVCjhRNnk3daB7GMP5gi61Rn6tZ9DXujmb6ZbsbT9S4Cle0oWA81zSksyknNnxxip
	bx4UP7ZghYp9FPim99MzKU49KOQrcHvapNgCUEpUH7rT7nDzuYAtrxFo1Ae7OqS+kZZXPKE1ixBmh
	RXB0LQb6LHi6NfEpAQ9kORrv9uyODb5tTDIn04qo+YlophIbzvFTKsyTz61WWcNRykk0lz4XjS5Yz
	uMOUhfIwxTSh5lWU14JmbS+BkFLJpenIbljLwzQxfk7YE0mc3SA6Xg6CbQTOboC8O5ofZjVpB3Uvu
	UiwSurVAtHDT9UG3YzvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pI-00000009hGE-4BR6;
	Wed, 14 Jan 2026 15:30:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pE-00000009hCO-1Za8
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:25 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EEB6p02497475
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RTM8QP4WDE86GBG0NkZNuey0Iun+lulG+w2rdXJWnfI=; b=AzCSBoD9J/kAgn5b
	NYPVaY6w6+Qs5o+wVDPdmbCawKNIhRSVPAqH4gl4pai6bAKuHoVYlq7/WKsYLNjB
	KQrB6jYs0vWaY6+W+3SN1noeudRgeyidixzfP+OYATvIPWpHkiBDpg3e23JWTX1p
	4fhGq2IJnlZ5KJqbzP+NLxCB5Fc1xLFL8bw49SWoU1rGDiQ5rHou2y4mHufOcRST
	Ob3AkdvukE7IKJsynwD1ZBbOatQM6y+aklUfu6NiWhUft8INyUsny/4bx+2bR/QX
	ghWJPg8SbaF1jmdhlrH19G4Z/HY6XW41soqrc0WF1wihTWOXPxte9gbGFoCEMnSl
	JSycfQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp16x2xu8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b234bae2a7so2469149685a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404623; x=1769009423; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RTM8QP4WDE86GBG0NkZNuey0Iun+lulG+w2rdXJWnfI=;
        b=THMBcpy0V/204hG6TOrsrWaw2B5ImRUpxJ8nHxkqqo9i+/hlz3SOovSDIt9hPxaT9T
         7SdCA8jCQPF8+tydbuAupWJPa9yDTJ2FvMQ7Ar4K4cZM1zrqK74JamorMebWkXKxm0J6
         QqFexmtyKTVbJLzGTopSySrVE/4/6FQK6+F8lESMHlpHiGYKCnyuA4Yx6wXk+Sz1AjZQ
         AzJUyfv0oSpmRp8SghISnLZh7NX8b5V/k5sucyjH7Qpv1Jp7SUCD7Wtnlw7Pn8/1/KLU
         xwXpgOsW5uEpObtxiPB8MyGocqYm/0JIFLByTb/C7Vk/ITulLctShfSkNuQOMwCYXV2W
         NbfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404623; x=1769009423;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RTM8QP4WDE86GBG0NkZNuey0Iun+lulG+w2rdXJWnfI=;
        b=V82/ytJ/fzyvmr43HTo1+UNlzEjKzTbIWQYgOlwH2XaxIaa7hjQHSa8uy9/T7tK1CU
         W4jUkV3WEVfKbkAyAmIjbkqVwDlxP3BV43FAidM3mts5kYZqVB22UNoWfksdCf/FqUX4
         e5RafWg5J26+NpfRPAVp3ke0TDA7ptoHl9NrnO6NEB7JfeNqXc/8Pnepb61mpvfHbkZO
         0zJNcDC35CAEhgBV1Q6bL/jusLorIbh1BNjJdp+qPdbVh2XOVHi5dkNffujSlazhcAuf
         K4e2euui4+e9MnZdl76P6gZXZqh0wzIa3GDKI7ln6F0QS1uazSU0+xayzHbw5jD4u3Sf
         sLpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrSlTCV8dM8c+xQu8wPFHnPl/T6HXyiCSANzN5ZoUUBECB9cPcEmttBLa2zueddjlC2VfDdhH36SGkvdcLew==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtqvUIB2vcpV+mB9gxbEmMWxSg14hgEOIpqX0/hE5vbcyz0Tvb
	UA5isEE/C+gz9TST+BJhPmriV1aKoQN9XsHovpXjYnPMGRnGEXCvbhzPZu3WIda2hTqvmkOaEkP
	Y4dxDLj3mFrhYNW/kYN0nQ/iPu7kWSv0Kk90nWPJV3AtJd9NXW5bBSZ4urclX8eLSKOgehBJFuW
	A=
X-Gm-Gg: AY/fxX5WzvfMFBAOlO4pKYQLBLmfnVR7LinqlnsPDpS77AWjfXTJkmbp0qgizh5ShiL
	mZO3neMpkpSxPktISKV13oW1SPFWHlppuOExfdo/x6M8UomPm75gDITZCq8a565VblF8P0jXWD5
	JZFJWL8HOjWNH8mFOc73DD1h6qNSNDrAJ9JDNr8ohVVzXOMYNPXK5LNuo8MTbc3qfkyMc/J4Axm
	AuH6kGfqhH/dEgBOC7G7mcJyGKodLGHQJIzTCckGlJPv8g0t9d2LlsWNarEwUHzHiLod8CIupTU
	WpyCTx7sLBc0FL/RCg8ccwWa7b959wdKC/47Kgzf3VsamUorMfc87Z0sL1jay2qdXjaTh6hngaJ
	8eFmbNuAqjbUtqQ8hDiEo3VhioRcXiTO3wg==
X-Received: by 2002:a05:620a:2556:b0:8b2:d72d:e41b with SMTP id af79cd13be357-8c52fbdd3aamr433297285a.44.1768404622680;
        Wed, 14 Jan 2026 07:30:22 -0800 (PST)
X-Received: by 2002:a05:620a:2556:b0:8b2:d72d:e41b with SMTP id af79cd13be357-8c52fbdd3aamr433288585a.44.1768404622116;
        Wed, 14 Jan 2026 07:30:22 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:02 +0100
Subject: [PATCH 01/11] pinctrl: aspeed: Cleanup header includes
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-1-a14572685cd3@oss.qualcomm.com>
References: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
In-Reply-To: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
        Linus Walleij <linusw@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Hal Feng <hal.feng@starfivetech.com>,
        Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Basavaraj Natikar <Basavaraj.Natikar@amd.com>,
        Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, sophgo@lists.linux.dev,
        linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2516;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=BOg98/1JJXf+vGTTUwHW2mMQjVbfd13nI6bPXirGFB4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aA2bajX7HJFoPmqSFCGOiGBqLJt6NM8LzAd
 XAIqmeyi3uJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2gAAKCRDBN2bmhouD
 1zSHD/97RdnKd17RjQ4GZXnl1GK1sM4fAIbv/Er4l/nCYrCsRStOmpsNfQQNQ7KbiFIy6ka6EQQ
 RmCybnj6DI01+PJ7LKfZjIhsVOdQRCKSSRsSOzZ2sWtH7UtF7Qco6eaNduwhfUDaSknYVE8yIKS
 q89qtgMa00kGUI0EqHfiZ8qCSnSWxZL+xPFwD+VaK2PMANj3eijWok9TKqlbKkGTmMKho7c3WOD
 kkTSfcVXpAaccbQNmgEAkCUer3aTG6Z0QKWdyinivpOZRSpzni6zy3iZTvH5qnQ5okqQ8+u1yVL
 ZcUZ45bRE9Lxm2YaqTb/8FMSOpMAAXKgnB8X6QA+InLQGRJSNoaNEwmu6nNF/vR2K8ztj6axVXY
 0vmcCDYOnJbcX5YBUAIDooVFlUG0XDfrGrUzdObWOPhSE4k/LWR6KvxxHSM13yiEttuiUh5j5Wc
 uyOWQQHPn+CHVSxzd/HqrsGACkpKblq5HaElBupSYgsEcP/sLU1GEEwHHqCpdn+EPpwcITg6hft
 gzyvN7ZCzN1S8gDsA7ykKbGnB5dKBWHADzwQtqQEP8YvZiOnvQuPH0X2k8Vbd6e0GSxIUydR1xh
 u9u70zyMvvsb2RcwG5zaIi3AprWfNihRSpPswPd5WpF2M6sS9zQbZzeHDly67NBW2wG1jPitQdo
 U7H9zvpSdKlaUmA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: -kq-Quno_QBCpb7J3QaXF4XWXBHRDVbe
X-Proofpoint-ORIG-GUID: -kq-Quno_QBCpb7J3QaXF4XWXBHRDVbe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEyOSBTYWx0ZWRfXzKqFwK47uspw
 jClrG3/tC3VZHGCbBPitAGCPkUPuLfG0TCHarIh9Z+hfJhK6UWUUdiqBn22EmyTMxIW2uXgDLFC
 YRXyVGATWw2AA9Mt3ZJ2bXBIoO9dLAKqGeQEib+yhEfuureMqbrfyi8bBB2T6K8RUcUwojrANxC
 t+C3ElXH2WBSPagg6Dpak3qPB1ktBgaqcOGLZuNnFWa9zHL0A+jn1R6B/Ay6hguC84Nu2MEPYLj
 AU0j0nWKT50i7X0Cj5gjE8qukd5oSApHJ3IKl3V52e306EsZsZG8N7v4L2YxRmh26Du9gSn83S0
 BuBtzWxnov/g0JeZj1aXwijdBpU6dp0cG1iAsihOtM180W1fczojDpYFndjDHlMs9g4HIvb2o1V
 cy8hyn/p7Z5VwBBrROavoYXUPE2jXTuRveJQXg2MnWcqNai7fgOiTFIDkI4eskgufB2xV22VgxT
 j5j6F4TD6zy4LphR3qg==
X-Authority-Analysis: v=2.4 cv=JvT8bc4C c=1 sm=1 tr=0 ts=6967b68f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KvQaFmux51imLjMCrhIA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073024_422756_6CB8C734 
X-CRM114-Status: GOOD (  11.61  )
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

Remove unused includes (no mutexes, string functions, no OF functions)
and bring directly used mod_devicetable.h (previously pulled via of.h).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c | 4 +---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c | 3 +--
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 5 +----
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
index cb295856dda1..f9d8fb1ab1ec 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
@@ -6,14 +6,12 @@
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
-#include <linux/mutex.h>
-#include <linux/of.h>
+#include <linux/mod_devicetable.h>
 #include <linux/platform_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinmux.h>
 #include <linux/pinctrl/pinconf.h>
 #include <linux/pinctrl/pinconf-generic.h>
-#include <linux/string.h>
 #include <linux/types.h>
 
 #include "../core.h"
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index 792089628362..9934ef6205d6 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -7,14 +7,13 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
-#include <linux/mutex.h>
+#include <linux/mod_devicetable.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinmux.h>
 #include <linux/pinctrl/pinconf.h>
 #include <linux/pinctrl/pinconf-generic.h>
-#include <linux/string.h>
 #include <linux/types.h>
 
 #include "../core.h"
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index b0c7e4f6df9c..8cf61aab81b1 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -4,13 +4,10 @@
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
-#include <linux/mfd/syscon.h>
-#include <linux/mutex.h>
-#include <linux/of.h>
+#include <linux/mod_devicetable.h>
 #include <linux/platform_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinmux.h>
-#include <linux/string.h>
 #include <linux/types.h>
 
 #include "../core.h"

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
