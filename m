Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25E29C282EC
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 21:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZ7AA1RYkqnZxqI6romJyuCWvLGtIIIkidYCox8R+rw=; b=rvvhv4e47WiZm0
	2Xj0RBe1UtDjEPS9Wgob47dRv9kcsJ751sUQ2thxLVgVFqQK52VMaeXnFdMJLXr4XwMeU25nE7eTZ
	h9xdJRWZH3svvjaO7oWsZI0IiGHRjtReXRhpcwjJcD+iYmGQVAcPFlr/VSPfyfrSBdU08YZebZGO9
	h4TKOHOpF60zRgldGL2bu0vwLV9UNtRrpa9uzV0H/EL4pJKZWlm0Or2O5sfveS8t+9j7O2Zgk8ZFi
	QG7GS4wuiiCaszZunAFxh60tIaiuVpGR+ZZInIyMhOF6dL5xe0wPc9w2HYYWJDD5bXgK6Mdtjksyy
	dy64rctEFQiTjIahtDNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpw8e-00000009KGJ-2BKV;
	Wed, 05 Mar 2025 21:18:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpudw-000000096Jc-19Ee;
	Wed, 05 Mar 2025 19:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hK3H495OY/ZEVKP1w7EMcQ93+JYbRsNI4gTg9RaSrQo=; b=SaC+IH6NVlw9e/aUPLR3GVa4BO
	I3kmdKxNpDyRGnosakiLfxJj7plyNTQjLy4rSaGr49r8VFbosf0S+f5qC1RkP2SY+i3APeTOfyVLz
	n4oMkB8Uboujkpuok4VzOXPBsxUABm14O20F+IRKeFMikKMrabTA7q/O9sC5pa1MTb+hhNUVUMMAr
	KiZAQNvBNGuQJwxpPdRIgA5uJuaR0LQqYMYWmI5x1/EOo65VHzh9cZK6HhSgQ+8LbDYUV2yuSZIn6
	pWmdGtgzTdXCF3J9Q6b/1vrXan/d3DKKU0k6BbruxfPLsXXqfPruAX4bG9ysA5XxzAGn64fDqAnUL
	YynQ69kw==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpudt-00000000j5J-2De1;
	Wed, 05 Mar 2025 19:42:59 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 1448C2027D;
	Wed,  5 Mar 2025 20:42:55 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V19E6CI3sk-W; Wed,  5 Mar 2025 20:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741203774; bh=0w6AH/+Pjx6GOhW5OHJloAK6RQNG/idzAG52ka4prcw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=CCUvCB8bjEPGJ4g2iFe1OWJh9DezYCD6hGDi7qqBtroOh4r2us2NHXo/AwvxH1J0C
	 K4UNLv8h9Y0lQfENnRpz2wEC8hrgfhORvPyjZQSJBxi7pSpM1VqHYY+sGA/l7cOVS9
	 RHwdSVr97y3tv+y6lY3g16M5U2cLwfQDz6N+9nm4lT2lfA7vb9+nMcTgZzw4OJ0HN7
	 +iezGH+9E3MazcetypMtqGhNpo1lP7VUZzwmO4Cacl2jMqvCrOwFXFsmyeFRkiD+Wo
	 46UpOqMgK8sYe2IMYOBW8CDeYUC68165Wgh7PLgGtiICPRVS/oV+9vsKNZ3tHTJ/ko
	 5EXgzxDJlWGyQ==
From: Yao Zi <ziyao@disroot.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v2 1/8] dt-bindings: soc: rockchip: Add RK3528 VO GRF syscon
Date: Wed,  5 Mar 2025 19:42:10 +0000
Message-ID: <20250305194217.47052-2-ziyao@disroot.org>
In-Reply-To: <20250305194217.47052-1-ziyao@disroot.org>
References: <20250305194217.47052-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_194257_664722_CF130F4B 
X-CRM114-Status: UNSURE (   7.97  )
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

Add compatible string for VO GRF found on RK3528 SoC.

Signed-off-by: Yao Zi <ziyao@disroot.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index b4ed4cb555bd..98a0670359f6 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - rockchip,rk3288-sgrf
               - rockchip,rk3528-ioc-grf
+              - rockchip,rk3528-vo-grf
               - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-pcie3-phy-grf
               - rockchip,rk3568-pipe-grf
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
