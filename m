Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97D24C369AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 09:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ehRF0fUTWEbG2DN6EhrGVOfahyBsniXzi1WC7PQzIS0=; b=nruWUoofOk5+Gn
	WVclP7bf4EWSY0s53UJqoAHJd7LTt7Flpf2+9A2xVG/osHOEJuwhEE181lZBVpY9u8HYn4fJEN2lC
	zXEYITFpjwdnR3gNk3Ka1ywi0GYS6ZqdjBGstDuMwP0oECIWSUKJZ3Bumq3JBV6GyavsHqcTJcnMh
	gt/wlNXMrbUVdt4lLVpCAJ+XwA8I0Zphj/y+nUcVDzw30JOW8yi2lJ9EFPgX6/dSlPtsPTfYxqeX+
	ALelQ1N9Ht1xuq2dTxOXcB4Um0QHRetM56ZRAyDjc8ENyaCoWf9UgPb5hngR2rQ2tDAldyiCJz1Ek
	09Mx5SiTCXJ2gRvg/LxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5iT7-0000000FoJ9-1iv1;
	Fri, 18 Apr 2025 09:57:09 +0000
Received: from mail-m49248.qiye.163.com ([45.254.49.248])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5iNd-0000000FnVj-0oW3;
	Fri, 18 Apr 2025 09:51:30 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 125a9718a;
	Fri, 18 Apr 2025 17:51:16 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Jose Abreu <joabreu@synopsys.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Rob Herring <robh@kernel.org>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	David Wu <david.wu@rock-chips.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/3] dt-bindings: net: Add support for rk3562 dwmac
Date: Fri, 18 Apr 2025 17:51:12 +0800
Message-Id: <20250418095114.271562-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRpKSVZDT00ZSUsfTBpDQkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96484f455003afkunm125a9718a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRQ6GTo4DDIMAgouIk4UI0lO
	PzcwCjNVSlVKTE9PQk1CQ0xDTUhOVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISUNLNwY+
DKIM-Signature: a=rsa-sha256;
	b=QWT88HbvamFv90XR9yBLMFnQCm6eCs3/nVDkf5NLLpqNUvkbt1AIkBqXuAaCQDsRrcdrxFk3ooh0W8cI/yLSCihrnL+6gPNC59XfMc8GygwNI6zOfG+hNkmYwnUuKyXDaKEnBAqMGyIAsvvyANtXWZ2Pe0Bis8nHGBiLrzj+wPA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+3Zq6GxI1QoLvi6Yw419evhTpUoxkex9H7YRQ3ne+wo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_025129_509948_6B1850AB 
X-CRM114-Status: UNSURE (   8.55  )
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

Add a rockchip,rk3562-gmac compatible for supporting the 2 gmac
devices on the rk3562.
rk3562 only has 4 clocks available for gmac module.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Changes in v3:
- Collect ack tag
- rebase to v6.15-rc1

Changes in v2:
- Fix schema entry and add clocks minItem change

 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 3 +++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 0ac7c4b47d6b..a0814e807bd5 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -25,6 +25,7 @@ select:
           - rockchip,rk3368-gmac
           - rockchip,rk3399-gmac
           - rockchip,rk3528-gmac
+          - rockchip,rk3562-gmac
           - rockchip,rk3568-gmac
           - rockchip,rk3576-gmac
           - rockchip,rk3588-gmac
@@ -51,6 +52,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3528-gmac
+              - rockchip,rk3562-gmac
               - rockchip,rk3568-gmac
               - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
@@ -149,6 +151,7 @@ allOf:
             contains:
               enum:
                 - rockchip,rk3528-gmac
+                - rockchip,rk3562-gmac
     then:
       properties:
         clocks:
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 78b3030dc56d..7498bcad895a 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -83,6 +83,7 @@ properties:
         - rockchip,rk3328-gmac
         - rockchip,rk3366-gmac
         - rockchip,rk3368-gmac
+        - rockchip,rk3562-gmac
         - rockchip,rk3576-gmac
         - rockchip,rk3588-gmac
         - rockchip,rk3399-gmac
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
