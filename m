Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1C40C5472C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 21:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMt6zEe/il3NH3HpItJcQJP1t6EPx7hQolsyKiSiCnI=; b=2okDe+mX5YBZYP
	gyVloRWuVjxPbADrFzLl4lH4PqFOwHw25PNhCw0g8087lIL90QoasRG+2WPolsQlsIXo855W42EA3
	U6uzOJZLTznF5r8mU8EUO4qB7UiCsQ8mQJZSHpIXd/4VJ7c+tO8whWkYi0QPwswBAFSaOor9Tx9lw
	kZVxvbafhojLpiKg+sbjv38g8GIrfmNYLfQ3wnG8ND2MkhIwIfOa0mviTLZ2nPU+1qRTQtE9SaddA
	GIHcXZGF9R7BfdUh2cRMi0+e3qP2BkvYHt+fYP+iTv+KoGC6CZPE7fyPP9i5xj9uPc86b37WsjevA
	4tk1B1ReYh6nOMdTdPnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sigsb-00000008jZF-3tuk;
	Mon, 26 Aug 2024 21:04:01 +0000
Received: from smtp.forwardemail.net ([164.92.70.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sigkp-00000008hy8-0ENS
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 20:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To: Date:
 Subject: Cc: To: From: Message-ID; q=dns/txt; s=fe-e1b5cab7be;
 t=1724705752; bh=QE6Aq8bnHBC1OjVxEErZVqRlh4BvsLQkZl5goBAhUms=;
 b=NFBnTEFWH44WPUZGPMqlWqAG0Rgt0cISadJsdH93Qxc8vvvidHFQDAHFT50gKEtYn5F22B0ys
 Wl6jgnwDUNe+lrrzo+NmmlX002yrCd0T6CwvLfru2S+KMzJEWsLVrcSlLEHTq6rFZQ3Mn2Z9B09
 CBIO2Q6j/RX1ztZQmwiqoa/WpHHAU6Ui6WUnLLbeiIn1GAPixPgn8NO33OCkdXLJz0CTZQ61Hvq
 KV7fUnRouLeClrELLOCFDl4x3VtX6FfikdstJM5hH2F5lW0GA9mCLLi6iQJoMVqbIt1CKwZO/Vv
 JWEUWPBkrIrOpgmCl9OVNdPYDak9oKcn1GCtziVliPOg==
Message-ID: 20240826205538.1066103-2-jonas@kwiboo.se
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Dongjin Kim <tobetter@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] dt-bindings: arm: rockchip: Correct vendor for Hardkernel ODROID-M1
Date: Mon, 26 Aug 2024 20:55:28 +0000
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826205538.1066103-1-jonas@kwiboo.se>
References: <20240826205538.1066103-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66ccebd8e59276ede820347c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_135559_113772_C3D4046F 
X-CRM114-Status: UNSURE (   9.53  )
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

The vendor prefix for Hardkernel ODROID-M1 is incorrectly listed as
rockchip. Use the proper hardkernel vendor prefix for this board.

Fixes: 19cc53eb2ce6 ("dt-bindings: rockchip: Add Hardkernel ODROID-M1 board")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1f23b8b05a8f..f08e9f2f5dfc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -595,7 +595,7 @@ properties:
 
       - description: Hardkernel Odroid M1
         items:
-          - const: rockchip,rk3568-odroid-m1
+          - const: hardkernel,rk3568-odroid-m1
           - const: rockchip,rk3568
 
       - description: Hugsun X99 TV Box
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
