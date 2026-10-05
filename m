Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6154CA5FCE
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=JwYRFplX3yQkRN
	dSFsPdFhvNqboQ1/g3bp5Vlsk2eKV3Jv8Eo/i+NnmM5tf46AScmRxK265d2+9QsXj3bCaOxQMH51C
	lKLI3+d4Ff5ZzhzRrG0zJsoLHTlwiEgmj6p45B20yPX6bhGtTMOyZusPvovZJGbZgADAjT9VoqSW1
	FKzBHPU2pkXU+Qil29O8ElD9rn+qb7FCAI9WNgiepIi3UiLBd8Nwe9pMVrh1FXJdElNzJhoiN8iIJ
	AG/1gC6PMb595r7nVxjOJ8Sc4iIN0CcDiN8oo5+pV5z/rpYJLZirMSNFHKSphHrH7c9CTrnka4OQF
	OgiODXChkzipzkEKRoRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqvg-0000000HEnP-1H2V;
	Mon, 05 Oct 2026 22:13:04 +0000
Received: from mail-pj2-x06.google.com ([2607:f8b0:4864:39::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqvc-0000000HEl3-1eIP
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:13:03 +0000
Received: by mail-pj2-x06.google.com with SMTP id 98e67ed59e1d1-3964e7720afso744482a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791238379; x=1791843179; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=eje9N0samQoieiDRU1lAn9D0M6E8SVOhWF6Brg8MZtt0XSUVm67sT9kOIeC3ZWP1UL
         vHVYP3anM2rfZ/est0v+RtFeIrBEhEzbCahOB0lSp74RublHO+3sVI0P0MIDcq5+UkiN
         EYCW6/rnGyTIdCr1XPDxgdwOR5PgZRaBC9mh3ovKAiNIJJugJc0BUMVZKeBXvYIcPoST
         RQNhTlSbQ9xyKgQ2glA1tF5coPxZMMcocblaWfG78q7/vH+4S3uljnegzNqWSTyNQY4J
         HAVUeZ1/I7ovYrIvu0f9RwGS05B9qv5ldtp9LBWEfJy/N0c4rqw/5IzQgkbSzvPKDEZ0
         oMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791238379; x=1791843179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=WR1HHcZOmnhYbPYKrGK3TEnStPW0Tj9/cVUlUw92y5VduIBF5gbd+e/n1edJgUZw7g
         Hp8qiYa1nxiD6EZVuY7BteKsWjzsm3SHWmIXI7TIg77etGzdpR7uOLexnBn5bIIGnB6N
         oQ2VibgCPLOjTFL+Q8aMYxgA73ME0FZvyzPgXRFRaIY0/tOmutZZOLvrOoKVn5tnOC1i
         vlwhcGRQWuhXmBykC6QjLt4fMc3UnDJQV6NFQ32hu58Nwx2BLmYQFa0SxjF/feBTldQu
         NgCLxOFejzTZsbT0Riam1bUR4pyFTc5rVnVxL27MV6qZ2p5jc1SMQt3QKCWlpcczXch8
         Gz6A==
X-Forwarded-Encrypted: i=1; AKwUvBz1gmnSBW6skElaVLopXFiqws/73ez+sh9oLjcOT6kEklRynoEQScZLWJRZ1IuPQBm+cpnUjK1aATBlxLbiiA==@lists.infradead.org
X-Gm-Message-State: AFq9FYI3gN7mLX0YbXKv4fTAE5Eng4n2wRfekbEVSzCNqdslW5+mZhEO
	z1QPnyZqAKuXqBuqUwc7e8XMKaVuHyGvlnilex7O0jrSUKGj3QjvCb/K
X-Gm-Gg: AYBFou1cv1gTBLjhHqk8v2y/WMmtVdIqZv/w+5u5JiqAdXKaK10Z0Ie9h3eKRYlFk0n
	A5Z54vbs6Zfqh+0i9joD3/X79h6UzogX2qkUH/1fvppSI+sZr/FtmwMLjTBzPhiS26GcdEYhdhZ
	bOiXnq1n6BUxsPLWTEkzbCa8LEoROJ6PXL8Av4jesM7hxYkUPkhJGq1TQcTzxDffqiWCskPSG0P
	fPUbCc5sOVkYvQzc9ZsBkNjPl5gXfMeD924EJLorTGyn/xGkYMJLe2HVkqQx2lGbaWOr+IkTPXU
	egZNNRr2q78XkJKX7EoF5oOfi6hEQPZzUXg5MtE/oYI32LK6fdCviNLyBI8sVtzgdLLp5xo4OlZ
	IDK5NWjHVp5Gy3pxQe4CE4M3F9gynxVoxf+dBjfnp8E3Ziny9rzfeeuBxHe8ZRTZhR31dct1B+3
	GL7FD1wFSCpAHRHM6dr8049v93FmiuiJXLDMNkjwf+V191Mw00m1G6Z9aI/TNL9+bDFklu
X-Received: by 2002:a17:90b:518d:b0:3a4:b418:94cf with SMTP id 98e67ed59e1d1-3a6cec143d7mr10688007a91.14.1791238379236;
        Mon, 05 Oct 2026 15:12:59 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a8533aba95sm1719425a91.2.2026.10.05.15.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:12:58 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v10 1/2] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Tue,  6 Oct 2026 06:12:28 +0800
Message-ID: <20261005221229.1095843-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005221229.1095843-1-coiaprant@gmail.com>
References: <20261005221229.1095843-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_151301_076308_7D3038A3 
X-CRM114-Status: GOOD (  12.26  )
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
