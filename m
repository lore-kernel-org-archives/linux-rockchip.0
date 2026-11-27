Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B16606A321
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 07:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IFwvp4MO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=T1QhQHj/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Om7Zren2sUczx/oniliZYtZCp9g78N646yrhquHCmY8=; b=IFwvp4MODo2EwDiQoyc1m4ec64
	6upRahWG70GNyn/ddq6ZILIdJqCg4wbLwwDJXCbGHQmnikV7Eh12O5LLQGSvFLqYn9xt2EJzKyvJd
	Z001Xybz3CtamiVYS9Y/zhVUmu3lDlr0DQeMuznNjep1YRedR40vp/+M0wzevt4Fum3CDIW1/88nv
	QnSex8PzY1uj319PS8PRQJj5RBcVrKojwj+hb+FlqfKdZCCnGXH/gsgItr0gp9Wn9xR/3Fal52Fvp
	TDDUe4NiN2PcjY/nx6wzwS93ZYeXFXJfXWX2yo6RUecy1zlseXkviAq+0/AWgP2Rrbe2/cl9EwcSJ
	5vQy+XSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqhM-0000000FCTQ-0TNz;
	Fri, 27 Nov 2026 07:48:48 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgy-0000000FC6b-1Bz9
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 07:48:26 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-35159e0092aso718092eec.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 23:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765703; x=1796370503; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wQwtBGptsppIiSD2EEtPZn/sWs62aWDTih2dvDjWrWg=;
        b=T1QhQHj/CGkmqQHTDiH98eM6JIn0gcJLteR1VZKL6yYDnedTMt6vXZCzSvxaKHjTfF
         DEJjYuPsIaSBsyw1yE9thy1L7Dh89VaA4+B4g4KYNUQPDP4q/1Lm/Mp/lMIuJoLMGo6T
         9YdGXCNTncy49YpMpsWggCWOt2UvV4nrmo64056BqQX5VSWovw+yPUJjD6M7+evBdx9u
         P7vmo4M9yGcB0cp1cnNxLi6yfJLRYsjzoI3MWaxv7Y+gVDuMqXulWAPOc5nsXFvO//QF
         ety0RoCjmVzahCIKhIG9NMUh7FABcBWCpvt0HBYr2xhSaN5DcA/AK0g6OFiKGAKJarn2
         mIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765703; x=1796370503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wQwtBGptsppIiSD2EEtPZn/sWs62aWDTih2dvDjWrWg=;
        b=R95RNFGqJHkcvooj5pvt1jQrlTLTVDwt8yszDMJAasop42JtaDXMGBxBT1dDz8LR7B
         XaXXEpR4OxMBvHGo8WXQSakdRtyReRZZQ6zai9KN1qMaPGz0RwiSBgMB6RumweOppTQZ
         F82yn971h8CGsOBaSD0TocKV55B2gkupcxs641HIgxlZXZUC7vI0v4+W1hQLpSYu1TPP
         n8o9OflD5pCoFvuqwoATHtErS2BsxpSzcjWW6MeFYqQAIgzNPjoDqW9JRHO2yfAbyGY+
         9qNflNzTUk4FkbzHL3h/9keo3ZCF3UNwkx3y5eLAfbL8K2mWRWcbPxYTdTqjX6HwdSk2
         SZqg==
X-Forwarded-Encrypted: i=1; AL+hErGxYI+LlDRnj07F6zpZQ0hxo3aCz38zkXgVtSbJ+wtudb5UHBaEF00sdsMNjHhH+3ld18pPaWzKWa85tMRWyQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+VKEZVCyn1niLWLR83dL+BQmJKuC8UhMqIkqpBsAXgE750bcSj
	gV6vxsRLOYbj7o6UA8IEM5pT9ZDcvtdFRUjvCDglEF0MM3MJJZL3ySDa
X-Gm-Gg: AZFdTZepddvUNZiKE548p+pSLOtoI9E4vq8RqZmos14OIlbTzsChqO3VxEMwMOt6oHY
	DTENDVc/oDKq8KAHvB6I4294qg5hmnUzAonO9fFuGBitx1ztZgRzBqvQbtQw1uq9HhQV07shopo
	9zjeGgIopt8uARu5HIFfNq1pcd5iaM54BStiuM703ir0RzrYkHFhny6UXnPrJmXyUY087JF7j85
	R4Tt53MqHPsawfW5Vs/+3t+7awlWXRGodKptn2M5Sump2Z4DKORmk5vQl6Kd9tOrfh8V5Fg/c6J
	zDrjipXxXsvLWlHJdHAdqQ1wWwyvknvq9GyDyjHrhcJeBchqBOsJ+LBBPBfd9PZ+DZTpX6MCVqH
	pipYJUcoL4dDfZjcvyRMCzeVsa5QyOwn6+W8EecdZuyycs+JG+ptcKGG8F7x3VhIf+oZmfz9SHa
	GKPZ6MXUmBmrKmew1NwY5qkarqbWRLjRgTAp9kbl6yHsTx30+UZtjj2j24LaXu6sDmMRUnR+3Rj
	qNrOQ2ifcmnQaqcYAZSGhNwnuo/ENZWwHU68NZrYgtF9ElTI1fdbq4dbXFgg2orqRPXT8dsS1lO
	BrKGkikeb/y4gQ7Q/W5dM2aLC2vBFfRafPZjCNbZAKqMTdxKpzJHWLafP5/rReQ8NMrbCyfAcNx
	JPXWtBb7vJucN/wYfpzQM
X-Received: by 2002:a05:7301:2624:b0:385:1a45:47b3 with SMTP id 5a478bee46e88-3856e24682amr38262478eec.1.1795765703177;
        Thu, 26 Nov 2026 23:48:23 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:48:22 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:45 +0800
Subject: [PATCH v8 9/9] arm64: dts: rockchip: add the dcphy mipi csi-2
 receiver nodes to rk3588
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-9-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
In-Reply-To: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=3591;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=wHYitdr9DGtZWdI+e6LvB71Er0urXzEmjuek2OzfqCA=;
 b=x0Eoz4Ybdy9c1XvKnjo/yqIl9hqyaAcBUU0jRw3PI7nE/mnUYSWZQHERZwCA7q+BJ+79/HpZd
 lElzx8f/wgEClUUQIs5L3e8ZodSwC3V6x4ufyRlZ8cSnMgr5Oku67mf
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234824_332740_35D20180 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The MIPI0 and MIPI1 receiver units are connected to MIPI DCPHY0 and
MIPI DCPHY1, whose receiver side is now supported. Add the two nodes and
wire them to the VICAP ports.

The csi nodes select the PHY receiver with the new PHY_DIRECTION_RX from
the dt-bindings header. The phy nodes need no phy-type: the DSI host and
the CSI-2 host both run the block in D-PHY mode, the default.

PHY_DIRECTION_RX is an ABI change: an older kernel takes any cell value
as the mode of the block. The csi nodes are disabled, so an older kernel
is not affected until a board enables csi0 or csi1.

Before v7.0, there is no CSI-2 host driver, so enabling csi0 or csi1
changes nothing. Since v7.0, a CSI-2 host driver probes the enabled csi
nodes. An older PHY driver then gives the CSI-2 host the PHY transmitter
that drives the display. The camera gets no frames, and the display can
stop working as well.

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 68 +++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index aa69fd3793fd..c7174c2f15c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1516,10 +1516,18 @@ vicap_dvp: port@0 {
 
 			vicap_mipi0: port@1 {
 				reg = <0x1>;
+
+				vicap_mipi0_input: endpoint {
+					remote-endpoint = <&csi0_output>;
+				};
 			};
 
 			vicap_mipi1: port@2 {
 				reg = <0x2>;
+
+				vicap_mipi1_input: endpoint {
+					remote-endpoint = <&csi1_output>;
+				};
 			};
 
 			vicap_mipi2: port@3 {
@@ -1568,6 +1576,66 @@ vicap_mmu: iommu@fdce0800 {
 		status = "disabled";
 	};
 
+	csi0: csi@fdd10000 {
+		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+		reg = <0x0 0xfdd10000 0x0 0x10000>;
+		interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "err1", "err2";
+		clocks = <&cru PCLK_CSI_HOST_0>;
+		phys = <&mipidcphy0 PHY_DIRECTION_RX>;
+		power-domains = <&power RK3588_PD_VI>;
+		resets = <&cru SRST_P_CSI_HOST_0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi0_in: port@0 {
+				reg = <0>;
+			};
+
+			csi0_out: port@1 {
+				reg = <1>;
+
+				csi0_output: endpoint {
+					remote-endpoint = <&vicap_mipi0_input>;
+				};
+			};
+		};
+	};
+
+	csi1: csi@fdd20000 {
+		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+		reg = <0x0 0xfdd20000 0x0 0x10000>;
+		interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "err1", "err2";
+		clocks = <&cru PCLK_CSI_HOST_1>;
+		phys = <&mipidcphy1 PHY_DIRECTION_RX>;
+		power-domains = <&power RK3588_PD_VI>;
+		resets = <&cru SRST_P_CSI_HOST_1>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi1_in: port@0 {
+				reg = <0>;
+			};
+
+			csi1_out: port@1 {
+				reg = <1>;
+
+				csi1_output: endpoint {
+					remote-endpoint = <&vicap_mipi1_input>;
+				};
+			};
+		};
+	};
+
 	csi2: csi@fdd30000 {
 		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
 		reg = <0x0 0xfdd30000 0x0 0x10000>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
