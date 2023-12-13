Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90B7AC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 18:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiJyHPWQk5bYwcdY6g95781UdU5aKUt4dgovnqmeV/Q=; b=jaRQq59/Me0dtg
	e7bnO6/ql8ZGtsu8rCwqGli1utem0Wvl8o2vBpS6FOc+deq8ZI7KT5gc6yVuNsDJKGfjHr3Y0clZs
	Uacrlp3fRdOeWJUI9OZito8LYnbv3ZINVxM/bvKcwSUnCtIt4J4FFKqAysJQmB2l4x4UDK/zqCBHx
	vAYb2iqWUi8TJ0OM2cqxQy/d0pZt7SRcFRzultmcDTeqgoYMOQHUti3AWsfcNChUyQcfsVCcdMGmQ
	qmQn4WWU2vqqgbMBQA4oF4X1CF9l7jlytR92GTLl3XnzQHb+f20dJNjyApc8ti0d6YzyinZyh5Sq8
	UOZW8QAodOtvkIu2zXZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDUKL-00FlLE-1s;
	Wed, 13 Dec 2023 18:51:25 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDUKG-00FlIa-0y
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Dec 2023 18:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702493477;
	bh=N0mIgq8eEj9Yqh5g1KsiM6Na4KJDpVX1RztufTMFpis=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GZi1WSyeHXB2ydEQsUbMcKWzsbnMCt4y9afAbUchHFz+FCjKgb4061f/PhPMQgcBn
	 m6qDka2bvKVRe7jx0Rr/ww+X3Pdw8mjgNgcaFOqfhy8FYCe15MrEOKfe/qlntuojqF
	 //TMcGHbV1qplJ7oxbjX8viDqPC/IQD3bkQqIP74G9vA1pxpQaq2xhSDsMYxDA/4OB
	 5gs9HIjde6GNZN7cp1Kt6GgMkxdj6rgI3XrGqzAs6aBcgTEUuAwYTAE6NATc2egzwD
	 EOaIxpUW+PAV/kPh4oUCDGeBpgpUrmFMR6eTvYIQe2pVZn9cUAnzxlozLdnMaMfbBz
	 +P5YJSi62m2jg==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B4555378149D;
	Wed, 13 Dec 2023 18:51:16 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 38827480105; Wed, 13 Dec 2023 19:51:16 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Elaine Zhang <zhangqing@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v7 3/7] dt-bindings: clock: rk3588: add missing PCLK_VO1GRF
Date: Wed, 13 Dec 2023 19:46:48 +0100
Message-ID: <20231213185114.47565-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213185114.47565-1-sebastian.reichel@collabora.com>
References: <20231213185114.47565-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_105120_574824_EA471BF7 
X-CRM114-Status: UNSURE (   8.57  )
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

Add PCLK_VO1GRF to complement PCLK_VO0GRF. This will be needed
for HDMI support.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 include/dt-bindings/clock/rockchip,rk3588-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
index 7c6f0ec7c979..0c7d3ca2d5bc 100644
--- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
@@ -733,6 +733,7 @@
 #define ACLK_AV1_PRE			718
 #define PCLK_AV1_PRE			719
 #define HCLK_SDIO_PRE			720
+#define PCLK_VO1GRF			721
 
 /* scmi-clocks indices */
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
