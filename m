Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C1C8C79F9E
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 14:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVc2wBsdYxcBW2eZCBo8TMysoUSTg3j47kZ5MYIfax0=; b=z1d6MtepQh0Sgu
	LigUt+YuZ/GR9bYeVbpx4V9GZPMYCu4nBGtzMJL9P9zY6W8RDUr+o0w3PUUjRyy3KtuU3Nd0qfGK6
	gcZiHhanz7yrC8040ORu/AXHdksTefaMTPEIoCZpDk9X6+cmN+RDxEPtYslnxxfeFCRMwYzJN9cpt
	JBj+3JQ+se3zbfaBN7dWKYH3pzKGMXdMcH380LbauV4ELgGpI1uoMximeaEyQ3vQaLS7Ge1TaSXi+
	+8GIojwf8JeUQM8ZskD4PZzWs8YppQlDfOpr2TNVQbSLW4ZlG4k5neDvYJ6aVrdu2tZOBC1epfRXR
	WTXTB6hWtjtlgFLcIDnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xI2-00000009NQk-30yg;
	Tue, 08 Sep 2026 14:59:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xHN-00000009Mez-2S8h
	for linux-rockchip@bombadil.infradead.org;
	Tue, 08 Sep 2026 14:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Jfr6FHf4J3HKMLFr5umwwFEv12n51Ck9PHChu4Q8jgc=; b=L6HZo3JrJ1kXBTqrf/nr9qynbz
	3KRGfyoa3dyejUO/dEHTuPSwkLjpp6zrdKcHuK7yWpGnNIzuJ9gHcv625BQI7shGCCvP7XMkp4VR/
	+FxblH42Es5+bp6RJtJr2ln35a/jrcN6QgePfc1dpqco2opxv5ueWQS2LYPH+6w9oF3rjBu46/aNf
	AvnXAheVuMhU1HQrvlLu1OCxfEzqGeOUp0NQchQXGGXYskZ9WKelOYt75tF7sfdg+ARM/Ra86RVvG
	2WqjXQnq+BFFxCaiQ/UpEbF3U+ugPJHQfV7dDmbYlGVhbFN5bLHOVL4vbYVgW09iSRG3GE1bdO+iZ
	hjFGlA5A==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3xHI-0000000HZee-1YO0
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 14:58:32 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688Ej0u42607759
	for <linux-rockchip@lists.infradead.org>; Tue, 8 Sep 2026 14:58:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jfr6FHf4J3HKMLFr5umwwFEv12n51Ck9PHChu4Q8jgc=; b=QcL90SX28sMJz/oP
	RCEE9rGDQzWYr8VpzenkeyQmuGNcouSz4RdqSAsVENDD77fbc/t7BUICoPp3Hd/1
	gxCObDlZZ0WsCYVi7yGsvKaZDjZ1xgtnOf241uQ0aP8Nu5+VO5vvjXDE/TNchvEh
	iYtA6y9cfN2TryAH4kmm9/CXVA5684CfxJINS0BPGaquzxEwe8wlPmeGmS6Y7rfD
	u/eyCJRiqFDEhL8cWpF+DlAyA+Ap0JiPFwtcv+E0BUXIJqgkjFipQs9x1UXVHqUK
	6r13tIQ4P8yHW74mofiyTAd5696EdDDRFojOILM6T3B/OrEwYh7gr7Qem8OL+Wsb
	Ox6bYw==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjatjjpg3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 14:58:26 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-98087b0c5deso3085076241.2
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 07:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788879505; x=1789484305; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Jfr6FHf4J3HKMLFr5umwwFEv12n51Ck9PHChu4Q8jgc=;
        b=kLXFRdSGPHspdTeN4Nnh5X189f6LDbJB9HI2NGtJcR7vrfIRgTJwYCEVgfD79F3IK5
         Shv8apkSaV9dXrIZP16wwip+9RanHjbPydVqdv2bjAudivWauf2/GFhLjTyaVy/zg6f3
         XGykN95HVEtJPonr9j3UV/DC9mL0izav8ibQ7MiwkyLkPOQ2L1V8N/j0BX02T2fc94Q9
         rU0o5Ot6R49ZAtITrPOVu8lmCJaHukI+nHR1aPuirDziVPZwL0ZBbfSbZv85obyeZi8m
         npTMUNXBso2UVCpXmd0BBgBJfME5qF53HVpE6pK8WzC7nqezNfAI8i/ZFCjwTxwoWCoQ
         Ixyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788879505; x=1789484305;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Jfr6FHf4J3HKMLFr5umwwFEv12n51Ck9PHChu4Q8jgc=;
        b=tBG4Sa+6BkmqZIz6GRzkqm8HjWSns65bFRPUf3vLv+n5t9m/v8ZH1nDePhilN+1CAH
         +LhKTO5Ba9EOKftHru9hNOAUErKtYpky0VOy1zNB2LkpUS5lJZazUSsDlC29szPxopk0
         xx+XNJ15qGOaoxfXw0KzlTlLISTBzZAMLdhJ1FHkc/dNeGowLohjHtuynoImlyC+cWG7
         M9A33BwPtY6mNrIHqpVlmphEnCaY+jbx08FiQLBtO4ke0DwgST0lNb8w3GXuh5iu76lo
         IZxj0X2eU/xDlWleiYKF1YDYM/JdnAEwi6ScO6L3NXq0ZlMlnSiMDqzZQhF8NR64DyVD
         0LOA==
X-Forwarded-Encrypted: i=1; AKwUvBybM8ZOq6e78wu/VHhiCf/hfMnQHbj9FRQWvdlXJjbkHWTsnUM1GcQhHs3cgdU5oylrff/QXgAxchwcm1HjBA==@lists.infradead.org
X-Gm-Message-State: AFuF++msBfEfI+JdlGe6RyVlGs3koXbLqxISV1nBg1bDzm3538W7jDUF
	8R9jrA8/ozSFidt8YaUnFSWVbiMq/Cg3GPqWwBtvYa0gupukg50hgaxQ4YFdm1IGitrIcUHVB1a
	tWnafwixRVL6Fpwtr0O00EOiGbnwzzdh1oc4Zh4GmeaMdoSVPYaa5lkFJetALdjQaekaIJPcz5I
	s=
X-Gm-Gg: AYBFou3p2ur+PDRSzmx2QYiNyDNMqRMvtUpkrDSpIN2bP11Cqy+7G6I2E8dyg6XlX8k
	6uEWeAiZYmuPOXnJgIpLW2rZQwvFVccPyB6QnPzmg+WkCWsJ1CPhOiuXOOGTgy843Ag1SuOh9R/
	lfupZLP6X1TQHO6DDt5MyZrMfGpqKSYhdYTBIRBNKUo2/FrfRUTD/sYMABAxkaNOr1zUlS4r8eM
	c05Inm3YgH5YSNKvvJW+c+0HiCXqTudMTvPFfBX8DI+OCStgxmSHHnIW7vHXwtJpheqQpPDbypC
	50K5SuwAIKnPlX2sv9MSpHfNvYQ1Zbj82AL4g+VLwiz4QwE4qdFcG3OpLL8AarAS0eJAziL8mQP
	AXOewWWGoMnydUFXXSI5AYykVMYYQ
X-Received: by 2002:a05:6102:5487:b0:738:1ef6:51b9 with SMTP id ada2fe7eead31-78a4a96d8c3mr12542095137.5.1788879505251;
        Tue, 08 Sep 2026 07:58:25 -0700 (PDT)
X-Received: by 2002:a05:6102:5487:b0:738:1ef6:51b9 with SMTP id ada2fe7eead31-78a4a96d8c3mr12542018137.5.1788879504733;
        Tue, 08 Sep 2026 07:58:24 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:79a2:f118:df09:fe51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485958f1493sm25191276f8f.37.2026.09.08.07.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:58:23 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 16:57:28 +0200
Subject: [PATCH net-next v14 09/10] net: stmmac: qcom-ethqos: factor out
 linux-level setup into a separate function
MIME-Version: 1.0
Message-Id: <20260908-qcom-sa8255p-emac-v14-9-ec212b747a7d@oss.qualcomm.com>
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
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7477;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=tpTcvMP4H52TudHkrbQVYa2cd+espkFD2aaWl0S9lKg=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqoCJvjWHWOCPDXWJXS5vSSZxUqE1hzayX4vd+P
 MzfOs3fj9qJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaqAibwAKCRAFnS7L/zaE
 w9S9D/9nS3tATNyOBAs1H8Be4m1od81ZrXUJD3itvznkNicxqMMv8ZvLMS9dGpFZxxGVqCJCpPw
 UPYw9+l0sDp99MQCVj34NeuLWHZCyqGg7PUIAMCalWzSKrJI2xpHaU2fkRvkn0eIxuOe8yE9uJs
 3SpbtbuO7PyS1myqG1r9HCU19rG2W2pEkvncOlu4twfQu1RU5MQwo80taf9II6+yVa6oMqfGoKN
 z17wT/Pkoi/SA7U7SBT/iRqTgtX8JFpwr3U9x31kg9tX4024/SR/kbhvx7Kj0nvnbIRyCJCx7sI
 /FlI1pHzymWABE0Q+mIHkInPahwxf8n5pqIMEA16/YHQ0ORs60eG3kP1aTcbIynJWUOeZ989XSw
 CZBFHljoRoIMVJ1f4px0pc8olTlqL0+bOKH/qB3mhzqIqLUB6s4gbnwGN1APBJzkOYYZYoqywbT
 DVAkL7AMBrmPbLjLp4vf5YqXM+TflWysTgvpZgZ8kc4ITXUqXl5Uhohv0fn+62af3q9oU0cRMXn
 GSUOl0EtjhFoapNY0BbUUa6jdN6LCAos4WEMMtd6sH8O0nWK3gXeuMIBw+XqZqD1wxjayvjv9ho
 D5KFGPKFgGnXDIlEphRYUbhIFi0GEmIXBcIIGgSHMrq1nqgcXx3N2dVBQ52Omn9pPtYOlel4DP8
 J3RdmF7HMPpJmBg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE2MSBTYWx0ZWRfXzjSs37I6LsEl
 I3gOPvcV71zYqXSGTrQC/gNdK4PEpdEDBP8dAjTgLsRp0sULW/wuFloUVGVFJP6Vbw0Mq3gGchP
 4APfwhzbEmpsXEMKuFGopX3AEzWdQS8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE2MSBTYWx0ZWRfX0Ablv9RSGtzw
 OSMT/Ea2dkaHFLLqninRgFh02uajmI5CYnOlXFtJ6WzcUnztsUJJ/Wwp0rxdx19YsYxj0b+wMBr
 afKPFghGfGFlcJqm0/H2ghtoPZT+i5JgS+2w6SM6A0BOTWOeuEa9Y8bUZXBWXm+1CYsoD2pt6Qq
 2H7lDshqV49FL/yWVEebKNaJJMP6in2c8wEG7Grlg2CYQC76ljc3g0fEKYAYELkh6PkUOo8aOCM
 sQm6FHNC4mcZ9/65qSPaDoNWvAft6ib5pvPF9Y4Fk1BYrHUF6YoBeUqH/uCzv5VJ+c0FX2AuvHd
 vmLhS7fvYMtz4ec6DUWOIm2h1Ch8nlK0E0j3tC3nQ3DvKLFFGIj/c8mIClJtTyeUsNDlvsND39W
 puDGN54oF4IXW31IUF2Yrxj5SwSE8Du889xBi+XIBPh061bgVVaAfoQpa0HzE4i1LEkYcE+oz6d
 k+0MScAHOoZzAl0+EeA==
X-Proofpoint-ORIG-GUID: G8I9QPxqCDmAi2FJpmM3_rKMfLqoxhqR
X-Authority-Analysis: v=2.4 cv=QrduG1yd c=1 sm=1 tr=0 ts=6aa02292 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=dj4JEN0qHmgdNMwDfcEA:9 a=QEXdDO2ut3YA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: G8I9QPxqCDmAi2FJpmM3_rKMfLqoxhqR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_155828_754496_4A6FFB0F 
X-CRM114-Status: GOOD (  21.71  )
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
index ab1bcb7eb18e22f01556c190f7d8cd8eeba4d0c9..509a5368e69a8fa440bf3b4f58f7b09a683558f3 100644
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
@@ -200,6 +205,9 @@ static void ethqos_set_func_clk_en(struct qcom_ethqos *ethqos)
 	rgmii_setmask(ethqos, RGMII_CONFIG_FUNC_CLK_EN, RGMII_IO_MACRO_CONFIG);
 }
 
+static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat);
+
 static const struct ethqos_emac_por emac_v2_3_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x00C01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642C },
@@ -214,6 +222,7 @@ static const struct ethqos_emac_driver_data emac_v2_3_0_data = {
 	.num_rgmii_por = ARRAY_SIZE(emac_v2_3_0_por),
 	.rgmii_config_loopback_en = true,
 	.has_emac_ge_3 = false,
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v2_1_0_por[] = {
@@ -230,6 +239,7 @@ static const struct ethqos_emac_driver_data emac_v2_1_0_data = {
 	.num_rgmii_por = ARRAY_SIZE(emac_v2_1_0_por),
 	.rgmii_config_loopback_en = false,
 	.has_emac_ge_3 = false,
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v3_0_0_por[] = {
@@ -262,6 +272,7 @@ static const struct ethqos_emac_driver_data emac_v3_0_0_data = {
 		.mtl_low_cred = 0x00008024,
 		.mtl_low_cred_offset = 0x1000,
 	},
+	.setup = ethqos_hlos_setup,
 };
 
 static const struct ethqos_emac_por emac_v4_0_0_por[] = {
@@ -297,6 +308,7 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 		.mtl_low_cred = 0x00008024,
 		.mtl_low_cred_offset = 0x1000,
 	},
+	.setup = ethqos_hlos_setup,
 };
 
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
@@ -692,6 +704,58 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
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
@@ -713,23 +777,20 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
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
@@ -739,24 +800,13 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
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
 
@@ -765,21 +815,8 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
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
