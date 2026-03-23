Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A74F7F46101
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 13:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gLd1UOoq7ky+hK5gQrTIs+78uENyuEGju8NrNdpH24=; b=wBDTbkVeZxnEP2
	5t/0bc8Q0jhIUktVwFtoJL0+9hIaZ4+I15P0vWyiLAvaSoa+0tZIECrNAmUFnDRIbpL+ATbSGO/7b
	2TSPVlU0n8hwVY1Sknj8fA9/fAq60lfkNqTybmFvj9kmiKHZ8q2t514pl230tTG3s0hpbbPtGmuqT
	24fX2MRXOgJzW4Ky6i0W+BFkcmsJOFHTSp0m5m9IJaGehwy8204/dXA4j6BzEf9hQf0fqhisVF+lY
	CE0S3HZrVtc4VNLOaA+/dPeispwRKdqsYDAZRAYW+++eb97nz7Fkq+dI2ywYYyVa49avfGl6+xp2F
	kF9QYHCethIudOPyJJlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fDq-0000000GmpO-46sM;
	Mon, 23 Mar 2026 13:21:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fDk-0000000GmhG-3xKo
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 13:21:30 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NDC3rB2542444
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 13:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yle54aasT0KAyqE+c56KG4QyZSQeSkBHtORNvORo1pE=; b=DNyUHVHVyPrHUr38
	Xak8Gq5GJ3zIqN8aI5S8N5ng4jsCxFEFQa+hG7ZyeZjAsKwCD4PMZjatk3vs0iiM
	+qMhA+XP8aDgi1rxxICX2A2N5CsexJj1YEh0US24LYYu8RKuQXybtLbQ4CVbUCUK
	fEwQ0123+8dSSgYwfj8FKP3sFJfC74sCdDhpGDNlWlr3iiRdxksTb3nDHB6VUl4W
	FX7yzZwoeggxFMDFrVwtfNJgTkC4QUSSLO7TtRBQQTs0LmvFAVV/79N8aD6zNPvz
	UB1KL1PvUWfr21GW9AVav7bnkME/0fNYb5xW1HRE+XNjO4PiSYBEryZNdV6OtX63
	d1FzIQ==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d35r2045j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 13:21:27 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-950be47e8c9so483742241.3
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 06:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774272087; x=1774876887; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yle54aasT0KAyqE+c56KG4QyZSQeSkBHtORNvORo1pE=;
        b=IYXPoPq1EehWa4tdkydcyhqTCxIE3xhrBXm4k7vQO6Az0Nc+iHXB5alrtJN5CnLmft
         P56Fu3UVUDw+nzlc+EjAYBob7Q3b4rLTU86e77487hTqctUUV7Y3q6hGRZP4iW1A3/Yd
         Nmi6p8asnEep798hRJ3QtAmfFj+Gc0cp3DspmdN6weIPMPBKiGxuw/XX3TE6j4XhVUgi
         lrRxblVJ3tZHgbKTHGBtki2JyJ9mwBrru0mzeSj4frlS/jjherKuyT4Aqutr07tvTvGB
         0k6kG64dDhSDGmYWnIW4/TLwF4O5fUOEMjovvYNQD9nE6r6MHU76wIiHnJGmVl2X5Z+X
         hR/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774272087; x=1774876887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yle54aasT0KAyqE+c56KG4QyZSQeSkBHtORNvORo1pE=;
        b=iZVEf1QUtSrTB6OvyZy9tJ8w6vUj1dh2n9dtiSkdZXjnCkp8YDVfBkxUt4N3h3Ct46
         GKXGaPw2IGi73nNpv3I7tGngq5Ytapx9s9yyxO8fhg+PC9OxfdrVoEUU/AEwc4DJYO4R
         uOe6zQ754cmF3ai+/4BP6S0RxLzYzJREClc9GVvUtDPwYBldAEldArlxzoc+7r+TLCkj
         u3LrRlghMdJHYS6gRxwtxIf3tO4Gxr5IcZWTADf/wq2GiO736cMiLxrrax0j7vtSdIxH
         p/E/GP9kIIc82jIWDt88SkZ1+CZWTAwQqZ0nQt+Tt5zoETrmwcSiPLA+VJhYTeZukN9p
         R57g==
X-Forwarded-Encrypted: i=1; AJvYcCU2u2H3eMVppYPyUlY1backsKQ80RaYgjHS9DqCIy9fEAj9+OrXs2WnKt7BHZLDZa6veYizOSOUpe+OFI6byw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ8E+B2cX54ldYddeybvmZ40mxnTg90ArYWriOKC+Dzeyv39oP
	7LUCcQAQqkAs9IxF30gtM9pUqS0SjYGKw1qxgupQEa/NT/f6bKYCmTuhIb9KYTahLS4vOR70SMj
	Fdb4Ayz5wblM5xQ2dADWvfbJl0E9ZZaghcihcWOTKiXZqPhC1KlK/EmgaQX0Et74Jx2Mh34GthZ
	k=
X-Gm-Gg: ATEYQzyHVjMb2L8nj4xDO8x+u/Ai5uRTK0bC4/ZDsey1BG5qx4snG3fdMPrVZU/BHXh
	R+0MDytMPKlD1oxA1Z5ycsYLoGSwAPLJhq2Q7gudub0r6jqKGWdEdKktUsLxBIJzwlgUG0WQOMb
	PHqXN6p/TKW52xe9hVCI+aTmg9jXuNJPF0W7l+eZdssXCB5BaSCYR2+DMAfWJXE+pqffDmIYJj6
	fPfypUjem5lpqnsUlnOS2co5V8dfJL0wifGm4SyDE7BLpcWMfzwkPBmzsaFQy8y6+fSjwu1rcxU
	yTQfUHVqpW/+YbGXLP0BSpueAotDpHqcqq+AgMBKOVIiu2xk4OZwSn2f78DYwHoK7yJ1LjXEm3c
	qNCP/we6rqJM6TfX86vkZxTvfNhzIaHQ6xSXPH2TwXSTdQyyft8LD
X-Received: by 2002:a05:6102:304c:b0:5ff:fbe4:8a8 with SMTP id ada2fe7eead31-602aed054camr5615932137.25.1774272087237;
        Mon, 23 Mar 2026 06:21:27 -0700 (PDT)
X-Received: by 2002:a05:6102:304c:b0:5ff:fbe4:8a8 with SMTP id ada2fe7eead31-602aed054camr5615916137.25.1774272086743;
        Mon, 23 Mar 2026 06:21:26 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:f9a0:d7e2:7eb6:79b5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9832f44034sm503102066b.4.2026.03.23.06.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 06:21:25 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 23 Mar 2026 14:20:54 +0100
Subject: [PATCH net-next v10 2/6] net: stmmac: qcom-ethqos: use generic
 device properties
MIME-Version: 1.0
Message-Id: <20260323-qcom-sa8255p-emac-v10-2-79302b238a16@oss.qualcomm.com>
References: <20260323-qcom-sa8255p-emac-v10-0-79302b238a16@oss.qualcomm.com>
In-Reply-To: <20260323-qcom-sa8255p-emac-v10-0-79302b238a16@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Romain Gantois <romain.gantois@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Radu Rendec <rrendec@redhat.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org, brgl@kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3061;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=zcR0RnjcSI1SgFgu/C5UbX/pxDqfJ6EHZAvAye3xmuI=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpwT5HySyt+qzXu07TEj5NXpUEZpB9c2m0vaFfT
 E1nGa2TGUqJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCacE+RwAKCRAFnS7L/zaE
 w0wgEACygEU9p++p9rMQwhvugYB8IPaUzeQ7GkVztEIF9mqKAZo0I+UG9krsT5B2LLN1vr1Fd5S
 x35kFvAKbLN2/iPJKOHafYlD1GNfuQbTdSSzHbsh3TmrpCaBg2AK3hSIHCMjgKnfiw78fce6mSj
 6MoQpIT9wWxXKMzk02wwTU5Q9lfJG3f6EP79Srfo7laossl1waDXZ5tLMKVHyLAm5AL3erk27TV
 zwTBzl2tiB2bO4s33mHw+G8d9ygwWUT4xu9ZYTTTMHViiOoy6C5jh0DzLJZs8t+8d0twIu/Rbbo
 F2RCLFH0SyGp8WD/O83ulomlWSTdeuUIbkDn1KxjogRyCGa+bPK42XlN53N6PkyQZyQK92mBc09
 EgHwBByqDFMrLFS/cgLeHbvRp84htOOlMTeztfR8o2TlaCQcOgV5xc7VXcoRp6l0xUVk0x2pWwE
 xZKX2U6Lfa9zreopc0z/HIva9mlvHWWzr3dgOmUN/7LQSLzOonWwfPhT08De7wGSXNPG+UkIyKW
 SZLHlDqcF/DtWnwp2IUbYHx9SG9ZU+/Jaqx517wqcB6l5xLEqu2hUl1CSkYjrjtXjAQfxSMnSXK
 lq6JhO0zY66r93m165VwOSOVxdtPFTMiaFr1SGBvyKxvReFi2r19OotOw/37HUw11K//83UGgul
 xzQTM+ZNlEtnpHw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=VvUuwu2n c=1 sm=1 tr=0 ts=69c13e57 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=AGkLNbZTeN-MX8W9OO4A:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: RGr2yN7oWCodcKaUFeElb4ylDkC7NolB
X-Proofpoint-ORIG-GUID: RGr2yN7oWCodcKaUFeElb4ylDkC7NolB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDEwMyBTYWx0ZWRfXzTC6paEJhAm9
 qx2nk0EcoOvFvs8+pccVrje4Qk5gfNwctSZo8jUOxyNgWHQtFDKeUFonV0A7kFXkbpwtH0l3BKH
 NNY65usjPGKJPpDgeSgDKfnlztOhjzKNdXK1B0c+Y9dSiHLk8hC5H/ErMb+kDBYKQcV8IRiVrJI
 ZBbfHiCsjRvJnv3Aj1WYW2UQZ5v3VroAXjp79ZpAlWWbbEKczDj5+SqvgpF4Lg7gUblYbXwfJfJ
 TAwosCyyGvCVyySlaylIevmnPzNdqYgQAISwGQfOExM0O/Mxz0ee5UiqYK3ducu+uQedo4A8LDt
 QezmJX9lJOCkFJJeca5e351l3kkqr0KiIVyKXrtguVrc99O4/7rsrk11Vfpryj7DxWPSf5Y2rlw
 maDWwHk3hyDH2/z5WqrIfKtaXwWe9zrUIrO/9nCdEg6F07PQRRDgU/3LnHxPVAzBkxvcq53a1m4
 uywEuIyNrvkfA9Ppehg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_04,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_062129_112917_7BCFD3A2 
X-CRM114-Status: GOOD (  17.40  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

In order to drop the dependency on CONFIG_OF, convert all device property
getters from OF-specific to generic device properties and stop pulling
in any linux/of.h symbols.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig             | 2 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index d3a6ab7383fc1e1b2e4b12c670b12a8ad1606e6c..4148805a82b106471a25f9496b60be5bb9ce5c00 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -135,7 +135,7 @@ config DWMAC_MESON
 config DWMAC_QCOM_ETHQOS
 	tristate "Qualcomm ETHQOS support"
 	default ARCH_QCOM
-	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on ARCH_QCOM || COMPILE_TEST
 	help
 	  Support for the Qualcomm ETHQOS core.
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 3ccf20fdf52a8ec4649b43ade8ee7b85d613e1c5..66fd2ed2c2c8428694c07d89220d0e1608546791 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018-19, Linaro Limited
 
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
@@ -728,7 +728,6 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
 	const struct ethqos_emac_driver_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
@@ -778,7 +777,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
 				     "Failed to map rgmii resource\n");
 
-	data = of_device_get_match_data(dev);
+	data = device_get_match_data(dev);
 	ethqos->rgmii_por = data->rgmii_por;
 	ethqos->num_rgmii_por = data->num_rgmii_por;
 	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
@@ -818,9 +817,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ethqos->has_emac_ge_3)
 		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
 	plat_dat->pmt = true;
-	if (of_property_read_bool(np, "snps,tso"))
+	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
-	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
+	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
 	if (data->dma_addr_width)
 		plat_dat->host_dma_width = data->dma_addr_width;

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
