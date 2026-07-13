Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6DFCC43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 13:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xC5oizDHYh0Lr5IMkyqA10zwtHvfaTEG50DIgWkXNQ=; b=Cz3kmz7pX8/9O3
	r5UZx5dydzkVgFQdWnP1PSvyICoCOcQ6GTN6fuyc/mDAkcAao6kWYjWiEnVB+HoK+OgtaOgPQbpph
	viZu7rCvzzZq3ihCLNZXTlC7SYcEaXuMNVVirICIzdPmUdmIK2DtmMzU1cQYsr0C/WMmXcYpKYpKo
	0TmFlOkDJuZ43vUe602TmWSxVmhFJTvXMEpmOb/BYg597c9TmPINNrQeHYOdni03oKHGHV9K7OdT0
	b+b9AJsLf7bfqurBgqvz8DwW4eLn5XYwSXXlrkovdeDjJIDA67xnK57FkppVpcNZY2zvuGptVezl5
	uiZy9gwGvZPfbn7z0l3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGb0-00000009MOX-2m8U;
	Mon, 13 Jul 2026 13:21:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGav-00000009MH6-2b7u
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 13:21:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCDaHL1299326
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=; b=EsujTW/5s6ffD24l
	1eoxY/es2Q4PYXqBPREh5gFAIQIh+AyKnTTwi0B03NRumuzZ8IsCdWOplAmbd1WB
	n0rWQg4U069GZ20+4HgUCReJ/2eZIaGLTtyuI4vc9xb3ul7axklIfkgrCqhCYjwL
	mX/tC7VfT/Q3ezydS4BNBpBFzArKK6isUkbVOaCI8xHN+DfenK5EOemjuFMhQCe1
	p2Ve+Z6JVU82plo0OIOn8s7pgrs0LDPv7knwBanBLyJFaG/X/MvM41tzBn1e070H
	RKxJXUd1KCTTxaJP9hxvH3IimYpL/8JKo0nZG1zbjt70aRU5sD6ay0xYNCDQb+i9
	q0gc0A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcwk3gstu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c1a9764f0so53859131cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 06:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948872; x=1784553672; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=;
        b=j7kSkZ4v1XKunb8E4kGnVxCRSrtz5+xwMniKmxpR0ZwcApI+qkwBAT9uWDlLWg4Leq
         tLYLEUABgJ7gXmmP4Af6FoC/mDLk3tsT3CVt/xMWW1tRNlK2EO5mXqpothKLt2mWAzIi
         Nvk4Ta/BAaQ/8twCYHXXDWJDv0T7fHea8byMgZQLUcaXR6OHD2UQ0QhIwQkkcFnhlNPT
         J0kPVsf8VoRWkdvnx40otLV5Gk+ul/3YDWFiRTP1xQNp7pbVYgc5THvx4hzQg0OlwdXU
         zIT5oAy0ei0bYqMqCE9CEzL0H3Tff8k7vHHLOhd1phYIZf8MWBco8JBhycOQOeXJwMB/
         2Vmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948872; x=1784553672;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=;
        b=PbbJIEIkQhS8Yh7bvNkvX/MMHWmXFp/JgSxyFeP2liUsjD1B6gevQOvhiTbeYi2iZR
         nDUAhXVO9DFO8K6ofSk+nb622achepQGfDTU7TSMHRUPtTVzkkbfGLL+6ADbe3iDixwY
         tqGYP6evvm2LqLBTR87f/9fjbPjNscpDDfYByzn82ryMr+HfJms2KIWG/xwMU+J69JzF
         8povIwLzzetCm/lFABJo1tLkvF8MTzYCUiIIqtTuh10qKK8XGg/JticxBK6QV954hWX4
         OJXU2fJvk6MOYD2MbHwSwX71607MsLyPBBGDrsxVRdTS4CoPlsTVq4VjsE+8OwZFQcoL
         Jmog==
X-Forwarded-Encrypted: i=1; AHgh+RqINayCOX65a0oY/Xhsd6CpwmaqjWjdXpm+LOqJK+VnuKzY7IPRZQvDZi61xoB+MEzoQHEzYLqZjVxjiUKc6A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSbWcOlFPEz1MXo/vk/RDgquTVgdC8V7qjU+pgfbsUA0a7lTGR
	ekkRiz8M9+REjQlCewnxoGFXKesMtB24PvNkvDnADllVDtmOhtvvoNJfspJvgjJSL2O57HMtor3
	t0X+qeekYkzmP30VI1kYKqVBmrPUFbCblGu7SU5u8afgbpabFOpXeMF1M1dMi/+Sz249gIm3CQf
	k=
X-Gm-Gg: AfdE7cmV5OL3ZTf/X+cAZCWmOM6ZTp9OwdAjzUTz8qwEdkzajOPl7jWkRNy7uIw7RYK
	TVULf3FmmfRSwwEU20XlmpHrWwPIA1bIgygCPMtOHBAey1YaR1IMJRmbdp0KT+n6uByzLRcTMoM
	Pf+GjQ02vHmWmNmOtQFC62D2/rBVOeHPOt9pjD1v8rxW7GrPNIJcFsfYAaqZ7CZStYIDMNymAj0
	kMGStL7aSBw0qgKfzEw0aDJsN9Ikch7Gz98iJ+7ZswL1BOGvjZmHsZcr+PxyQtiUKH1W08+wJBd
	K+pwJEtjFGvQwXHvwLZMtwTnH6VVKwCfhEbkou7l7ncBQQsUUK6WvN3j6QATrOz4gGLdGPh8k3j
	FW5lwvwQR/Hj6uX3AHL+JaPzQTmTNJG9e/HFqgjma
X-Received: by 2002:ac8:5787:0:b0:51c:2cd3:ae7e with SMTP id d75a77b69052e-51cbf31702fmr95588621cf.45.1783948872033;
        Mon, 13 Jul 2026 06:21:12 -0700 (PDT)
X-Received: by 2002:ac8:5787:0:b0:51c:2cd3:ae7e with SMTP id d75a77b69052e-51cbf31702fmr95588121cf.45.1783948871582;
        Mon, 13 Jul 2026 06:21:11 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8881:83b8:89fa:1a2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3dcdsm354561715e9.3.2026.07.13.06.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:21:10 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 15:20:31 +0200
Subject: [PATCH net-next v13 02/10] dt-bindings: phy: document the serdes
 PHY on sa8255p
MIME-Version: 1.0
Message-Id: <20260713-qcom-sa8255p-emac-v13-2-119f8699ef8e@oss.qualcomm.com>
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
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1956;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=BfrbL1Fwh6l+Z6nIdrB6wR8juwiurOHR3kGeK2lY/yQ=;
 b=kA0DAAoBBZ0uy/82hMMByyZiAGpU5jSgupfQ73V66CmjTRYphxtOflEwg11wtoOBUjQcLl7/W
 4kCMwQAAQoAHRYhBJHlEy3ltUYde6Jl/AWdLsv/NoTDBQJqVOY0AAoJEAWdLsv/NoTDpj0P/2pX
 O7c/RStPXEP6H+bYPdkp+JKPZsBfBDQechWWEdF9PaW8TIv9MlI3HIhWDhE8JzJiC7X3mUt6VaK
 dim6yfe4fNXqBfv1lZPKniq6DJG6AMmY0Ca5XkfbIHIUlxXFnhuIKyhUb2TYYYidXugrvV9QDeL
 wGkZG5kUj5SnYp42cVr2U08enrxUE3a4ej3c5nkc+IKY70iFoZaWSDY17iRsEFNOrCIMo5mMdsc
 XxQHM7+vHu02zCIHTKnX2We+LgxwhprMy+pvP9LADv1T4qNiGragMfDK20QhG4YORuygBn3PWYq
 ZFX2jUhtOY4/QsYxIujXT/8mM7KTenYEd+9HXqP3W8NZTL/unLcwz1ll3ocRw1j56tg9cFK05ku
 +V087fNBNe2xi07hTBeqjzfo94+CuGbSLYWGgIW1P39NJuv4VvwevNFW9jWlqjQPkVyI5xbk5vB
 3++GRxPJiKuLCKlFBCjsJk0Udyv0Cp7+9zVsC2ypoyMKpMvr6kVM7hhOp86eSrvQcTujRIANIeW
 3AIaIYWr+XIs17ovVnBqPd49JrvJrrQPXaTV2urBfkyBtBvgOeJ7wxmEFZlBbJQ6mAZN44FcZRU
 cPNwJKPwxL7ROUWKUvaFoJrqIEFe2gIiLW29czOE8cObK3yTkyxBar+2T5tx8q8CK23GPTqmC/a
 kdRil
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: r8VLEZnyjfPFMJsoV6EI5bIxuo-Ys_og
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX0+wFEE1GNyCI
 X1OQeQqFbrSSVOJzFcnzfjYyPBl4ua4/oc26sfDus/HvWo2aZCFxvscM87fAY+aksJc3M0dWxDm
 FuhzOvP2H3VKa0wJpmNXWiplkYwchFg=
X-Authority-Analysis: v=2.4 cv=e6c2j6p/ c=1 sm=1 tr=0 ts=6a54e649 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=wENndLYK2PIMvs9AUu4A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX9QbqDez9Hwxz
 TEwG3Aa5d6qArIkXs1RoR5vvf+X2sWWaFGU1pdCRKIUA5/hcjqANcs2G1xm5LasiNm0xwBZf+0u
 4yAHRnCiaItxQx3FuMRMTTIfUh4q4wr7exdR0x4eFQwEkRWdJnhmhGf6alIAw0Li0kvQR58Thms
 7HV35/GMz1xs2o4BdjyhTM0NGio/OnT0OW0aW1jSFYPuhmhVRaFZ/Z3g1JFa5DhnnqYqzvcH+iE
 idudKZVuF25SmlSP6UhSJHVV+qzS7IoUnZJPg+7eigDGEuYGzLmWgP0ZJIGIoX/b5IWOrfOmNzg
 wIRIQfNBceqCNuBx8pInbsYF4Df/NV6IjCCrDP2t9z819jpcmU7DORW9pxl1vcdZC5xiCgGDk/1
 2F0jZV8rYIpXZVJlnOU+Nn9hCK6TtllSIwUmbYoaMoNzG8Q2ZhE/PM51pAdtdNtlJz1lGKAgwnd
 hG/aGscXANG+gCimChA==
X-Proofpoint-GUID: r8VLEZnyjfPFMJsoV6EI5bIxuo-Ys_og
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 malwarescore=0 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_062113_667558_B5D4DF1D 
X-CRM114-Status: GOOD (  14.81  )
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
