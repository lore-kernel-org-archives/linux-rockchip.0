Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36B94F46459
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 12:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmhyD8Nm1z10KpyowEX9icj8I8TPX9UWIqB4O7TJMnU=; b=3kBG9MpnY0A0qC
	jYYv6er9QpXAVzK2qeFqm4DyZ2atj1ytu9DEeR6kUwn+Ai1kSlHTz975wyzfF93MODgWXDj6BnEnp
	bXjOsemmABlq7mHaWdhtO9IRvOzGoj+Zjo/IE5f+lH8Ps1h1gbSuQtXZky4dYAlcKd714JN/rXcgG
	BdFtIoLGDNTp2KmokI32sYqThU3OxbrKtDwl0ssPHtHIiDu+2ZyE+GlkPf9eFgibJsTgzmqjtgtrG
	igm5GZd48yPMtxD42cYjIuCjQ3LQj5CI1VPITZBk7xnrEtdEq6/5DUvN9q3/0wlWM5tNlf294oVfT
	bvAHeCsWKikbbfWG05yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26hd-00000003set-2rJH;
	Mon, 16 Mar 2026 12:05:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26ha-00000003saD-1NGO
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Mar 2026 12:05:43 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GBoikV3777762
	for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 12:05:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MQeKaS1EcNd0vqbL+A1AzKnmVR3EcoRi15Y0S03BedU=; b=H4wv/95rrUsxz06z
	XjZDabTjstrwrld8qqGBx7o9FhrFh9lLj64r9yIhp7SulFg0ah0OVK2lNdJo5BJb
	3VNvJyiwQrdfrrcduR3enqHHG5yyMJJ8UiBZQc/k+NoPVFQqkRlazRQgWfG4bhkI
	OrremG8TeJvjQdPx0MSGJerW1cljot/cuo8C9jKfG4IKtkHPNv+yLIgjvKlKD3+x
	K1ekrm1WWPsob2i8QxZn2cv4dbLG1kb/dn0PNgwqgymSuwp70bJimSH81kuMNCqd
	x3liWepGHSUprMSU4EFkhdow/DIh1HN2h8miO/oB9c+pztNVBKDEvrhRkTGv7rxH
	x3leDg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0y7wf02-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 12:05:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89c5976a8eeso21938816d6.2
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 05:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773662741; x=1774267541; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQeKaS1EcNd0vqbL+A1AzKnmVR3EcoRi15Y0S03BedU=;
        b=YZCv9WVX6Pv/YfTwH2drTsDg5zXPn34OcOHGshHqRssW5bw9EMyBtSzeC/LzHNp/Oi
         8nq/itwUcSiqHD1/9TgAtEss2D6fXdnbkISRSliB/+3JyOzKQ1Zp8ojD3mcpF+P06r36
         xPyklenPUuX9fjEoy5UAQzKAYV+9m2sY2CY16ii1sFkNVRn3Ds32yWrtLiy3Z8Bp9aCW
         0FoMWPEd0azO3mkPQhHlnHvwCkXw6H3hg/QeVyy5yZqPB9imU/nXpq7vcUOnw3qGyRuw
         UO9s+UWEhPyXFzxB+2mUDM034NidLXSaWtYBwxvEZ9lOPLA/hecqqtdZWropbNarKmEH
         cTEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773662741; x=1774267541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MQeKaS1EcNd0vqbL+A1AzKnmVR3EcoRi15Y0S03BedU=;
        b=sokJtKkvkzvDOQSLA6TRuGnyyQ5HREG56KtCuOaENwUT7TkgRma5vfqP4B1Kkx4Sq/
         vvcC8WNEbWzM/JwS4J4xjob3keiBJXVnu7FlAGq4AvrTfLI51s0mYmNhAiiwshBTGYAf
         jKGlhDA57XKxF/Z+255WW4/6ZjHuPEast0XZHM2Xta/6JxsgEppm0Owd4k+f5Dg5EJ2f
         NTyngrS3CeHIxuiWdxwdxmfDS56dSz670OFa2whbGhfff7NHFzTDR9xhiYfw+jwEIbsq
         Mpn3U4P5IxTXFD8UiBz+uTzUPva9vc6LzquWQOb/Qsvkx568D9GUHWveigA+uIVQ+NyS
         3fFw==
X-Forwarded-Encrypted: i=1; AJvYcCXzMTdpSKul0pgS4ifdZm1vSkYu+luFRb2vTgenoZnI9eBs4qCFaQNaS8tWbVK6/z5Cborkrnd8CIjrjzE7JA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzg2QZHVgL2LIYHy4IxmXM67SfpKEVpqGFXC/S7jqowpgPQZAFY
	VYTOR/duM7S1F+O3l8vohzuXY92II6I2AE//q1ys6gWH4SEDyY8/ziH1n0/pzNpKKec+zZ8Lq2Y
	lh0xWzjZwOQr6HeWiW4LKHw3AcHFjFUZkpWZS4rKwE67cAz6LJArWm7c2FMaF28xeX/BCHfAclB
	w=
X-Gm-Gg: ATEYQzy4ccYGp9HGhBRQd2f1G92RpacQtY5krxnd2gY9mvuZFnPG4SqYXT8a1IG7Tov
	tE9HXfZpUgTygzVq9tSZqFR5XEBX1EQViLcP5TOa1ib9s+lw9ceOGZU6TDC5zzz8cG0ZDok828e
	EknZs4J8mdZkkBxRXKcirrNRYaxix+P1yL2vzAXeqJ9K6fulS4YiSws6Xpnv2COrP+fMM6iJ1OJ
	2ee2Y72bxdnjC7ryOqwLs/GYnTSE4y7s1rdFNst4jbiA0XGiS+AXDaVfe2TCqMnmIldttFmjwkW
	h1kZ4+mrhDfnJaYqdnjpMe+mE7NGHIV5gyCnGtZYGFaTXvC812Yt0zqBu9kGW8Sb8oSZ3D8cbrK
	XizCstkZx90kLhhWxLOqIo+eAkpi5axg7u5ENRZiTw8MtNFsNa1w=
X-Received: by 2002:a05:622a:2d3:b0:509:1dc8:e9e7 with SMTP id d75a77b69052e-50957e4fc81mr163338831cf.51.1773662740806;
        Mon, 16 Mar 2026 05:05:40 -0700 (PDT)
X-Received: by 2002:a05:622a:2d3:b0:509:1dc8:e9e7 with SMTP id d75a77b69052e-50957e4fc81mr163338181cf.51.1773662740311;
        Mon, 16 Mar 2026 05:05:40 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:45fe:3ba6:f90:d951])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe2273d9sm46468513f8f.34.2026.03.16.05.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 05:05:39 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 13:05:07 +0100
Subject: [PATCH net-next v9 2/6] net: stmmac: qcom-ethqos: use generic
 device properties
MIME-Version: 1.0
Message-Id: <20260316-qcom-sa8255p-emac-v9-2-c58934e76ff2@oss.qualcomm.com>
References: <20260316-qcom-sa8255p-emac-v9-0-c58934e76ff2@oss.qualcomm.com>
In-Reply-To: <20260316-qcom-sa8255p-emac-v9-0-c58934e76ff2@oss.qualcomm.com>
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
 bh=5Z1ERLj9DtpkY3L9fjZNwikcGQ6rrwgdETD/VN6J+aQ=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpt/IFzbQYI6vHh10CWsGJxMAjU0/ZVzCDhmnBV
 hivu5A91MCJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCabfyBQAKCRAFnS7L/zaE
 w+vkD/9pL4X60sTfNeueDAukikraft0MIkL45kt3+a5pxve09qNywhg0oeLh4dAFFxzl/3y3ygo
 OV5VLkaq4s+pu2o3D5FlAa5wo7IoNsIeq4G3e/Y+q6EtUxNr2S9cW4q07a6CIHrtsGfZ49CwCHb
 nWRa3QH26koOR6cJF79Pv03TAaFkwJ2WErO6PewlTlOms5WE0JribiYsa4Df+SiNuiYk+MkSEmg
 3PlwJimIrLg+aH1c/QXxgJTyLQaFQaXrS4FTN/whate7IH1V3xgu89R4cBJlZEe+jy/UrWTzRLI
 2S/VS+3k775MJSVm7J+ZK++RN2RrRNM16Hfx960Ad7TH4oWAb4jgN6AwddKq+Dv0DULyxNww0Av
 deZ+XLCsbuRPo35wWbWQXrXqcXTfKf+fVyfrxazAWSzDItD+koyKBbV8GDisw6CLh3mblz0CtMC
 tzljCNXp88Z47y4Dn2EqKYDi3vEN7paUWrQwgjasVdBQ+GGt+6LgK9vNgTTQfdQI0tMY1bB9++Y
 Ts/PtMbAzkoD33fmhFu2YWOqYwr2hUje2ZMka7iD12jnWDnw0etKgiudbhCmD9Ja9Z3ZLbQ0RXq
 BV2qJjOUElCAYNYsZdEk5pWDtDVr2bp0fEZJolbUok4gFTto+dlAK4iV5NI6GepT7xqDLZNQl0/
 oGeX7UmdRX824bA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: 1x7_ERoJLVz7MxVwaZzEvgWsun3rbbhW
X-Proofpoint-ORIG-GUID: 1x7_ERoJLVz7MxVwaZzEvgWsun3rbbhW
X-Authority-Analysis: v=2.4 cv=D9xK6/Rj c=1 sm=1 tr=0 ts=69b7f215 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=AGkLNbZTeN-MX8W9OO4A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA5MiBTYWx0ZWRfX2EMH0ywLI/QP
 jXDANLFpjyj+5dWwl4En28tqwm1iQHvXbErEy/sfjyzX1Px71SWG/Fb8TYlK3grh6ZDk3v8YhuQ
 id/4e//s9ipIx4dCrCsczkFKsFLQ97Wtr57p3LFc8ry/sgoh39GeKV66JvE4w6nzuHbaM0/pbwp
 atlF5KAprCp82NAjOyFcc7lA++oVyT9c1esR7GQvQswKMBnJe5uBkXeM1hIlH1OqbOIUOrRHwuR
 7BiBZPF7s97ZBrGczsgklbAcx28lV8ecdvJqjOMT0D9nOYQXZPCtG7dnQALdeQTScKAw6SYzApV
 FsKDHtKTrYlZwc1qLp69hT2OP03pWIz9GtAAuTfwyjJf11v0ndYIE2CjBTFNP/TUqk140HkxX4v
 i5cTEeiwhvdFSJOz4zZwVci6v51rpvtk5wVVBxiE1lXqiMgkU6xXDL2OXKyy8lycu080DC7Ee2+
 EuKF8Q9MfaI2+0gJRQQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_050542_457777_A1317025 
X-CRM114-Status: GOOD (  16.44  )
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
index 07088d03dbab5bd1abf66e9460613b839c1d565e..e2af4fdd654340d618477ed87d3889dbb9aab456 100644
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
