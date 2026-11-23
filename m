Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7067B606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 16:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Xl7BK1y7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=V2PcPUT/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=065jc6WUCFuEEViH8RuVfDtpY6qFXM8KpUlrJpR3WPU=; b=Xl7BK1y7gbhevn2bgbKiib1PG8
	YyUMnA7i0UbHn20eQbDhXog/oPYSYpTBli7JMif0OH7iIExtJ4pRA/rtejj8FBAUnCcmlhS/sdyiV
	t+zu93ticdBYFDGY8J0Gykd4BytH83oiAy2Fc4haeJX9xVB8y5Qid0awp5QMoyAy5OWJh0L/FrzBA
	yxRe0cUKbq3Fh7NMH7dqxaW9f08Im2SHwSq/VRuWDW2nfZg6Zl9gGkgPsY3lQCOJmZUW68ts7rhQq
	SUvQsGAIj8srt2/Fwf7979o0WwP7sBikoLoHpcBvS0HF/wK1iIQnkgZbXAbM8HykVihvKTUe38iGG
	U/aftYKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXN6-00000004HFO-3SOI;
	Mon, 23 Nov 2026 16:58:28 +0000
Received: from mail-dy2-x00.google.com ([2607:f8b0:4864:36::])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXMb-00000004H7F-0qW1
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 16:57:58 +0000
Received: by mail-dy2-x00.google.com with SMTP id 5a478bee46e88-327b1d5824fso3083919eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 08:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795453077; x=1796057877; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vPQa4vtqRqby5WDNW845XbNQIUuJKanxgqfCE4nY6Wg=;
        b=V2PcPUT/6KhcYrG/y4YNa/A1VRdPgZEb7Ioy9XlLgRLxaSKIHl3M0EUp4rDECg9zV/
         xDw5d17xWuc15AoAOj78tqvnb9QR/6iyBTp7KmvDqhd9Ky2rwTvP4rFnzNqmMyujYzu1
         ub9eMZkBHCFyqQQuSUreXq+UZMO6jWQj+KyXyrCj5E2La/oTi66yRM07zk0ahoF4J3Cw
         Ow3jdx/4JWLOB2+lh5T7t318JCV6Nqeewq4yEAAomI2C9eaRzq8Z6mZEdH7GhbP0ukl9
         Ayt4Iqdvl4k7EbHSf+erJXCm1Jf7trC9vBW/sZucoMF0pLtGLsRIoft23vkffk6Vzrkw
         OepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795453077; x=1796057877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vPQa4vtqRqby5WDNW845XbNQIUuJKanxgqfCE4nY6Wg=;
        b=ATHu77BH8/OkCyrCmXVCBPpvzdS+v1uExjITYdG8kYlTFdyT8U+EksPVryF8obuJq5
         ILi8OCs3X3zEWa9xYt7Shy90ZRW4YY+KqCdZXo1E3R2qL/n7v7g2I2iBSXU4CSsqAvzJ
         ZWpHttXZ3l1ededXzANWCu57PzKGoldvqF9xTLui5kP7zOV+wb/Ux0snxjEJ52nlwkyh
         aHxfwLxlH/5bQ9nNKp9NA8RsK2W6B9R/Jqw8jM0zNP5U4eQ6SOa4l9zGNxjokj40GS5I
         0L/aVgz76/8gv6WYzceW/Yyn9aGy5FgHhucpMUMLfvqVoP9jm8WMfpXRY7cnroy88Mwl
         K2SQ==
X-Forwarded-Encrypted: i=1; AL+hErGh81jhSTCAE8cuDH7HaF4fW01kr/c59MO7IPV2g1ImlMgqLYLIvRiXM/T5PyR/H2FatBsA1TeKuFwdZQCRsg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/Di/Ow4A5GTjjqJmz/aUAknN+d8yuRjvqqUso+H0+wDE6dYCNm
	BeHDddRV9ZhxOFCZxfleTMBKXGH0q+8bX1RVd/ThhObzzrbJ1BtQtMcL
X-Gm-Gg: AZFdTZfQ5VH+eG5lmuTh8XByysWE1ChiY/OWoU/Wox8t3Phj0Xxc+3SmeMcflVhXudf
	oGkyBWpVu/FxiQLSFxbXYWI1JD9V7HJ7dhgSp7t+oUEbCAdKWOoVqhDhX4hPBN7EoiZuTEqQSZx
	1MnBE1g9+/4EESRuNNHaTieiaH+H0l+bfX24iQikrkvLuMieqBJOiM22FycTMEghoRZd+VLQ2rm
	FRGzUGbPSDZytqE8xjvO7O01uB4myxQk/rsnPrg9Mn0vG/KfvK2c7eoE8VxacTaGUlpY3YvESGO
	AksBQwsvL6FM79kZqe/F3slnXBMm88aZzlzjqNY0YaLITIse13OGLfRNyaUucjg8PaoP9anypeH
	rNif5MPe1hsRQw6VaXRDwIae0c9uNSs1sUkTbK4hXifL8yQEiRoW44yCvfo8Hv6Xo9cGQzSsShf
	nx5/ldnNn8GCFKNqMxSx5GKciBKSTMaugX4MehOm1X7Eif8v5vHi0fhpZC5CLWnLPwNoWZxH7+D
	S7Hp22kl1zdG9tfxpmEmhX7yiRiiSV00pyZ3CXnzS3cK2Q1RZCvu24J2UZ3XCyZNXYBKWVkaYdL
	wr/t1GplhmE7LVQ0YBUPTjeE/fvSqfHm8bHxYjydtoO/E3Ugo2c7XOJoifU=
X-Received: by 2002:a05:7300:ce11:b0:385:774:fb23 with SMTP id 5a478bee46e88-3856e63b5cdmr13616256eec.6.1795453076526;
        Mon, 23 Nov 2026 08:57:56 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aa203267sm13315280eec.0.2026.11.23.08.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 08:57:56 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v13 1/3] arm64: dts: rockchip: rk3568: add XPCS node
Date: Tue, 24 Nov 2026 00:57:01 +0800
Message-ID: <20261123165703.667564-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261123165703.667564-1-coiaprant@gmail.com>
References: <20261123165703.667564-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_085757_249532_5F25F879 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

The RK3568 SoC integrates a Synopsys DesignWare XPCS that provides the
Physical Coding Sublayer for 1000BASE-X, SGMII, and QSGMII interfaces
via its four MII ports. Add the XPCS device node to the SoC device tree.

The XPCS device is accessed via the APB3 bus at 0xfda00000 and requires
the CSR clock (PCLK_XPCS) for register access and the EEE clock
(CLK_XPCS_EEE) for Energy Efficient Ethernet operation. The PD_PIPE
power domain must be enabled before any register access.

The XPCS node is disabled by default and must be enabled at the board
level when 1000BASE-X, SGMII, or QSGMII is in use.

The XPCS node requires a reference to the appropriate Naneng Combo PHY
through the phys property. The SoC dtsi intentionally omits this
property, as the SerDes connection is a board-level design choice and
different boards route XPCS to different Combo PHY instances. Although
dtbs_check only validates required properties for enabled nodes, boards
that enable XPCS must provide the corresponding phys reference.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2f42bf26fd9b..c8f846e5ad9b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -110,6 +110,15 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: ethernet-pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
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
