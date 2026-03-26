Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1457110AB82E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 23:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAUcp7fJ0TVc/mh/rwteSYKw5I20COkw0Ufc97aiVYQ=; b=uRLZsXC1JhHJBs
	5ddrDj0VL/Lz756KBa6GUfkdDgjdd7tb6oujZzlzvUS/cihvyQMds5f2zpkJsaaKtD8TAf7rJwMZU
	PJwwEu4G3VePeNCt8G9e3i9yXB24UhAXml4dHbD6Sot6vTlPGqBI6eb5vQWQpucq7znC6mrmVbBPf
	9XFe24GJEEKPYDmdpwvGLwitWyYiT7CIRgQvjiCj5SHo1DPRB8t6Bp6gv8LEwhySm7Zo84frzxYMz
	aMWF7VRD7wE+HqKeQ0XO3qnN/nQFisg6TKffbf0sGyXHe9E+8nl+5pivgl2pvnY1bTMnhhPISiWDW
	BOB1guvmB4gUwgHfdwYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5tq1-00000006MiN-0NpJ;
	Thu, 26 Mar 2026 23:10:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5tpz-00000006MhZ-0tQk;
	Thu, 26 Mar 2026 23:10:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2930860103;
	Thu, 26 Mar 2026 23:10:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C388CC19424;
	Thu, 26 Mar 2026 23:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774566601;
	bh=O6x7E60uogGixLDyJQPgrKYnDUinoJ2tUqk42mMfEko=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=mKsB20b69PEZUZvlMKYSEd/J7jfYSFyqVWEX5EApfCK2DBHQusAnPLcBdzd3g7ZaL
	 n+QAeQTRVOHGkSmSWGraaQwUCRBkayOQNLQxYtMoTS3TbUscoiN4H+nI+RbtKLyq1y
	 3/Lk4jbkEiglFx9K30km6vZC83SDuDCIQ6HkOUNnTXYXmj3gfv9LSg0oJGZMRwBGWs
	 5bIql8PwnYbWQe8a3Vn4F5A0Xd/1FXBW3/EgpBGDzedyCj38soOaADsP9GJTzAOT88
	 6H8f6kZ/YcfKYceDbOfg7fl30JrS5X9Y2Kw05yS27CLHHP80hFR5d20mOosJWeqi5H
	 N78+NdrIacLow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A846910AB82E;
	Thu, 26 Mar 2026 23:10:01 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Fri, 27 Mar 2026 00:10:00 +0100
Subject: [PATCH v4 1/2] media: dt-bindings: rockchip,rk3568-mipi-csi2: add
 rk3588 compatible
MIME-Version: 1.0
Message-Id: <20260305-rk3588-csi2rx-v4-1-81c6bcfefa63@collabora.com>
References: <20260305-rk3588-csi2rx-v4-0-81c6bcfefa63@collabora.com>
In-Reply-To: <20260305-rk3588-csi2rx-v4-0-81c6bcfefa63@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Frank Li <Frank.li@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Collabora Kernel Team <kernel@collabora.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774566600; l=1182;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=oSB0pcf7VsFDNyisKIcEiS+NR+CwirDnVBZgZpwFUp0=;
 b=4PvhVKCWiTn8YBw/fj9kmxZ1fmvqQSaDWZoo7ahk0Hb5esV4DhhBKqhn6ePC5EWouGNucAFwW
 1nj+ZEr/IYtANY1CaAEY6OGkW07Fk1FY3NQo40AE2MV/iVjCeGgQLxR
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
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
Reply-To: michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Michael Riesch <michael.riesch@collabora.com>

The RK3588 MIPI CSI-2 receivers are compatible to the ones found in
the RK3568.
Introduce a list of compatible variants and add the RK3588 variant to
it.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
 .../devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml  | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
index 4ac4a3b6f406..fbcf28e9e1da 100644
--- a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
@@ -16,9 +16,14 @@ description:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx93-mipi-csi2
-      - rockchip,rk3568-mipi-csi2
+    oneOf:
+      - enum:
+          - fsl,imx93-mipi-csi2
+          - rockchip,rk3568-mipi-csi2
+      - items:
+          - enum:
+              - rockchip,rk3588-mipi-csi2
+          - const: rockchip,rk3568-mipi-csi2
 
   reg:
     maxItems: 1

-- 
2.39.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
