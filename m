Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C258C8303C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jul 2025 17:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEuMpmq0M+ZteW4if1Sx2VwNZk+Jt0+VBJ93RnTIvyU=; b=aDKfIsynIhMdnE
	WoG4h2LUeYwRCLs0lCLZMp0i000dETLLUPiixU+1GGZuGEWSRlGMXzmrlw278wstzWfn8h94uaVV2
	PGeJam8xGpng4KKaTGbwNC36g3BIz7370q0nUOuXUMVgx2RXGCGpnmRakb8mZUAkrmsDZWuovK/Gf
	oOEI86exdyU/nd9LGq0ZdMMjBgbOMhjCfY2Vivb2VzONhpao+yGnZLmy6gHiikMx41gRLCuIw0jO4
	NpZDwtDgdYSmraZgucJUgPPGhq0jK43ax5pPQBfZGAlVKGZLavshcWkrzFwK5smiN7BX2I45sgur8
	vAgBYMWXZ8yVfLobDOPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYppO-00000003C90-10Lz;
	Mon, 07 Jul 2025 17:40:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYp2N-000000033zg-0MsU;
	Mon, 07 Jul 2025 16:49:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=mKluaDJd+46jb4+9m6pp57pzlsEm486O32TbldwJjns=; b=xFE7ieg15stL2Ic38IK9roETXO
	GwgASLdwpgFTXckUhYRuw9ufnTPtZ7/tWfd1j7ncxukdXdaTA20VZAtGBLmOqc0SCcxeCQzomI0bB
	jW2nl6jm+qUWw1wtLx0WS8glwErm6RaRaI2tudhuW+Qfoy6IfV3gHhSuCf/F+h631QSG4O7swzHgw
	4mMRv9GYNYuq089+qDFm2j4943EEMCPHyBW/ki1V4s1rHL3Ji86WwStzzejf+0xjU+p/Vn3aiL6ps
	zTztLIZBPcQ4rJHsQipktHzAnaED4Eg5OstpP81o3aSyipXJjBggMEDrOKtASxG11UpxRSHE66lgy
	2DD449iA==;
Received: from i53875bf5.versanet.de ([83.135.91.245] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uYp1t-0004yl-Tr; Mon, 07 Jul 2025 18:49:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 07/13] dt-bindings: soc: rockchip: add rk3576 mipi dcphy syscon
Date: Mon,  7 Jul 2025 18:49:00 +0200
Message-ID: <20250707164906.1445288-8-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250707164906.1445288-1-heiko@sntech.de>
References: <20250707164906.1445288-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_094951_158591_F342D35D 
X-CRM114-Status: GOOD (  10.25  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, mripard@kernel.org, andyshrk@163.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RK3576 CSI and DSI support requires the GRF for its DC-PHY.
The "general register files" provide additional setting-bits
outside the regular ip-block reg-space.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index ccdcc889ba8e..d4fda4ee33e4 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -31,6 +31,7 @@ properties:
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
+              - rockchip,rk3576-dcphy-grf
               - rockchip,rk3576-gpu-grf
               - rockchip,rk3576-hdptxphy-grf
               - rockchip,rk3576-litcore-grf
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
