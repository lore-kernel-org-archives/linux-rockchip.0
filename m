Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87D1BC5AE59
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92389fJ5KqQ8SeRRbrN4AWxekiPSZRFm7VyNc+GUpjI=; b=ejHQqD/JcRVh5x
	TU3H/NppH6rrAu1TbYVtdySpGc6axsUSVNhzwPMUg3BB/AO3G7ivSUAhllz3foEN3WPzJ0GgPkXlF
	n0xK3IFsDZwEtD4R8pEUZpu+dVaZlzTEPA5tP58pDDSh+RiXsD/rCCm7gQHZIAqvVtmeuWHAzoSzk
	QLk1aEaD6tUhhuiKCSp2NKBIjQQpGYftc8Kwhjty4p4faxdc5BQaEpp7lZ81C+62KGI9EtbJeNU9K
	y9IJAD4cGSk/JyGfOE/KoG2QssOk7h9R6VXs+JUMk05cQRJJEuVnE9AigW4BUVvOkJ4/B3O2GNiO9
	5qme8h4Vj16w/98iPUlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKq9L-0000000H0Np-3MjC;
	Fri, 30 May 2025 03:11:15 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKq9H-0000000H0Kc-0hES
	for linux-rockchip@lists.infradead.org;
	Fri, 30 May 2025 03:11:14 +0000
X-QQ-mid: zesmtpgz3t1748574654ta3bc7e8d
X-QQ-Originating-IP: bFSBAXbZGjY65746zkohba5EnhI/xku4pGYbgqCLo3s=
Received: from chainsx-ubuntu-server.lan ( [182.245.65.180])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 30 May 2025 11:10:53 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13257807080784473651
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add Firefly ROC-RK3588S-PC
Date: Fri, 30 May 2025 11:10:45 +0800
Message-Id: <20250530031046.166202-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250530031046.166202-1-i@chainsx.cn>
References: <20250530031046.166202-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MSyoPQEuxKCuQ9ZQ/jC7O/sFL786EHz9nsvkzSbOXYXFhRgano/bzVXn
	FNvVsWeawm4R6l5Fw4QhDJ5nPEMJ6p8Fz2hsLUmpOQKUpATzmzMeFw1JMgclNFqwf70g26X
	/WW4ChfrGJbixrqJXysO+2HPokxu/8EkzvzGOaqtqVkNEPnye19neb5gyfJ9YDWPGF0cQOC
	+ZwyMDK7r6EeFlJ2gvXrVQPZW5WOtRLox3SHkFTQNDg5QUutLF/gaQnvFe1PmARkKEY+L/H
	Tzz2x4dBrzpnx1rkidswKd1LFunBCJQpvmbddnyt7vTCO/pXpfKIPMW4y1FFGxRrssNH9+O
	J7Izoueyf3NGIdlDlgr978EiJakkUeqLkWem+kabqXT5FD5CFZwlhyrLgIewtKtBaZuSVlK
	kOYySZ3UcTDlctB0obxy2A5sHmzyK3/Vsp1aRO/2Zbku9aLE6iVlnVjrcQTfrTA/mGPvTLs
	ofzS9sZ+fAHFOc5xtKYjcbWnCDEC8yk6ldUwKfgdmvGJEeiaTqoJ7aYUBlMHVzo0wZCOw4c
	vIrLNRtVqlqlarT2YpDo0sQuatspJ5+tJc+tLXdaYOmbB61VWa8DN7EzT/vApc0jEGw1XmJ
	NSiumwddFXJ1RD684oGMoswnyc7xtwkaNXDUPdNW3wDklX+QA62CduumjtPJU+X2+vkUChR
	qi8WuS8sFjB1mNUjsfUGSP5Y1mZ+nlKmD9+kR2mC72wDieG17cJYj8Tc1TC3d8+SDhWkm07
	H1hVlVhh/hpmBQb+uTl/Mu8CaZlq4ktSCmLuCy6dyvf1FWh9z6pJGmp5hsCGbHNrdlfkPz/
	HlJ0uyLFK7m+E7rvdsHkK2mEYZNs3SRP7Rh39kqJwfKhkvoox7/Afrh+l3TL+2oF/kNzHal
	+Cn+1IadErinRW6kGa6OngBPUz/25gc5JomMN6v9Mr4E3PXCGAcTDKqJozyneK47h1A79nY
	zmr+iIM0UcfCiDNlgoniEAQLToG4RdpHVBO6/bLx8YiTSSecqPzDwNaO4AhERGnjEsdI=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_201111_473867_78FC7469 
X-CRM114-Status: UNSURE (   6.85  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This documents Firefly ROC-RK3588S-PC which is a SBC based on RK3588S SoC.

Link: https://wiki.t-firefly.com/en/Station-M3/index.html

Signed-off-by: Hsun Lai <i@chainsx.cn>
Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 115c3ca43..701d68aca 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -258,6 +258,11 @@ properties:
           - const: firefly,rk3566-roc-pc
           - const: rockchip,rk3566
 
+      - description: Firefly Station M3
+        items:
+          - const: firefly,rk3588s-roc-pc
+          - const: rockchip,rk3588s
+
       - description: Firefly Station P2
         items:
           - const: firefly,rk3568-roc-pc
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
