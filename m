Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC9CC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 13:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlUN5Ry/aSTUaASjKYvOaZMZHI6eWo5aHVU6o8oKy98=; b=FsHW/nrcBooq5A
	uc5vbpKz6PV3pwQaxkTBfSk724FEJoya+MJLnVCiLiD0fwIPtZOrPAKA4ZtqDpyqIDiyIHBKmgR7T
	pZkr5VFvm+kbV2Z4B12wtAlSA+jEnf0jg2RxC/g700ex6ZEaGIAyVGTNG2JUskekD/LS14OKuQ2wM
	rVeqP+mHx3pu2FdSiHna1+9uTWKE5NLqzieMmI2nBODBLvvQ69ev1vOUB4Dq7fgy6mNmRA0AUvyqA
	679vLE7bvcx3iZt5UPxPd0ReyH2OcmIFLR+iIDk865E2RwQa1hnlPnRYSMpTvT1UQY7fJE1uHAi56
	n79yPK6vJxUemt4H7TxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc58X-00AMoq-2c;
	Tue, 14 Mar 2023 13:56:21 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc58G-00AMgh-0I;
	Tue, 14 Mar 2023 13:56:11 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9EA83660308F;
	Tue, 14 Mar 2023 13:55:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678802159;
	bh=37ljbgJkpZPvb9TsF+DacOqstVGArWpTYRb2PXFGvQY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KmTWq49ZrHWRELwwEFA6LQdTmWRrBo4rWKwqLzLaH6VuhUwqqXp/7LHr3IJfoMi5u
	 2InmgkAPTh/0z8n8DHT7xIZAgGnfcLwItpM6MpRFB7DEsRY6sLxqNPwb6j/WS0Tty/
	 v4tPcfuvnQaIrf/omYEVP902qgTIvtSGk5FXEu4ofr1tkG9RfdoAG348pg40DieZxa
	 5CzkoHyLdvD5n458AOdMK+1yDgi+vrQdorxp9slEZ0jjFqTWPTdT94mJFZE10SDuHc
	 XgOY05ppehOLpx6N2WBbjSaW0LmD5HhZj8c7llTZkEmlhk9FcABkZWUkAkVbRdG9NO
	 XpKErX7e1g4pw==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 1/3] dt-bindings: PCI: dwc: Add rk3588 compatible
Date: Tue, 14 Mar 2023 13:55:53 +0000
Message-Id: <20230314135555.44162-2-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314135555.44162-1-lucas.tanure@collabora.com>
References: <20230314135555.44162-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_065604_257247_2E5BD81B 
X-CRM114-Status: UNSURE (   7.90  )
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

PCIe for RK3588 is the same as RK3568.

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 2be72ae1169f..24c88942e59e 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -21,8 +21,12 @@ allOf:
 
 properties:
   compatible:
-    items:
+    oneOf:
       - const: rockchip,rk3568-pcie
+      - items:
+          - enum:
+              - rockchip,rk3588-pcie
+          - const: rockchip,rk3568-pcie
 
   reg:
     items:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
