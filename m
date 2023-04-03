Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85DD2C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 20:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUTTW9eGEUZtFiHH1lncshlGtl98RtSWpI0JImZEHhk=; b=abjJXOzr/Ee0WR
	Tt8dDbxhQnp5P+yDTzJCIOYjadNF/XgvK5X2fqPrrJ47VzOQ5BAD+yzWWGxrMLs8KCBdbNYhPjd8F
	vc1b+TJD8qginx4TV71RCp4Z1RPLBIkdq/wQ7ecQkOi+nsaPSEQAypQYTY28/5SJfUETmLdPuTX6z
	subeSfxnI0AuDPtiaK4i7QjDc9HqOXiGuQTMH01oh0/rHupM9027zRBYuhSUCjmKwq7MWOh4sGegq
	YmcxJYht0h4DP6C2Ka9sx6VeGevieutlDMgB4etfFx03/PCBL7YgrhHz+3Gx24VGAEw4+SSQa3pV1
	Moplw80PlvMI2kCT6zRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQiE-00Gb4W-2J;
	Mon, 03 Apr 2023 20:23:34 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQi1-00GalS-2w;
	Mon, 03 Apr 2023 20:23:24 +0000
Received: from jupiter.universe (dyndsl-091-248-212-192.ewe-ip-backbone.de [91.248.212.192])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A8C056603145;
	Mon,  3 Apr 2023 21:23:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680553392;
	bh=m9FILfVQyJxihxpfk0h5LYuZKpQh9/EBw2gob5srf0E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iF519hnyz4UuX1FFx9FaYsIEGsxnqKHm+FiVe9q7GAmsXYTYjECMTzQZaWENu2jx4
	 cUYf2xC82L0QxaOHLHEBj8I3daVbkn3CtD19SqyYLpFbw0EOM8DCsG+R4GFMrUwqHA
	 GE/Djd5lPyJyudRiE5clrlG/DjGfXMsGaGJZ3uOzCZAEANNepRevJZzs13yf7UiDIC
	 vVbgCA2Z9eo4h3nqhCipr5RW4TyQ9/BDK2JFJ9MIo3KXT+Dh9KhsBCP7ejKpf/Jn1Z
	 3MHSDCJQqZL6MNFwSV0TbvkN0O5ozpP7/Gz27gWJ/mSxkrU6vLJw0IHhcn6ZVqvl3K
	 Q7edSw9suvNAQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0ADCC4807E2; Mon,  3 Apr 2023 22:23:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 1/7] dt-bindings: soc: rockchip: add rk3588 usb2phy syscon
Date: Mon,  3 Apr 2023 22:23:01 +0200
Message-Id: <20230403202307.120562-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403202307.120562-1-sebastian.reichel@collabora.com>
References: <20230403202307.120562-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_132322_120086_47970037 
X-CRM114-Status: UNSURE (   9.12  )
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

The usb2phy is accessible via a syscon registers on RK3588, similar
to rk3399.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index e697c928900d..a873f74564f2 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -52,6 +52,7 @@ properties:
               - rockchip,rk3399-pmugrf
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
+              - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -195,6 +196,7 @@ allOf:
               - rockchip,rk3308-usb2phy-grf
               - rockchip,rk3328-usb2phy-grf
               - rockchip,rk3399-grf
+              - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
 
     then:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
