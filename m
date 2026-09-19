Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C551C982DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rViO89wwZbXE6EbHAap4EkkEdF4kqdT7EEyT7LgB0lg=; b=IAmhVQvOd+WTTX
	eq3Zm8BCA8rYyB2J5h8YeiBC0WCNK6Sbvg5HNddp0YnBpJYXVq8WjM29G06hClKkNmGt+1MrleOyF
	ROsuG9uws9CN2PvOvozRxBnoFyAZ8OEGYJW51FoevF94TeNWVU7ye7Ub4xwwNK3NBh2pwIQJ/BK36
	DlP9WGouAH92TXf7g6evn0pQJs3mr+wGabX2I914PL11QMuZIwc/ILxKSfaDwwGegVa5HXCzftfI6
	YqKdpH5L0gOCt8wWxGLCLvEPrpLCDkV8R8Lb1SckPS1geqgjUvy6Ii6lUVEpFZqtX9UzfqCYrXrD9
	5wimuhMSF43jnLnPM3cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYP-0000000GHFO-0sYA;
	Sat, 19 Sep 2026 12:52:29 +0000
Received: from mail-pz2-x0a.google.com ([2607:f8b0:4864:3b::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYL-0000000GHB1-2w9q
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:28 +0000
Received: by mail-pz2-x0a.google.com with SMTP id 41be03b00d2f7-cc4aa027fe4so436140a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822345; x=1790427145; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=NRkahPtNQPpWbJTrJttmQehKRUP5Hpx8ji3mjBrb8FQFQEaFdjlF4jdLaZlWFjLdRa
         /4ZlBdE0hP1F3b0QFtX44wrLaBH0ZpQSrLcYVMfr3dSBZSk2wsdCDq41m1LCfOGeAXLh
         BI30hjtFfU+F2LT6gcq1cZIHZABH/5NPUoe7rnnKiiLgoW3La1B+aPvyYRmrOHZTb8Oa
         nJaSpwG7YNKTz6zJOVxsAiveamBjEymhLlUaZdlDhD4EpCQxIJm+JsP/FH1xSRGrkuRV
         VDcKvWxhkjDAgQz8xykistai4UcInEScna7FbZ9DuA9qLrXF5DBpgMkWXno52VPtSS36
         Y0/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822345; x=1790427145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=GepqqKnwlItPoMTBTc8GZx9gh/owNtEf3Gu0oDnnlD3eUdTyPF3nLtTx2/3kVaLTE9
         bIi5/gW0EinqoEFAObQ8BYdgR8XAIJwEvY+MvWr7fKONJvRcOxxxFb3TVxSRKQDB4slj
         +PxJ02qR6hQxayGmYEpVCkyRIni+KuaGpFuz6J6hJiqUSRpyUN+e7132BmtSrjktxl5P
         CaatRBJu8buGgWuANIvhCHE3xZGrF59jBN5OOUgWUnoUyrPHT8sOmS+Q+rVYsLQyJ8s9
         yxhzyyK7Exutg70aldVOBLhb5okd4w4KiFpiYwXehjUpqpWpSx3LG1Y8WC9hoWQSvwU4
         H/7A==
X-Forwarded-Encrypted: i=1; AKwUvBx6lto3sYjQB70GwlTFa/Qh3e/ocgHo6ZpNWkMKM5y/2xnATOwSmn6J0jUkkOc5KTs7AubhjBgq0LSZkEEX3w==@lists.infradead.org
X-Gm-Message-State: AFuF++l7WprufvBfr3DPhTR/4AAp1aRBG6Wm88q6g6z4stIIUXVPacte
	C0E4nVPEd+AEBSD7dmae97FLl+m1Imje8YyRtb5W8BxuFrdnZi9Fve4g
X-Gm-Gg: AYBFou2o/NXmM4S5cb19b9syk3ZxnmvJaslN056hddKbq9lRLswWTAofBaSBzGixzp4
	9rMHG1VOtZzAmFv7ygm2yIn8MWf6jh3ge4Tln5R7HzgIYYCL2CfyqyNrgMI1+7y6L8W3re0gLuD
	tkphlHwLJ+UbEuiAzDt7yxtPKszxGts7ugr75zwX6aaUx5RUDK7FrReslrf3KYmIwxSyWqBYvDR
	G2r9R4eLEhXf5sYpiVtt7FcQNiaurg34bCMWbttC//ZosIvEa7x8kQl211y9hxgwV9Z9L855Mmu
	B1utfErQ6y2OkxqyixKisZIVGfTM/knQN/Xf5nqzCnYbUo4mSFNEYnNh/8uaHB8QbYsqwrX7/i4
	980bG11g949JhKv6ytZ64eAcjvqjW88lFH54bv6HxGqMZWIRj306wnECohy0w3Niy/ErOuKYgfF
	vk3pHuX5CxcvNpSji1y/o2bct5o+5Bso8nGGOYfwn+MbVhxLBU3xiQrbNTDujWsKkgVFUKzw==
X-Received: by 2002:a05:6a00:148a:b0:878:34d7:69b0 with SMTP id d2e1a72fcca58-87834d76faamr1660285b3a.55.1789822344779;
        Sat, 19 Sep 2026 05:52:24 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:52:23 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v8 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Sat, 19 Sep 2026 20:51:12 +0800
Message-ID: <20260919125119.2107089-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055225_799643_2E78ADEC 
X-CRM114-Status: GOOD (  13.54  )
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

The RK3568 SoC integrates a Synopsys DesignWare XPCS that provides
the Physical Coding Sublayer for 1000BASE-X, SGMII, and QSGMII
interfaces via its four MII ports.  Add the XPCS device node and
its pcs-mii sub-nodes to the SoC device tree.

The XPCS device is accessed via the APB3 bus at 0xfda00000 and
requires the CSR clock (PCLK_XPCS) for register access and the EEE
clock (CLK_XPCS_EEE) for Energy Efficient Ethernet operation.  The
PD_PIPE power domain must be enabled before any register access.

Also add two fixed-clock nodes (clock-xpcs-gmac0 and clock-xpcs-gmac1,
labelled clk_gmac0_xpcs_mii and clk_gmac1_xpcs_mii) providing the
125 MHz reference clock for the GMACs when operating with XPCS.  Their
clock-output-names match the CRU mux parent names in clk-rk3568.c, so
boards can reparent SCLK_GMAC0_RX_TX / SCLK_GMAC1_RX_TX through
assigned-clock-parents.

The XPCS node and its mii sub-nodes are disabled by default and
must be enabled at the board level when 1000BASE-X/SGMII/QSGMII is
in use.  The fixed-clock nodes are always present and do not have a
status property, as they are static clock sources.

The XPCS node requires a reference to the appropriate Naneng Combo PHY
via the phys property.  dtbs_check only validates required properties
for enabled nodes, so the SoC dtsi does not provide phys/phy-names:
boards that enable the XPCS must supply them, since the SerDes link is
a board-level design choice (combphy1 on some boards, combphy2 on
others).

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 45 ++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 3bc653f027f1f..227d03e336043 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -110,6 +110,51 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: ethernet-pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+
+		xpcs_mii0: ethernet-pcs-mii@0 {
+			reg = <0>;
+			status = "disabled";
+		};
+
+		xpcs_mii1: ethernet-pcs-mii@1 {
+			reg = <1>;
+			status = "disabled";
+		};
+
+		xpcs_mii2: ethernet-pcs-mii@2 {
+			reg = <2>;
+			status = "disabled";
+		};
+
+		xpcs_mii3: ethernet-pcs-mii@3 {
+			reg = <3>;
+			status = "disabled";
+		};
+	};
+
+	clk_gmac0_xpcs_mii: clock-xpcs-gmac0 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac0_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
+	clk_gmac1_xpcs_mii: clock-xpcs-gmac1 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac1_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
