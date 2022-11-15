Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27057C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 16:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Km9Kb8S8dzZjo5jOVyk+NXeiJ4tv0FgRw2YeqPGD+AA=; b=RW82fC+c9Qu3fP
	kztuB+u/A0YdkM9WaesTPnFPIDQNieHa7xPy+E7x/Zvmbbrm5sqgFVgwy3ZJ5HFxEnmTY1Vw5l+Ct
	ksnPGLUvolnGL61bgliUdPYLIk60sm1xUhnkceOwAC4XE0x4IpjKv0jG3X8/DLyqezjRUCtjZM8Rk
	x/F9Ygp+DeJiGLIHfv4KnWyAEDM5HE3gkgCXN5DGRbLTHcNc82I76A1AVcRKQkJX/Fi7GY+RNHTIE
	mpGiwRLObxrkA//wzC7RbqYpDQsk969AheGADH450IUNfKQjiBdHdxVk26vJE5Sjjyx5AhTY1zFNA
	xvQbew+3fN5LmmAIHw8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouycg-00Cfu0-9Y; Tue, 15 Nov 2022 16:17:18 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouycd-00CfpD-AM
	for linux-rockchip@lists.infradead.org; Tue, 15 Nov 2022 16:17:16 +0000
Received: from jupiter.universe (dyndsl-095-033-156-109.ewe-ip-backbone.de [95.33.156.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8E0EA6602A78;
	Tue, 15 Nov 2022 16:17:09 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1668529029;
	bh=j6U1J97xtpvnDEk8MFhf+VZfguyZclzTAFUGOJNjV70=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oah0CS/TBmepMxR3N/uqsnfAYa1KoTNbnTjmXUYArDuCSSADyBcCNu/r1YDPTPhAS
	 FIprpBWQqQCZb/IUbiU4wGbhjuBPLygUA89hoqXleLb1IjiuVD3ruPo06ffxraNT9W
	 uLKn6XUmzja8svKjCYnsbbPpek3FQoqXDioc36f5om3p2GImBuTLVJcx8DweXXKht5
	 Gexq2nkgWpxF7F0c2t5q6TH0kZIjIiVVOEAw09TUMBtt28AIwJox6AzDhgcqoMvP2T
	 8cQRfeoe70AuWLfGaE6DfyjpVn5ufi2hH8oMbpjaOw5adm5tT/ZaSDDh4cb9LBl8lC
	 K1IV5hoo0beyA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5DB2C48011A; Tue, 15 Nov 2022 17:17:07 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCHv2 1/5] dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
Date: Tue, 15 Nov 2022 17:16:58 +0100
Message-Id: <20221115161702.163057-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221115161702.163057-1-sebastian.reichel@collabora.com>
References: <20221115161702.163057-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_081715_518618_C3A16979 
X-CRM114-Status: UNSURE (   8.34  )
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

Add IOC and PHP GRF syscon compatibles for RK3588.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2ed8cca79b59..e682b407a383 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -20,6 +20,11 @@ properties:
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3588-bigcore0-grf
+              - rockchip,rk3588-bigcore1-grf
+              - rockchip,rk3588-ioc
+              - rockchip,rk3588-php-grf
+              - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rv1108-usbgrf
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
