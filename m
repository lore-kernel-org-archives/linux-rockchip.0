Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE048CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 08:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=davDAkc8YK0YDsLVSp+j8ALeuZBmxWtDNgcPQwhMFbQ=; b=VPf8QaP+dn7UFT
	vQfSaPGg6vf1FkiMkuhG38OissSXYcnRKgKS2S0I+R0uhRGSbqOsWMQEySXGdHMA3hfu0NmhWzg1r
	4hIcEFpq4R0/IUAP7pYiWhvxAcFRsIEMVm+i7Ip2E28TK/5ZlLVtH8KSEMzndG8BeZmko3v5lwCmY
	ZvCV2ieJ4ZJqbDF19Ea0Zi3ljRfNHsTct3FqiN/Pg/ZP/L0ggOAOvvw7FyXxfXv5EHEo/CcWORmQr
	OEAmQ+Kj+qX7UT1xjYQ4wdqn9W2/mm5qD0HTlH/74o1XM4GoaoBQ1XaCUiQ2nzj5OEGF09RoMxSWZ
	NV0SSzrFgHpQ8Qynrhxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJGN-00000007QJ7-2HqO;
	Wed, 24 Jun 2026 08:47:15 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJGK-00000007QFx-0Co6
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 08:47:13 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 98e67ed59e1d1-37d7c265ca5so660253a91.2
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 01:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290831; x=1782895631; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LLcfgRgcRG6+Y1GgVHrol+2NxklkD2AbD5mhAFMMnog=;
        b=gOdGCol9bk7qJr38+q2wFgker99RexbRl8MfrDdyLVoNoELMdYLSr/e0MD5fk3I81r
         sjLQfGpTv8nRiHT3Y/s+cADUiFI7N2yMl5GRkUrGkNbv5Hedfa9jPV3MUo8Vv0ZwKrqc
         JpBBuqeji0uIAgQQd2qdaXbmhpO6nrVExwTxJ7qm/Ii5+dKNzcfOXIjzkJXZsY3EMkI3
         D0ecD97sKRz5+DRK9CV0ra0wzjFvkE+cOqI8B2C7McxiT71UqCrL0LBYYcFMZowTSkmC
         Y3aKqbdXwyscQGsATZyxiRCsuDulX5EGdWK2dR8O/plzxqf9pygkMgSR/kbEqUjL2i7s
         Xeog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290831; x=1782895631;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LLcfgRgcRG6+Y1GgVHrol+2NxklkD2AbD5mhAFMMnog=;
        b=dBjJ0pRMDWYRmpqztQbE+PVM2lgWU4lXQqWHWWAUI1PkU4ZkFmkBV9ei5RgrGGHfVp
         THHJzEC4Et8D7fqWoMFFOBqCkUKCiPS3T23zyW+AA+QsxVhQQ/oZAz1YQSbhYQuq9zck
         Wzf04HeVBjntW3QvUUA1uT3hoHZ53TA/ZZbVukWWNqZBH0zobDY3g87cOXbt82XBggxl
         J4/77WnLwel433x0NRFm4fS+Sr2radqGU+Gfx7uBecJXZrAEuDUxhuVmA0W80pcoWTnU
         IYW+RGjcioLQrerlGIjySicMmIbt3BGLDNb0mz+0PJlyvVUFyhHUXwzlld0xkRLdP7d+
         mWAg==
X-Forwarded-Encrypted: i=1; AHgh+Rog8Zn8BAuJ/S6o1438At165UQMzxUdGIVcEf7zv+RNsBv7ObtizCUYbOnncJOSkIL73gM/E9mWnIVdV0dR5A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyXbvI4IgrMzqBQSMR6nLzFE9soCkwssbCaM/aBiG+Z/J38qYXY
	GZvk5xFb3SHct2U/XQitQC3we1cctvIAIiopMbOEI+Wg3cOkqJl7OG00
X-Gm-Gg: AfdE7cmZuli4Wh7IJ4KMtTUDhX0puRvBgZuz6CdEeM2VLLgKtQ1wtlXkicrghVk3k8A
	f/2YQyEpwMk8vYfOFPNH3rwG5HB+pX9iKKTaBYaEiOMrAXPE61zSvY9iygkCjqoXO0n3sJvHZN9
	QIONpCDzw1agCstKE6PAEddgg5Uygayx0nRLGY+aoOlFZcYSOZncpsV8YQ1LGs73sZpaeIw6EeO
	cJdn321EwTc+uSi02OOAlW5ckZtAWR2wdQkDcNo2B6NzscDm3xSSC3DrZgQN4xGuvnYuE0WVIr4
	+VdHjK/zY/68gxDufNYTDR2sQkkpvZko/hbVw1gwTCodIthxgxgHRQxbqHPaT5PT5tj4pPvOiwz
	GBuTGZj8/Q9mJGXhmIhsUlrozJSebMZyV0MdeOtbWR0eqCajidO1r4DeVBrSviFk5SXQj5/eYR2
	5SZKKavudAXL7Dm5VarPvt6y86
X-Received: by 2002:a17:90b:48d1:b0:36d:8e6f:8d9e with SMTP id 98e67ed59e1d1-37de428c345mr2433707a91.20.1782290831423;
        Wed, 24 Jun 2026 01:47:11 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3d152f4sm2138146a91.14.2026.06.24.01.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:47:10 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Wed, 24 Jun 2026 16:44:42 +0800
Subject: [PATCH 5/7] ARM: dts: rockchip: Add RV1126 GMAC refout clock
MIME-Version: 1.0
Message-Id: <20260624-rv1126-alientek-dlrv1126-v1-5-5aef608a3f64@gmail.com>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782290789; l=1157;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=8EosIzzR7UzOFP/v55N37uL3TxX8W4lq/3WtMuwfnjU=;
 b=r1c6yrCwcpidwG3sbm7w7O+CAbkpEjmxfvytGLFSVdZDGbuxcpNNDG74XoG4SVu6zMjqBnqL6
 vaYbrNImRDfBTvTqOkFFkTzjjQ6aTtP18tsj4zv/DrAte13JPeV4nRW
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_014712_096507_1D00093E 
X-CRM114-Status: GOOD (  10.93  )
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

This clock can be routed to an external Ethernet PHY as its reference
clock. Boards using this clock need the clock to be described so the
dwmac-rk driver can acquire and keep it enabled.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
 arch/arm/boot/dts/rockchip/rv1126.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index d6e8b63daa42..5b1ee06dc035 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -624,10 +624,11 @@ gmac: ethernet@ffc40000 {
 		rockchip,grf = <&grf>;
 		clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
 			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_REF>,
+			 <&cru CLK_GMAC_ETHERNET_OUT>,
 			 <&cru ACLK_GMAC>, <&cru PCLK_GMAC>,
 			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_PTPREF>;
 		clock-names = "stmmaceth", "mac_clk_rx",
-			      "mac_clk_tx", "clk_mac_ref",
+			      "mac_clk_tx", "clk_mac_ref", "clk_mac_refout",
 			      "aclk_mac", "pclk_mac",
 			      "clk_mac_speed", "ptp_ref";
 		resets = <&cru SRST_GMAC_A>;

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
