Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28B34C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHWkMUNKQrPcPdKtaURCA37i5y2Cy9xz9w1pIzngMBU=; b=lb8gPs7hUFRVr7
	baRgq9tHPx9Dy4T/NbE9KxPH46OJxv6IpUbWU9lF0zDuyO8Vi1BybNfaLubX+2/Md6g3BntP7LGfp
	OR3lPUUXJ2HnXdNvoMfnh5ldMzhxtYJCKPXm4gVthOe39GL0y0yYRQvy5uQBGj2VEx+2cclwFwiAP
	RJrMC2vNa9lKlCOgSahpx7BCMa4TRxlPVt97IaeqawSvsue5+3rDmgBNb4aUUsiU5l4BGfFJ1JCHQ
	zLKwnSNVdJqof8qKiEtbKkplbdxZn/PYCbrw0ZHuPK/ec6LSWBLTEtQyUBjT7u53BMBw23Q5ByD28
	l8R2VBMOuWUduBsNV/Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZu2n-00000009DkV-2L58;
	Fri, 02 Aug 2024 15:18:13 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZu1d-00000009DGg-04bl;
	Fri, 02 Aug 2024 15:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722611819;
	bh=afzM6zV4pT3/q5F2QE2NWtw3Nh7GCrj/opI1rta2Mgo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ylTKnRoIIqtBEES4Wvp0f+eevYUIJVt9j4MBwm62gVYhVmX8njFbyTrEhJ7pBdMyb
	 h/nRyrc5hu1QPe7ZLT8G1FgJQTpghK5M0DwE5lXblio5x7OGDx4mw8j8oILIPAtP+1
	 GYC+QV+KfAzBsT+BF+yTOkUD6SgmoXDU8aXwhLbnb/dW6IfJh/0It3uRUFS5MQB/jg
	 Ed/JKgdKggW5TnWf9jiHka5707fSig2QrnwkFPMbe8PcBaK3q4cTOW68VyLCRDKWFo
	 hkke418bahdakJFKPx9a5/fraSGLjCdI2yN07CNY+4boRViqNBut/DMUZ6IsHqqN56
	 ZhBbwWyuI2MDw==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 56D223782219;
	Fri,  2 Aug 2024 15:16:57 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: pinctrl: Add rk3576 power-controller bindings
Date: Fri,  2 Aug 2024 11:14:58 -0400
Message-ID: <20240802151647.294307-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802151647.294307-1-detlev.casanova@collabora.com>
References: <20240802151647.294307-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_081701_256074_3BA64D59 
X-CRM114-Status: UNSURE (   9.52  )
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

This adds the compatible string for the rk3576 power-controller.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 0d5e999a58f1b..650dc0aae6f51 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rk3576-power-controller
       - rockchip,rk3588-power-controller
       - rockchip,rv1126-power-controller
 
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
