Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0770C79FA0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 15:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=NYOpacz/uESlQX
	rTb3QOwxT5R1XFpGuOJXjDd0MoxNx8IgWyYvvI6UxDr39+WVajQnsFLlcJlS2HTnXezGTep8kfjNc
	70yaKHlTLnVATMwcFz5eWitugKi0oHn8Kk/k3WXU/X2oyVml9zirHRmLr3yUO+TfJ+9k3a0etcSJs
	nTx8li0cf8aOunM/x4VOM2w6ZBFxP7sJF20WB8NyHpoVDxl8KB6DPJMCX/cprsOtjgxXOYo6Juwvf
	1eFln/ztv41Z4rkbrh1GhJJvZbQvZX/Gro9wuMMKLaQcs3Yvj1uD1FFB+08Yaz58mxhCqyxJjP8tN
	XaxwCXlrd8fQyNR1NROQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bQv-00000007C2V-1uFk;
	Mon, 07 Sep 2026 15:38:57 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bQp-00000007ByV-34Qm
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 15:38:56 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-399213ef56cso1810101a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 08:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795531; x=1789400331; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=WU/u0l3vc2QRtnmU1V/aB+hVYikvU3xoX6hMlZ4/89YeVTjNj5R3S6IgUWPcIDpQxH
         D4ZEd471HMP3fSTCR+JXwv3xeuf9xYoxSf6z/yiMzxJI0qF3DfKmt2TN7IIGjnyR7Tyv
         irbTVlWLmIlCaVbGpOFK9vXEtlmda02TH9RtBhiNwWcaeII6syItYE9stfF40LmQr2c1
         be7QVghQJLOFPvQ/HTtsH8x9fPXJqVVdpoHR8w+Id1/otzYZ8EptM0djC8q9+Obca7It
         6fojA1a0XsqqdU6QKdlJ9bU9GAJLHcSCbuUBQkJsUw52fZp3c30LC8yq5uou1bu0525W
         zN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795531; x=1789400331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=oO55h/5yPReOl9iK2ajXIItM5g/yGq5Vvxohn4toIHEgVb7DuAyODUaXxMZ/3GPqve
         MwHcWbuP4GUP0gv6ki1rlX6eTgvwhGy8oGLc57g+DZBRj9LJbQlzFbhT8KYdcsE62Lkg
         wru6LZVGtzyX8k1l82t3rPylTHMbUr6Y58i8V3sfnhqIzlb9lz/4uwNoowMsKFImbZNu
         ulRr4mn+hc5QwXYB71n0VxzdgdUFKiVdZwTAXw2rs5+xE/4mByW1au51EFPJGQNmSEew
         Wt4GpT9yNVacl/rS7rFIcorpQWZZ8Br7J6asfc8OEBUWuDeByfUDzIb6VmWOnv/LqetK
         0pYQ==
X-Forwarded-Encrypted: i=1; AKwUvBztp+g2DNbY2m/aSpsz52vUGsWmM6aZ1oaWiBzEGTgJYha5B0dd2qCfAQ3b947NsvQ8ANUsdjNybUUQs3jYbw==@lists.infradead.org
X-Gm-Message-State: AFuF++n+RloGlETO/fZtOpkp7r3IrOTjA+jOTpWgWmRH/3k/f+G+Qj5f
	i1i61nz2+Khl5HDPmDQ7sAyUOCz1/3Oh3FOm6Qxkpzbpibuw4YyiIu12
X-Gm-Gg: AYBFou0zQgeYvo3DoyQALyGsoFi9V1Sj+Wm0mlA2sJQ1gbq/AbAfyWHgFcsQQX+yqkV
	CYbhUwVQP+agZ5TMMVd5SiH3znEgo5YtXwRgWdy2eJS7OYiOjqop3YHRwcqVlDKvSEhimO0wMji
	MG6c10WpT/ev+ATcpr+JuGRLQdfJkUbeyZS+gIDQ8IbOSd/1VlF6G92HAkH3kj2jRyz+5RD4yOa
	fssGR43Kda296YBkof4YCItIPZDHSNXutuDzDRrV7OlQsJkEN2U5HZgRWfW0YR7FgSe0i8GfRtT
	H5lPtrM5jD2Tmj+v4Y1FqG/dItg2/KMh07fioEMdc0+iItDtEpOnR3a+OwA00fpR6fGqxgWm7Bf
	ydgkqPVUN1rekKFT/3oZ8McKyigAcU58QnmxPUh31YMbbUeGprtP6+q2nrecC6PRYwwUaUmV+1r
	UhjAd8o4RNyudhueocN4abQo94ScqNh3RenUSqYluJ3V/Uol6SMDWAn1qrzJQ=
X-Received: by 2002:a17:90b:2ccf:b0:398:a2a3:b631 with SMTP id 98e67ed59e1d1-39b262aaf3dmr37885553a91.19.1788795530498;
        Mon, 07 Sep 2026 08:38:50 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:38:50 -0700 (PDT)
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
Subject: [PATCH net-next v4 02/10] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Mon,  7 Sep 2026 23:37:05 +0800
Message-ID: <20260907153713.2572547-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083854_249421_6B410FA5 
X-CRM114-Status: GOOD (  13.41  )
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
