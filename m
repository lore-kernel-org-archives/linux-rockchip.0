Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C69DCD8CA4
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 20:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqM3UyhGMhIwjw6KNHDr2ZMY5dIxmg1pb8+jt7Gfebc=; b=aCJ1E9VS+7jYTx
	Pt3OBq3OL1DNVcz1ibUsu6QVDIF/ES71g92MIZ3x1iArR7rVoSnUCUlX0iW1dWHVRG2VHaXDlj6OU
	nMDmUAte9oCUKgaoAKJeh6ZtdLN6cwprZjq5R1DRASJpAvRA74OEfRN7Ae3CmtY+J1B5q3yMhLhzW
	qNgwfmFG8If32wjFod1JP/spkrLVQZob37t1sVRJrPJHMFxT/qVNLedMvkoNbjdVyJ7gDKwOaMbSh
	huLLL935eIzggcuFiDXb2iU0lOv+pOkurpvkmEMoV1mHW7ht079A8I//9N7j7dRNT8HxG/nfh6hCH
	n/tiweykq/Vo+K1knNvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgq2-00000004NSc-0Qlf;
	Mon, 08 Jun 2026 20:44:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgpy-00000004NLs-2NZF
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 20:44:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658Iwx0Q345897
	for <linux-rockchip@lists.infradead.org>; Mon, 8 Jun 2026 20:44:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vnNdb5A9Du7XL3S7Wq+Il5jXREGeZ4aI2BZqdspJTvM=; b=HWBLau39VSb2zMQO
	/Ml8jwYT0rEb8gb/VAweKx0UkoIcasbP0IGXoEJyTlP/f4S8uU/GTbJW/Ax6UjSL
	3axjJbav2yCZj7CRjPdtOK6dGebJwG7EuGsdtx6xUT4zlhLVg/QfEApQpqJaYUfK
	1UE1LKphVG0/OmOikuXU9gtBJLPjZTntGDvbe5lfPMuF1u+BbodM745l2WY79Adv
	svDUUsI+8ofstrWAdMxc2qwiNX9nAtVQnaTzeWXTdJP3P6hYhtwqojI0lmr3owpB
	QrQ5UJmoPod8P/7r0Eym5UrjUmr4rrA86K/WznIkCjh/UfXF7Gzb9iRnG4YFmuQC
	w+37Gg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enxee2365-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 20:44:45 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5175bf22b1bso68810101cf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780951485; x=1781556285; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vnNdb5A9Du7XL3S7Wq+Il5jXREGeZ4aI2BZqdspJTvM=;
        b=SJ7X3qs6yV6kW/yfn9oNTk+vZggJPeeOpSlY1vPmY5CBuvi2ew8aS8U2Iojp2mD3yD
         7OIk7O31AIvltNwYnlWKHOABfW5To+oE0JPPAh7f2kq0tMyUoZDUQn4Uxua6QHlgK0FN
         IqzcM4IZQlPxTbwCyzaXZzHdKWyed4BBq3AbyhRONp9PlUyFrpbRHGjGOdeYVjREijas
         KsOz71qoamSw8aK7nzPXgqrPpqu7wCe1Rnxj6rxpL2XUUl4Tbuj5bCkC6SR3oUe5Qws3
         ryhwdQ1xlPqZg9mv/SX8gjauWHUJBTYFjfpwRfMObXt4I0VLTHE+QLP78YSuqYb37znk
         FG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780951485; x=1781556285;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vnNdb5A9Du7XL3S7Wq+Il5jXREGeZ4aI2BZqdspJTvM=;
        b=DQ4PhxTwdJuWic3AFPtUn6dYi6gZu4hleTbxHzjUeuASHwW0w0QUlrh5TWsJ1Yc350
         aqA7AjhTvuiYrnCzLs0DgWZexkSdPYpiV9Q1PAdXOkx1PMLeSiPugTlf1q4hNsscka77
         MIz8jQKovmtwThQCJFb4JgJUpXp02KfVt+5kOpLxUkKeN4vXi9t/0xZYl6Mzd68zOj1t
         /rV4/WmtCcn8lT8LaG6d2kcaWtTUm91PnjrjKwiVyqDspF6i+azQgnJa9Ott+rpojBXn
         ICZ8xh07sB3OFYTmLiE0Pj9/3sLv+Rkv0o09NFuIUTU+Ntn2QyBPi0+4HFohVm/QapJo
         Jdsg==
X-Forwarded-Encrypted: i=1; AFNElJ9hbGYgDcVnF2MDlbd1MMA3Apk4JChwUZFJw6q6b23aqz2Cgh3fNPnOhsRKj34YLozUN3+e7r81GXJK+OY5kQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyRFcpQCdaxFdbfdn1tNpu2WJ4DOo5xWLRd2n3T2ZGW//CBr/dT
	kSAPXD/rK2z7Jj7FrIV4zF1tZkzUmTVJqGZKXq9Lmiro3YjSxo2Iqq5tcGGcC23FNYT1XJGgzn0
	HPVW4naB/4aGKjVK/vulv0KuDk4ar3L/lyFxtHg0RSdl2EOQwkhfGQ/ZrgPC+Rm/J4cTRZnu87o
	M=
X-Gm-Gg: Acq92OF/UwdrIiRZKqi+G2WEOvZjR++TUEeUtE9EGZW8dfGO9kkDmxuYXEh8cPseWpI
	ic8ZtIhLjszAPycGDPtwV/9ix9K4FdHcit39IR5X/w3RVjyECISzsSdiVZSQwmz6+/i19MdSuYK
	/q+Kz5Sl68GUFizjv5Kl48BhsfCG/KtarLKlxaBNEMbKb2hqFesi6AozovXULdf2W+LKBJoneNy
	fidl78gEFDrSYtOTtbHhuKI2d6IXLcW19MUfNcarWdsIKykGtYvm0B96RIHLLCSJaiUml0K1Cgg
	7cX1XR1V9rV9IyKt2ltr6IoRZt8piP+ig7uBQrPS6q/VIcXRYwvXCsQQFnN2GlgMMgOZYnjGQeb
	YkmMrMTMnO5mTqw2M4S31b5aGW39ptGwduSmZq9KoY8OOEbSZJsyS9XM=
X-Received: by 2002:ac8:7d83:0:b0:517:9570:c1ba with SMTP id d75a77b69052e-51795afe738mr243823781cf.34.1780951484788;
        Mon, 08 Jun 2026 13:44:44 -0700 (PDT)
X-Received: by 2002:ac8:7d83:0:b0:517:9570:c1ba with SMTP id d75a77b69052e-51795afe738mr243823121cf.34.1780951484239;
        Mon, 08 Jun 2026 13:44:44 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4602cda3651sm44018439f8f.32.2026.06.08.13.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 13:44:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 22:44:26 +0200
Subject: [PATCH v3 3/3] ARM: dts: ti: Add specific compatibles for SCM conf
 nodes
MIME-Version: 1.0
Message-Id: <20260608-n-dt-bindings-simple-bus-syscon-v3-3-4eba9ec1212a@oss.qualcomm.com>
References: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
In-Reply-To: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Jacky Huang <ychuang3@nuvoton.com>,
        Shan-Chun Hung <schung@nuvoton.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Aaro Koskinen <aaro.koskinen@iki.fi>,
        Andreas Kemnade <andreas@kemnade.info>,
        Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>,
        Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-omap@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6238;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=zNRMiBZ+kNoq+YW6OjKzvRqTqFQ1HwTaXPoZQ7puVbc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqJymwIBEPDBUQiQY+pkcr+TbTVfD9i5SdhfMAZ
 hSaGmpSeTGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaicpsAAKCRDBN2bmhouD
 1xLWD/9pqNYoAEZ8rLlubC1gMxi4cjfVYg0mCjs+op/jGQOndFLxLesoYW5bg4Xwg3BoijToPXl
 dYa4isoqfRj3UjVoVpZLUs1e49a5zcILG3YcBDPTX7RIUV3cR9519ovpRKmI7qkvlIWAF3FGwqk
 p/O/ldAHxklVYoBoMZcS8Yb/wCcU+9zX20nseSgepbpebW2ZTTLBIU4J+TJbfTCgLOVrT1q+3KE
 U/JiOpsCXvgx6Ue9AHfTzotbO+dqN2+XQmdkQzM7tP47VtSvkqM4iEN190Pp8be6pNnPZA/Db+D
 oLdZwiLRrGyuVf32c6eCMwp8aBe0r4zOrp2SrCWJtuZ+Wy6d/HyHlXSz75AAlpYfkUih3fjIJEF
 jpxAuq9DVb58+vV+bxVWuNbziv9XkQS6ABXjf2ulavDex6Y/Ik4ZT7udsXl7T0yaBUxS433NkRS
 LWPjKOreHPon7HdxFYw9RSp/X6dXb9XSKHo4D+Snlj49czkcT6/ZOVWwzh0dO4ScvSK0QqOOQ9+
 XJE7kSKEln+PPS/UDEeNiOwQs99rmNiBHmNhntcg5fjDKuvgn1sMGkenaJ1KjuIucCGPM+zYBbp
 NltGEW8z/Ngjaj4HbATilGpSG2FPzKnCBUxp/TeODAOOUmTWlfy109mO9yckBybe4lzGA5l60qT
 ekeAycc2Y4+PKlw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDE4OCBTYWx0ZWRfX2zD4hwF0+p2L
 MEc/gS2uKmRKZhkUtI5eRJfrATLWnE1h52WKd0ExeVfj2FsrGLDiy57i+ow2Ze1mZvD1zkc1T2x
 jBt5HpWRfOV7NArcyJ/P/xve/BK5L58061Djz9tHDtG0PrQsTq1gJMc4bvqT10bWMcVR7xIyMcm
 k57kVXF5F0Q1F62VDsFGrD9/xAmXKxLLUppO1S6eRmxqJuXfJwr+bn/s8X0WWvvxL62OSVMg/u+
 +ZlhZwfQj5PIeIpMKg4wcA4R+bXtr6x1PNIwNqsEtFXEpWkWnsC9bfLmevgSO6O+6p9hKv3uEgM
 dCvx4qEQ0dCtMUZnjtVUbzCFgtbq0qeWhT7KKE8mMZYLPPrXy6MreAritOpWiHCVHywBzzS7B4j
 6BwN/evFsZ4BKMGpihBocaMiqYZZFtDudXDf3bL9BPBzKtJC+ZBK5+KEZq+qy/ldQfT95o/+RlA
 HwQQ0qO87UeX6Tt1JrA==
X-Authority-Analysis: v=2.4 cv=V6BNF+ni c=1 sm=1 tr=0 ts=6a2729bd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=50gAi1W1AAAA:8 a=EUspDBNiAAAA:8 a=AwmKQTmtiYQHBMsDbE8A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=bIAsa0K8HJLRn3BBPJ--:22
X-Proofpoint-GUID: G8PVo0nCGJ6uwaOA1m0C71roMzE_natR
X-Proofpoint-ORIG-GUID: G8PVo0nCGJ6uwaOA1m0C71roMzE_natR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_05,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_134446_822343_6ED6F49F 
X-CRM114-Status: GOOD (  18.04  )
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

writing-bindings.rst rules dictate that "syscon" must come with a
specific compatible identifying the register layout.  Add specific
compatibles for these devices.

This also allows to solve a different problem: "syscon" is contradictory
to "simple-bus".  A system controller with registers having their own
functions is not really a trivial MMIO simple bus.  These two cannot be
used together, unless listed as an exception.

Reviewed-by: Andreas Kemnade <andreas@kemnade.info>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v3:
1. s/ti,omap5-scm-conf/ti,omap5-sysc-padconf-global/ because it is more
   appropriate (specific)
---
 arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi | 2 +-
 arch/arm/boot/dts/ti/omap/am437x-l4.dtsi | 2 +-
 arch/arm/boot/dts/ti/omap/dm814x.dtsi    | 2 +-
 arch/arm/boot/dts/ti/omap/dm816x.dtsi    | 2 +-
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi   | 2 +-
 arch/arm/boot/dts/ti/omap/omap2430.dtsi  | 2 +-
 arch/arm/boot/dts/ti/omap/omap3.dtsi     | 2 +-
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi  | 2 +-
 arch/arm/boot/dts/ti/omap/omap5-l4.dtsi  | 6 +++---
 9 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi b/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi
index 89d16fcc773e..1e09d2b48925 100644
--- a/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi
@@ -308,7 +308,7 @@ am33xx_pinmux: pinmux@800 {
 				};
 
 				scm_conf: scm_conf@0 {
-					compatible = "syscon", "simple-bus";
+					compatible = "ti,am3352-scm-conf", "syscon", "simple-bus";
 					reg = <0x0 0x800>;
 					#address-cells = <1>;
 					#size-cells = <1>;
diff --git a/arch/arm/boot/dts/ti/omap/am437x-l4.dtsi b/arch/arm/boot/dts/ti/omap/am437x-l4.dtsi
index e08f356e71cb..30fcce33f4b7 100644
--- a/arch/arm/boot/dts/ti/omap/am437x-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/am437x-l4.dtsi
@@ -301,7 +301,7 @@ am43xx_pinmux: pinmux@800 {
 				};
 
 				scm_conf: scm_conf@0 {
-					compatible = "syscon", "simple-bus";
+					compatible = "ti,am4372-scm-conf", "syscon", "simple-bus";
 					reg = <0x0 0x800>;
 					#address-cells = <1>;
 					#size-cells = <1>;
diff --git a/arch/arm/boot/dts/ti/omap/dm814x.dtsi b/arch/arm/boot/dts/ti/omap/dm814x.dtsi
index 27d1f35a31fd..9e02bfa5c3a2 100644
--- a/arch/arm/boot/dts/ti/omap/dm814x.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dm814x.dtsi
@@ -432,7 +432,7 @@ control: control@140000 {
 				ranges = <0 0x140000 0x20000>;
 
 				scm_conf: scm_conf@0 {
-					compatible = "syscon", "simple-bus";
+					compatible = "ti,dm814-scm-conf", "syscon", "simple-bus";
 					reg = <0x0 0x800>;
 					#address-cells = <1>;
 					#size-cells = <1>;
diff --git a/arch/arm/boot/dts/ti/omap/dm816x.dtsi b/arch/arm/boot/dts/ti/omap/dm816x.dtsi
index a1e0e904e0f0..ee0090f7aa64 100644
--- a/arch/arm/boot/dts/ti/omap/dm816x.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dm816x.dtsi
@@ -100,7 +100,7 @@ dm816x_pinmux: pinmux@800 {
 
 			/* Device Configuration Registers */
 			scm_conf: syscon@600 {
-				compatible = "syscon", "simple-bus";
+				compatible = "ti,dm8168-scm-conf", "syscon", "simple-bus";
 				reg = <0x600 0x110>;
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
index c8d325b0f57b..9df7648c4b79 100644
--- a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
@@ -64,7 +64,7 @@ scm: scm@0 {
 				ranges = <0 0 0x2000>;
 
 				scm_conf: scm_conf@0 {
-					compatible = "syscon", "simple-bus";
+					compatible = "ti,dra7-scm-conf", "syscon", "simple-bus";
 					reg = <0x0 0x1400>;
 					#address-cells = <1>;
 					#size-cells = <1>;
diff --git a/arch/arm/boot/dts/ti/omap/omap2430.dtsi b/arch/arm/boot/dts/ti/omap/omap2430.dtsi
index 222613d2a4d1..01bd471f9223 100644
--- a/arch/arm/boot/dts/ti/omap/omap2430.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap2430.dtsi
@@ -50,7 +50,7 @@ omap2430_pmx: pinmux@30 {
 				};
 
 				scm_conf: scm_conf@270 {
-					compatible = "syscon",
+					compatible = "ti,omap2-scm-conf", "syscon",
 						     "simple-bus";
 					reg = <0x270 0x240>;
 					#address-cells = <1>;
diff --git a/arch/arm/boot/dts/ti/omap/omap3.dtsi b/arch/arm/boot/dts/ti/omap/omap3.dtsi
index 959069e24730..447736d2e53c 100644
--- a/arch/arm/boot/dts/ti/omap/omap3.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap3.dtsi
@@ -116,7 +116,7 @@ omap3_pmx_core: pinmux@30 {
 				};
 
 				scm_conf: scm_conf@270 {
-					compatible = "syscon", "simple-bus";
+					compatible = "ti,omap3-scm-conf", "syscon", "simple-bus";
 					reg = <0x270 0x330>;
 					#address-cells = <1>;
 					#size-cells = <1>;
diff --git a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
index 4c78a0b28fab..c1afc49f456c 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
@@ -681,7 +681,7 @@ omap4_pmx_core: pinmux@40 {
 			};
 
 			omap4_padconf_global: omap4_padconf_global@5a0 {
-				compatible = "syscon",
+				compatible = "ti,omap4-sysc-padconf-global", "syscon",
 					     "simple-bus";
 				reg = <0x5a0 0x170>;
 				#address-cells = <1>;
diff --git a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
index 915870eb5c99..72849e1c95b0 100644
--- a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
@@ -96,8 +96,7 @@ omap5_pmx_core: pinmux@40 {
 				};
 
 				omap5_padconf_global: omap5_padconf_global@5a0 {
-					compatible = "syscon",
-						     "simple-bus";
+					compatible = "ti,omap5-sysc-padconf-global", "syscon", "simple-bus";
 					reg = <0x5a0 0xec>;
 					#address-cells = <1>;
 					#size-cells = <1>;
@@ -2311,7 +2310,8 @@ omap5_scm_wkup_pad_conf: omap5_scm_wkup_pad_conf@da0 {
 				ranges = <0 0 0x60>;
 
 				scm_wkup_pad_conf: scm_conf@0 {
-					compatible = "syscon", "simple-bus";
+					compatible = "ti,omap5-scm-wkup-conf",
+						     "syscon", "simple-bus";
 					reg = <0x0 0x60>;
 					#address-cells = <1>;
 					#size-cells = <1>;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
