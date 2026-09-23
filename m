Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3906DC98302
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 15:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4T4Esu8uovYptPJwtf62m+CIcGqaULqCZCxbJ1BmsA=; b=KyzOGNjmkHhhVx
	PgGrSQqM5xjyjDEkA99qNM5Mst7nHLUASOjY9OGDY8wueYab7Hg0XwJT3U9vQyGaUUEUSm3r9Fvsw
	lenCui3r4l9eRRB5Hwom4xNwwZV8woyviZDVp5UKm3xZnneuzmjFpfrS6SMwg1gIL535qoFbsdeim
	hc3ZLuuBUoobB+gwRKw2+oon+WYqTeo5It/kkLI0pRfSgKASfPkeVv+YhnvKnpXBLP0Pd2y/3oQiN
	oP0fYWY2Gj+WvJI+rWPngOikSn2Ki3Zahl6gvgJpuYHQR4+OR0FkE/KFfZ2uVQ0pZCmjuW2CP5LbD
	KUYI6WGDHIhlo810rABw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Oh2-00000008eps-1Gbc;
	Wed, 23 Sep 2026 15:15:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ogv-00000008ee6-2ooq
	for linux-rockchip@bombadil.infradead.org;
	Wed, 23 Sep 2026 15:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Ackf39/pZ/ObACJy5ZimHQgnJjGDnYeqr3uy9apst84=; b=SZmEny+t/vo7VPSt6HItRCR5iC
	ZvmqlQVgvljYC8rDUWaE1iTI0IOBWDi3mTMjahTAqRD0xYkGkqrzbsOvisV25vpIGVwRrE2yvI062
	M/UzwH9f+Q/oUJWTqFEgdwn7FngCJhGxtS/eax2QpDSAbNt3Bioc/JeOEEY1iifAVLUToNYNzYdj6
	SEiAJI2S7id4IdFDSSAx7qQvU4Ylszwh6DAgp2vnkxTc2j6cwMLqX6kjHYgA2ba2eXxK4FcMax9Qh
	4aYWVzbxkL9yjgQMwRuzR9DyTpcGktoVO2Cx9S1Zt2VXvkBzNsbb+8hKqYcbXkDMPHjeNOJNlY7gR
	btCsCjcw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9Ogq-0000000Euer-3SEw
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 15:15:23 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NBbTbA3295513
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 15:15:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ackf39/pZ/ObACJy5ZimHQgnJjGDnYeqr3uy9apst84=; b=F2mFyMRaIIMk63g+
	ZbEflFI8xnIbQFSmEAhUmrUUOAPWhBn2nz4S3Pw8CFAS5KqL10Q1etcsY1qXQ/il
	fQJR3s5wr3GuzxOFMwuhdW8F/BBBzHYAT+PnI6OUi/wH8zB8dZF4Pa+E0mEcYxKc
	wCpdIHhiBsCCEDSY2h6vx6quXiLRn/tRuGtUO2kftvKz9/1Ocet3cBqPk9AKSoE1
	rp2pdNGmQNjPJelyYPAE4xacHwWQiDN81vUoevNzxw0MBUGXAfNZXNQ8oZmf1HeQ
	vLaQOZW/1eXvKbhAMcMUpGuCuxNZSZkk0QZTqMRb+omjCDUs1vRX/xGtKKMpK+Q1
	fqAnGA==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvbwm9h0y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 15:15:18 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c851df59edso492562e0c.3
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 08:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790176518; x=1790781318; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ackf39/pZ/ObACJy5ZimHQgnJjGDnYeqr3uy9apst84=;
        b=SIYpmwfbx6F3rQf+RKRlIda1l/yTrcu00BKDxZEI51j7/nR8/cWbPpx1nvWvqXNlZe
         FaYg7EuvW7UGUuVpdVpoutUxHd+tfs+XHfHCQO0KeK8dKjHbYPHpClleYcDjVrN2IoSZ
         gbKcNXB4lVzyjF9mWkjit2vmEqCSAttaPqlt2y+DEHAfhuA5HstkctvyLPFMVpFN0nRv
         aHxIBgiqQWhtQFtpkjWVKONt8jJof0cPsdzPLL/m3cDe4SZa4vwECcOkJLhZS4s3/t3Q
         S3oMzFiFJBkSEAOtPRaxf3HXIltYgZDyfNyORT12ojqZVlXyHWxPWtvuW4WT4iBuMuJP
         arMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790176518; x=1790781318;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ackf39/pZ/ObACJy5ZimHQgnJjGDnYeqr3uy9apst84=;
        b=lnt3dC/Roy5p88EEtWmpH9NJ53R+ZcRTNdqH85+9YIp9fP+qvfczV0ZHn4RfiFB0v9
         o2th1MM6jcD0vafArHdIBHFdh1avlzTCF5HPIrtDxQ9qNOEyi2iuK81wEqFVCft5dghB
         i+1NGQZwDNIrYyYLRKWz2vQzpXGH0ovLpRx0gFfqrkZdZT+hOTXiWT7CLK1+fHg0WYVZ
         JG8qaY3t3KQaLT506v9yMsHOrrCpgRS56a1b7vBRBt8WDCuLd0eXthUbvx9d/tyaXgGV
         kGcoMSne0ZYzDSYHNIcstAd9etEMKTHHceGvGbrvlR2oofj2skklDO6MJXZ1jD9bhUgF
         8Q2w==
X-Forwarded-Encrypted: i=1; AKwUvBwuH9Eh6SDN2TnikfzSz5MEpCgFPc2K8Fvn85joYsppezdrpSRlGB4a5W52DQ8hckVOVif3KlMeCrOZ11PGRQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mxQCBEguIvN/UDAbyP4KdePX8Jgr+qOG9pgMDlXFMv0jH5bwtu
	zkjf518D+xo/goZzptybRlQghdlzE8CFgnb4llHa2lotZjmke96FcurTvE3UIrk07Wog1bmNsQv
	po6HMn33cq7vudjqbq04svy+cqbdgXzwKvsvNN7ljmUeliEOI4cC2xA9W/5Ec4c7xk3WkunplyN
	s=
X-Gm-Gg: AYBFou2a7X5L70RevD5KspYsLmFtKKWPRRO9Q8Bf6lbNMwDjcyL5dD1ZKwpbKUoB84U
	OTxk4+9UmUfLKCOjKQssRGmerLgaYN5CAsFLMetMWHUpF0GWexcuwjjeTGhlXmh+8P/29wtjQuG
	BB2vZUsLI+Lwba3mvx4Z1EQbkaCIaD2SxM/C4FpyjPCZAEeLx8CeTU9GUkQ2/tthqdixKiw8oDW
	uJFkBiI6m9kLPnnjZP4t2CcFMoDJRUovPmY0jfuamJKv/nCnE/1uQ5+FJjCM84JZZdHmxJ//4I4
	crdaic3DM6BF0dO2IhVfVkTdF8mRGeiuwDTTP/go0EGPCMVOxvMMkurv0qljKRXEUalp68qeh9+
	BU139e9Lr4P5odr7hKZZp+xdsTYFS
X-Received: by 2002:a05:6122:32cd:b0:5c9:c60a:e9b7 with SMTP id 71dfb90a1353d-5c9f1696499mr3415478e0c.23.1790176517810;
        Wed, 23 Sep 2026 08:15:17 -0700 (PDT)
X-Received: by 2002:a05:6122:32cd:b0:5c9:c60a:e9b7 with SMTP id 71dfb90a1353d-5c9f1696499mr3415445e0c.23.1790176517437;
        Wed, 23 Sep 2026 08:15:17 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:34c6:dbd6:5b58:a3fe])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fe0c4054fsm55126325e9.3.2026.09.23.08.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 08:15:16 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 17:14:40 +0200
Subject: [PATCH net-next v15 6/9] net: stmmac: qcom-ethqos: update phy_mode
 to the resolved interface in mac_finish()
MIME-Version: 1.0
Message-Id: <20260923-qcom-sa8255p-emac-v15-6-e82f33720737@oss.qualcomm.com>
References: <20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com>
In-Reply-To: <20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2508;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=yOSLPGQGO3yWPbLimu00W99FkjfOgnOsMCR38pinqbE=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqs+zpbxNM69aCzkFScxDoBhjp12e0m0NCrpXu8
 pbkiaRubL6JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCarPs6QAKCRAFnS7L/zaE
 w33zEACvZovBfliutxhCI/14frOIF8EuIixeWYDT6O5U5JqPd2Y0MB0/3tK2rkBGP+dV6DMpboH
 U08i0VU1yOrgo3YNP1lmc5CeeiSFFrBrgaBdtM4GMga4FW/sg+jmCTyJ0Brp3NdPGuxNeJf1vp+
 Mg/VGzsaWWjhnulJihKsRlKjJOQ1qKPrInfG25AwlAZwQ5x0klREl+5C/xbGZspyaUqq3vVgni6
 bO4jnKtFqidMquI3jk/TEjgiHsog1PaSIhw163FNmNLj7xpgUq3rjzkD7Kb04b5FSBV/tpu13+4
 djKe6I/3xUtu7QYBa9PTW8iYe/3g14cA9/H5bkckzKGXt1j8Wm0ppSPhPJKKz5Aet/7orHxqM9r
 J6bL/klNxpHaD3giIh3rHsnO9agMK+n+pmvDw+eZL5pq4HUSX54HTrAxK8LTPj9PJisZLuUPi3c
 iGMDbvURa98c0NSYnUCa/PXoq2TQtsI4ERytFdNXZCQsqolEF8zNB6dFUtgufupmqqWIenUUU4s
 R9vkaQbdQZ4maaMKXl5DlMJ2HCGEia/4MUwKYKiLmKOE+TPcaDKmlH8KXDyliZNQvJXJQqJ/fWK
 jqt3tP0//NuWXAupjN3ZCNop7Oym3dwEwhFvHCp7zfoWVpz5JxZsym5Opqm9WL79yc+kpz9RMUM
 wE0gn559wlbaj2A==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA2MCBTYWx0ZWRfXxVf7TDqqIXLS
 VPX2mEZN7awkO+0JqwSoemIWGSNihd7Qz5RwC2evKfI9Z5tPlr/P+kADCwv1RcA/ZAq1z4tAOX3
 ZcEoDPz+7/TpTXY5CXtLtLTdiyVc/No=
X-Authority-Analysis: v=2.4 cv=R/6WitRX c=1 sm=1 tr=0 ts=6ab3ed06 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=FCP7PvUSyU9qYmcNpmEA:9 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: KHNh1dZ_DrLvOQBAtikH60r4gCMXxu14
X-Proofpoint-ORIG-GUID: KHNh1dZ_DrLvOQBAtikH60r4gCMXxu14
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA2MCBTYWx0ZWRfX1GuJJsbynKno
 IL3PtOfflSHjJmtDbsc/7UoCBlExt74aJuRkwLKLjiiC8BtI7qqyukCb+idFg2URc6hFDbAzhO1
 gGGngis/q7F8HjEGTfl0LRaQ86N5s+yODFQy6G0bmQUouIZ3NyeNReKwj0uH18r0z477F9tHOO/
 pbGwi+lF0FsgsdlqlZ8VvhP7FSQ/RUneJkquEGFAa7kwgPG9oLqrQikUiGWAv7wNc42Qm9okOWx
 xxYRAfSUhMIo2LtFqW++Gx5GYpVxbjbT64zBOZqm645F/wcNoOV4/UE7wDH4CmRV5PAHvRxSrcB
 jV9sKrZp+eVG39aqe8RAdzcBLuq/nh0h+08U2ByQ0wkGlrYn0Fvxqa/W7qoS3+QgyBkobEOypVW
 BMP9QDDf//mmIMR4W7T2gFKLiGzjlPztJhQWHmJxHghs+gOUvt5xtDSR5aKvTQORh2oukhPJddC
 6Up8/VwzB2SUNM5hDkw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_161521_517606_58227A33 
X-CRM114-Status: GOOD (  19.05  )
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

ethqos->phy_mode is read by serdes_powerup() and
qcom_ethqos_set_sgmii_loopback() to configure the SerDes and its
wrapper for the correct interface. It is set once at probe from the DT
phy-mode property and never updated.

phylink resolves the actual runtime interface and passes it to the
mac_finish() callback. On platforms that only ever operate at one speed
these two values are always the same, but when the interface changes
at runtime - for example switching between SGMII and 2500BASE-X - the
stored value becomes stale. The next serdes_powerup() call, on
a subsequent link cycle, then reinitializes the SerDes to the wrong mode.

Update ethqos->phy_mode from the interface argument in
ethqos_mac_finish_serdes() so that it always reflects the last
resolved interface.

With that, we now update the phy_mode to the runtime-resolved interface,
so any subsequent resume with a 1G SGMII link skips the loopback setup
and the DMA reset hangs. To remedy this, extend the guard to include
PHY_INTERFACE_MODE_SGMII.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 47b70b5e706f221c01f1c0ae3b1acafae6641165..e067ceee016217c49d3b3d572fd9f33e562d1a75 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -190,7 +190,8 @@ static void
 qcom_ethqos_set_sgmii_loopback(struct qcom_ethqos *ethqos, bool enable)
 {
 	if (!ethqos->needs_sgmii_loopback ||
-	    ethqos->phy_mode != PHY_INTERFACE_MODE_2500BASEX)
+	    (ethqos->phy_mode != PHY_INTERFACE_MODE_2500BASEX &&
+	     ethqos->phy_mode != PHY_INTERFACE_MODE_SGMII))
 		return;
 
 	rgmii_updatel(ethqos,
@@ -634,6 +635,12 @@ static int ethqos_mac_finish_serdes(struct net_device *ndev, void *priv,
 
 	qcom_ethqos_set_sgmii_loopback(ethqos, false);
 
+	/* The interface mode is only known once phylink has resolved it and
+	 * may change at runtime, so keep it in sync for later
+	 * serdes_powerup()/serdes_powerdown() calls.
+	 */
+	ethqos->phy_mode = interface;
+
 	if (interface == PHY_INTERFACE_MODE_SGMII ||
 	    interface == PHY_INTERFACE_MODE_2500BASEX)
 		ret = phy_set_mode_ext(ethqos->serdes_phy, PHY_MODE_ETHERNET,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
