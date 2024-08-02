Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45AB4C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 17:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGELwCjqplx8qxpAb51xBnG4z4+C2miyYLN6ua9xW70=; b=wxgRcE18kX3aH6
	PUA5qqPy/50ETckMczHTbcxcH+e7ZqLNnWWx7XZounZ4qzuMxOr7V4ftXyUCGC7dbdBZdRc5KvdKm
	UJxcNWKfzLtsU2QVin4UWmZnFumP26F74EC4+FSYDJ+lrfhbydgpyIafds+THr6ItXDKvnpuDHDwm
	R9GY587ABT77QDOe2T5pyLPDnb51rDvU7J/Lp4Q5MDq6j3R7+E+rh0RCSfe7SN4EXjIxaxrcQGTiU
	EKOAAhdGY9TnlL8odG3XB4+vXsnHoWNj4Ite7vl/zebZNqZf4bnFeCBJrn9S9IXfbQSc44GPtUwJj
	ddXoWp1q/c1hMo+PHgig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZwFp-00000009dl3-3DVI;
	Fri, 02 Aug 2024 17:39:49 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZwEQ-00000009dK8-0iZf;
	Fri, 02 Aug 2024 17:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722620301;
	bh=yAlTnGU4w8bJ9MfhSOqijWWEGEsFRjOGvMDeEAH/2lU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B2M71UeZS/1//8rW6T+vwT/iJ4wzxF3WXs00mOj/ck41ays+0tyBdWmetLcPcAten
	 8sT17r3likqY6OidqjZa6hRTa7s6xdFnlfj1KfpvXMssOQQjFMJwN2vgDjvq93s3qO
	 pMZ2LalbxvemDJZNicYObGNekIH82E76mxwi8GdcBD/+dwWgn7K9FlGqKUACHjPMw0
	 rxeMpifLYMtJ9Tz9eOgymQINNS3zj4AOHKtRHixFvs8TgTcsCogFReCQIQF7EMjQAo
	 iBxfo1PAZmifB2YmHCyQkxsuDau5J0L+EUsm0lvXRYZiCH87xFL6xAsM4O77jR5ay7
	 WYRudslX+Bswg==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 75617378221B;
	Fri,  2 Aug 2024 17:38:18 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	"David S . Miller" <davem@davemloft.net>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 2/2] dt-bindings: net: Add rk3576 dwmac bindings
Date: Fri,  2 Aug 2024 13:38:03 -0400
Message-ID: <20240802173918.301668-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802173918.301668-1-detlev.casanova@collabora.com>
References: <20240802173918.301668-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_103822_421954_551000A4 
X-CRM114-Status: UNSURE (   9.70  )
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

Add a rockchip,rk3576-gmac compatible for supporting the 2 gmac
devices on the rk3576.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 6bbe96e352509..f8a576611d6c1 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -25,6 +25,7 @@ select:
           - rockchip,rk3368-gmac
           - rockchip,rk3399-gmac
           - rockchip,rk3568-gmac
+          - rockchip,rk3576-gmac
           - rockchip,rk3588-gmac
           - rockchip,rv1108-gmac
           - rockchip,rv1126-gmac
@@ -52,6 +53,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3568-gmac
+              - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
               - rockchip,rv1126-gmac
           - const: snps,dwmac-4.20a
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
