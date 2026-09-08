Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79B5DC79FB1
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 14:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vT4j3AkYxbQdRiXWb/PPK+m7SpAOnzuNQSRQAKaMi3U=; b=TJ9o/E2EP0JKKQ
	MZj+f6foTXjc/Oj2kEifZ2OKtaS1W14baUQprZmVGxoLOHSl4lkwVKy/VjFGdz2KQuM8iOPtdSoiM
	YoJm+zNilBwNJ1tRwSIF2oZDERAskHXHQQpdR2hL7y9uR+fp5ZDtUk4yHX31it/JoWId2bBj5mX5D
	QqOQ4XzzdjBQ5OkdkAMj5O5ST3V4Y9RJZAq3SMsV+K+ipl/U4M8gaXZ6P3g6JdJ28ku+TIr+B4Ld8
	W60gRKrpLqTIMuJ596ySNiPt7cBU9OwYAk1ezk0amgBLH/T8QpPACOmW0J4S9O83Fd8N0Wk4+7isy
	4YcuP2xsTQnQsX6T2y0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xAw-00000009KMF-1Bhq;
	Tue, 08 Sep 2026 14:51:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xAs-00000009KGb-3d3U;
	Tue, 08 Sep 2026 14:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Ucpj6KTxC0PdIff7YVhAcmQi7mpCHI/DiJUwz/L8ujo=; b=jA0j3B5cRy8gVwWA1hezZy0CFL
	1Q7Zp49vQt0EAMCLyvCR2yZVNuFkU0u6jlGjtlOvm+WQEoAQDuDUK1sQ+W+NkFVvYZ129NzPHgZMU
	um63+SINq2wXtHkl/F+i2kUrb14ZBCBe7LGqpmiW8balu1FXUiAoh1I68XvgTKGpecu4wF/DSzmss
	YAcMrM0m6a5ioAPEq17YcrxEoDh01vIf4fwkR3TxDh0TtWw1l+klK0wqD6qZbzJcjRkAtZk/XysF+
	3+YAatBaxpr00ZRWg4Pj/xAlO0LbkoBLn3gGAGddODXUu2LwKCFf21aUAMzLeqvt/7PYrvuAEWhV6
	jIGYsSfg==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3xAp-0000000HZ1h-0yz3;
	Tue, 08 Sep 2026 14:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788879101;
	bh=Fg34IEunqJ87tallgVaqmL3g1l7Lk3fv7w8kAzfIgiQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TbNDZZCkh3+30wTwoHAFATA8ACNPU5c21RyKLa28Dmqn83mRr7ahXKFBIkHIzoV9Y
	 XX+GJtDg28T26H66tGuYlK4VWBSYKHIfzPIitwGlFVlkfjwDR4VAq9KSQ5EhYGV4fz
	 AP1GgYxwLMUBUkDMLIP8AMAWft6KPATxQHNzPSiDJAqz/ro+L3XZoBZFtSlVrHAvfQ
	 CkvONTw4W+fvwE0ii/iHhMXGIcUX1gNIPU8AyG/YMye0Liige0huoQT0ooLrLQNTGK
	 NBS6OBqAhI0PpukKElgCZCCfdaE8Qo1Tvzn8m8WnP3MQNFNsxE+1lk4YZc61m4JV0p
	 2o3fSxnOQbCUg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D83D817E0CA6;
	Tue, 08 Sep 2026 16:51:40 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8E17C480029; Tue, 08 Sep 2026 16:51:40 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 08 Sep 2026 16:51:19 +0200
Subject: [PATCH v6 01/10] PCI: dw-rockchip: Fix LTSSM set functions
MIME-Version: 1.0
Message-Id: <20260908-rockchip-pcie-system-suspend-v6-1-fbabcca9921b@collabora.com>
References: <20260908-rockchip-pcie-system-suspend-v6-0-fbabcca9921b@collabora.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-0-fbabcca9921b@collabora.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, 
 "Yury Norov (NVIDIA)" <yury.norov@gmail.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Alexey Charkov <alchark@flipper.net>, linux-pci@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1781;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=Fg34IEunqJ87tallgVaqmL3g1l7Lk3fv7w8kAzfIgiQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGqgIPwEwohiJhIRtREX/UPidd6YqPL8FjV5B
 /2sETgGRQv07IkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqoCD8AAoJENju1/PI
 O/qadEkQAJq+v1y4/jvh+oo3YY3fY5I+eWTBo+SLQvRumeyeqQEPeRMCgyu/I8i42rprrdh3ciZ
 zNFR3QwfFJfxrqdhS65Mz2/u+xF+JzFUJjSiKsAmUvQ65yy2npvrnXbwkA3fPdFyRSS+OwsL5F8
 NSG75CrMRJAvXprI3B8jNwSDgxAR31LpauxDUMwru9tQhwpKAOQlyz3/rCoIgKcaJY1OOlqY5Ej
 Pfkw/vVeZLZgl9iJzPusU+xRO0zD11RX2N/XAv2qfKz9aOtC3UbRDdn1PwroMRIKE4mJaSTamWK
 LPblA2NVdE3WA65rxFPZ+WgkOamc5KWgyz0HT5Njz4WpwmkUuKQw1ii4a7J7jMlbYE4c8Nl08Gd
 qE/epbdwETAb5o0O7+8+e5HPe6EVIsDiC7MCTyZ9h9GtxnSVSKxieTIEByI8TlDcTm+9H8g79qb
 cCo7iGYj0vt/VAJBaxP1CG67ZrQoQGS230mG27YKLWNG7QD7A5DyrPnPDS9/GoKkI7uqFvn9qrt
 utZqRGGoPTncdQF0lltIqyGe57JlzDZng4ZWcRCEB+T6YW8n0wKEUrrWq8gliMsgNVilTHOBwMU
 UMTV+FVW/qQmKrZxEiX6xj6SL8cz0cWrRGp6OUFxAMrbhwUvSUbEdforXcOnEa5Ub0ZxDEmg0JL
 JpYJr+o/gVyhmUzW+P3owcg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_155147_441155_4F241B13 
X-CRM114-Status: GOOD (  12.32  )
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

Before the Rockchip PCIe driver has been switched over to the
FIELD_PREP_WM16 macro, PCIE_CLIENT_ENABLE_LTSSM and
PCIE_CLIENT_DISABLE_LTSSM were setting bits with a mask of 0xc = 0b1100,
which means BIT 2 and BIT 3. After the conversion it only sets bit 2,
with bit 3 being handled by a separate define named
PCIE_CLIENT_LD_RQ_RST_GRT. Apparently the conversion missed to make use
of this new macros resulting in the third bit not being set.

Fixes: 30e919570581 ("PCI: dw-rockchip: Switch to FIELD_PREP_WM16 macro")
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index af26a07c0c9e..dc85564e5001 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -321,14 +321,16 @@ static void rockchip_pcie_ltssm_trace(struct rockchip_pcie *rockchip,
 
 static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 {
-	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
-				 PCIE_CLIENT_GENERAL_CON);
+	u32 val = PCIE_CLIENT_ENABLE_LTSSM | PCIE_CLIENT_LD_RQ_RST_GRT;
+
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_GENERAL_CON);
 }
 
 static void rockchip_pcie_disable_ltssm(struct rockchip_pcie *rockchip)
 {
-	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DISABLE_LTSSM,
-				 PCIE_CLIENT_GENERAL_CON);
+	u32 val = PCIE_CLIENT_DISABLE_LTSSM | PCIE_CLIENT_LD_RQ_RST_GRT;
+
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_GENERAL_CON);
 }
 
 static bool rockchip_pcie_link_up(struct dw_pcie *pci)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
