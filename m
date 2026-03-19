Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F2681075275
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 07:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFyEmjTYTxN5H6YkyYXiLCdQYxijyyE36OjST7jQvNE=; b=48igdOhuBBOgWS
	vY+DhphQnZR0/++saBP5S0UWbNhpMhDHQyieOqHoK+GkgQ7BYTCw5GlSk50TfSnYB6UXX9OW8jM84
	x4YlF4ToUNYMh+8ghozxfUpu3eicTH4mHpGM/AmzIi9iaJGt5lv4uEap6VXujVnerPRUdvLjBcQJR
	TAB1ELt/q5U+Nbb5pC3i7c6Gtkw0L9RG5kECm/3mgYr1Llg4Aj7FNFc3OpiR+l/WqWnnyzUAu/aBc
	aUJVvht94ZXSQrg2RpPLKB+WloagPjy+EfV6to1KLy7E54xzQxc4PWkvONlF2PjguZbWYfxhIzeeR
	JK4CMmhAKsW/gF9Oxo8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37uw-0000000A9gX-0OGv;
	Thu, 19 Mar 2026 07:35:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37uo-0000000A9dZ-0L3E;
	Thu, 19 Mar 2026 07:35:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=4r6wkkKWx0HfcJZH7gXeKF9oJ6zCw/C5ilURSEcdU7I=; b=uwrJgdvTORo4qzGFqhYJPzdZoC
	CWTTbblOUmAwdARII6xfeQ29OyPc/OIAj3gutJ0aQZJCNCHxmqiGnj+PrUo+e17910ch6o72eJJll
	drKO7nz5qKun1oSUp/3knYurVsdu95tijcVd+4+IXn2h6NVeO7OPsik+mNTQ7kgHoUrnjlXuupBbm
	DXex4Ot8m2p88zWdPNAWme+zoldSWOdR5TQ8EFSbHt1+YCnpz0HiS7cU7ywzDTgOPlGyTdazQpw1R
	xI2UNt1H9+rMBcllBADRR2pgT8dbYAUavQ+Y4UJhCocArgVmqMWUYpY5XaMAZvD9bNjAIR5Z4AbxT
	iW362vVA==;
Received: from fr5000-r.dnsiaas.com ([92.42.104.18])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37ul-00000005k06-15ie;
	Thu, 19 Mar 2026 07:35:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4r6wkkKWx0HfcJZH7gXeKF9oJ6zCw/C5ilURSEcdU7I=; b=NYiXBJIEH+T+2g8hYewFkM9BDA
	O8NdlkcreHW0y3YCQ5IrlXicy9+WNEMURIjspR8BhZUYHhPnUMFkvPhA0XMbsF12IR0cjQFaVt72/
	rGq3KvUGxISB+2xilHnmNrM89c8oLGzxYgEkvoEzBqNTFng81gEYfr1G6YMbG5+y92Vf7M1Hm7eOh
	VR/eMOTs6PN/rAbImC1MAnRHP4KHUPFV6XBrfTCoJ9vKkomrMAcTNAncyIjtFzYzqFIgmWx/vbu5v
	jr5zq6nXHlj1riLO6TnNdyd6nWKkQ6LSF3KIu7+Pf79HslyyNbuCnbTihjY8Fy5KlviERPcJJKFxa
	6o26tT5Q==;
Received: from [109.52.2.233] (port=10095 helo=mac.lan)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <hello@superkali.me>)
	id 1w37tP-0000000DgEs-2phc;
	Thu, 19 Mar 2026 08:34:05 +0100
From: Daniele Briguglio <hello@superkali.me>
Date: Thu, 19 Mar 2026 08:33:59 +0100
Subject: [PATCH v2 1/3] dt-bindings: clock: rockchip,rk3588-cru: add I2S
 MCLK output to IO clock IDs
MIME-Version: 1.0
Message-Id: <20260319-rk3588-mclk-gate-grf-v2-1-c4c8daab0762@superkali.me>
References: <20260319-rk3588-mclk-gate-grf-v2-0-c4c8daab0762@superkali.me>
In-Reply-To: <20260319-rk3588-mclk-gate-grf-v2-0-c4c8daab0762@superkali.me>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Daniele Briguglio <hello@superkali.me>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773905640; l=975;
 i=hello@superkali.me; s=20260316; h=from:subject:message-id;
 bh=s/jc/s6Rzr1Mg/JbVnbKEPF1NVKRtlMfsACn6kbFdKc=;
 b=1jo5TKoywLPX8VEd6ybg8rA7NdSpML9127iS51mq8dWB4mhGkrFI8KjxZTGl32BmLMwh//X8y
 +XL5WnEh++1DPdxfHGQ0DeMYWHqoEMOAKPrOu72abkvOuEQ2Vijmsev
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
X-CRM114-CacheID: sfid-20260319_073531_343612_D4F042FF 
X-CRM114-Status: UNSURE (   5.46  )
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

Add clock identifiers for the four I2S MCLK output to IO gate clocks
on RK3588, needed by board DTS files where the codec requires MCLK
from the SoC on an external IO pin.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Daniele Briguglio <hello@superkali.me>
---
 include/dt-bindings/clock/rockchip,rk3588-cru.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
index 0c7d3ca2d5bc..7528034cff56 100644
--- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
@@ -734,6 +734,10 @@
 #define PCLK_AV1_PRE			719
 #define HCLK_SDIO_PRE			720
 #define PCLK_VO1GRF			721
+#define I2S0_8CH_MCLKOUT_TO_IO		722
+#define I2S1_8CH_MCLKOUT_TO_IO		723
+#define I2S2_2CH_MCLKOUT_TO_IO		724
+#define I2S3_2CH_MCLKOUT_TO_IO		725
 
 /* scmi-clocks indices */
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
