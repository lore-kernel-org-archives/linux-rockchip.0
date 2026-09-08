Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 774E5C79F82
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xC5oizDHYh0Lr5IMkyqA10zwtHvfaTEG50DIgWkXNQ=; b=UBuqmvPiXv+JAk
	GRiyR6I/eLFFf6tqSWUDH5IrYH3BJqyYHfNVejmKMSExHfyK2d1a0/2JN4eshuxKs0ktW1ZF9AIFr
	cp9EzxXutBFDtzpKBVWQEJR9nhHECqGMS4kt6OQb8sPZ5Mti+WNrOqn9DX+oVlhLOaaIn3P7RugbF
	8FkqrhlKJ3RnSSFj+dwTLrqSdh25YnRKrFYKlYIEVePAB2YLqpENfu8smToCTO2wTUqUxNowPSxLu
	LXkmWbhtHMkJDQjZeZjMC/spCM0cMtK8tL1j5OnEuukUIFLK8hm15/x3dJGhnnjTt7YKPguAbSfXu
	XnocpNxbNpz+c6DUAz3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xH4-00000009MHp-0UUE;
	Tue, 08 Sep 2026 14:58:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xGx-00000009MDS-2ORC
	for linux-rockchip@bombadil.infradead.org;
	Tue, 08 Sep 2026 14:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=; b=E+BTdrzbEoKfeTUei3xHxJqGls
	4aUJXaBXYSEtz3vX4/HTLrPrz/M9MOBxyB1foP0EOpfgo1O19rczGjuFC4XdAeEM/4t5qROBZJDBV
	ZDsdYjSmRLbMG2BKAui2R+34lenxLEIfSsySCOaeWYOTV4xTtC9c0OiPpDHC9AxPUkthbIR14/hIu
	008QssQ0xP4RlVajoOLiPS8tTP7VOemOMDO5HazDSYcerXzTuiliv6KnAUQFgYC/bjTVOadjbmpnE
	ZELUj+lCLqHw3I4RDtpKjaKuEByFf4KD7B+lXOLhcDFExe6rd3/H4GFQUlUZrqMtKJo0+oKKdeEdR
	IYzwjMUw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3xGt-0000000HZZ0-2s7W
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 14:58:06 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688EjJgb3627573
	for <linux-rockchip@lists.infradead.org>; Tue, 8 Sep 2026 14:58:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=; b=Tx0KeTIt0AOxpg1Z
	EI3PzlCzkOxqx31uyixTbn5VZ2vcGP/cfKpWNggL11BX4NRpgK3vbuttK23ugi0P
	NyK6aVgGqPjJ7NsQboVYsOnhrRYuQ1NHtARXej7cmss8eLdezFM46FUs0+MjtPBk
	lq/RBD/byupgRAGykXT1bysneTIruSD7pLgaDdp0jviV5s1VXXxlknoh8jV946TY
	tG+Zyz/RU7xT3FuZZxbsCksFjbU32dy8LKZZDMV4Ek3RI/bbB7BPAOX2hEq8ErGK
	l0vmqKSFncRg9gCyJfhC5UlNZY/RrgviL65EDkjGaKQCGCXOdIRwzsTu4HMv+zr+
	mFiP2Q==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjcv7j7rc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 14:58:02 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-737d34a0dc8so3650034137.1
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 07:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788879481; x=1789484281; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=;
        b=Buy2i00G2Aw+lK/P/q7ji8rBI5mveaz4/HJU7i8xdVMoP4sSSfPjpKH6jyG68rWKyb
         kEFIzAN2N+bnfh3fxcfr1+1i6pInjwvw0OFnJCRuRgR4+Wki6/B7vkxpMO052yhPazjW
         ahOY+rQa+2bZXBXDvSyM1+qJMe6LYaozaGNRs2F4ZuND6N5rt+Y6X1h+G+SGzVvmG0Bl
         Vtlm5rPOG0krEV/Pkpd2jEtwj1tPwp0AeABQdYuR4B1Dye1nOucy7vbxAVGf69M4/RKN
         TpvI2CoYMsCOf9c4+qVM6RWzJGXZsFOv4GlZuHqOLWTosPS7X+1X5HFassWrVZMtVKsW
         q5Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788879481; x=1789484281;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=;
        b=FqP3juDgijvsfJm5oVMbnYZNGa1zjMkkC676MQ3mEbTBxpny12sBpEppSdkj3XFAft
         VzAzIq+Jz/i7VDikhzpSgmogV8HYKwPFV9d4dGRQ09GCtZG6E5hqqsXwbknmUADb6t6s
         Dauh4IbGxHU6EXjMREsL1mdhGadCGjXArBsr7kKn4/1NwWcubVnDQZub1d9jvQmTWH6m
         UmkUEpv4XWxUtd4EY4kPxvgyj4EJAURbzUCXedXGLhrE1GV0s78xAeNG2rYGwW0Vbu0e
         RbUNte5Iai7nwOOmSRTJKkcLmJytKPCKrYt9HEqcSXDHwDp70IwiCgoie+8KL6/RIyBu
         ofNg==
X-Forwarded-Encrypted: i=1; AKwUvBwmunV+oTHXn00ycF+6eXOoX3fdaX5y3i/2wNJED2kzA8F6RDbs0Sg8JTUnZ+VvdAY684L/3LgJWQQ3ez+tBw==@lists.infradead.org
X-Gm-Message-State: AFuF++lEGdPnyTYBmEuqAHH+XAWUSAwZ59kM4Wv/5n5kh0XYa/rEi/oY
	uY6rPA57Hl8FCRDBdY38FgKNp2srRMt++drkQ4EqU411gA5HResQDiGB2uquidCKyNi4z5BK6n+
	31J8++mOGF4u4u5r310rhERs5RXolAErOdl9V4qIFNqQe374UuSQ2xp83s/6n5K0VeRrAHYRp9u
	s=
X-Gm-Gg: AYBFou28SFp0VmpbZm6Ptg4UvkzMryrORQlinkTDetz5fIpDFfM7TU1aN7Jb/7EmgPD
	pv9CMIT3GSvgu5JAFhikyOJZ1L5BwkRiK/uR96Zqwb3IB9oHpWD5Jcc/4nX5w9qXbUlbNsmdo1b
	YAq7X7EkUiMKeC8PKea1mG8Dy/M7jq1WANDu3HYM5Apbl3Fb2ZHmUNErzDO5e27biVQHvZqG5ms
	zlZLuWzg8ooGoXownpOXkqawOn/48SRo1K9VSZgoeb/drs2Q4SnsKsoskluS/2r4wqj+yRypGyE
	DdTFcSuKbc6gn1ZsIySKRUI0vVvYEnTYb/6w1Hw8n18IvtxHw7wbIk1vp85BHNLVkebKBiZkgyo
	tzQ983lIVxsWZTK6skRWf2BjTQu9Z
X-Received: by 2002:a05:6102:290a:b0:785:f288:c23 with SMTP id ada2fe7eead31-78a4a918bdfmr12691812137.3.1788879481293;
        Tue, 08 Sep 2026 07:58:01 -0700 (PDT)
X-Received: by 2002:a05:6102:290a:b0:785:f288:c23 with SMTP id ada2fe7eead31-78a4a918bdfmr12691786137.3.1788879480827;
        Tue, 08 Sep 2026 07:58:00 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:79a2:f118:df09:fe51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485958f1493sm25191276f8f.37.2026.09.08.07.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:57:59 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 16:57:21 +0200
Subject: [PATCH net-next v14 02/10] dt-bindings: phy: document the serdes
 PHY on sa8255p
MIME-Version: 1.0
Message-Id: <20260908-qcom-sa8255p-emac-v14-2-ec212b747a7d@oss.qualcomm.com>
References: <20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com>
In-Reply-To: <20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com>
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
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1956;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=BfrbL1Fwh6l+Z6nIdrB6wR8juwiurOHR3kGeK2lY/yQ=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqoCJnajTItqWRiT6SMc37O+jx/iYaFaHW4w2Xx
 saScv6vyGKJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaqAiZwAKCRAFnS7L/zaE
 w++tD/0fr2YRZr6C7h4q6iPVWjh2HNSX4GV9MKYWKIYBmYFejDYaJEFc4h98X4UjI5Rw1vfad+B
 /EYWEucAMPhKHZQqcKRsmq9VqmbfcIFXrFVI8rRRuHhLp0IWaXYIIeSecT7Uu2Lbj1tDFgUII95
 juhVAMKcY2pDV4SasZOyYAKEBo49uQrVuTG74OWjZ/F0bPqy+RzfXqcnavEpTBzq/DKS0KYKsvh
 FeOll87EJdwRuJmIgANys9iKZRuag6wHKvdzv+6cJnSE2TrRlL5waOQAyiQ/Z6t6YUF/gQVJXX+
 iQZRwGUMtY7eJdwLS8X/2MZF8gMzIYh9Lct/RKik0ZNiHpTc7mc+Vs3kwj96kscXCK12u2XXMIF
 9ueQLpXb3y/gm8jDFwekh+uZ0j5ZUnUnKsDLZxuF0iVNjQFbZuJPf81dcBV4f14ddUdOpBKz8qv
 2EaOTsJ/6GqT/YBtlLSJKA74dZtPs4DDosX6jcqJ9Ujrn8+gJnhOFp5Jq32nMVYe1Qx9BKaliPM
 X8fJX1IUax5vBGTEiueUd0MyoDwfm5Ps5zAFCVrhgD9Pi06qFACTxu5z4+WIl0YDKnY0NaqjX0a
 LEYtyDlUEFpDHJUuaR5ridtl4gfyUa+f0oQOCFnR0C27C4ixRpilc3ub3jVoBu5XUvvy1Iw3DJS
 1Is5ebpQSqIVC/g==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=CMEamxrD c=1 sm=1 tr=0 ts=6aa0227a cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=wENndLYK2PIMvs9AUu4A:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE2MCBTYWx0ZWRfXzNNoXJ0sg3Tj
 EzHLoOb428bX3sTvCPDEGB31octqTUYMtsn/sEBBJzI3p/I6O+iGBs7sZ41UfFUfn0kOZSr12ol
 loKqoFG/V91jWVvhwx98nksksI1dyWs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE2MCBTYWx0ZWRfX9POC7/Woddte
 H+Sg395UhneQPbdGyhrRuyn9h4xhr+KaniO9cwMyPJLNiDKDcC+CNemE2D/ZqR5JHabSoKKf0xJ
 H/uMjPEKcApLM8E+ImGdbEfudTlHBpsVWU+LIlf10FdhixndEqRIPsHZZL1BSjMoK9I/FMARrZd
 p0r89Yfn8E3GK4ojWQ3uikP/v8SIS+rH2On/QpvTTgIOMomuQfp70ZUH4PXIaRnoxjzNyjx1HSw
 gNEw555/TNfrKxBY/UYTm6hnkYgiRak8N1J8ZQ9Trb0KY99FIcHB+JB2lnjA3X24zLPkSKLuL0j
 3Wz6Jg4tdKbQa6ymPlPrYIlQ6cita/B7CUFK0c5hza2QPeQ16pyL2ehrXej3GDVq/8ieRI8+cex
 ks2SxmKuH0T0y3QtzIcOL0tMu7Uw56uruCviQUkP0P530wgqb5/0bhAbQeDekk8Gsi/jtRwriSP
 mzYXxJGDam8Ux3xm+IA==
X-Proofpoint-ORIG-GUID: iCLweefGNBgkr_2oios3w9zhW5ZEsBI9
X-Proofpoint-GUID: iCLweefGNBgkr_2oios3w9zhW5ZEsBI9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_155804_083680_405DE230 
X-CRM114-Status: GOOD (  14.79  )
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

Describe the SGMII/SerDes PHY present on the Qualcomm sa8255p platforms.
This is essentially the same hardware as sa8775p rev3 but the PHY is
managed by firmware over SCMI.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..9e846e381555514bb32177f884abf0cf2c942948
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SerDes/SGMII ethernet PHY controller (firmware managed)
+
+maintainers:
+  - Bartosz Golaszewski <brgl@kernel.org>
+
+description:
+  The SerDes PHY sits between the MAC and the external PHY and provides
+  separate Rx Tx lines.
+
+properties:
+  compatible:
+    const: qcom,sa8255p-dwmac-sgmii-phy
+
+  reg:
+    items:
+      - description: serdes
+
+  power-domains:
+    maxItems: 1
+
+  power-domain-names:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - power-domains
+  - power-domain-names
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@8901000 {
+        compatible = "qcom,sa8255p-dwmac-sgmii-phy";
+        reg = <0x08901000 0xe10>;
+        #phy-cells = <0>;
+        power-domains = <&scmi7_dvfs 0>;
+        power-domain-names = "serdes";
+    };

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
