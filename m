Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF72606A32F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 07:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U/69L8Ls;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=VRbApfej
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Cg/kEEhniUOw+xxLpyBLBGn1yd4mBW8lMycJg6GyXUY=; b=U/69L8LsULRzckRKDsebKuDlwd
	6XNr6cxW48ciTT2zIWVHR9ZLrJfwR1XrXgFAlYAdz6NoBcfLjp6meJSTs8eLU8mQeBKY4ovkoacgt
	DqUDuTk+KwkajasrKim4VA6RJMuf1T64ljJOQ8X02uLfg5oP0Rg4NCrVLSlbpmVtuVapKq4Xn6Jbp
	lmceH/yrshuNTTXaAGDgFnvvmZ80R1OuD1ImpH3RLVRcJsolcd7nAWQkCkHuQd5ry0L1j+FCaVLyD
	Cn9Gy/YEozmSaw9IGN2mb6gMybi4yL1fl8RM8VJxl1k8Lf3kbXRHwbfpU1JHLuTGj5Pnyc46NDGfR
	qbAHY5ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgd-0000000FBe8-2PM8;
	Fri, 27 Nov 2026 07:48:03 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgX-0000000FBYN-2kAb
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 07:47:59 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-386a2dc17adso688337eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 23:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765677; x=1796370477; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GdqQ/1stdbLe7LW/q2pTltSdWQOOet/MTXZ5U6MTyic=;
        b=VRbApfejxzcXzy/xv2Lg+XQL1e9kCDqxeb3OJZTbYgDqSmumNyuq5EPWujGxpYetnk
         54Ar2qCSPDHXzOgoa3XpUeCbVNdlIc3jIqCi+U6fYnilu93KDg4ZIrGK5HfRjnqU4lOz
         g8vgepwG8qSdkXuOtljBNmQdFB60QFGUrdqOEcXY2UJyfiwpxExw2Rrks+JXypMo3kUY
         6/6itjW/qx+CeYZtMgWgj+Gij+OmnRDQZrPL1EBVgKTrJo/h+pX++c25X5S5eg8Sbh0F
         11lKtwcYKQySsImn2kQ+8czz9I6SDd2/+dyAj34FO9MdcwOQE8ORBoxhqCWqSubloPui
         h/2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765677; x=1796370477;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GdqQ/1stdbLe7LW/q2pTltSdWQOOet/MTXZ5U6MTyic=;
        b=ZkwyBY4H9b+VCyuVialMlwWWFDPJ8D1RH2iYAP4YuB0pQWHtysLOXTRSsWuHp6/RxE
         3Dhs9cvBRcJzoVPK+JL4+4g/NQHUWmmwQCSW6RoB2P0/zyKPjP6tmxziZRBdhd/r1yJB
         md2M+ZpdtpZvQjW0ckxYflxuSfaGyiQe2KY0pKczDY5PT01Ce1jxQUWnlkLCdfX1GA1D
         IsRWXG1ckqCp3SGsUWt/BMBomgvRIL6TTuFfNfd3cOwQNURx2qriUF8r/qNfB9KK99Y4
         Vzj9wlbz2ZoJr4wVdy23+71r8vpZGUwCy1g8zh8EqFACvAUFlw4rTIU/QLPbcpHlFt3F
         KBdw==
X-Forwarded-Encrypted: i=1; AL+hErFCqHstLhzFaZeRQ0WwkqT1WWfzT5qY7/D5BW/AXsuMeqfTMRUkVs+rOneBhNhOB+JtwbclsiuHW7ClkxKa6g==@lists.infradead.org
X-Gm-Message-State: APuU4Z8Q/2aN7owXj18DL0bYSjVNbpgCjtUgQpYGKZO3ZrZXKcrYVX9G
	i2IA/afFraKFkZS4Q9yxlbmpYA4FR67/U3NggOIgFOkCQ8fbZls1bgPq
X-Gm-Gg: AZFdTZcnUfUcOR1ZgTXn/GmelttdeHDTPtBunadPZXtvRqWR81jCLC1lXQQlOhVX+A7
	XuMYgo9onCAg6EI5/J93LzwnBstMzeviz3TBp2pAjOgvZ3Oi1mtLfncqgK4iN8fn7dxGdOXXv3O
	/6m4iHO3XcXFmbUj3EB/oZmQCN9dS/khXEFCa9ckT4Qs4XrCSIEW7wjVTAvD6UUhwUbXovj/fxv
	h0qrSSkD8Zby57euJ3S6JQbibwVcByHHCdGXbTZV2psB/9wy/sXnSBp4TMcXK+Ht0POGH2s0Xfe
	f1ThvBsbvyGj9f6kzgA6aBafNg+zhGncPUxZwufJGDRba/Z6IMVClO9t7n+dHXvVV7mOLet3WQ2
	mN2LE1d+NeXI2bk/zV5M7Ogzca7QvKZ7HWgXzA7dcJb5vEC13DElL13npySqrjckHrD681vH/TU
	6zPRZ07DFCdkDmdeSf96CX3YCgTRIvMZ/Qb6vngelHVbizs19Thy7KRHylBuQjCDd0rC/VpzJJm
	DaOfQla5s4Mm8Jd7PcSHoEslafE3Ygr9a/+F561SSWV3mEGcs9HdHO3NQXrnlTgQU6KKd6nQUiQ
	reXWPDvCOl34JlSwM9AJFCCNFK96eqArPpLGARuo37ZqrF8XW3Pex25uXG3tiN3yixv3eW65z/h
	N8vj1fR+Wdw/sVzI4c6aN
X-Received: by 2002:a05:7300:1c24:b0:384:a0cb:a6d0 with SMTP id 5a478bee46e88-3856de58f7fmr38384098eec.1.1795765676382;
        Thu, 26 Nov 2026 23:47:56 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.47.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:47:55 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:38 +0800
Subject: [PATCH v8 2/9] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 Select TX or RX, add phy-type
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-2-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
In-Reply-To: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=3039;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=7rrdQlfrdWzd6vh0XG1BVzWjWRFX5AHNt9d46Qfby9k=;
 b=PJpEud+ez2q0GsXQjeTCuSxtX3j8zOIr53Jy9X+9FVnl1qhWLNzk1uuIUPCxn7Wem/kCpfd8Y
 YUX34ypgZ07D1PGVlQgKmasrZrBAoNlnEImfVm9qQyVU7lLJNtOmv1F
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234757_718580_43D7CAC9 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
for DSI and a receiver for CSI-2, and the DSI host and the CSI-2 host
can use the transmitter and the receiver at the same time. The single
cell of this binding selects the mode and refers to the transmitter, so
the receiver cannot be described.

Change the cell to select the transmitter or the receiver. The
transmitter and the receiver cannot operate in different modes [1], so
the optional phy-type property of the PHY node sets the mode for the
whole block, D-PHY by default:

	/* the MIPI DSI host, driving the transmitter */
	phys = <&mipidcphy0 PHY_DIRECTION_TX>;

	/* the MIPI CSI-2 host, driving the receiver */
	phys = <&mipidcphy0 PHY_DIRECTION_RX>;

For C-PHY the consumers stay the same and the PHY node gets:

	phy-type = <PHY_TYPE_CPHY>;

Existing DTs on a newer kernel: PHY_TYPE_DPHY and PHY_TYPE_CPHY remain
valid as deprecated values. They select the transmitter and imply
phy-type = <PHY_TYPE_DPHY> or <PHY_TYPE_CPHY> respectively, so nothing
changes for them.

New DTs on an older kernel: an ABI break. The older kernel ignores
phy-type and takes any cell value as the mode of the block. A DSI node
with PHY_DIRECTION_TX therefore gets no display, and a CSI-2 node with
PHY_DIRECTION_RX gets no camera.

[1] RK3588 TRM: section 22.1 (overview): "The TX and RX only support
    operate in the same PHY mode."

Suggested-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.kernel.org/r/94d47cab-10c6-4ec3-84a0-3bddc9d67f5f@collabora.com
Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
---
 .../bindings/phy/rockchip,rk3588-mipi-dcphy.yaml       | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
index c8ff5ba22a86..1ea21ab203ba 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
@@ -22,11 +22,23 @@ properties:
   "#phy-cells":
     const: 1
     description: |
-      Argument is mode to operate in. Supported modes are:
-        - PHY_TYPE_DPHY
-        - PHY_TYPE_CPHY
+      Argument defines whether receiver or transmitter PHY is used.
+        - PHY_DIRECTION_TX
+        - PHY_DIRECTION_RX
+
+      PHY_TYPE_DPHY and PHY_TYPE_CPHY are deprecated. They select the
+      transmitter and imply phy-type = <PHY_TYPE_DPHY> or <PHY_TYPE_CPHY>
+      respectively. Use PHY_DIRECTION_TX and phy-type instead.
+
       See include/dt-bindings/phy/phy.h for constants.
 
+  phy-type:
+    description: D-PHY (default) or C-PHY mode
+    enum:
+      - 10 # PHY_TYPE_DPHY
+      - 11 # PHY_TYPE_CPHY
+    default: 10
+
   clocks:
     maxItems: 2
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
