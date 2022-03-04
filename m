Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD5FEC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 09:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osI3o0z9EKulsfRCKu6FGIA0wjfSHrsrCFT89FfNNNM=; b=zmc4Js3FGzfBSz
	WcY8MfXyCbFnUe7Wg26W7yFzZ5jJ47LzM2AN2NGAmOMdsztAsIiM4uyYaUepOXWfdxMVBl6e25nUz
	dJUF3l9vYggrI7qxdWOOtIcJJISWbYb/G4QIQ48c7cHy/JAfwcBcFDhl/CWzaPQcQMXNXeCIcX8A4
	Jqg5QXmjY2N27SB4XwypQH0AR6DVBhWT8qdr0bH9PjfKDASGC9elaBlYkIdfy497FgwOsTfaV2ANl
	OCT5Zhwv95f0GXWAOJ/BWt/oUdXrqBYwtlPwGwYsvZ9bwkXDQiBDSBn7f1QsBgQ/faH4Z7lz/iioD
	x1lMPpxWvC+zqoEDgBhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ4IT-009Ikr-Jq; Fri, 04 Mar 2022 09:32:25 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ3sQ-009Bqu-1S
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 09:05:31 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id EB3B01DFE78;
 Fri,  4 Mar 2022 17:05:26 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 3/3] dt-bindings: gpio: rockchip,
 gpio add optional 'gpio-ranges'
Date: Fri,  4 Mar 2022 17:05:23 +0800
Message-Id: <20220304090523.1748297-4-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220304090523.1748297-1-jay.xu@rock-chips.com>
References: <20220304090523.1748297-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNMSUhWSUJCTBlKTU
 wYS0kaVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBg6TDo*UT5PSj9WLSEvLBdD
 EgkKC0xVSlVKTU9NSENPTElMSEtIVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUlKQ0I3Bg++
X-HM-Tid: 0a7f542d4426da2bkuwseb3b01dfe78
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_010530_322128_DF5E0D2D 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add a optional property 'gpio-ranges', such as
    gpio-ranges = <&pinctrl 0 0 32>;

When the gpio nodes are under pinctrl, the property 'gpio-ranges' is
a optional property, but when they are under root node, the property
'gpio-ranges' is a required property.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml       | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index d4e42c2b995b..7a075fcea75f 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -49,7 +49,12 @@ required:
   - interrupt-controller
   - "#interrupt-cells"
 
-additionalProperties: false
+additionalProperties: true
+  gpio-ranges:
+    maxItems: 1
+    description: |
+      The property is a optional if gpio node under pinctrl node;
+      but it is a required property if the gpio is under root node.
 
 examples:
   - |
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
