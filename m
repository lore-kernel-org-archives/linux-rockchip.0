Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CBFDC43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 13:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSIFI2uepW5fuJSYsxVR3k/aTbH5IuWkTj596MXGKVc=; b=ZyOnFy37PV4Jpy
	JW+9XgzPMqhMnGKhTFzs3swo3Neq7/af1oBTVDi0tqYcs4VvgHkDrOD+Yrpl1e+388swErIE/My9k
	Yxc4Pt+f3NF+8vvVPgkKli4cUvEr79hE3qtbqKSMlH46ylSGxGBouFawk3ILWBRymF5UT5uKj1bGR
	3YAgxm1eS4/OtZfu8i2oLdCPwSmv7kztzYHCup85Fq9REKiLmLnmBcvXEbdGI4b+D+a0mE7EAwpUu
	kJpjQCWR+8aCZW4O2Iga71+UgtbcON3z7Vz6XyB6scuhyt00oIekDcfOmchSrsucRpe+264dqjzls
	Im8MlGLxVpnR2J5Nkxig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGg4-00000009Olz-0s2S;
	Mon, 13 Jul 2026 13:26:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGg2-00000009OlI-00QL
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 13:26:31 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCDeI21480748
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kZVfYVIvZDWgS16VLGdHQkMZZirnrupFmTaCF7qGBc8=; b=LPTTBmz2tWUvklQZ
	4w8qumFJeCIts8FsDBLzgtgmLmYfaPEXCkAMXr83lS9TifnOO8dfBqTqGLVJZjjE
	EaYmGmv7+ktoqoxELlKoy+2i4vzxFyXaFHbMUCPLts/v1wrGxluhlEHQQHy70nfn
	lGjL46Z2iuMJtbKcWgy6+snBXl62qpzQVPaP1DwTfXtRjPn6iQ6+VxRRWGVZVkTH
	+RthcJQasZ9G+nPUGjZd/L5djbL/UIpdWO8Lhc0X4c+lQfWucvS0tF0f3hDgr7N8
	hohiDIsCwQz4sN7faey4JNeqBMmC4eIfNiQSc6gCGD5z7CznLNbiX6ZihcnaPbYM
	7yGoPA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcwavrvh2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c0ab07320so39328711cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 06:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948896; x=1784553696; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kZVfYVIvZDWgS16VLGdHQkMZZirnrupFmTaCF7qGBc8=;
        b=QXA1FE6ng1nSR5qbu3O4SaTsgIF09AbFFQiO0giKD7WxWNtGuuWDT2WJ5eRyI0KlLK
         kG+ooy+5oPfCcwxkl33oWqrHpTG3170RN10IcXNp3xDpHmkgO/2uLdvCZrs+FRq/cPj6
         JPvfB/Ea79GU3RkQhrhxvvo4Co/doGB+lKtyP6ZdYJNkTgWTg4BGNwWbm7w/C1Tc8SdX
         6XiyoOdZqflz14U/muLqeDx987N7X671pW3La72WyoL3iDAWiIRpx32bbewMeLMyCsQl
         rgx7z25+LAPYDAORluRJ/ptr3J5t4su+KN4tW18PS9uFk+8sjc6yMkAZJtaig/N+zZaC
         JJ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948896; x=1784553696;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kZVfYVIvZDWgS16VLGdHQkMZZirnrupFmTaCF7qGBc8=;
        b=X5zKEHaKgvoFm4/TIE3C7Hx0Y9Sq+CV5FozZlpmnPskjxgOscHEV6yPwldkXadBn37
         1j/1y2msXPzkmWKYIbySbUx/dZOgUeMuzAgqPQ+qfaqDk5JVuiZoaWXw9wTE0ZBA3+/h
         jOmGUXUe6GrQjiYtsxlU8AHQ1tNnE1B4G9UFI3nG9rpVzbpeK+TeHzQaVnO4OL/dv64K
         obQ9io3IqVyBD6dWsQphlLF7ycSyV5Jhoig7sN3oTMUqCru0v4noGqGZLKKuCHfHUbRj
         Po7Ln5L2wKqRiozgblhYyo0h04Ti5fQRh8moSiGwXmdMVKbvLkI8SYlbKH5IEU3/iBuR
         Uslw==
X-Forwarded-Encrypted: i=1; AHgh+RpbhLu810acvDCDUiVzOdYhWlGRVHQGQB0+vOfpnPvY11idsy7kRFYVVuT6j5wQ37ncsiBqlVybtw+sBcnPoQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ02lA7OCsWAR51Fj/ND6fBYAeQZYymHBnArP8rlxZMUaLPaw0
	1+Z/glLwMLAX8sd1p0mQzOASXSR7xPQHgr56/lwNkpM2reIjhhiVx86/n67v42W4nRF/pf62/ys
	QV5Ny6hXYNnOkCQXMCfEaxqQl8qV0sbHu3g91KKAWCQ6aVb+ymV6iZXiap6yfbrU5z3zTS+AlQF
	o=
X-Gm-Gg: AfdE7ckkoQRh+JHs7IXOJ5ovmHxiQDzAIDrHtLUX/ReG2rKOncSiNvkn/LiT2obWcls
	yMPtfzDjQnuJUXCqSlCSCR1vDGTDmhU2AsGW3mRTDwmWyh1zx0TXjSQVAFrRdOd5k7pO+usA1fi
	bM16Dja8n5TdorPTYtxd+14m1tXg95nhsYRNkLmW343poS7+TJeKI3NfsvFbqzdRNCkbGc7nmlx
	f90fumBbte9HQ4CMGa8amxVDAPgeLEFTNXy7qRLwvOLcfn4hsLqqRZ9L3tnPacvHmkPARzZ2cfA
	yQ/UkQF2MwLKlkdYUebd/yuGO2ACqz/A7Mfii8NrWSWn/2mHFVejnnhYUfY4Md7CxeHikQG+N6/
	cCMgXA+GB0lsnKuGd+3O2ukCw5uT57xaa2AcUMjIj
X-Received: by 2002:ac8:5cd4:0:b0:51a:8c9b:6499 with SMTP id d75a77b69052e-51cbf363dc8mr93366211cf.61.1783948896305;
        Mon, 13 Jul 2026 06:21:36 -0700 (PDT)
X-Received: by 2002:ac8:5cd4:0:b0:51a:8c9b:6499 with SMTP id d75a77b69052e-51cbf363dc8mr93365531cf.61.1783948895804;
        Mon, 13 Jul 2026 06:21:35 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8881:83b8:89fa:1a2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3dcdsm354561715e9.3.2026.07.13.06.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:21:34 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 15:20:37 +0200
Subject: [PATCH net-next v13 08/10] net: stmmac: qcom-ethqos: reuse the
 address of ethqos_emac_driver_data
MIME-Version: 1.0
Message-Id: <20260713-qcom-sa8255p-emac-v13-8-119f8699ef8e@oss.qualcomm.com>
References: <20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com>
In-Reply-To: <20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com>
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
        Bartosz Golaszewski <brgl@kernel.org>, Radu Rendec <radu@rendec.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5580;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=6sLA5MwnRnvx5ahGg42dP42VZ5Uj0hEZ80jvCL+QkJs=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqVOY7WoNWK1fKVT3AeUhvoZN7mOQTGCailFb2O
 0U8Uq1MWjyJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCalTmOwAKCRAFnS7L/zaE
 w1bJD/9rL0/b5pecDupw06V5+gDcMleg47Bp4Mj7c0bklOTgY38+9tAIEY1SLjLB7HwKOq1nqO1
 dq4hv8Fzi1RD++rxkUrQold1tLfhGWfOD7AWhFokRPSl3ebXb4UJJqBLEUpybGawZXGb83TjRQp
 TqQuY/OFOse9hQpLrXmnjRa7HhD3bpWH03G/U0OrEuJgSkZTKivy9x9EBTukzmONTUI4CDKI5B7
 06IMnO8pk62ZFboVjxTYIkcE33flA06idPLRtgn+TLMo0HUbjS9ev9F66IQUB0Wf2oI6cj2F9HQ
 bT0Vo879IpyBDA3UI8/bUeT5ZpHpMnag47OsAvtCie56SMBsYzQlpx252so7ZAYKsYZAAKndTCt
 02Gsy7+tuMhxZLaWxu25gb+eQVAcPjjeGVKfXRDRQ2llgESiKBZ1suHws8QKRO7a/ou3vEcbSvY
 TkjQzAmNmDN/31aYfD9yGiPkwzuCc3iN4Cm2svIMRR59VtUGdi+das4vQZ4AbF28v3ka7RtPJQ3
 tutb3bPvbrnMITPys1sJm0UN1M6xGLJFAky2b/TtJFqs8IYm7ABoVAMDEi73Z4+qePbfSVhsJO7
 b94O6zEbexT8kdm6o+6NRK4c6kovWN6IfUrXXTeK57CoDiEsf4wzC81a33bYQvAkDNk6St8CbHB
 bp1Zor92Ha8l7uw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: tEhtb_y2mXBMAjWpX0Xnykpep5j_bdgd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX4tGP9UTnDsze
 rgrEGIW/1MHU9uuFvCMDjd/lhVWaGrKHOegU5+rrWpON4F25o/A93uBwD4fDbLTEkxzqDwfBefg
 WzaoP2AYWS2Hx34yv/rBNt404HiyB2gHE3+DOJHKz7AyIMbG0ze2w1NiR4lSai64dWOvDQpveJb
 oP72D27GTBXRG8oFiWIdRcM3jssalOJEkgl9ay4Qc8u2QJpjW5ABxWZnEMDZikI+ly5vFysAs8i
 RwVlDOgZ9ib6sNix9vjMCWND+jrQsAoXtD54pD01nMLIWexmwbwbcCdic6NV/31ihQFqL6DOw5U
 7+8h4yQetkexVGxjieWOfJSZPEKgkJoJcX+slj0uXXkFgYT23A8G7EcZiDhooExgr+G4Ud+lpEx
 qwkcQfrEWRUKWtOZrNNnbnfYGqW7miejTSHhqQAT2ngJUUyiteFIG7JVOgXpA5NS7Pv/r1bw8j6
 0+VQSfn6Z9JBtwtWpEQ==
X-Proofpoint-ORIG-GUID: tEhtb_y2mXBMAjWpX0Xnykpep5j_bdgd
X-Authority-Analysis: v=2.4 cv=dZSwG3Xe c=1 sm=1 tr=0 ts=6a54e661 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=fhsz3KazkzAS9s_vSxIA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX1IGP5DO5eI7W
 XAv06PSWn2rLmxHS6DpEwkuibGLKyVapjzJZW3vXD7YUwNa5GL04DF4IHU9d4+q3RpGzJRUZHop
 QLYUmWv7zCnp9yVp9USu4tEs+P54mXw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 spamscore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_062630_098543_FCA36EFC 
X-CRM114-Status: GOOD (  20.62  )
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

Instead of needlessly copying the fields of ethqos_emac_driver_data into
struct qcom_ethqos, just use the address of the former as a reference.
It's .rodata after all. This is done in order to avoid having either two
calls to of_device_get_match_data() or having to extend the latter with
another field when adding support for SCMI.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 37 ++++++++--------------
 1 file changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index e083d7d55782ec8310e9375e466be00213667457..43384960278b87a95f14f23c45442d2bbf75d882 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -103,12 +103,7 @@ struct qcom_ethqos {
 	struct clk *link_clk;
 	struct phy *serdes_phy;
 	phy_interface_t phy_mode;
-
-	const struct ethqos_emac_por *rgmii_por;
-	unsigned int num_rgmii_por;
-	bool rgmii_config_loopback_en;
-	bool has_emac_ge_3;
-	bool needs_sgmii_loopback;
+	const struct ethqos_emac_driver_data *data;
 };
 
 static u32 rgmii_readl(struct qcom_ethqos *ethqos, unsigned int offset)
@@ -189,7 +184,7 @@ static int ethqos_set_clk_tx_rate(void *bsp_priv, struct clk *clk_tx_i,
 static void
 qcom_ethqos_set_sgmii_loopback(struct qcom_ethqos *ethqos, bool enable)
 {
-	if (!ethqos->needs_sgmii_loopback ||
+	if (!ethqos->data->needs_sgmii_loopback ||
 	    (ethqos->phy_mode != PHY_INTERFACE_MODE_2500BASEX &&
 	     ethqos->phy_mode != PHY_INTERFACE_MODE_SGMII))
 		return;
@@ -323,7 +318,7 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 	/* Set DLL_EN */
 	rgmii_setmask(ethqos, SDCC_DLL_CONFIG_DLL_EN, SDCC_HC_REG_DLL_CONFIG);
 
-	if (!ethqos->has_emac_ge_3) {
+	if (!ethqos->data->has_emac_ge_3) {
 		rgmii_clrmask(ethqos, SDCC_DLL_MCLK_GATING_EN,
 			      SDCC_HC_REG_DLL_CONFIG);
 
@@ -353,7 +348,7 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 	rgmii_setmask(ethqos, SDCC_DLL_CONFIG2_DDR_CAL_EN,
 		      SDCC_HC_REG_DLL_CONFIG2);
 
-	if (!ethqos->has_emac_ge_3) {
+	if (!ethqos->data->has_emac_ge_3) {
 		rgmii_clrmask(ethqos, SDCC_DLL_CONFIG2_DLL_CLOCK_DIS,
 			      SDCC_HC_REG_DLL_CONFIG2);
 
@@ -433,7 +428,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 	rgmii_clrmask(ethqos, RGMII_CONFIG2_RSVD_CONFIG15,
 		      RGMII_IO_MACRO_CONFIG2);
 
-	if (speed == SPEED_1000 || ethqos->has_emac_ge_3)
+	if (speed == SPEED_1000 || ethqos->data->has_emac_ge_3)
 		rgmii_setmask(ethqos, RGMII_CONFIG2_RX_PROG_SWAP,
 			      RGMII_IO_MACRO_CONFIG2);
 	else
@@ -457,7 +452,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 		 * in practice this becomes PRG_RCLK_DLY = 52 * 4 /
 		 *  (2 * RX delay ns)
 		 */
-		if (ethqos->has_emac_ge_3) {
+		if (ethqos->data->has_emac_ge_3) {
 			/* 0.9 ns */
 			prg_rclk_dly = 115;
 		} else {
@@ -473,7 +468,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 			      SDCC_HC_REG_DDR_CONFIG);
 	}
 
-	if (ethqos->rgmii_config_loopback_en)
+	if (ethqos->data->rgmii_config_loopback_en)
 		loopback = RGMII_CONFIG_LOOPBACK_EN;
 	else
 		loopback = 0;
@@ -496,9 +491,9 @@ static void ethqos_fix_mac_speed_rgmii(void *bsp_priv,
 	dev = &ethqos->pdev->dev;
 
 	/* Reset to POR values and enable clk */
-	for (i = 0; i < ethqos->num_rgmii_por; i++)
-		rgmii_writel(ethqos, ethqos->rgmii_por[i].value,
-			     ethqos->rgmii_por[i].offset);
+	for (i = 0; i < ethqos->data->num_rgmii_por; i++)
+		rgmii_writel(ethqos, ethqos->data->rgmii_por[i].value,
+			     ethqos->data->rgmii_por[i].offset);
 
 	ethqos_set_func_clk_en(ethqos);
 
@@ -512,7 +507,7 @@ static void ethqos_fix_mac_speed_rgmii(void *bsp_priv,
 	rgmii_setmask(ethqos, SDCC_DLL_CONFIG_PDN,
 		      SDCC_HC_REG_DLL_CONFIG);
 
-	if (ethqos->has_emac_ge_3) {
+	if (ethqos->data->has_emac_ge_3) {
 		if (speed == SPEED_1000) {
 			rgmii_writel(ethqos, 0x1800000, SDCC_TEST_CTL);
 			rgmii_writel(ethqos, 0x2C010800, SDCC_USR_CTL);
@@ -539,7 +534,7 @@ static void ethqos_fix_mac_speed_rgmii(void *bsp_priv,
 			      SDCC_HC_REG_DLL_CONFIG);
 
 		/* Set USR_CTL bit 26 with mask of 3 bits */
-		if (!ethqos->has_emac_ge_3)
+		if (!ethqos->data->has_emac_ge_3)
 			rgmii_updatel(ethqos, GENMASK(26, 24), BIT(26),
 				      SDCC_USR_CTL);
 
@@ -750,11 +745,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 				     "Failed to map rgmii resource\n");
 
 	data = of_device_get_match_data(dev);
-	ethqos->rgmii_por = data->rgmii_por;
-	ethqos->num_rgmii_por = data->num_rgmii_por;
-	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
-	ethqos->has_emac_ge_3 = data->has_emac_ge_3;
-	ethqos->needs_sgmii_loopback = data->needs_sgmii_loopback;
+	ethqos->data = data;
 
 	ethqos->link_clk = devm_clk_get(dev, data->link_clk_name ?: "rgmii");
 	if (IS_ERR(ethqos->link_clk))
@@ -791,7 +782,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	plat_dat->dump_debug_regs = rgmii_dump;
 	plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
 	plat_dat->core_type = DWMAC_CORE_GMAC4;
-	if (ethqos->has_emac_ge_3)
+	if (data->has_emac_ge_3)
 		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
 	plat_dat->pmt = true;
 	if (of_property_read_bool(np, "snps,tso"))

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
