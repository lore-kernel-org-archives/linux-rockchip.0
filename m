Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6DB1108B8ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 10:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVlL31pAJujW6uM8Gn9NbtPkmp0+X0O03RUeP2j9tvk=; b=RKcDHe68pKifvW
	Glh0Ueo+nhg4gHWaJpTtt5LV/6R5QEMbyxhAu4JZ66asAF9DHEB99wjvMcbZkAiX7/iUvArAyWKz7
	PMx2tsLMIl7PZJM00NIDagDBk2j6jq0B23gFO4oa/D1u+wBW1dlq6fLQr7iHrx5Y2Ijj9TNWYU8lL
	PTJVMpHNMAMTLLh3oUKUzmqPx3qRqWd91D6cEtGZaFdhs7LTgKrvjVqb4sl/JARsrCwA6AqNcEfpU
	zXEg8tX/MHJFRIWEYZ2AroYPdoYHTmP0FZsJvYc5zvLntjRoCHMBBXDvYdiHBi44MIV5TkVDasa3G
	x9hjRYDs6iS5JabcQnkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3XCH-0000000CcAo-1ufz;
	Fri, 20 Mar 2026 10:35:17 +0000
Received: from fr5000-r.dnsiaas.com ([92.42.104.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3XCE-0000000Cc4u-3BfP;
	Fri, 20 Mar 2026 10:35:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rl66oOZ9dra82J7CjNCHzOpuoOwvMztRV6mr5JP3oB8=; b=XxW3jZEPWdVk9ikWPNHNrTOgFZ
	1aELcnb5rU9+1TJfxHoOJ2MauByVKpoV1jAuZiRwVtQX3LRpwoMMzx1jaqWNb4o8bVMoOPiNMVrFK
	QQBcI6im6XDHi0c3D9kSxRJYX72b/A4ff91zwAhM3Ees+GGOtgxZYedcd1Dc6M75BvAmDkmS6bWhj
	aLeQDvcZRtp0TXvSzh8c660p/zp8c9HPMryINfE2ijyCGpF7SUu7V5uzEcfoWAGd1CbYyPUlxbXpn
	6ENG+KbMHbggI1G5vguEcGjmuoAASbDtK/nmme/ljehYETD1/0aBiX5bbKE3jsg04Z8rvPyNkNwzr
	nc1sfAyg==;
Received: from [2a0d:52c0:500f:0:89f2:a47:418d:affd] (port=53820 helo=1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <hello@superkali.me>)
	id 1w3XBa-00000005JXw-0bOu;
	Fri, 20 Mar 2026 11:34:31 +0100
From: Daniele Briguglio <hello@superkali.me>
Date: Fri, 20 Mar 2026 11:34:15 +0100
Subject: [PATCH v3 3/4] soc: rockchip: rk3588: add SYS_GRF SOC_CON6
 register offset
MIME-Version: 1.0
Message-Id: <20260320-rk3588-mclk-gate-grf-v3-3-980338eacd2c@superkali.me>
References: <20260320-rk3588-mclk-gate-grf-v3-0-980338eacd2c@superkali.me>
In-Reply-To: <20260320-rk3588-mclk-gate-grf-v3-0-980338eacd2c@superkali.me>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Daniele Briguglio <hello@superkali.me>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774002854; l=753;
 i=hello@superkali.me; s=20260316; h=from:subject:message-id;
 bh=UQEiDKSJXeYPDA3RGeG+ndD97rbfufDLqHqwaCQMuJQ=;
 b=reSZXzfaoxAP4k38LsL5bDJzFTgYbqnd77dmCRG75jULCNmy4BUCYDALolqYXGWvOCeYmOafL
 PNAi7o1x/SZCJ0g6Wi1FwlK47jrQBuuYxeNCcA4T4UQHxH/7vzCCUQA
X-Developer-Key: i=hello@superkali.me; a=ed25519;
 pk=5tynRWQdL93CDcapJ73FkcCRY2PeBOJOIAoIhRig53U=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_033514_956429_AC25DD66 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
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

Add the RK3588_SYSGRF_SOC_CON6 register offset to the RK3588 GRF
header. This register contains the I2S MCLK output to IO gate bits,
needed by the clock driver.

Signed-off-by: Daniele Briguglio <hello@superkali.me>
---
 include/soc/rockchip/rk3588_grf.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/soc/rockchip/rk3588_grf.h b/include/soc/rockchip/rk3588_grf.h
index 02a7b2432d99..db0092fc66ad 100644
--- a/include/soc/rockchip/rk3588_grf.h
+++ b/include/soc/rockchip/rk3588_grf.h
@@ -19,4 +19,6 @@
 /* Whether the LPDDR5 is in 2:1 (= 0) or 4:1 (= 1) CKR a.k.a. DQS mode */
 #define RK3588_PMUGRF_OS_REG6_LP5_CKR			BIT(0)
 
+#define RK3588_SYSGRF_SOC_CON6			0x0318
+
 #endif /* __SOC_RK3588_GRF_H */

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
