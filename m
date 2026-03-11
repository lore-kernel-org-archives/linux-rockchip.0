Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0752B1125857
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 17:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LK7sMepfBTZyLwq042OtDG3Ei3AwRKe5gCnSIQxu7iI=; b=qiFyYiY8fCJUFY
	FX2qSz8wwT79EtlDRNMMbCLxZcw7qYRNa/Wjf14OTLfHaHVNzqWMxbonw+EmLZ8oKMCqcUF4PshZY
	07aIp6JQKyVZSWRMg4BXvaP0GIYuuyGx/LvN5NnzWAaN5bReVPFNOjjjfn2jMFpN3DPqLH3AaAlsp
	Po8e9mEaAxW/dvztKBfQBJLn34FrqeXe+NMdtUVOVqbRUMqxbcVutmY/OD3EL2QMwnzVBTZPH/Msu
	uLEFc/dXI7POE+OuRHdHATv7kJ8vg4kp1PYsPPj8pkFQz33rt5O0GZy+m2e+JcfLOxD60n11ogKq6
	h+dPI/X2AhVJM9hOx1KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Myc-0000000BxtW-1WC2;
	Wed, 11 Mar 2026 17:04:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MyZ-0000000BxqN-3ZBH
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 17:04:05 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BGbVRx2038152
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 17:04:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DdNThdRihGWGTtsHIVHEreXNHoN3dnFhuea545i1K1U=; b=cm9n4GcWNBA49hKA
	xC/cvX/GlyFRXjumb3yGn5lhm7Vbv90zjQ+PLibPkb6TlfzGQBvGH++7TBe6vMi5
	d0eJ0pTen4WxrKxV2Yx0H0xdjYlLQggLw8DjDjH1IGv2wx3etcfySl4GRXtC9yYl
	00uBtJpMWJIzV09IOOvJ/fhaCwFZ8hQa/s05FUMfIXN2nTzWn0LW6kjmrd4F1Ifk
	UIcPAt/g3fB7qJFmJz799n+u1iwMAMrA9UCn3KPET66OVcMF5MEXmC7+MCC9hNbj
	P1sCSaVRILwcIhGNRatwe7ezrJGstX6TE+5uDUcN8+gdmcAavuVvF28DOZMyNILs
	lv1kqw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu6a5hjb6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 17:04:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb0595def4so107662985a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 10:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773248642; x=1773853442; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DdNThdRihGWGTtsHIVHEreXNHoN3dnFhuea545i1K1U=;
        b=YG6XsTrhg/eWjdRqpGIqhKQanjwn/xRAK9SVNyaiBmgw+7e3s1O8hsZKuqfUy3E4lG
         xRQNUEzYYX5ovDUT12NhjdpqIWURIuQWrnM0T9VSmg/KjlQgmUID3C2IKdd7whvEg64T
         gQgugX91wGW5hLl0mVgHmGE3WGU6oLBLA7PzmWX2/QfmZ3GbvGI2Q3YtEvD5MwUNEYdF
         c2vV8iHsZQyuxKbeShyR3+54guJ9wZk+hmQPL+3STHTVSWLD5IoRnFd1YYrwGWULG6Lw
         4rJDtB7NuoCa0mH00D6WBkFD7ktTuMYgFOP51X0aUhhrS3JatQWE2k7UNG2Vv4CFGGL7
         IU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773248642; x=1773853442;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DdNThdRihGWGTtsHIVHEreXNHoN3dnFhuea545i1K1U=;
        b=NAGIcIAatYAxp1yibfCUcVBmztVW3jAQJdk3aAbTIgw7M1RxcHz6sM9PZ9EKouv/wd
         sQx5FNdHO52S2i3LSgZFSpPGUjd/K8jJrW47+upE62C81pE5uJqAVuIB9i7KcXS9fZkv
         g1QxWEHYUzZ436SjI4X6eHmvLFHIFHBLNzBLJl0taZ/tpjGkdhPcCoOd+ZQy+Rl2WJG3
         0xtCsFDQ+fUdHQTsY8hBteCiLBLMBOm51ecsITBwraLfw/OZtZ65wUMSygLCVKvenYD6
         ZWgS8tshq9L2DAObSivaKsrZJe5/FVTXAjhaJQyFi7M1t/8+9LcZvTyPar22WWeBOm1k
         QajA==
X-Forwarded-Encrypted: i=1; AJvYcCUMtD+i50/NBi4nlyMROw2EYTYYHd+wjwrZ3taaXfEPuqEonXiOTLcZj4BS2bQdvXAtsq6bXzQoLsjAT2fZrA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwAJOMRi9AnT1hqP6kN+1Xec83qI7YDxOz1e1EHGSjep+SDw4fj
	CjEsN9J2GdB3eYLbNbKrGTDFjpZS7g650O9ZmMcBrUFwlN+6abh/LozAGxL7LKLyOPF+Cfk/CIJ
	SW2sdzLdUOb6NgKN3dZvRSQPOU/IfL7XKU4XnPNPpJp/cTQOQMVQXluIt8y5iOohTcxsVchne+r
	I=
X-Gm-Gg: ATEYQzzmfX2wksUEdJXU5V8Lg0lHWnBWLABU2myPIVDfllgegwoJhe2ZYPnUdaQa8HB
	Cozn8oXZJz1SWPImCBdutowctKOPxjDRjqFXffFOlfHiIbpaBhPHCi97XRYSPZJxT2bXqLvb7R3
	0oHALbcdl34hjgt0FEnB3EzVs0wq1WHsuMwGVla0DIL/gBPwD5OfEIfJC7fjJ9/GnHqQ87Hxy31
	x8LAOYKTCsFL8f3xZXKUUqzOA4xT0momVn3/v4mEP0k5hAIoPTbnVZstAzcN98sznRVncWi/EKB
	28nB6J7TeU3uHBCl7/hd94X/ewg5/LT2Tt8fBwNPIqgIpHxBod9L8puGXpWYG6V2K6L0apRSm60
	whjHp6RZC0OpeZo6s2EseputXElNKqDSCwDidMs6IZET2IuyNuXyB
X-Received: by 2002:a05:620a:4441:b0:8c7:110e:9cd5 with SMTP id af79cd13be357-8cdaa8c59c8mr48922485a.45.1773248641454;
        Wed, 11 Mar 2026 10:04:01 -0700 (PDT)
X-Received: by 2002:a05:620a:4441:b0:8c7:110e:9cd5 with SMTP id af79cd13be357-8cdaa8c59c8mr48914385a.45.1773248640826;
        Wed, 11 Mar 2026 10:04:00 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:3a92:6740:d71b:5056])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541ad1e4esm167993075e9.8.2026.03.11.10.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 10:04:00 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 18:03:36 +0100
Subject: [PATCH net-next v8 1/6] dt-bindings: net: qcom: document the
 ethqos device for SCMI-based systems
MIME-Version: 1.0
Message-Id: <20260311-qcom-sa8255p-emac-v8-1-58227bcf1018@oss.qualcomm.com>
References: <20260311-qcom-sa8255p-emac-v8-0-58227bcf1018@oss.qualcomm.com>
In-Reply-To: <20260311-qcom-sa8255p-emac-v8-0-58227bcf1018@oss.qualcomm.com>
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
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=18077;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=rXWnMOOgFVUeIGXRItGr0yPlSoEMqi/bt/pRP3TNKvo=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpsaBy7fO69vCVv+TRfrllmVOWbSwUPexwq/6UK
 IbdgLkMOhiJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCabGgcgAKCRAFnS7L/zaE
 w5DMD/9N20RVgGPnAx/HDgCoFz9JDgP1iE2hSQJPXU0229GHBTWXKpydZ8UeCpQX+1rX/OS7Jc2
 sBijppn9auzkkKHKF8JrlMXvs7Ds7JpQkjqtFyYtBB/+jUuFdn+bDo9Wap6vjyABhMs26u9mrnP
 pQ3D1Jh/4e8xfOXeODJU4iiJoCh8IEJm99iekBm9VcabkjeJIcTQEK3hB3epZ6PF/MaENytbiWa
 U99caeosCMlK88GapGw44I2n5LKpS6Fxbp2NFLPMaMczzchWzTWBOnQc3k91si79r0iIdB9OjdH
 LnKTNVmHI0o7AX+wgkBPLr5r+zCWXTFHwyk18XwOhgJqK1HOMTtDfjKfUi4XpVgQc+i8pYuE1bR
 DtQv2fkw4dae/i4dwGOjzzsE30bvYDlBPCrrD1jTA2qfOxv4bQPLR+5hlvIbLmZKZyk2dRi7AJP
 yegsxIb3U7kphuBefjU3ssPVDo5U/XbDK38DKvuJSGQp4TuR8Lf9WMyBPdR2nAdM6glG13VvklB
 +FHOQD2q+o7fjzhNAki2EKVc7sNI8KS8cs+NanrSc9N0pZHDtANnTzx2MvYMPuEfE64ZWCg+8jw
 xutAeWqhIjSl8tlC1ncYMvbWJe6xWc8cGXkBehtRT4Zil4yLClt25ESXd073LLIfrquAo4Di60U
 pQsRPLe2RoCZMtQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: 3MXww4EU4996I2o2rFI7vn-BTQXqe5wv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDE0NCBTYWx0ZWRfX61iJIl2PeWWq
 roHNxOesoIEqvh+GQ2wLRepidQkIcTuMD4iD2o2EPlQh+poe62kchahM5q023cJuOKKEjmZRUY9
 YtuJKpnlDJ4fkHJw0euT7rW5ch3OutsuI40yYzlkfxQNVOxo2c2QZySppmivY13FrjYVEq2Ms3s
 +dEYvLE4GaqbM2wjtQkyovykjkmReZ3zom97B5U8G0b5Lm6y1GIG91iiQUdVijkx7/b5OJ1JLoZ
 bC1ICqW0fwDtJTC6cPKgP4Gn6qxdgeZqMGx0b2o53vAcduFxN9qZb8wEDZRdn5dAND9zgNp02N5
 0KBqTChO22FJPLEOXLs5fGjSR7SllAc9xKf+2G7Lyc0lDmMPJ21M3SwZ8ggenkR55OHARUaTnfn
 QhcfJz3VEQ/gvsYY+DNvw7zXdmjobvnNeTFvLApBGljDTxMg/jaKQ900zm9nhgZt3Eilj9XpJVl
 bhxbgCfnrM9mjjlhlqw==
X-Proofpoint-ORIG-GUID: 3MXww4EU4996I2o2rFI7vn-BTQXqe5wv
X-Authority-Analysis: v=2.4 cv=TtLrRTXh c=1 sm=1 tr=0 ts=69b1a082 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=gEfo2CItAAAA:8
 a=KKAkSRfTAAAA:8 a=mK_AVkanAAAA:8 a=EUspDBNiAAAA:8 a=yC-0_ovQAAAA:8
 a=VwQbUJbxAAAA:8 a=aDaa4yMnCzVJehp5dXUA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=3gWm3jAn84ENXaBijsEo:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_100404_017263_FF61315D 
X-CRM114-Status: GOOD (  13.26  )
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

Describe the firmware-managed variant of the QCom DesignWare MAC. As the
properties here differ a lot from the HLOS-managed variant, lets put it
in a separate file. Since we need to update the maximum number of power
domains, let's update existing bindings referencing the top-level
snps,dwmac.yaml and limit their maxItems for power-domains to 1.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../bindings/net/allwinner,sun7i-a20-gmac.yaml     |  3 +
 .../bindings/net/altr,socfpga-stmmac.yaml          |  3 +
 .../bindings/net/amlogic,meson-dwmac.yaml          |  3 +
 .../devicetree/bindings/net/eswin,eic7700-eth.yaml |  3 +
 .../devicetree/bindings/net/intel,dwmac-plat.yaml  |  3 +
 .../bindings/net/loongson,ls1b-gmac.yaml           |  3 +
 .../bindings/net/loongson,ls1c-emac.yaml           |  3 +
 .../devicetree/bindings/net/nxp,dwmac-imx.yaml     |  3 +
 .../devicetree/bindings/net/nxp,lpc1850-dwmac.yaml |  3 +
 .../devicetree/bindings/net/nxp,s32-dwmac.yaml     |  3 +
 .../devicetree/bindings/net/qcom,ethqos.yaml       |  3 +
 .../bindings/net/qcom,sa8255p-ethqos.yaml          | 98 ++++++++++++++++++++++
 .../devicetree/bindings/net/renesas,rzn1-gmac.yaml |  3 +
 .../bindings/net/renesas,rzv2h-gbeth.yaml          |  3 +
 .../devicetree/bindings/net/rockchip-dwmac.yaml    |  3 +
 .../devicetree/bindings/net/snps,dwmac.yaml        |  5 +-
 .../bindings/net/sophgo,cv1800b-dwmac.yaml         |  3 +
 .../bindings/net/sophgo,sg2044-dwmac.yaml          |  3 +
 .../bindings/net/starfive,jh7110-dwmac.yaml        |  3 +
 .../devicetree/bindings/net/stm32-dwmac.yaml       |  3 +
 .../devicetree/bindings/net/tesla,fsd-ethqos.yaml  |  3 +
 .../devicetree/bindings/net/thead,th1520-gmac.yaml |  3 +
 .../bindings/net/toshiba,visconti-dwmac.yaml       |  3 +
 MAINTAINERS                                        |  1 +
 24 files changed, 166 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
index 23e92be33ac8609a16db530782989caed22a5730..b12632545673b2ad0148a677f45a7447309a43cd 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -40,6 +40,9 @@ properties:
     description:
       PHY regulator
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
index fc445ad5a1f1ac490e921696d6f7ca83d15de459..448e617cddc4cda8dbc77e83324495ffd5dfb9be 100644
--- a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
+++ b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
@@ -140,6 +140,9 @@ properties:
           - description: offset of the control register
           - description: shift within the control register
 
+  power-domains:
+    maxItems: 1
+
 patternProperties:
   "^mdio[0-9]$":
     type: object
diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
index 5c91716d1f21e617543b03c5a90b993f8aee053c..9c9cc3ef384da0270489c21b3426572ea46d9499 100644
--- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
@@ -158,6 +158,9 @@ properties:
   interrupt-names:
     const: macirq
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
index 91e8cd1db67b8e14961497a7254e6b01dc4e582a..c1b67cfa76d070d5e8349d5e92ce6bc4bf2ab67c 100644
--- a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
+++ b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
@@ -83,6 +83,9 @@ properties:
                          register
           - description: Offset of register controlling TX/RX clock delay
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml b/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
index 62c1da36a2b5a29290e5e01be87c48158c4adf89..e41851931b947559c89b0cd6f4756f71046f9594 100644
--- a/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
+++ b/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
@@ -47,6 +47,9 @@ properties:
   interrupt-names:
     const: macirq
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/loongson,ls1b-gmac.yaml b/Documentation/devicetree/bindings/net/loongson,ls1b-gmac.yaml
index c4f3224bad387b87a5b4a3049dabd75f2c4bd42f..c9a131b8d8304c41559a416b324df749c0a87d14 100644
--- a/Documentation/devicetree/bindings/net/loongson,ls1b-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/loongson,ls1b-gmac.yaml
@@ -66,6 +66,9 @@ properties:
       - mii
       - rgmii-id
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/loongson,ls1c-emac.yaml b/Documentation/devicetree/bindings/net/loongson,ls1c-emac.yaml
index 99001b940b8361f69bb917617f857ee99f4b3fa5..49db18423dd807683b9bb297978f5da8ea6cee3d 100644
--- a/Documentation/devicetree/bindings/net/loongson,ls1c-emac.yaml
+++ b/Documentation/devicetree/bindings/net/loongson,ls1c-emac.yaml
@@ -65,6 +65,9 @@ properties:
       - mii
       - rmii
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
index e5db346beca9649be4f97727b78fda8973095912..b240c76e7dd5254d0c3752610c4aa848a3c3d65b 100644
--- a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
@@ -83,6 +83,9 @@ properties:
     description:
       To select RMII reference clock from external.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/nxp,lpc1850-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,lpc1850-dwmac.yaml
index 05acd9bc7616356e68090ebdd4df20e42f70dd7e..f61188ab0dbe3c0cec5b10f7a65dfaff4dc3898f 100644
--- a/Documentation/devicetree/bindings/net/nxp,lpc1850-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,lpc1850-dwmac.yaml
@@ -51,6 +51,9 @@ properties:
     items:
       - const: stmmaceth
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
index 1b2934f3c87ca21ec67369fc34b3234cc3d9d60c..aa8772e77385ff265510a5d53b5c9e7e9ced086a 100644
--- a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
@@ -64,6 +64,9 @@ properties:
       - const: rx
       - const: ptp_ref
 
+  power-domains:
+    maxItems: 1
+
 required:
   - clocks
   - clock-names
diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 423959cb928d945aa3e758a3c803d12bd61ec42b..ef520f8105773e22c0536ff419dad55fe316e1bd 100644
--- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
@@ -86,6 +86,9 @@ properties:
   phy-names:
     const: serdes
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/qcom,sa8255p-ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,sa8255p-ethqos.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..72bb764c0ca046e0df4bbffe6c323850f5231787
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/qcom,sa8255p-ethqos.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/qcom,sa8255p-ethqos.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Ethernet ETHQOS device (firmware managed)
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konradybcio@kernel.org>
+  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
+
+description:
+  dwmmac based Qualcomm ethernet devices which support Gigabit
+  ethernet (version v2.3.0 and onwards) with clocks, interconnects, etc.
+  managed by firmware
+
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+properties:
+  compatible:
+    const: qcom,sa8255p-ethqos
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: stmmaceth
+      - const: rgmii
+
+  interrupts:
+    items:
+      - description: Combined signal for various interrupt events
+      - description: The interrupt that occurs when HW safety error triggered
+
+  interrupt-names:
+    items:
+      - const: macirq
+      - const: sfty
+
+  power-domains:
+    minItems: 3
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: core
+      - const: mdio
+      - const: serdes
+
+  iommus:
+    maxItems: 1
+
+  dma-coherent: true
+
+required:
+  - compatible
+  - reg-names
+  - power-domains
+  - power-domain-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    ethernet: ethernet@7a80000 {
+        compatible = "qcom,sa8255p-ethqos";
+        reg = <0x23040000 0x10000>,
+              <0x23056000 0x100>;
+        reg-names = "stmmaceth", "rgmii";
+
+        iommus = <&apps_smmu 0x120 0x7>;
+
+        interrupts = <GIC_SPI 946 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 782 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "macirq", "sfty";
+
+        dma-coherent;
+
+        snps,tso;
+        snps,pbl = <32>;
+        rx-fifo-depth = <16384>;
+        tx-fifo-depth = <16384>;
+
+        phy-handle = <&ethernet_phy>;
+        phy-mode = "2500base-x";
+
+        snps,mtl-rx-config = <&mtl_rx_setup1>;
+        snps,mtl-tx-config = <&mtl_tx_setup1>;
+
+        power-domains = <&scmi8_pd 0>, <&scmi8_pd 1>, <&scmi8_dvfs 0>;
+        power-domain-names = "core", "mdio", "serdes";
+    };
diff --git a/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml b/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
index 16dd7a2631abf6fb7dc8e0c90755ab1e81915b38..ed0d10a19ca4c47c05f6873c64b0537b90acd15a 100644
--- a/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
@@ -44,6 +44,9 @@ properties:
       phandle pointing to a PCS sub-node compatible with
       renesas,rzn1-miic.yaml#
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
 
diff --git a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
index 2125b5ddf73dadd8b0d372e83a6b5c4624f5e648..8338834f49cd21df6c697a1f52a8b195c0208c23 100644
--- a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
@@ -154,6 +154,9 @@ properties:
       Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml#
       (Refer RZ/T2H portion in the DT-binding file)
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c4533deff85b052157984d0e2f23..3ec3f6dc2a125908ba98f20b1120311de8967954 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -123,6 +123,9 @@ properties:
   phy-supply:
     description: PHY regulator
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 38bc34dc4f09b75f8f78ffa383f7e5ae6be9fb72..9d48ff4623895d93d63e710c6cc1c4c88671bb16 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -71,6 +71,7 @@ properties:
         - loongson,ls7a-dwmac
         - nxp,s32g2-dwmac
         - qcom,qcs404-ethqos
+        - qcom,sa8255p-ethqos
         - qcom,sa8775p-ethqos
         - qcom,sc8280xp-ethqos
         - qcom,sm8150-ethqos
@@ -183,7 +184,8 @@ properties:
           - const: ahb
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   mac-mode:
     $ref: ethernet-controller.yaml#/properties/phy-connection-type
@@ -646,6 +648,7 @@ allOf:
                 - ingenic,x1830-mac
                 - ingenic,x2000-mac
                 - qcom,qcs404-ethqos
+                - qcom,sa8255p-ethqos
                 - qcom,sa8775p-ethqos
                 - qcom,sc8280xp-ethqos
                 - qcom,sm8150-ethqos
diff --git a/Documentation/devicetree/bindings/net/sophgo,cv1800b-dwmac.yaml b/Documentation/devicetree/bindings/net/sophgo,cv1800b-dwmac.yaml
index b89456f0ef830991135bd17626da98661429596c..e78cbf594c695204040a53ab1e367daa9e12246b 100644
--- a/Documentation/devicetree/bindings/net/sophgo,cv1800b-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/sophgo,cv1800b-dwmac.yaml
@@ -49,6 +49,9 @@ properties:
   reset-names:
     const: stmmaceth
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
index e8d3814db0e94fdcd0f3ab2a9fa8bab972a97ab5..845e2c67d20037496bb1eec6eb73c99cde74e944 100644
--- a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
@@ -52,6 +52,9 @@ properties:
   interrupt-names:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
index 313a15331661208a1fa64386739d87a4f11b7e20..8a68c6d7b5c6d6629a780d002299d767088def77 100644
--- a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
@@ -71,6 +71,9 @@ properties:
       The argument one is the offset of phy mode selection, the
       argument two is the shift of phy mode selection.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
index 987254900d0da7aab81237f20b1540ad8a17bd21..29b878079ff0c1a0ef95fc63f2035f478ee039b2 100644
--- a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
@@ -121,6 +121,9 @@ properties:
     minItems: 1
     maxItems: 2
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/tesla,fsd-ethqos.yaml b/Documentation/devicetree/bindings/net/tesla,fsd-ethqos.yaml
index dd7481bb16e59982c26c1a54ae82b8cff85fdfe0..ad635529d676ed6b752ab3bde5152d5cbddcb519 100644
--- a/Documentation/devicetree/bindings/net/tesla,fsd-ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/tesla,fsd-ethqos.yaml
@@ -67,6 +67,9 @@ properties:
       - rgmii-rxid
       - rgmii-txid
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml b/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
index b3492a9aa4effa73fadf92a63a76ba8bb65a8769..c859f8bb5d582af8b8782f2f89ab5e6ee3d7a46c 100644
--- a/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
@@ -78,6 +78,9 @@ properties:
     items:
       - const: macirq
 
+  power-domains:
+    maxItems: 1
+
 required:
   - clocks
   - clock-names
diff --git a/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml b/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
index f0f32e18fc8550e6f63b87b60a095972453836c9..efa39eab0256a1102b01872bd848749788c9b4e8 100644
--- a/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
@@ -48,6 +48,9 @@ properties:
   interrupt-names:
     const: macirq
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/MAINTAINERS b/MAINTAINERS
index 1121276c59a1dc33f9b405e983869c4b773e3a6e..c5a75831b4f14f3d1bd1b9752177add505003cd3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21738,6 +21738,7 @@ L:	netdev@vger.kernel.org
 L:	linux-arm-msm@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+F:	Documentation/devicetree/bindings/net/qcom,sa8255p-ethqos.yaml
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
 
 QUALCOMM FASTRPC DRIVER

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
