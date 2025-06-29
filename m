Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92354C7EE39
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jun 2025 12:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HznzANA/A3cmzcKbL9xtc90a/YolhiOpMB7m/jUN/h4=; b=qi6GVIvydylDd/
	6FvE0hUFbPnNB57/kxpRtyhABpZtUyMuqOifavhyWCsQsokaO4Tvoh9g5h8QQzWYxMbZcopRh0XMT
	t7HOTkp3DfBEVYxPXq+zE3sKn6as1QA17JaVTj46CoW8QzBNpxu9/ZHNAl1zJb531xQuXstPa1Uwn
	3xx7VzBrg0/VzvjWuXHcJGL94adzf2K0kICrqXHCI8tkWI2C8IAQU2tOi5LNyfcdCYU1u/GHICbsZ
	lZ4I6eonx/jHVRQh3q5tj3QIJstAS9SJPIxWCKeVQlqZWAujHUI8zDJDWxWKjPGdJh8ILPL6noMjB
	HMN1vBkySvcRbfCklJ4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVrbT-00000000FdF-2pPU;
	Sun, 29 Jun 2025 12:57:51 +0000
Received: from out-185.mta0.migadu.com ([2001:41d0:1004:224b::b9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVrJE-00000000Dhs-2DEX
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Jun 2025 12:39:01 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751200738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uYtxvQntJrQzDe3coaU4yovvxAekHNN2pEKLjqZB3iA=;
	b=ku9QBElezaC8iMeFayCQCN+WSJTuojq8hLZiGXOMj8zmBcwSvGaMwzat56/lAXO3gZAgL0
	B4VrXNFIUSsWedS4C2B31KIxZHgJ2+SozuzTQNA/fmlYJFa+x8L3JKssXJ8FlfoP4ITWnF
	y+jv1kAs81+EJXgzcgj1EF5/kU0uw7X53cJrZ2L5v09PGLIcfTo7OKyg5fv378G7IkePPt
	g33ZKOoN8sJD5yp8R986MXM89ynJoogwaxvUlBLWbQ7EoQnsU6TbFpeeCxxTJ4PakbnDNg
	G6n0xtB2rHfj+pGNxQGXDA878W5z06R9AWErGu7rByB737LdbEXtCR0/wtvpgw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v3 08/10] arm64: dts: rockchip: Fix LCD panel port on rk3566-pinetab2
Date: Sun, 29 Jun 2025 14:34:49 +0200
Message-ID: <20250629123840.34948-9-didi.debian@cknow.org>
In-Reply-To: <20250629123840.34948-1-didi.debian@cknow.org>
References: <20250629123840.34948-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250629_053900_695307_706F25F3 
X-CRM114-Status: UNSURE (   9.17  )
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

The MIPI DSI connector on the PineTab2 only has 1 port with 1 endpoint,
so drop the unit-address properties.

While at it, move 'rotation' property to its proper sorting position.

This fixes the following DTB validation warnings:

  node has a unit name, but no reg or ranges property

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index 3473b1eef5cd..d0e38412d56a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -282,11 +282,11 @@ lcd: panel@0 {
 		reg = <0>;
 		backlight = <&backlight>;
 		enable-gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
-		rotation = <90>;
 		power-supply = <&vcc_3v3>;
+		rotation = <90>;
 
-		port@0 {
-			panel_in_dsi: endpoint@0 {
+		port {
+			panel_in_dsi: endpoint {
 				remote-endpoint = <&dsi0_out_con>;
 			};
 		};
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
