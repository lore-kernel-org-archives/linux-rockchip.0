Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F03B0C44507
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvMsnpO0g+iaQskOkkbKGBzY/r70D83+GqpE/3XxGNQ=; b=LS7dTGsQJfWnEo
	+kgJPVFmjd41AoW3CncdWc8Rkw7+HzM7bMVb7/Bq/hxuOCEelF5BQb2Jf4gNnjUhALKF/HXofTKNl
	eu/OOxwTIGyDWjTVoCmzFcmjarSo9wLpc7LvMLp+ZindGOBx6M9df2/9AIBVmCGIEOxNZXy04eeb/
	0dDO4AaK2Ag2drO6o+fk85OI7/bsCl7Ae+LSSnFBuVIBIqLCymFQPFAOPf13VmuTc8nTmIpLhHiYl
	cocXzme5W3ieWFqNQWARgn2FkbZhlvpk5g4Xfcds9jHopJbLtPZ2wW/ODkxDqNxWkAaaczFkQp/mt
	CTBBtMdZS1tSIN7NS9XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiZx-0000000CznK-3Cwr;
	Tue, 14 Jul 2026 19:14:05 +0000
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiZv-0000000Czky-3FzZ
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:04 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2ccbff2e6a7so31003365ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056443; x=1784661243; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8x8RDbcfDX0JdqW/clHRnOctzbZEE6whwRLBLDpw64o=;
        b=AuJo0FZCB3Zgk5UFTjg8GZuRh9DmqIduHrN7sUOG5jwOikPUp+PRGy9fTlcAUQ5pJd
         r1wPO21i+3ryUsPFVUcijkTGSzBd0no6RMVwhPjGJ/mTmEA2jlp/kKwN8gLXFraNl6QQ
         f9hTx7vnCwYXMRjqPp8uoYi2Txm6APwLBSgT9hAEMCfC3Pg1hDU//QUAC3DbExprHQTp
         xdKsfqaf8ioVMuR7gk5jcedpUZHF8VkFYCqYHdtBVHGq9NrCWkk4inxjGkzxalaJ5lqt
         l8UfUyOgaW1S87ZDWLZ1qvwSrhla7O3lmx/ipMKjqKhHfNYDdQlmSJb5jt3+PWHHjsye
         W0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056443; x=1784661243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8x8RDbcfDX0JdqW/clHRnOctzbZEE6whwRLBLDpw64o=;
        b=ZUGAPvGR5Fl1llJ8P49+Dph6iv+c2vfoRty8JNvA9dg6jZRpIKK9G4X5sNY/Xr4nbN
         +Z9dUjfIY9abfyZY+gC65fVtoPbMet25tplzQsYFgDSuPgwai2DeoBTudvoB/64loeGn
         U1/S2AmIPZDDQy9MUdxpY/Xa8pDm/dHos8JtdzTja/Eq+ZCNW85nY1otUKqj2vqzrU9b
         dizqa7p2g/Kz6Kvg7TE0pC8GHt5fxpRY6bhRkK77sCOB2hwJRMTeKhNDrYa+Y4DucASf
         x2lD146xtQMfZ1sesqyzscNg0x+9YdFp1l1FpwdCMj4GZd95pBp/xeZul4QkLaHAKIrr
         tp9w==
X-Forwarded-Encrypted: i=1; AHgh+RqxaiinDhyzmzJgqpy+Z4BzxHUHBgC/Vy84QdYeiE3Lq0j8Uq3jSi/VsszAIEj5zw+ALTgt7lnLelckDQSEgg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYs9Y/aXm1H7cOKtK3KFpRjxY5AmEDrTHCvpp3kD6eucEHqtBk
	ChzrLb6BOnAKZojOM1t7Y/1vEZyGvfZ+7Ee3vfJL1NEjFlQ9zA6Hwhr8
X-Gm-Gg: AfdE7ckqZkOUjefIzWn1T4w9X3d+25XXNK6qyorW0YmPdRMcp227TRg3G5AUpLrWJZA
	AG7s5unkhsFQAYxVEcJ0g3H63p+1uKfCZdYuolhV91Y04chPLB5Fj8Rfgk3CcpMXHriY47Htmgi
	RbwdHyUrtDSLIz5r7RWbhHWIes38ocxflJY08DEy89dSbusBTB1UXfjNy2axGUP52+FnbrnE1u+
	kduAZQySE9unN4cc62toaVrTUwmhs4mqs+YcjdXP8jc6AtvpffNBeqsQ5o/vNv/4woRMQHrgTba
	luznPfIgZ+P0B2gauZEOI3cB4sTsEoRhEho3yEeGMhOyPcwbmAFMGv8JU+xta6qujO+V/u7B4H6
	w8wOttCd/9Qmds3WnCxoSj1u4oeEA3riPDmBhOHLqaL/mJX4BkD9LVfz2uta2QjDzYnL4lZZD6Y
	jhux99j2nmro8=
X-Received: by 2002:a17:902:ffce:b0:2c9:97a8:8c1b with SMTP id d9443c01a7336-2cef1374743mr36739275ad.46.1784056442914;
        Tue, 14 Jul 2026 12:14:02 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:02 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 02/10] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Wed, 15 Jul 2026 03:08:30 +0800
Message-ID: <20260714191341.690906-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121403_859331_C77D3622 
X-CRM114-Status: UNSURE (   9.72  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1), with 0 being
the default.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml          | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..6173192e31ab2 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,13 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 0
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+
   "#phy-cells":
     const: 1
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
