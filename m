Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC49F46456
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 12:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fYypY8QBck7MZKVI9zx/gIDDL+poZGW8QuRL6CN9k8=; b=HNsjmqrne8Qwj3
	htf2t7yQ8cQHp4BzqLY6jJ3CCfYLD2JXLf8vSfw4pPJLf14Xgnz/w1Psyo8r4ae4YRVy5RizZMM0L
	DPfa3AQ21uhUvj84s+U1E5f9CDUommQRTpOrunhWGcPOOBh+A++MNAx69Yr+MDR/Q6UdatbnwooeO
	ROtPxBlxlDM9ODmoEIMUgBLbWMbUKglv3bIViaxv+wwsuJow+djCB6iAeqhM+YEk3X6X+LxPGYGAu
	C4q7oKKSkNRWWNWb4X9Ex5eUw/rsj/+zKoZXbnbPxFIDTN23/kZfIn6Y7lTnOJEQfmmMNbaA+qvuv
	2NhQTjmBXnpUsfFdFhlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26hf-00000003shj-3ugO;
	Mon, 16 Mar 2026 12:05:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26hd-00000003sdl-1At2
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Mar 2026 12:05:46 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GBoFsx1724707
	for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 12:05:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KMyUU4KR43zZozuK55Bh2YheZBvjhnscd/dIXb/Z85s=; b=bqbKE/TausygwjMR
	pXQ2QX4j3/v27dLfoyVIfPX9g1cYvRop9VAcxVW/zgev2JGsOYMcVUGoqBtVMEp4
	HGvD0rSeQoQZGDPofVKLbhnbD/TdM5zSarJphqPMGtrQ7ud7UkKlglWkGOpVHZDp
	vtZPgvBkGZIL40HP9Mq1bzF/QR50SX4VqKMndn011TqAiaegYylMqbxAWv66M7yR
	G5zxJhBWzlRvmPjIjaMwBbOVcQvEhQx5HoSp6N9B70L9kxStO+M90ZJbS0WYptJH
	z87YxR48Xf6KphArdlCfx1cwCJXC8DxLAuEpEjXZ4dVz8W/R+08ggYxA6Ve851Zg
	vRW8dg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udng8n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 12:05:44 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ff9edc2158so5224040137.3
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 05:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773662744; x=1774267544; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KMyUU4KR43zZozuK55Bh2YheZBvjhnscd/dIXb/Z85s=;
        b=JQkAaCTuTToWc48htAQuK9iHhtt+fxP+9kC7dEblWLEEiLBGQykUqZKYu2aGoio5w3
         4EcwBhFtNJ6MDwpVQIcy9B4iPiLNcVaa9GvChQCL/CLAvfZJ22y3uuAjZpxgOCdZjf/F
         mT8k+YdpKeLaYdgkB5zd8QF9tcioWLYR4NADnwiJGs1g5ml8yENnQ6hg0rYJXsjxviyC
         pT5aMO7qwirkOHe2LsUVH8Ss8hJou9qMUwi8v9BvdcoCtFd/aA3tKS0nXfwocvH+CIep
         ylyNxwidz1OcUyFDKxg96mVd97fAcF2kiIhq8CTBr1eLj1xdssbkefk5ifkJADBFeHY7
         hH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773662744; x=1774267544;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KMyUU4KR43zZozuK55Bh2YheZBvjhnscd/dIXb/Z85s=;
        b=L4uCgMgnTrDzVwxuHNCQw8Gs/wc0iExuO/4fCrDwwQmwmS6LluH+5Am+ldDYllHnYI
         JADQ5meKPpsIWabgImikFjiFaJu+ZK75bDyxkhAMc9ob0ADpl4DdiAaBrCR5xwR0lgir
         POipjNdmp0XbwaG6ensYYSSMMePHj5yPXdWb9jIBZlk25AsraUXOdJcBD4g7f/FvsvWV
         wcx95OAGXohzgwQZas1g4ElcnipwOKTLtMFexVjpD+n9TvDU1seX0XsPwVQVZJslOlDI
         bsFPWg8hm/jM9Nqxc49vzZZEhuy/RftDzpRaZqwCX/zQU066tqpvBv5Naxsja41HVrzq
         DX1A==
X-Forwarded-Encrypted: i=1; AJvYcCUMnjkrx8GTYLCrAp5TORtk51R829rrstsOMr1uk19PlAlos9FweUmrily+ZA24qWGNdHW08hET0sGNUDmfIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxO9rHQ/sCPWoHX7fmkV39xz7wjbs48/3IOG0AgBlTv9AH6DGi3
	ZcNxnOwU5jSOE6RPWzPETL+FzuaOxU9YNG4hw2PVR5BbLT3apWvtsbeD6gvaQkLNgBRwGOpwvdX
	w9pYNTP8SpyjomaR36qMaf1aEjaN2PKmFb9T4M929hRlZy6Gb/Kp4AicGr8oN3BCPqDfOdeLBvM
	k=
X-Gm-Gg: ATEYQzwHnB0vreO1HFzABC2sfbOAlPnbTZ0nPIYXKhcusCmB0fK1bHc1RI8In2IAWOe
	yyX42MFyI7k/1zGqA7cFb7mtD2i7kIjgzq1F2Y4ShFpWxw1zAWKotdOWSGGEICZSQeNoUQZkCw4
	bMRZwnMoJmd5jW5nm6e35UAGLQwe1LD2t2TAjbcw49366FIkiEZTR99cnohMj+lUFnw8DjDCfzz
	IxPCusqeDrTbcpQH1EfS+RrzjX0qjLKE5xFU4hUshhdOL8prkyOoogOoPA5RM3bEck6hzEU1ZA0
	CShsX5HEdYm4ROI84LGBB8/sQ4n2er7ENOhgpW9N9ctrVEHvXU4WnowO6PdoEsEj155oHwM+Cnf
	Fx+gf67+0zY1hoPwrcemIoslZa+aY6pTtQzgqLZrR6ei4UraFNK4=
X-Received: by 2002:a05:6102:dd2:b0:5ff:219b:497a with SMTP id ada2fe7eead31-6020e1aa7e9mr4589834137.3.1773662743718;
        Mon, 16 Mar 2026 05:05:43 -0700 (PDT)
X-Received: by 2002:a05:6102:dd2:b0:5ff:219b:497a with SMTP id ada2fe7eead31-6020e1aa7e9mr4589815137.3.1773662743239;
        Mon, 16 Mar 2026 05:05:43 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:45fe:3ba6:f90:d951])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe2273d9sm46468513f8f.34.2026.03.16.05.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 05:05:42 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 13:05:08 +0100
Subject: [PATCH net-next v9 3/6] net: stmmac: qcom-ethqos: wrap emac driver
 data in additional structure
MIME-Version: 1.0
Message-Id: <20260316-qcom-sa8255p-emac-v9-3-c58934e76ff2@oss.qualcomm.com>
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
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5840;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=QEjA6ztNoVJqA2fzdic1acw7AfUASpMj8dS/VFE3Oks=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpt/IGiOkgQG00O6yLrjBHMqTdoAG75F1dhJnlu
 Lzf54ETAY2JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCabfyBgAKCRAFnS7L/zaE
 w/NXD/0WYnQvTwYnvGFZ3tZr0XsqU4FEWJx9KsbJOyfL1o10P2IF+tEBWRR3H+MAqxoQVwNanY6
 hvTBiTIkSuWmeK0hbtihq3ezWr93j3vu6iZSXfCBxjs0eQ6v6FZtHMg6IAhkrne8u9MQCVSopwH
 Rve4qYdPMW2EX0okqbsmSvxK7pG5MnMo0JCrOVs95H4tOzH+Q2qGjQXnhTsaY89//IS4I9BbyW2
 PS+bbn8qDXRLVYu5v1LbS1eQMElYQn6yGoWNGmQ4nZg4DAUSs2oLP85k533GObc2dHy4nHpvyRu
 1mga1B3kSsERLkShcBERg64YOOWxBWUkZZFqIrBjYe5rXiP4zwGs8k9IzsYsDntFMlKX1khQAgm
 WIaxTDbktidDuqkO17AOraRLdCD5dziT+0OAl8oazGrHrbXiyRICbqLQF2aqQGZqEiCzNDE4mNF
 aRo4Mbyvg73vpHCcXKA+URZGgR+orz90M+w8HWPtIumOLT7KuUaxIhrJ8MQ3wqEBcqvdnuJUnmw
 JCFfSzqvHWm3D2jL6Z2Ms0hTXxj7plPjtrSZG3HOm4apQi2vVhebQW6bHVlZoLU2MbcszBf7q6M
 qIpC9Si0bbE6+0bas+VDfiwncRNY997gkgjiAWrNy9KGy8GX/Fvbz1rxy9JZpVf12eHBqlzM2Yd
 1j0Glhm9rpoPZ5w==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b7f218 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=fYgtqwV50X64hY7jBhMA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ucUXMis8iVQbSRSUX_s-nJlUO0cDY_qf
X-Proofpoint-ORIG-GUID: ucUXMis8iVQbSRSUX_s-nJlUO0cDY_qf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA5MiBTYWx0ZWRfX/4ienm8dI3al
 8JV4ZAUMF+j/grCaDsAtrAD9fcI+O7ogUvciSVDx3gtLRxKh4hucmftYEhr7s9qaOarWp3Kd+5p
 0J6GaAKQjNlfhmgxnMj6tHMOuiON2w51/YNVy9LKxm9Yb09xIp6ncaADrauo6RzdfoKwATJttJ7
 iZH0jSYxO8bHXx6LzELyneR5xI20Ks7kiFgdfHePKgSkof6HGcv1bq3LhEeb5qHh29+KDlBUtqA
 ao22FE1h05H0d0Fj6/GTdGqcazOFeZHO7vqld4PBRBHBTUz37gohVqUUAURdYvYac1/0xzsx/Gu
 aC9773JGRhc9FFuJTvlVIgFWV5dVJ18ZYoSkH0y1iY/B0zdh1adze9eR9MMLMNO5Uid9UrCJx/4
 NbamAQmYDjqqCR8jKg1Atiy7v6OdHoog8s+pxvqXWGF9H5yencwXtxN4f5Eotej7jOKUOPnheQ1
 jGAU0zpNvV39QbOXSKw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_050545_374928_608C9F83 
X-CRM114-Status: GOOD (  18.14  )
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

As the first step in enabling power domain support in the driver, we'll
split the device match data and runtime data structures into their
general and power-management-specific parts. To allow that: first wrap
the emac driver data in another layer which will later be expanded.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 52 +++++++++++++++-------
 1 file changed, 37 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 66fd2ed2c2c8428694c07d89220d0e1608546791..8fda6c128117d7f5b1dece68c919f2a09a511210 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -97,6 +97,10 @@ struct ethqos_emac_driver_data {
 	bool needs_sgmii_loopback;
 };
 
+struct ethqos_emac_match_data {
+	const struct ethqos_emac_driver_data *drv_data;
+};
+
 struct qcom_ethqos {
 	struct platform_device *pdev;
 	void __iomem *rgmii_base;
@@ -223,6 +227,10 @@ static const struct ethqos_emac_driver_data emac_v2_3_0_data = {
 	.has_emac_ge_3 = false,
 };
 
+static const struct ethqos_emac_match_data emac_qcs404_data = {
+	.drv_data = &emac_v2_3_0_data,
+};
+
 static const struct ethqos_emac_por emac_v2_1_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40C01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642C },
@@ -239,6 +247,10 @@ static const struct ethqos_emac_driver_data emac_v2_1_0_data = {
 	.has_emac_ge_3 = false,
 };
 
+static const struct ethqos_emac_match_data emac_sm8150_data = {
+	.drv_data = &emac_v2_1_0_data,
+};
+
 static const struct ethqos_emac_por emac_v3_0_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40c01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642c },
@@ -271,6 +283,10 @@ static const struct ethqos_emac_driver_data emac_v3_0_0_data = {
 	},
 };
 
+static const struct ethqos_emac_match_data emac_sc8280xp_data = {
+	.drv_data = &emac_v3_0_0_data,
+};
+
 static const struct ethqos_emac_por emac_v4_0_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40c01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642c },
@@ -306,6 +322,10 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	},
 };
 
+static const struct ethqos_emac_match_data emac_sa8775p_data = {
+	.drv_data = &emac_v4_0_0_data,
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -728,7 +748,8 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	const struct ethqos_emac_driver_data *data;
+	const struct ethqos_emac_driver_data *drv_data;
+	const struct ethqos_emac_match_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
 	struct device *dev = &pdev->dev;
@@ -778,13 +799,14 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 				     "Failed to map rgmii resource\n");
 
 	data = device_get_match_data(dev);
-	ethqos->rgmii_por = data->rgmii_por;
-	ethqos->num_rgmii_por = data->num_rgmii_por;
-	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
-	ethqos->has_emac_ge_3 = data->has_emac_ge_3;
-	ethqos->needs_sgmii_loopback = data->needs_sgmii_loopback;
-
-	ethqos->link_clk = devm_clk_get(dev, data->link_clk_name ?: "rgmii");
+	drv_data = data->drv_data;
+	ethqos->rgmii_por = drv_data->rgmii_por;
+	ethqos->num_rgmii_por = drv_data->num_rgmii_por;
+	ethqos->rgmii_config_loopback_en = drv_data->rgmii_config_loopback_en;
+	ethqos->has_emac_ge_3 = drv_data->has_emac_ge_3;
+	ethqos->needs_sgmii_loopback = drv_data->needs_sgmii_loopback;
+
+	ethqos->link_clk = devm_clk_get(dev, drv_data->link_clk_name ?: "rgmii");
 	if (IS_ERR(ethqos->link_clk))
 		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
 				     "Failed to get link_clk\n");
@@ -815,14 +837,14 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
 	plat_dat->core_type = DWMAC_CORE_GMAC4;
 	if (ethqos->has_emac_ge_3)
-		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
+		plat_dat->dwmac4_addrs = &drv_data->dwmac4_addrs;
 	plat_dat->pmt = true;
 	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
 	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
-	if (data->dma_addr_width)
-		plat_dat->host_dma_width = data->dma_addr_width;
+	if (drv_data->dma_addr_width)
+		plat_dat->host_dma_width = drv_data->dma_addr_width;
 
 	if (ethqos->serdes_phy) {
 		plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
@@ -837,10 +859,10 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_ethqos_match[] = {
-	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
-	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_v4_0_0_data},
-	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_v3_0_0_data},
-	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_v2_1_0_data},
+	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_qcs404_data},
+	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_sa8775p_data},
+	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_sc8280xp_data},
+	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_sm8150_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_ethqos_match);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
