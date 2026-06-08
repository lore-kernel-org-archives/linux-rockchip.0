Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBEB7CD8C9F
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 13:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrNY66qg9CDuaRYnNbtipjlUZ8wKief4YzXMZv0Iwsg=; b=YvQUyBJm+jm+hH
	KJZ9xWmVokA6t1dQkhn6b4TajjOTTkzuer2RbUDR6NuY9fTmCf/r4luCIW+u9nGvYTiBZaDD3XKKe
	XgMpJhIe4PP5fMP+3bWxpLngNejoIgJdjej32BphbQbvFqEUU6v6jH/cwsGCRQK0jXcoEJUrlTFWW
	VWC6r7sPqPSfOAu9CDUbpxW4Nog6dOWmFyofvwXZj0Szgdxu+kTHpm8PkI16ok7H3XpZAVOFfEkxi
	M76Dhe/eLk9fV6c/vM8gipOSio8ipHh0TjaBFahKRpCAWT1LxnxWIRljICdDduVCyrVAhLUOMe2S6
	JhbtQ7pJogzNm1Uei0FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWaRf-00000003fXe-2rZj;
	Mon, 08 Jun 2026 13:55:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWaRc-00000003fR3-0EJ6
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 13:55:14 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658DRG3Y3682608
	for <linux-rockchip@lists.infradead.org>; Mon, 8 Jun 2026 13:55:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iYAENU3bKN6fHyKKtSYTgWQl9v5OPWMHQrRWdi1Q+xg=; b=ftPFlvSwQeIcmroA
	XDd5yCj6CRUGTJPJc43DA7o1mB4Zt8RDsQD+8Y0JoueSjgyQCVwp/bTWe9cfhS0U
	UFGfSW2Qsac9po1OC8IxVaJ/Ptan1zu8thyCM2ZI6wwg9XlCB9jXg1TDsF+RCwWO
	HpnYLXsyv4w2wI3VOM84pAeojBnYwGDYnadIf8i+GFgTMzEBDhzhwKstIIuNfAUc
	i95hLNmdb4f87rZKTYgluUOT0y48Wy7Oeh0/9XhXx8qrnkZLF32sjLE4BTUbfSsF
	KX8+eSDG4EyPUXYScpeSNFxPPzRc2gX0ddG+y4ofLlgg6Q3gGkK5Ulak96FyMUPO
	NEmznw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enx2rrb44-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:55:11 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8ccdcd8dd3dso104676476d6.3
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 06:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780926910; x=1781531710; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iYAENU3bKN6fHyKKtSYTgWQl9v5OPWMHQrRWdi1Q+xg=;
        b=KJWMWeRB8eXB6/UrJVXHn7ne1OlLxuOL1Aio21wmUmhZJR1LG/vqJdvQbFSOPMmzlq
         Dcn44mYi5WCfwG+/mq5r1egKwMakmM4LAz0YzE6B0lBiYVs+QigrF+btLuWUMIfEMvV3
         bOVCk1s10TJjSBOTEcGHzhSQ06z/oNOwSen0ISsdKOblAcqDZu/LI7+RaKG/mt2biW+4
         eEulTyTf+yWRUdumhtScJn5Y49CgR49J5QbBpf7QJuGpz5hF2YEaVnXmtJ3Mo9q20ZIH
         sXD9UB3FxO9rg87SzGCR0pGwHszUD/+RDHrq2uGsZpGUs5gI/MSEEK0tWPwK5FSCLgJk
         wBTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780926910; x=1781531710;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iYAENU3bKN6fHyKKtSYTgWQl9v5OPWMHQrRWdi1Q+xg=;
        b=cp+bU+k3XSXyZMcdkBiYxYtb6D/1p5ERMU6DQD1llL817ciMydGH7yWiiLhiVLUshv
         PyfP1XErdzlGOYa698k7+ICM91p2LdXADnLpf+oMjQXInci2We3Azxit81uIPOCq7VpM
         J22DYYwvGYb+YvKUd9j5UFpdm2rMSG17QMwu1/PrCt464/cc5NWHpen7Z+pQz5PkPs+h
         rtGHlInIesMgWX7o0qkuIltKwG63oi7oa/daYaKrhV04dmampnoWVtZT1CcA5m92Irt+
         Y3r/qXVj4S17U4HVpDJPKcdoxm7fwvE6yOoBIs5fMwpsRyYss2jlsTNhDQmuEqtJyfSU
         cxpA==
X-Forwarded-Encrypted: i=1; AFNElJ8w/C7XNLmzBw9eKW1lsIrn9h/mYbJqZnbX3jvT053qeO7olbiQR+ujvluucDsl5qf7OYDWWUOm8+/q50rSJQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwdnY99Mxa47NNlVE11uLMDowVgW+QWTu9+tfU0dg4Wo8WXcRro
	MFdmxY1DKgOForS5oNhEvM316uDv22m285nk9vAMwXT726o2kLCBgHYkBhaW4ZHXW9vjgyVzL98
	CC9IWo77ezSIL8s9TsCVN5sIwv6ll3HN27wpdOFw6xC8KS4OlON+7m0n1tWErP2/OUy7hk87iIc
	A=
X-Gm-Gg: Acq92OEmmzH6YPUFZgPUFDiXnbobyoAyXxEZnguebk3DdM3wiSaILvspy2dN/7pDOQP
	/H2CC242ordvfDzdhdYp1I1L4AEYrhnAp3p7F9a1Ltq9h/877mBzeqeBzvITgMd5R0T1d+3WviQ
	2XzULsqlIPHmpRwr85eHs/KMMsgD6lWFkymNkn5qnAJrUltyBqCuDP3dqQkY+8uBA1B5r2M9zpP
	FX7ypTTeXuW5ewy3hJHRImF7njK2lyakFB5Q4P9OuR7KHUFONSV5ttumsGKKWX/XmdihMy/EByu
	Ku1vayd/j8O5WWfyWHjSFXxW7pioh9EaQOtf+fx6EMeqj9bUMdfCUzWdycuMhdp7OFfUgLJ3rv6
	cGq4Iih4P+S54zGMk24hkl58qU+ndrVWsGlTacrW7YgQwx6aCJm1DOiM=
X-Received: by 2002:a05:622a:4c0a:b0:517:6fb4:5796 with SMTP id d75a77b69052e-51795bcbd6dmr233491961cf.30.1780926910303;
        Mon, 08 Jun 2026 06:55:10 -0700 (PDT)
X-Received: by 2002:a05:622a:4c0a:b0:517:6fb4:5796 with SMTP id d75a77b69052e-51795bcbd6dmr233491291cf.30.1780926909757;
        Mon, 08 Jun 2026 06:55:09 -0700 (PDT)
Received: from [127.0.1.1] ([213.55.209.126])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc39def5sm385972925e9.5.2026.06.08.06.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 06:55:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 15:54:17 +0200
Subject: [PATCH v2 4/4] ARM: dts: ti: Add specific compatibles for SCM conf
 nodes
MIME-Version: 1.0
Message-Id: <20260608-n-dt-bindings-simple-bus-syscon-v2-4-0203e6c249dc@oss.qualcomm.com>
References: <20260608-n-dt-bindings-simple-bus-syscon-v2-0-0203e6c249dc@oss.qualcomm.com>
In-Reply-To: <20260608-n-dt-bindings-simple-bus-syscon-v2-0-0203e6c249dc@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6102;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=1TEC0glULkibN4KdgZrT/r3Q3YTk2QahVA/FaQ9NL6E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqJsmr1TFF2JsnFS66lCU+8F+0p5qJHQWm/zbvh
 UkJEZ5dWPuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaibJqwAKCRDBN2bmhouD
 1w57D/9Om0+Ap30Qz61CKEnvch9Did/wqToFGxnJQ2JdOkEcVRs+TGjLUVktj/NMHJduyiKdC3H
 lvRaXHDPMR8luF/OqbQTvidsT53QwUYNkShjaM+gS55P4+JqH0KxtUBolOmJkWqwSNRgHdAY+Kx
 skRFzWFXkRZyyxp38XHyZA1dgD4TmF3I133R5s53OEpnCLOumMbl9i6/w6MC5YUj0LjMXDAFja8
 Z4wE6RVLg1vXq0aLT9VtDKIHjVc7DqzNSTxGKCJnYTyL3wxT5RrS8072zPpikKv597dy6XSf5r7
 vhWE8W31x92IsGmgSi/o8RyoLO1xxoigfrASyHElWB2FagqUhvjZvBGqfPuk6+W+3ReFqXIGh4D
 FzO4zxE7w9RXGsGUgLwZr5/0sPPogfOny6q/8tOFN2F5cex7JgkZIUFUyS+81GzbWoAez745GlC
 GBE+vXK/J4EH/gkdp4MvIepziyvEU1lWuxX9tqVl1e2vFzoV6BdJc/P1ZTFzlD0BgO481VMEs8I
 5YTZEc9Z3Lk3ifSt7azZoc7d9HMxorm+6PrdYBLX5YWEh2vAG1KgvI3e5HkcreiBj4pZgI7K2HI
 ilHvb9PY9Vgic3JVKyzxkr7EHYTu5J1B5Ey2SVC6mbf4FLetntazJNiFS8U1KUWGKCKo1/l+Mqq
 As+xdcBo5ObiP2g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: fhPhYmhN7iVJe-6opcN7siru6hbVdUqO
X-Proofpoint-ORIG-GUID: fhPhYmhN7iVJe-6opcN7siru6hbVdUqO
X-Authority-Analysis: v=2.4 cv=JdqMa0KV c=1 sm=1 tr=0 ts=6a26c9bf cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=bD1TNsHgvEXzglPpcYW9rQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=50gAi1W1AAAA:8 a=EUspDBNiAAAA:8 a=h0HYIqCiEIHQYu1o55gA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=bIAsa0K8HJLRn3BBPJ--:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDEzMiBTYWx0ZWRfXxZTAiVmhv0t2
 sDbxzmQawjRGHU4sjg2yLyLkeIyeiQTSDJ/rz5sbguERIllqADj+GNQeiPDV3ILh5fwPcZ+bQSN
 KIX2ctO+rbVNsxTTA7ATZusBmHqO4yTCimtTV8+fDmFBAyuJCo/Ba5pEbMI8Y9w1BYfWsauZpJm
 sd1rHouzVJe2SS31u8NUYZdylRnofJAP6TQzKk7strRUTXeSM2g4Kg9MULDkBtTQCJCPQ9WXSEx
 le4nPV5JmLh4SoM9cPCYVCN7IKZlJ2YgUu9cYKY7N0u8Bzl6HOrp0Wngd0AfcS6xEjE3JB1rR1z
 zDvctgkp0pgL2Xm+mZw7TPDEwIN43v0g4HwoRTPnLSEHRMq2iYGYk7poRI9b87t/7L8Bn5g3rNf
 WtHMZu3X1EM420+/Ch/78DUar/khoJC6f+fWk9r13TgynmrioLYXVlDfNGdyC6OgDYtPrRem5g1
 +dFfKDcD5cCBVmFZvHQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_03,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_065512_271530_67AD6813 
X-CRM114-Status: GOOD (  18.00  )
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
index 915870eb5c99..3350128db22d 100644
--- a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
@@ -96,8 +96,7 @@ omap5_pmx_core: pinmux@40 {
 				};
 
 				omap5_padconf_global: omap5_padconf_global@5a0 {
-					compatible = "syscon",
-						     "simple-bus";
+					compatible = "ti,omap5-scm-conf", "syscon", "simple-bus";
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
