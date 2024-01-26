Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFD1AC47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 18:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwsFCaDJV0qJNhHeqm2hxXGFCQXdDEKYOEPV+lN+xJM=; b=SZZutYJodBnVAo
	eUrPwq5ZpM0h6ihoWB8IoCRJZxZP6ZeQgeS92PdJqSZY8G2bBJzisUyDvLQPhAYjzczcVAhB/75QB
	F/9ZnssusocV8XtypN+tLSRyyh0W1t03U1emAA72euBCZErVu1YBpKy1gK/D0/j73r8K499eMAVDJ
	8SH53Ng1w+5jXUMfgjIUOsEm+1HuNwsbWNMVdXE0EI6Yn1CHh0VcVyeAQMCEJgGfW2BYjccDaULio
	sePiVtfypm2sH/va21zgx//qCsCvyREQYzR+kAiAAS51f7bnaqqkB/J4Y5mMvmHmHxdxZ/QonayeT
	p0AKdiBj8g89yoCC5MeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxH-000000054Ss-3GUG;
	Fri, 26 Jan 2024 18:29:31 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxC-000000054OP-2Ghd
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 18:29:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706293762;
	bh=Q6tqBDARqY1tmw7h3ONBEyqVjEQtqcs0AbMecGzt8c8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=zrmUiaN0+3QUMafC4Dxf9UxwlpS7KK/bIOjvAWI4MeOiP0YcQ5AL1V4c+4ZzTgHGK
	 qzElfHofjzQOnbQkVCUmo1MgRAkLN+u7XK2rnoG2IaVSC/nHy2KTK+jGtrFuJDfvMw
	 MEolhDS+37GmDWWKoeybTNSXIo2kLaPVNLyvsAFJZHS8Qr0yfEaq3w4Vfau32rbLEs
	 hRKdfkiKF0AwPCXIKQaKt2cjbtUylIAxkj8pvguyPH4g6IOmVJcczgbk0ftYdV3vmO
	 hZWvqvZTe4dcavCyhVPofAaSYXYbCLueDagP3HHk10mLmJCg1OF/9Eefuam1efTwky
	 1LGatsXtQXV9w==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 034A13782076;
	Fri, 26 Jan 2024 18:29:22 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 95204480C4F; Fri, 26 Jan 2024 19:29:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 2/7] dt-bindings: clock: rk3588: drop CLK_NR_CLKS
Date: Fri, 26 Jan 2024 19:18:23 +0100
Message-ID: <20240126182919.48402-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240126182919.48402-1-sebastian.reichel@collabora.com>
References: <20240126182919.48402-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_102926_755973_75B3606A 
X-CRM114-Status: GOOD (  10.18  )
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

CLK_NR_CLKS should not be part of the binding. Let's drop it, since
the kernel code no longer uses it either.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 include/dt-bindings/clock/rockchip,rk3588-cru.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
index 5790b1391201..7c6f0ec7c979 100644
--- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
@@ -734,8 +734,6 @@
 #define PCLK_AV1_PRE			719
 #define HCLK_SDIO_PRE			720
 
-#define CLK_NR_CLKS			(HCLK_SDIO_PRE + 1)
-
 /* scmi-clocks indices */
 
 #define SCMI_CLK_CPUL			0
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
