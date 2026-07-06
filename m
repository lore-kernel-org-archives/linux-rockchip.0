Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA64C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 13:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fp2TYRCf/AJGPuWXR6IiWzC8p9UiTSslh8cZ21zCiMU=; b=uiwRQ3RXhIKxPa
	whmHpSOflxwAAyhUKkgGs7MZt2szoQebsq2g/GXM63EYbRrPf4hfF4bWF3y40yKXFTRIl45uf2/ZN
	PRwuBL7799XuO7WCkN2M0AvV+/oguggUMRBOq0Oqrq9GzTyAlKtHDcnLABWgusBvy4Gby0g/2zRRI
	ER9zOVguUj+82CY4CsaJ6/4ZbU7FOcd4lA05Uk+LWjSDtRxXD8//VD1bEBnS+jtOd/WwF2eg7Qr6K
	gbiJx4tHofr+vg27eOey4+4HmlKFJR351QFM4qXPQ2dQKdLSMH/AkigPxf+e3l0kyCQ7SOXlif+VB
	WKDGpdAlRVM/7OXZj2IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjG2-0000000CZKs-3No1;
	Mon, 06 Jul 2026 13:21:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjG0-0000000CZCx-1g2L
	for linux-rockchip@bombadil.infradead.org;
	Mon, 06 Jul 2026 13:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=cyAtb4Z5AA87tJM4aAbz48OZuPpDfL6rZEVyCzADtro=; b=m/5GD1nTVyGUfhSVJKs1qsrzaY
	ZSXpLCg95U8iSeoq4Uw2ENdCfCp7CP0+GHg73wE9R50UZPWRPXdLX4aSSvWcOKYuzm+tsRrpb/P1z
	IOZp1vjY+dc5N+q5FC3XVNSApGwDuKBiJ5wsG63LgCheGYYHfJz0NoPYnf+bfPOn06wo1XMqN0kOc
	mWwPFq8etm4AGGs62jL3YEL4DDOgwYJSh6VWSf4NCYzz8R2IGI9eEJB6V1m31bNWve+88CNRtZWWA
	AcmeuZBOTtMWsUR77qYb5qjzUVYMaSEDpoNcvJcUyiFBImT+UiQqT3vmx5QPldmzBydpeW+FLrJea
	T0xLbYDA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wgjFw-00000006aAL-2ZmV
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 13:21:07 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666AxIde174839
	for <linux-rockchip@lists.infradead.org>; Mon, 6 Jul 2026 13:21:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cyAtb4Z5AA87tJM4aAbz48OZuPpDfL6rZEVyCzADtro=; b=DKOnK/pElsldeHy8
	xf7bnbvV6CW8Ru+3ADXgRRZ+r8m3JK2M/rguFQH/cIT6LfIpONjYgUWDcfZoP5ep
	B55O9SWLdP/00JALwAaA6neWEilJBquw8jxYgv7CC7/SrX8TRvXj+oeJlZHgQz3a
	H8W7KX3wa2nOAN1p3NsOiVjbqft8jrukYK0Ss0mpc0UMqHroH+EbedOTwqvsa0DL
	6T6CsakHkogc2vuhB+AaEYHudxhP+wcmlTiyt7zZap54J2k7bC/Jp5w0A114MUGy
	8eon6ZYoiTIkLDp0c10S7tvWRu6m8cU0Y+uO2b2oZK8HyVCORWflKLrw5j73X5UQ
	H19swA==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f87rxsej1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 13:21:00 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-966c4d68d91so583621241.2
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 06:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783344060; x=1783948860; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cyAtb4Z5AA87tJM4aAbz48OZuPpDfL6rZEVyCzADtro=;
        b=cy1tCu+Ynk3EnhnWHHCBROddfKFVgxo/1lXRghUQkytnwodWcF4w7jd6Y33W7oDolJ
         +5FvwZIiD4hnmFwLY5RxgFX7H1he5Q93b5uh5Rvo2MIn7w/T/flclI0LIsgU+wrIDpQA
         0+wCnSfefJsrcwqfq8XkHGA1ZtiOgW/Hbtgd2VbpZixZTPo8noubGZ3RfdYows1KOnx+
         jntCzV6JTwoE/Jkh9UOxvRCdrxHheurO7srRM6RA/gLVtKLtfx8YIhMYnkMDdZsb9tB6
         ea0p/axA1TDxujflvSc1sf/81cIf98y+6XPYjaQILZ5jTpbBwI0JsF4KoruRUO0k8HQ+
         vOdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783344060; x=1783948860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cyAtb4Z5AA87tJM4aAbz48OZuPpDfL6rZEVyCzADtro=;
        b=VocOOoOQSACS7FZjqOb3flkocuyQrAWQJcQMirjfsr4F4sWR08hTfNVzWpdLo03BZH
         Jr/Lpng7habnAjXtvPT9qFZU8/Y3XvaidBeRXh3JipvNceNY/NXJayPgGfLzEH0UWJYR
         1ejTvmz3BHTDfyjVOpT2yRa/1HBNoAVOWNDuHeJlc0QRg54XyYHPb5pJ0dLjRbD3sNsJ
         3c8lMnN7Km4CEq5szuxpuJffkop4RBjcGVUpFP4QcnVyl9bnb97SnAcVQF7LEW4O9d4I
         8zwPNRQ68vwcE0P6MqlHqoZT6QtglwYNduEk52+9q25sti/HcxI5h4oRVWLbk29i6fpC
         nhUw==
X-Forwarded-Encrypted: i=1; AHgh+RrMxzOLxdjnzs8Juvy37N3JtPOPMOssERBfZU+lCsuVbI8cWXASjdX7BijINc9Tp11qwtR5GQTmIQ7qWnyUgQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCDN43wiacy3eOiFYZhRAmHOBJQbPF6AG9oCG3u9ZRSRQOZpOh
	i3g7tHPTepNozCZlz2mNr+OS6mKiugVQL3bqOfXVumPpuUnAQshVXIiCnXoUgGVDpK11gerhK5O
	GC6gMoJv/onqCw+axGGTuGAU76KevBKMHaM89R3E/mFDV7GPuYnb8QZumrMinGMSjzwkmLidXbA
	8=
X-Gm-Gg: AfdE7clQU7wll2wXDBh3IZmwR6tYhcrNhgdS5pXoY2qdrpno/3BnXipyI54QPp3pDS1
	VlrkB9jVVKGiQcjzBQz+Sn2g7Uaq+Cfqy+nU5I5kCes3CmNO2ldC/q776tO+fpQ/qV9eNOJNQrX
	3cy/1rMRcYSLREkGpaF0Cu4dBXzuLSMMqaXKcg6xRk3qKtVH72vp66Dfh71aZ/DYjuN62JXLUdh
	iDU64rl76U4MXEexdm8UsGUeKpdi52Z0JSOKA9/EA0J+m1BPxopeTKelzOwJT2navxnkZxbp38o
	MXhx7oCAr1/yt0tLlDczUDNUgwKqY7zY6uj0gkpqDPKN/ru+qfUBMOo5lrW7s+kjR2uJIDoZ7sT
	E6AICn1DYZpaOvtEm+WL4Wek5FP5XXkLCT0Lc6+N/
X-Received: by 2002:a05:6122:511:b0:5bd:89bd:3543 with SMTP id 71dfb90a1353d-5be908b8787mr239615e0c.12.1783344058177;
        Mon, 06 Jul 2026 06:20:58 -0700 (PDT)
X-Received: by 2002:a05:6122:511:b0:5bd:89bd:3543 with SMTP id 71dfb90a1353d-5be908b8787mr239501e0c.12.1783344056002;
        Mon, 06 Jul 2026 06:20:56 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:86f0:c42b:ef4c:d3bb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ad69519c2sm25910584f8f.37.2026.07.06.06.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 06:20:55 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 15:20:21 +0200
Subject: [PATCH net-next v12 6/7] net: stmmac: qcom-ethqos: factor out
 linux-level setup into a separate function
MIME-Version: 1.0
Message-Id: <20260706-qcom-sa8255p-emac-v12-6-e3ab1ecf2901@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7477;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=o5XoyX1coHzwS5MK4Nao0YTpRLZfe0Qwh6ArwM+K5eE=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqS6ugRe+a+GryDL1J76nq4biCeYd856FUv7Nyv
 Nf2nUO9iSWJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCakuroAAKCRAFnS7L/zaE
 w6xiD/4+J5LNVCG5Z86VszoIsYGwT0dJEsVEiPC6rDFJKf65P1O47rUHECIq/QgsTO4TeJV0Pkd
 ab3Q6+oIERLPQfojD0eMzzMAca9aRETeb/CvucQmf5KfAuC3k7qrHiy5aPp1kKyjr0HB7hRIHE3
 v9G3axp9WJBLUayEl/JRdqs1SbESZLn/HmbpEov7ZYb44LdGVUsv/YPPuWSROOtDCKeC1/vJ7Rb
 aJoXwVp8Gq9Au1mDdmEmoqxLlHuQke0ZOInkLmcFri9JGlRNTRn3qHyt8VrT7UdX7ZJIr1k1/rJ
 6yVpByKuinB6zO5kl83DP2prFLk9ftB3E1NH//h/jYtWiinMEg50PwG+28BiK4ZTirU1T/C9Gpo
 jhB4fZa28P2VBSZojIEnPHYbWdtREAmHj2b7un/qpFpoufMzt2ESaqqjnWTrZZd+tzB6En3i0Sa
 z5ji97KT/lIXgOoY2/phJ/mL78UhCQglleBH/+hp4tyW6JzI/7auxlhIe+GFQlHfMMsfkHpEG5r
 ar37vEBYOhU3unaysR3FjsqboJbIbSw8tsvCkJXQT4RvBj4WFDgFUz8xCFpL1UmI04zstLuaQAA
 bPKVNM1lzHbsMMgqIsnTq5U07z8kSEFKvSNHMe7JrLwHBv2QI9Hx1mjLUVcnpdnnIx5hWYjqDfP
 pGRhfiMiJlo7QGg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: QKMnVupmomV-Zvy6Q6bsJPpCkAzZnhUN
X-Authority-Analysis: v=2.4 cv=Hv1G3UTS c=1 sm=1 tr=0 ts=6a4babbc cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=dj4JEN0qHmgdNMwDfcEA:9 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDEzNiBTYWx0ZWRfX7N4KCLLB1QHm
 6Jk0IshQBpYyky3+hDbfOXhjFarTbvjSYPqbHlLSzrej2uCos3+foQBr1fEHeLJ4JJlC+R/dwj5
 MzGcZEEdrNIhGwzEGgKZhn6v6/ty4vc=
X-Proofpoint-GUID: QKMnVupmomV-Zvy6Q6bsJPpCkAzZnhUN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDEzNiBTYWx0ZWRfX51r4JiZ2ccck
 I0dLAUA3F5tKRGwWAdzgEdiwuZJ8aoBXvbXQ20EVE63IAtUNMxjnM84Tbu3KOXFXIzJ6LoB+TMh
 VSkO9h7MN5JTU0PVHY9Yx6l3zkeCe0xwVzveCkVSDtux1WDkPmxAbQzm94bgRBV4Vgu6YKCiNdq
 akIjbBmaQh6G137M2kbmvb2vNVBSH125bjUYzy+pfXcwMJoQb4v4U5Ku6SnU6qEfH8KCHcf93gk
 a05KjMdgD/UwIAeUtJbSDXjhF0HaxfVMZXLfnPIOmcAf7+xL9py2Pbyj2xeYhQbKm1ALwJgXgh+
 VGgegzW3JzKcBoQ+1Buy1Qw549ZYoFVVWFT+Jjncq9JQmI2R5YMFxi10JI0nREW7Lu0lQXj5P3Z
 B7KXnn/sxI1bQ9bndiNaIZJ81YgALOM7DJImw1U31fhSyTehwN34/HGy2FVJU76kT8i4TYcFJRY
 ijQWMCBKQpVtU54vV7g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_142105_067205_587EA4BE 
X-CRM114-Status: GOOD (  21.01  )
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

Ahead of adding support for firmware-controlled EMAC variants, extend
the ethqos_emac_driver_data structure with a setup() callback, implement
it for the existing models and move all operations not required in SCMI
mode into it.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 99 +++++++++++++++-------
 1 file changed, 68 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index fa3447b90315672d706d5ce7d710bdec6214e4e6..f379570f80680e96f027873cda6a6bca398e22dc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -5,6 +5,7 @@
 #include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/phy.h>
 #include <linux/phy/phy.h>
 
@@ -81,6 +82,8 @@
 
 #define SGMII_10M_RX_CLK_DVDR			0x31
 
+struct qcom_ethqos;
+
 struct ethqos_emac_por {
 	unsigned int offset;
 	unsigned int value;
@@ -95,6 +98,8 @@ struct ethqos_emac_driver_data {
 	const char *link_clk_name;
 	struct dwmac4_addrs dwmac4_addrs;
 	bool needs_sgmii_loopback;
+	int (*setup)(struct qcom_ethqos *ethqos,
+		     struct plat_stmmacenet_data *plat_dat);
 };
 
 struct qcom_ethqos {
@@ -199,6 +204,9 @@ static void ethqos_set_func_clk_en(struct qcom_ethqos *ethqos)
 	rgmii_setmask(ethqos, RGMII_CONFIG_FUNC_CLK_EN, RGMII_IO_MACRO_CONFIG);
 }
 
+static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat);
+
 static const struct ethqos_emac_por emac_v2_3_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x00C01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642C },
@@ -213,6 +221,7 @@ static const struct ethqos_emac_driver_data emac_v2_3_0_data = {
 	.num_rgmii_por = ARRAY_SIZE(emac_v2_3_0_por),
 	.rgmii_config_loopback_en = true,
 	.has_emac_ge_3 = false,
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v2_1_0_por[] = {
@@ -229,6 +238,7 @@ static const struct ethqos_emac_driver_data emac_v2_1_0_data = {
 	.num_rgmii_por = ARRAY_SIZE(emac_v2_1_0_por),
 	.rgmii_config_loopback_en = false,
 	.has_emac_ge_3 = false,
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v3_0_0_por[] = {
@@ -261,6 +271,7 @@ static const struct ethqos_emac_driver_data emac_v3_0_0_data = {
 		.mtl_low_cred = 0x00008024,
 		.mtl_low_cred_offset = 0x1000,
 	},
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v4_0_0_por[] = {
@@ -296,6 +307,7 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 		.mtl_low_cred = 0x00008024,
 		.mtl_low_cred_offset = 0x1000,
 	},
+	.setup = ethqos_hlos_setup,
 };
 
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
@@ -685,6 +697,58 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 	netdev_dbg(priv->dev, "PTP rate %lu\n", plat_dat->clk_ptp_rate);
 }
 
+static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat)
+{
+	struct platform_device *pdev = ethqos->pdev;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
+	if (IS_ERR(ethqos->rgmii_base))
+		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
+				     "Failed to map rgmii resource\n");
+
+	ethqos->link_clk = devm_clk_get(dev, ethqos->data->link_clk_name ?: "rgmii");
+	if (IS_ERR(ethqos->link_clk))
+		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
+				     "Failed to get link_clk\n");
+
+	plat_dat->clks_config = ethqos_clks_config;
+
+	ret = ethqos_clks_config(ethqos, true);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+	if (ret)
+		return ret;
+
+	ethqos_set_clk_tx_rate(ethqos, NULL, plat_dat->phy_interface, SPEED_1000);
+	qcom_ethqos_set_sgmii_loopback(ethqos, true);
+	ethqos_set_func_clk_en(ethqos);
+
+	switch (ethqos->phy_mode) {
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_rgmii;
+		break;
+	case PHY_INTERFACE_MODE_2500BASEX:
+	case PHY_INTERFACE_MODE_SGMII:
+		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_sgmii;
+		break;
+	default:
+		break;
+	}
+
+	plat_dat->set_clk_tx_rate = ethqos_set_clk_tx_rate;
+	plat_dat->dump_debug_regs = rgmii_dump;
+
+	return 0;
+}
+
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -706,23 +770,20 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 				     "dt configuration failed\n");
 	}
 
-	plat_dat->clks_config = ethqos_clks_config;
-
 	ethqos = devm_kzalloc(dev, sizeof(*ethqos), GFP_KERNEL);
 	if (!ethqos)
 		return -ENOMEM;
 
 	ethqos->phy_mode = plat_dat->phy_interface;
+
 	switch (ethqos->phy_mode) {
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_ID:
 	case PHY_INTERFACE_MODE_RGMII_RXID:
 	case PHY_INTERFACE_MODE_RGMII_TXID:
-		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_rgmii;
 		break;
 	case PHY_INTERFACE_MODE_2500BASEX:
 	case PHY_INTERFACE_MODE_SGMII:
-		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_sgmii;
 		plat_dat->mac_finish = ethqos_mac_finish_serdes;
 		break;
 	default:
@@ -732,24 +793,13 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	}
 
 	ethqos->pdev = pdev;
-	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
-	if (IS_ERR(ethqos->rgmii_base))
-		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
-				     "Failed to map rgmii resource\n");
-
 	data = of_device_get_match_data(dev);
 	ethqos->data = data;
 
-	ethqos->link_clk = devm_clk_get(dev, data->link_clk_name ?: "rgmii");
-	if (IS_ERR(ethqos->link_clk))
-		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
-				     "Failed to get link_clk\n");
-
-	ret = ethqos_clks_config(ethqos, true);
-	if (ret)
-		return ret;
+	if (WARN_ON(!data->setup))
+		return -EINVAL;
 
-	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+	ret = data->setup(ethqos, plat_dat);
 	if (ret)
 		return ret;
 
@@ -758,21 +808,8 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(ethqos->serdes_phy),
 				     "Failed to get serdes phy\n");
 
-	ethqos_set_clk_tx_rate(ethqos, NULL, plat_dat->phy_interface,
-			       SPEED_1000);
-
-	qcom_ethqos_set_sgmii_loopback(ethqos, true);
-	ethqos_set_func_clk_en(ethqos);
-
-	/* The clocks are controlled by firmware, so we don't know for certain
-	 * what clock rate is being used. Hardware documentation mentions that
-	 * the AHB slave clock will be in the range of 50 to 100MHz, which
-	 * equates to a MDC between 1.19 and 2.38MHz.
-	 */
 	plat_dat->clk_csr = STMMAC_CSR_60_100M;
 	plat_dat->bsp_priv = ethqos;
-	plat_dat->set_clk_tx_rate = ethqos_set_clk_tx_rate;
-	plat_dat->dump_debug_regs = rgmii_dump;
 	plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
 	plat_dat->core_type = DWMAC_CORE_GMAC4;
 	if (data->has_emac_ge_3)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
