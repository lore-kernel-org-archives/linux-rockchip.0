Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B312C88E5C
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 19:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=03LmJWJ7XNLK74
	hFW09yvgivgyZizNU6K4rwIG8eWOysfkfBUOd3S7USFzlGJ/JdVa09VO9lPIOVOtlZ3RM0YNMIXVS
	qSW2DuAaau9XvJKv77RCtkBnM+JOScwL72awA+kDu3AIaBC/nz+lZQfQhl+WSu/4kEfV4gKNBosA0
	aU+hi65gjfrsl8XkwTM9gA4jOLzRXc1uJ1RejZaQlfLPUNhTlHPZV8i4/fM3m7mXisVgBo5Vd88vQ
	zCJiOfVejg+gpdgaZYQsiaEscuEoXvplssn7jX2ZHdsYyH71f/ydbJDYqJHYDPzqyavgy3jBK2NbE
	/vNLbZQt0raTH0mbYHBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pQk-00000001wjq-0bms;
	Sun, 13 Sep 2026 18:59:58 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pQe-00000001wg5-1ZHa
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 18:59:57 +0000
Received: by mail-pj2-x07.google.com with SMTP id d9443c01a7336-2d561173f9fso19724895ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 11:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789325992; x=1789930792; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=N2DsRkli4aC48ssaTM+JS3ZMEYnoVDPLrBldYLLduNNe8HyalXW74XFiSDLnZFIpGn
         gaDxHcBKdjzj3qCbdItf69xOLYxYz1ihDPEKOGQkolc3Vhb6DitIorlh+JWSaRWxcy6u
         3QZ0iZyr12s5dNpz1crq9nWAgLgbUDRczlYxhcQOz1Q2b7txrD+Hq1b8Tl85OJ5ueBff
         1hQe95xgMjdN4Vhuzcs9rg4jxCo06ztX5KbJMblStmkPhooNX/iBY5HqI1WjzRYmHjvO
         mHOyDU6Rb+zLUOESMYo/mUqNgEmiIsj2fXnBMqPBfl9vjJba0bldntN0HoUXAJVMy9Cn
         sf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789325992; x=1789930792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=lP+raVqw5iS9c0pMZhJACVElgBaJJrOtU0hVafZA0clUdOYnKTlrqqFDN790C+iKAs
         Oofn06BCPlAZZFTdSLcVnlzxHOKFsEH5kv8Dt1oO/Syoo7whOLdSMwpK1p4Vyp5HoU+T
         Mdl2LG9o9YoXSXftSNYXf3D7IDMsGZh2z1Lg8dqFY/avWGitv+0W8gwL+KmaBXRldSBI
         dtFIzm8Ex16PwUesf6tU945MIDvH+E2/CM1cLc1aJK2tH/hWOO9tXaaDjPQ9SnsZUxF8
         HZac7nvnecHDSomygUaeZMsgHblKzmgcTle3tsgozX0y7Dxj4wc+eEQqQ/RFgJR+cgOc
         H84w==
X-Forwarded-Encrypted: i=1; AKwUvBzYQnfhQbj+FzJwSytEaqZveyZiOGkNnQsKeT6KutrsOPbrzwC4Tvk7bIRwG95hw6GXJgpYvYxo4dKX318gzQ==@lists.infradead.org
X-Gm-Message-State: AFuF++n/im/bfTlyCGmiLT5rtxaYllHpTh7BwnPEvhMfKQGJl/dkSuzb
	6zromlPlfhKkoBIQT51LxclDGUJo4QQcUR7aYdtpZvqDmAWNqfXti26N
X-Gm-Gg: AYBFou3KPsaUZuoyz/YYsG2Hj6m3mkoRO83wuKDpQJX32VyY2lxMbkL5VGCFM2mlNIm
	+cfFBNhx7fNggfbLQBGeS/HeZLOrixCnthvVtRvlqa07ugPC8ElmLXcwRPMxQZFx8vVmAn/qsbE
	sl20W1m5bp55wJjMOjRe3WZdwTRqyPlCrtR21dh7Hyp11XAI37pJcB4fdD9f/DdYdbJK0SFmTuZ
	fHoetUP6Kn5UrGgAf6X+Hsm9ZRUSNUV1au1zmcp9rHkYpJAbxJjUG8Ck67nDB1hQXwMmNBmiOmW
	DW4tgdjQFrb6V/3SzitamRXmNNioCkBS9yXt3SgcL0nlt1+56WU3KM0unT/Nvy8h0yBWaWVMykZ
	q2PyW5RrnhcdnK8872pw07JH+i+yMUyczlRhJ8zaj7mwSkgmEvWFO5+DBNYnnsO2QoKjDw1mEqU
	OAqcYh/PtYGAKUZLHIBuDu/b3XtylvjIqMzUnrvfePkT60+2gJui+iuxzJ35ZGsSpFoxQsmg==
X-Received: by 2002:a17:902:f54b:b0:2da:f1b1:56c4 with SMTP id d9443c01a7336-2dd2a1c9d19mr243912565ad.3.1789325991655;
        Sun, 13 Sep 2026 11:59:51 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.11.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 11:59:50 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v5 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Mon, 14 Sep 2026 02:58:37 +0800
Message-ID: <20260913185849.907479-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_115952_456482_F6A268BA 
X-CRM114-Status: GOOD (  13.02  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1). The hardware
reset value is 1 (GMAC1), but this can be overridden by setting the
property to 0 for boards where SGMII is connected to GMAC0.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..8e898bce9af73 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 1
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      The hardware reset value is GMAC1 (1). Set this to 0 to route
+      SGMII to GMAC0.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +114,10 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+        rockchip,sgmii-mac-sel: true
+    else:
+      properties:
+        rockchip,sgmii-mac-sel: false
   - if:
       properties:
         compatible:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
