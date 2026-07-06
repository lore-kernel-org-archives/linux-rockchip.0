Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B557C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 13:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHMO7j39Nxoqjw92yl7iVcKTVSXN0pdOvqhTqSrlXfI=; b=Ougu9/mITt3+tF
	mGS7StwrGa74iOZP8Lcl0rWLMYTzMKw4A2mCspjB3GIRTOZVyGHTYA+fdC3it/ECW+S/Uy1AqxCjT
	TF/jWY7ljq1c9q20wH5L+xqRtL+5ZXfqLvP9HzNWwjAN3DlSTdUvRthXJRLJlT+HMTQpf7UHm5+6R
	7yDTdl7GlaVtIXcLaXSGKCiWvm4Q1UG1btFK+aIssOBAoWGObfadCd8eofkFQFMVtdWmLKNgFJBkn
	COAsjzHDGPXKXDbBU2qHz+4ihMsMqVI3ZAjIAmZO12gznTc9Rfe5Nk0cNEVzLmWDMXoY4hiFOi7ms
	xu1gi6mpFtGV7wQGdrZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjFw-0000000CZ4z-1vCQ;
	Mon, 06 Jul 2026 13:21:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjFn-0000000CYoj-3OAP
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 13:20:57 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666AxCIO238115
	for <linux-rockchip@lists.infradead.org>; Mon, 6 Jul 2026 13:20:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fv2kNiSYpp/mwiQNvruO0GBGKpPCowAj63Sbzft+biE=; b=c4J4l9dcCWrHvoWD
	eCzTpSsWzXRAgEXSysa9R/0WpEZSOxZYh5qSd5sHzPl5d71nqgDncIZSvX7Yrw1v
	dLtJ0wMe6kRFF8a4GCTjO71INYcBa++KzXjhSh3W7YiUsFUDfmMTqglGaKd49e/3
	f1bsn2LyofXuMpusUrHRmnffH6BL53RTH/1gMTpEm8LDukKvKjXvDLDKTP7VZv3X
	y2KaO8llWE/XgrPNJhkn3UY9zEWnHzz7BPvwCUeQ5rjEpRoX+yLpeN883lMp47Vb
	T+5CDVgmfEJ3sPlOdecqa9yXK6Yg1WTMMoOcAPm+5mKVSIphlt3xxtom/HkMTP56
	tFVGmQ==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88t894yj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 13:20:54 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5bda012e304so770529e0c.2
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 06:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783344054; x=1783948854; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fv2kNiSYpp/mwiQNvruO0GBGKpPCowAj63Sbzft+biE=;
        b=HERRiIPw91QtTm3pHiPkZqzTzFB9+wtbGLbpMp2sesowzW9nYsyNbYyqK69E0DEx7J
         BnrTmKypAwuClhuuaGG2W54VFCqVrgjbsrG1/LBXN8yYlcvggHq6tCHHXcd+zWqVYQOK
         b5dTXeXQbL7x7c5jNko6VkCwaT7vriClqLdeQLaM4IRW/7D/0ereL+FSvR8jYxDfIuCU
         WHC0EH7VoISP0U9J69EMS6QL10dZVkiUKoZdMUuiJHvX7PVMUSTTjJKwlMPEY1B6iz9e
         kWn3J6PwSggEcjRubwGgtYlVAd4CwjErpnx8DWzvIlUS2T4vKHa7H3Q2UfRDtk13FHHg
         ybXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783344054; x=1783948854;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fv2kNiSYpp/mwiQNvruO0GBGKpPCowAj63Sbzft+biE=;
        b=X5updV5be11F2qosEIrokICfYqafB6Oq+iI2HkntqxZGwQl/ZTaX5P+fYKJjE/zePs
         oNq0kNm5vqcV7+aJBI8RelVLViGVJfX4/ATl8fSH6tt+xUisweFNPGVsMMvSSZ24zHya
         asrcPj7Wkn1OQMdIQC2sSp0jC+XquqXeaLIrmQR7Sa3oZ6fQjhUG/b0Kcy6ns5aMqycO
         Hcu8rmk5uCUlCcTWWz5Wb/5tCxOZ/qNefgA1do+LPNFTOiUwptFIitQHEmx2NKFgdAFX
         AjBLxwdp3e2SzC5acdKRj3UoSli2Na03Qf70/022LRzhnDJ7PSRwERBFwsUy2lDSsXdA
         gyWw==
X-Forwarded-Encrypted: i=1; AHgh+RpFFtDdfUIeoqVgc1+lQbuEnavBPc6VvPGDlD9G+xZIp5OjEvSmqSOTd69iJ/4YNgntVqBUYcaEgfo1W2KTag==@lists.infradead.org
X-Gm-Message-State: AOJu0YxlroRkDuaSXXjU80MjIsxzO3aQtUVUngK927wrD6//ZacxJvzq
	EUTVydtzcEVJYRwOPYqAl0KGIu4MoeCeTPLLOddOizUJE+GH4fYJxvDwg4w2Ih7xKTELQrRSdrX
	TXAo7gC+cXbJnbAH11zTVlNRGt1BNh4hBpqGI4Pdy54Byt3yvbxntefdDZXS4jABGLB24uRXP8N
	4=
X-Gm-Gg: AfdE7clp8Egir2le+saLblYOHTZwz0EkWaA703GXWUFekwUeTs2GO5MObNwBPBb4RB/
	LUqpR8jA6bPcScWT9dpY0f6QZYe+f067H0W5qvK3o/vDWKNer2RSDxEjUe3AmedR6pRCSdfMUKY
	Rx7qmjWWAEz7lHF/c0Vj7TycBnMRJhWFXhZEHjePzoyD4dnyIY3I7APvHqQpwsfrSpQXr39hIGF
	L0qX8bgkK/WGJtSUBhHz2l/WPFH+255TCQwlKlRVJNi7HJa/JV8bbykFI76/ANMNUT8wqziz30j
	Wf9sdi3GoxXGHxBlqMAdbgMGTkT23MOnV8FfJ34jJSII9/zBhv47axL6JHh1mVOnp/9VeqcEbWz
	SWhr641GYmlWA6RIWFFgoRPIg2oA9qQh3zf9OLvyR
X-Received: by 2002:a05:6122:4d07:b0:5bd:aba5:3830 with SMTP id 71dfb90a1353d-5be89537d9emr273858e0c.0.1783344053412;
        Mon, 06 Jul 2026 06:20:53 -0700 (PDT)
X-Received: by 2002:a05:6122:4d07:b0:5bd:aba5:3830 with SMTP id 71dfb90a1353d-5be89537d9emr273804e0c.0.1783344052852;
        Mon, 06 Jul 2026 06:20:52 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:86f0:c42b:ef4c:d3bb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ad69519c2sm25910584f8f.37.2026.07.06.06.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 06:20:52 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 15:20:20 +0200
Subject: [PATCH net-next v12 5/7] net: stmmac: qcom-ethqos: reuse the
 address of ethqos_emac_driver_data
MIME-Version: 1.0
Message-Id: <20260706-qcom-sa8255p-emac-v12-5-e3ab1ecf2901@oss.qualcomm.com>
References: <20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com>
In-Reply-To: <20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5525;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=DZwv1shl0TUtjDQMbmf7p8enNrlmK99dKcZ4kwPIp8U=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqS6uf3y3xcnGJBzldDQcP1Gvdu36/YPVnRiucD
 rasQBf6RzOJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCakurnwAKCRAFnS7L/zaE
 w1fLD/9hd0BgIb9hVJYMbf6fTbBgU23ib1oILj+2s+xFhKiLcjSO77OrgbdGCE4chR2ObV4hCwO
 oFmk55GX0mryjsCZQ2a9orFkFOIMZC3E7sPkG9AV20SPFxLzD9w1z/jG5xpduAz4oOYbOCfdZNo
 4op0zdzC/8mSk94sKrKAWL690pN9vbgEkZ2tXCz3BJAyIepf6vRTf6f39Gi1/bkvH9aE3T8RXgS
 kCXSUarLusOK7zXSrhc1y0Ph5sjEkLcbsOqXjH/TRUkICTR+VcVvKyMAtc22q/WQzYrSN8lJ1fw
 UwdaFJd8Ttw0UW7hSQlv99XXaqBFnkZxZAFZsgIAhzwpGOxhdQt/L3T3FKC+6RICO+HcvApYw2H
 8eXE88o6UpTBgWtfNdioDOeI5CId17EferHTZWwg/ujOTBzrXnozaTlss4mdqHhJXDbopmG0CYY
 XExTsItYWONAZUtPWIjpQlaOF05HiPQzdhcXCchEL7Oxf3kPLxzIrPaCFiQF4oNxk1i6iqXm7T2
 W93zrAhOZHlYT34CBzFVGXF5XlDyjdvxSVyTwVk8KIr/Fp4lP81W3dWqXsXSnFwPDC/Sivrnyom
 0pmXxjblCX01B46rJauGIVskRhjtWUTfGOHBF1oXOGsBPlzHw8uohG7ROPX/K9PklNdpYwm0q/y
 sOrK4uXRfg1vsBQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDEzNiBTYWx0ZWRfX4Hnx0uJrxWfg
 ft4Su4to/FlalbrMPy+QZpjHknTPoEqQnbz9+zdVAgqi7pFYaNkuvYJoCXu/W5dzeknSp4FHVZ9
 f1/bADqyQXIyXXd9VsNJCU8ufAPlubg=
X-Proofpoint-GUID: SwQinIF5uANth_gX0JM-7CRPfyuHm14i
X-Authority-Analysis: v=2.4 cv=C6zZDwP+ c=1 sm=1 tr=0 ts=6a4babb6 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=uYDRVFWwO1WiFYTZPIgA:9 a=QEXdDO2ut3YA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: SwQinIF5uANth_gX0JM-7CRPfyuHm14i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDEzNiBTYWx0ZWRfX6/ZtTxvXAzDa
 o3YekKKwaSubozpfmD9g36QlrD4GHTAXx/a/mA7S57CCjuPdVETBZga+3vdr25jqSbj0iLpflsm
 nw6LEq3OIFVCCP3fGi0w3XroIgY1NKGdQ4l+U1LccNhsUll0CyThBYKThfjLGtXjn+EqOkPH5Pi
 uVK7EPC6VM+xILGOs/02Ci4qNovm9iM2+DdB6bqFNjSJmnT2M0BoBxIiTfmUI/kxwb5Xkqlb5px
 NEHmbN2a1uucmJNljlh/FLMWUtH8CAtZAtZsQn4tyVQFnX3YuPnLXRI7sviPCQtM4Aazl77s+MU
 6P57F/4wfGt/OGaP/ymLfEDy04TkgWa09E9FuZaDxvdM2YSkEoqLsmYGXRDkfJwCtejTvtjUboX
 4N4kHvAh4uu1Hjx+mhZqgH2rN0nmZ37rs5B9nW7aAFLhnhHwsx2v5T5msgMbhTTHRHlP7KuubTq
 bwGMmXNFTZtarZzkwkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_062055_873476_9A0D2A6F 
X-CRM114-Status: GOOD (  20.51  )
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
index 47b70b5e706f221c01f1c0ae3b1acafae6641165..fa3447b90315672d706d5ce7d710bdec6214e4e6 100644
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
 	    ethqos->phy_mode != PHY_INTERFACE_MODE_2500BASEX)
 		return;
 
@@ -322,7 +317,7 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 	/* Set DLL_EN */
 	rgmii_setmask(ethqos, SDCC_DLL_CONFIG_DLL_EN, SDCC_HC_REG_DLL_CONFIG);
 
-	if (!ethqos->has_emac_ge_3) {
+	if (!ethqos->data->has_emac_ge_3) {
 		rgmii_clrmask(ethqos, SDCC_DLL_MCLK_GATING_EN,
 			      SDCC_HC_REG_DLL_CONFIG);
 
@@ -352,7 +347,7 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 	rgmii_setmask(ethqos, SDCC_DLL_CONFIG2_DDR_CAL_EN,
 		      SDCC_HC_REG_DLL_CONFIG2);
 
-	if (!ethqos->has_emac_ge_3) {
+	if (!ethqos->data->has_emac_ge_3) {
 		rgmii_clrmask(ethqos, SDCC_DLL_CONFIG2_DLL_CLOCK_DIS,
 			      SDCC_HC_REG_DLL_CONFIG2);
 
@@ -432,7 +427,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 	rgmii_clrmask(ethqos, RGMII_CONFIG2_RSVD_CONFIG15,
 		      RGMII_IO_MACRO_CONFIG2);
 
-	if (speed == SPEED_1000 || ethqos->has_emac_ge_3)
+	if (speed == SPEED_1000 || ethqos->data->has_emac_ge_3)
 		rgmii_setmask(ethqos, RGMII_CONFIG2_RX_PROG_SWAP,
 			      RGMII_IO_MACRO_CONFIG2);
 	else
@@ -456,7 +451,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 		 * in practice this becomes PRG_RCLK_DLY = 52 * 4 /
 		 *  (2 * RX delay ns)
 		 */
-		if (ethqos->has_emac_ge_3) {
+		if (ethqos->data->has_emac_ge_3) {
 			/* 0.9 ns */
 			prg_rclk_dly = 115;
 		} else {
@@ -472,7 +467,7 @@ static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 			      SDCC_HC_REG_DDR_CONFIG);
 	}
 
-	if (ethqos->rgmii_config_loopback_en)
+	if (ethqos->data->rgmii_config_loopback_en)
 		loopback = RGMII_CONFIG_LOOPBACK_EN;
 	else
 		loopback = 0;
@@ -495,9 +490,9 @@ static void ethqos_fix_mac_speed_rgmii(void *bsp_priv,
 	dev = &ethqos->pdev->dev;
 
 	/* Reset to POR values and enable clk */
-	for (i = 0; i < ethqos->num_rgmii_por; i++)
-		rgmii_writel(ethqos, ethqos->rgmii_por[i].value,
-			     ethqos->rgmii_por[i].offset);
+	for (i = 0; i < ethqos->data->num_rgmii_por; i++)
+		rgmii_writel(ethqos, ethqos->data->rgmii_por[i].value,
+			     ethqos->data->rgmii_por[i].offset);
 
 	ethqos_set_func_clk_en(ethqos);
 
@@ -511,7 +506,7 @@ static void ethqos_fix_mac_speed_rgmii(void *bsp_priv,
 	rgmii_setmask(ethqos, SDCC_DLL_CONFIG_PDN,
 		      SDCC_HC_REG_DLL_CONFIG);
 
-	if (ethqos->has_emac_ge_3) {
+	if (ethqos->data->has_emac_ge_3) {
 		if (speed == SPEED_1000) {
 			rgmii_writel(ethqos, 0x1800000, SDCC_TEST_CTL);
 			rgmii_writel(ethqos, 0x2C010800, SDCC_USR_CTL);
@@ -538,7 +533,7 @@ static void ethqos_fix_mac_speed_rgmii(void *bsp_priv,
 			      SDCC_HC_REG_DLL_CONFIG);
 
 		/* Set USR_CTL bit 26 with mask of 3 bits */
-		if (!ethqos->has_emac_ge_3)
+		if (!ethqos->data->has_emac_ge_3)
 			rgmii_updatel(ethqos, GENMASK(26, 24), BIT(26),
 				      SDCC_USR_CTL);
 
@@ -743,11 +738,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
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
@@ -784,7 +775,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
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
