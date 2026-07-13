Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9525C44501
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 13:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daYBoWQQgnp6r+WSw3wCg+FnBW7RN5DOZBnaVfNoOhU=; b=oG7o55HFETYwpL
	iFi9K+fMvMzZrDaecVULRPfJlgvh9u0NcItUwrRG+jEhKVMFdFiYbpdbpVuekU1sPW5Vj4arvDEwh
	ENVTLp6fwsrGN6So8WabYYNwPeNrb9QGQypUVy05+P5FYoWBlFjKaASGXRB3RmOJncCWgzocPiz1R
	GWiPmHQD7CAJTEHJ7XBrdY4v2zWsC34EXEopkrjC1sEjjlxcoJDhPy36tQbK8m43ogrqEneyBusqu
	YKxB4gXtTjLg2h7dorRm1mkFqKCm6NIO4i0hQbYYtaaItgTP0ErHK+lVdf1dLQ8guxYQFisJLeQpZ
	/rs3pCE8tplFPEpIj7ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGb3-00000009MT2-19i3;
	Mon, 13 Jul 2026 13:21:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGaz-00000009MLq-36lW
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 13:21:20 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCFJ5G1506647
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cRz6RMAtUsr4ElixoQTyiHRXUjuFyumK233EdmGoYlE=; b=BlGTZ+QJishjjSr3
	1JYkYZzkAxS5OQNHK6UN9ZZ4e+nOUozqG9XIGLXGsQtDhiKz3M+znG39hU1SACaP
	vRKfpITzZT2nb7c2w+JB2iDC/BF7nxkHXrwj3oGcZO6GZbgpjMFyvVWQLU/9QvVd
	6+s7ysGCcCl+AxGpCDKM+9KWpAjCnhrZ0GHZ0eVfoScolYT1aqd+G/HLM/P98dsx
	FH0ucpCvIWa4JAqUeCf28JRiNO2u+ffQH85z7ojWcY+ZDHZMAdbKJh1AhWWsqtRt
	ucbg36oW+Ozl2Ji6wS14M69dO7swdRd4NJ0ShEhkdm/wqsxsrZSkyFhLrGp/GT6a
	JfLJTA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcwda0usb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c01ff996dso32017121cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 06:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948876; x=1784553676; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cRz6RMAtUsr4ElixoQTyiHRXUjuFyumK233EdmGoYlE=;
        b=UdNqebWcJlAVjYeoYTFq4jETxAo2IJxkQWAs4oefIMg42SVCTQvIRFyGHjzFwwkfia
         fAhEgZPfIJLTYKgJlmjC1szdnX5i9LTcL1BdIvRbTSm5eM8xbgpI7nKWIleHdc23W6EJ
         rqKNv8V9Ju0i5iWp1ewqGjCbYmPCGUnUuGGH02A3VTPiB3KkBF9PN/j24u/WtzJYLDrG
         x4YBRdfJt3AvL+SreNsDRHG53PooF6UNTkwxFbptjjdvC8bqA/9IfXbHRs8cfoPb3XvK
         wMBhL0Sx63cyhK3TZZcJXrSDVyC3QFQtzhGqwFNVeIX+JNXVIXnlcd/OoQDEFrawnnaq
         rNaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948876; x=1784553676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cRz6RMAtUsr4ElixoQTyiHRXUjuFyumK233EdmGoYlE=;
        b=WSWG82If+IqRISK+zvDxw/BvMjwOgKRdjVjEPKLaQUOPVXx3YaLg0qXhynuEXa2vzj
         3o2f2Y1jxEW6I0mwOApt7kVG62bQmPotzZHMFxXaxGTMH/Artlhf0iApFtOugDVag/ih
         wDldaptIwJBwpJbwgNp1VN2odg/x2COi03hvb8jJJZIk0SkLyKwURrc8jdabjMbwAriH
         5UCnI4TejqhnJjC6MnaB/0BgZu5FVwsicGmm3Jyv24yys4hGa3gQJzWdyaJ/fYIFPH49
         R0AtM8RQrp+stMyEeyz9HnplFZWwknvuCKYthDHOZeLdlGjH8Qo8MyPZDLUpIoHex/93
         75nQ==
X-Forwarded-Encrypted: i=1; AHgh+RoWNkfPqzktD0bPNW90hnADvC1J3gTy1xAp4QlxldUncm4P0VE9j0MYZ8pC9Y/mro/LohTDoA4k4zJgOlfT1Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFubuu6DtNqn3Rgtr9YeMz3P3ZaTcrC0AC5e4DPsF6ii1kFSg1
	4a4yWGEhTGPMghDErIM8b7gTw3pcHMzSMsXr6azk/uMxNyyG+lDNR1oQSSeXy5JNmfA879Bbcpd
	/Vho9+fau+2SPvCRVKMlqk/MFCGmq3i80hH4IF/e3AQFJvzqKJgfLht3K6VYbXFZf4RTp8Ld3L7
	MqUVGPObI=
X-Gm-Gg: AfdE7cmbYWIfEKkUqAeN9G3fZNZesK3Dt4PeYKMdH0Lu9TEtJYeqGoc3Q2K2OwuYuwe
	wpt4CdC/KrXGqFBw0XWPR6uJYYmHKHttVHLKjzTndvq5ir3CxOT6FPsd4VBH5Sd6OffOjeLZKQE
	wb/XtOWbA0EcHay9PdQtNmGVuoUyNWQJ2coVGtDoj3NX2TTj95R4vd0dJFXMjaH1SwF9l5OjjdL
	4Uprxl21nEaNlou2jv9MwPY7MNIFG0QGVj2MajkqRm1YdjwI9kN0aHj//iQ/yej59ocV5I6qRWB
	eWHoOZchSFE46j/IkMmP4h1AtqIa5xhX7wXS+eXDReoGYaorYUxJN15+XqROZXU25lrLWnyKCMR
	eI2Hzu5BiRlCoeB30s/sbUze7R/Me4S1W8DA/eWKL
X-Received: by 2002:a05:622a:5805:b0:51b:fc67:c738 with SMTP id d75a77b69052e-51cbf0e0847mr89640851cf.29.1783948875935;
        Mon, 13 Jul 2026 06:21:15 -0700 (PDT)
X-Received: by 2002:a05:622a:5805:b0:51b:fc67:c738 with SMTP id d75a77b69052e-51cbf0e0847mr89640201cf.29.1783948875416;
        Mon, 13 Jul 2026 06:21:15 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8881:83b8:89fa:1a2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3dcdsm354561715e9.3.2026.07.13.06.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:21:14 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 15:20:32 +0200
Subject: [PATCH net-next v13 03/10] phy: qcom: add the SGMII SerDes PHY
 driver for SCMI systems
MIME-Version: 1.0
Message-Id: <20260713-qcom-sa8255p-emac-v13-3-119f8699ef8e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6867;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=6McQp9b/ZuzsH4b6xE2Bu+mOLPKZAWdsYn2bXrph17c=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqVOY2GgSE2+BJ9Hi0c9UpIYFQzAew4cab1THFX
 9E8f1kez0yJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCalTmNgAKCRAFnS7L/zaE
 wxVsD/9fGr/P9g1CAqHPauMkw7O+VrRVDHUAJ/8hbsfFYCxXDcl9OEx61EFONLLAksNax977pI5
 Z/yl0bXTTHTgg2dcewTRXTWakDKOqmc9PufOJBeFJZM3j7vQ76T4BSB9m9l/tVhaQ+5QKxXxZEG
 qJvgeCbLAS04yp26coDMQaSNA8LDbfCKlLy9K4rZshOppJh6apggkq1uPtLULiZ+qtnc+Y2mYUL
 eYSoXQC9Tt0wqMu6pFwCZuGRPBEvzzxVo8C1WH3pyXL7Zg1e4wCodd+X5+DUitbUmkQo2UdDOtx
 74PGGgIhnlhFgqrt6oZlWkvMO9CH0RJbaC5g+n3SXkgGyLCpsX55UKGyoGEMJ72tO7fkEDnvx5h
 cCI20qJcrGcKIgy8SGBERFlqHuAEmKBqT5W51Yb/EFsZwt+d+NyKVVmdI5uwN/rt3k6DzTpqvnR
 J4YLetemAUcAejeindnRo5Inwn3REqxyNsDiQ0ROY/9oc+6q22clnx7d6QzAvB/Ey4jGmWkebRJ
 MJ8MwUl0mvWHcneN1xXAh8mj7rMjQAeUW7S/HuPdtYQjgpJtVSuKo+vVrpjhTsOCb1oQ4dFkDjE
 8CsRaDapvydtIxz+KOxCQ+vVrwjUWhCSfZn5DBtSMPET5HHCuuLxe8NVZ84xmLm0CuZ9KHOzCzx
 +AeQyBC0+fVj36A==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX9EGfiSbWO+s8
 W//J6sbL9noFWdcW81nijMbx+8TwaKlZjGnccZ4V1z8ZJHyAlU766KaFocdK4CRgPLUp7SGBe11
 PDcPUSKKlxf3m7fLCysWOP6uWKe7qSI=
X-Authority-Analysis: v=2.4 cv=cNbQdFeN c=1 sm=1 tr=0 ts=6a54e64c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=ZvYg6ySBQLmwDIutsxAA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: NAZxq_Xs1mFm6PlBYUOx5qIdTPT1d1ua
X-Proofpoint-ORIG-GUID: NAZxq_Xs1mFm6PlBYUOx5qIdTPT1d1ua
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfXxf1uiHOfQA/F
 xfEpS09JOHyoB/KaE/jfeMmfa2DEJHZediU1ZKewGK9z2L0Rh28i6bidEvFsVSeuWcDxvmCycWH
 HPXKSE7L/JKmFMyzGP8T43oKmRQaq37+jXY4uz/CJKkv9kZStP0EPHv0DNwpnQNZG4hpZDI5kz/
 jOLGUUkwqRN7HsDK0QerpNm2Cc5g3EHWciwKGEh4SsQq1L3qpr+kQH6lUEyvgF9UeYzX2ICXA8Z
 EWlN3rJdbcmVy/ZT1bKO9VFh2V5iXTMTNYb9rlv7Y26smm3p8HOrbeCYUOBHrfKNldPGZUOBpWD
 Zk0/0Oqh4XG5rn5ZR/vuXqaYzmzybNvnOGdPB2eTlDVSBteBwDaP25M1apeMETkA0e1mxO+P3np
 dYMYaAeDHK7McodnQvAX7uw+w8GSHtxD59xkWGR2+LjzdBgaDvukod+Ne2DBYJyeqetEPYRLgmZ
 x5COirhQ8R3xBbx4XHg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 impostorscore=0
 phishscore=0 clxscore=1015 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_062117_939534_2EA809FC 
X-CRM114-Status: GOOD (  22.02  )
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

Implement support for the firmware-managed SGMII/SerDes PHY present on
Qualcomm platforms. Do this as a separate driver from the HLOS-managed
variant as they don't share almost any code.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig                   |  11 ++
 drivers/phy/qualcomm/Makefile                  |   1 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c | 165 +++++++++++++++++++++++++
 3 files changed, 177 insertions(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 60a0ead127fa9f08749e1bc686e15cc5eb341c28..a7cf348f6a7aa18e8b3f39f109b02ea672ae4177 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -232,3 +232,14 @@ config PHY_QCOM_SGMII_ETH
 	help
 	  Enable this to support the internal SerDes/SGMII PHY on various
 	  Qualcomm chipsets.
+
+config PHY_QCOM_SGMII_ETH_SCMI
+	tristate "Qualcomm DWMAC SGMII SerDes/PHY driver (firmware managed)"
+	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	select GENERIC_PHY
+	select PM
+	select PM_GENERIC_DOMAINS
+	help
+	  Enable this to support the internal SerDes/SGMII PHY on Qualcomm
+	  chipsets where the SerDes hardware (clocks and registers) is owned
+	  by the firmware.
diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index b71a6a0bed3f1489b1d07664ecd728f1db145986..032e582f2e1af96687484ce28aaba0c2ef73e754 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
 obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
 obj-$(CONFIG_PHY_QCOM_SGMII_ETH)	+= phy-qcom-sgmii-eth.o
+obj-$(CONFIG_PHY_QCOM_SGMII_ETH_SCMI)	+= phy-qcom-sgmii-eth-scmi.o
diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
new file mode 100644
index 0000000000000000000000000000000000000000..aa7ce9393b2853ee1bb248f4a5738974d41556ef
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ *
+ * Firmware-managed variant of the Qualcomm DWMAC SGMII SerDes/PHY driver.
+ */
+
+#include <linux/delay.h>
+#include <linux/device-id/of.h>
+#include <linux/ethtool.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
+
+struct qcom_dwmac_sgmii_phy_scmi {
+	unsigned int perf_state;
+};
+
+static int qcom_dwmac_sgmii_phy_scmi_power_on(struct phy *phy)
+{
+	struct qcom_dwmac_sgmii_phy_scmi *priv = phy_get_drvdata(phy);
+	struct device *dev = phy->dev.parent;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		return ret;
+
+	ret = dev_pm_genpd_set_performance_state(dev, priv->perf_state);
+	if (ret) {
+		pm_runtime_put(dev);
+		return ret;
+	}
+
+	usleep_range(5000, 10000);
+
+	return 0;
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_power_off(struct phy *phy)
+{
+	struct device *dev = phy->dev.parent;
+
+	dev_pm_genpd_set_performance_state(dev, 0);
+	pm_runtime_put(dev);
+
+	return 0;
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_validate(struct phy *phy, enum phy_mode mode,
+					      int submode,
+					      union phy_configure_opts *opts)
+{
+	if (mode != PHY_MODE_ETHERNET)
+		return -EINVAL;
+
+	switch (submode) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+	case PHY_INTERFACE_MODE_2500BASEX:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_set_mode(struct phy *phy, enum phy_mode mode,
+					      int submode)
+{
+	struct qcom_dwmac_sgmii_phy_scmi *priv = phy_get_drvdata(phy);
+	struct device *dev = phy->dev.parent;
+	int ret;
+
+	ret = qcom_dwmac_sgmii_phy_scmi_validate(phy, mode, submode, NULL);
+	if (ret)
+		return ret;
+
+	priv->perf_state = (submode == PHY_INTERFACE_MODE_2500BASEX) ?
+			   SPEED_2500 : SPEED_1000;
+
+	if (phy->power_count == 0)
+		return 0;
+
+	return dev_pm_genpd_set_performance_state(dev, priv->perf_state);
+}
+
+static const struct phy_ops qcom_dwmac_sgmii_phy_scmi_ops = {
+	.power_on	= qcom_dwmac_sgmii_phy_scmi_power_on,
+	.power_off	= qcom_dwmac_sgmii_phy_scmi_power_off,
+	.set_mode	= qcom_dwmac_sgmii_phy_scmi_set_mode,
+	.validate	= qcom_dwmac_sgmii_phy_scmi_validate,
+	.owner		= THIS_MODULE,
+};
+
+static void qcom_dwmac_sgmii_phy_scmi_runtime_disable(void *data)
+{
+	struct device *dev = data;
+
+	pm_runtime_disable(dev);
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_probe(struct platform_device *pdev)
+{
+	struct qcom_dwmac_sgmii_phy_scmi *priv;
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct phy *phy;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->perf_state = SPEED_1000;
+
+	/*
+	 * Enable runtime PM on the provider before creating the PHY so that the
+	 * PHY core enables runtime PM on the PHY device too. The single SCMI
+	 * power domain has already been attached to this device by the driver
+	 * core, so runtime PM votes propagate to firmware through the genpd
+	 * device link. No register or clock access is done here - firmware owns
+	 * the SerDes.
+	 */
+	pm_runtime_enable(dev);
+
+	ret = devm_add_action_or_reset(dev, qcom_dwmac_sgmii_phy_scmi_runtime_disable, dev);
+	if (ret)
+		return ret;
+
+	phy = devm_phy_create(dev, NULL, &qcom_dwmac_sgmii_phy_scmi_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "failed to create the phy\n");
+
+	phy_set_drvdata(phy, priv);
+
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return dev_err_probe(dev, PTR_ERR(provider),
+				     "failed to register the PHY provider\n");
+
+	return 0;
+}
+
+static const struct of_device_id qcom_dwmac_sgmii_phy_scmi_of_match[] = {
+	{ .compatible = "qcom,sa8255p-dwmac-sgmii-phy" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, qcom_dwmac_sgmii_phy_scmi_of_match);
+
+static struct platform_driver qcom_dwmac_sgmii_phy_scmi_driver = {
+	.probe	= qcom_dwmac_sgmii_phy_scmi_probe,
+	.driver = {
+		.name = "qcom-dwmac-sgmii-phy-scmi",
+		.of_match_table = qcom_dwmac_sgmii_phy_scmi_of_match,
+	},
+};
+module_platform_driver(qcom_dwmac_sgmii_phy_scmi_driver);
+
+MODULE_DESCRIPTION("Qualcomm DWMAC SGMII PHY driver (firmware managed)");
+MODULE_AUTHOR("Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>");
+MODULE_LICENSE("GPL");

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
