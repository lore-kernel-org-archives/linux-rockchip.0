Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E65C982DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqeCpzicayMnlZ14WhfomCPLanACmz1vuk5spmw71Fg=; b=X2sYZDrPn018uo
	uGbzNXQ+UTfY3EX87J8HjEsh8N/99RAD44Q8Y2Ls1Cf5qA94+oVFA5cNdnZl7rvvkA5cL9vdg4A2Q
	0iaiysy+uIWtc7au++XAHRXrkqxvRC52miVzzMoVcmz2ifK1nMV8aLQFWyGAfSHlpF4uwVktGeR2V
	N95Vv5kGLhKZpfXYrcUNiD6YpfdWDmwhOnE7sxV64oHae/WxcoaAsJX81pdxLgV6j9ry9o/TTntSA
	YnsEO1UThaws/LQbKaiY87UunbrPJ3v860+S69/tCSLOm3Qg9ESoOuC5dqgnds6DoUQ/EhCYnWWxY
	FL06hRtsU1oY20KbHnLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uZC-0000000GI71-1F8m;
	Sat, 19 Sep 2026 12:53:18 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uZ7-0000000GI1y-1xvf
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:53:15 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc1631a57d2so1062862a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822393; x=1790427193; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=;
        b=M1oy2gCc6/vPGJa4ziX6lcoyN16fAm/0zRxW656npnoL+VVXN7WDq74ZyPFtkGOJ52
         Kf09COI77W6oPNE9nqxkYQ1xIMV8P2XUc9ZJbqw56+cb7ek40J7Wda1FE0BlTJViBx+M
         Fkot3mEhViXu2cheMqsCX3lx+HI2FWQSYMYnbeFHWHFO0IYi3B8ZUXjNMwOMuU2yl89Z
         lVcsGiqsctLXS6V6mj14DFV2eaoBVom1Xb5DTY9D1yonrvQ+uyDJkD8WWz/pUvqmHrNW
         x+GlrgmNe9oidsI+j2Jf539IFtRJOyvBZ0lkDqptmYaxylwYJqM1mY34On5qBUfub9Nx
         XrZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822393; x=1790427193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=;
        b=si0IhGpYx0tHMMJ7fzueKJQkRLcSu6BEINq1YQQ4F3f2VBgqaditA9BLJsJR7J56AH
         YpzAPWJxneH89yJsg4o6CNYYZzsgymxGtWHIYI/UEjqiZSoTmYprHnBmpISNm7gCOZYl
         EP0Hc/dZyd7qruzR0ejWo4JLnPlYazc+SxTGL32i+th2bWxQVYavhDYpQoVLOT0giqBY
         exFz9T62Lm/Y/m7XiJ3PcLCBVN7lbY8x4+IDh3mYEsKkczmJtDEamQkWwJLpTqIcAtVj
         hAvGq0W0m7AYhVT2u4/p8X07zHghjaqv8LluWTzA7zgTB2r+phmALcCUD1wN6HxiRPP+
         BFvQ==
X-Forwarded-Encrypted: i=1; AKwUvBxyqh4kb9rByacXbGDhqyMQC/Ll/kONAuiwyHk5Vdro1h6xVPR4P65+y1rv4gDOHLNxTnf8pHTXkovxVWsP1Q==@lists.infradead.org
X-Gm-Message-State: AFuF++l1arFIhPrkiflJDa/os2J823KfmkXXKFFeWBALbfaeLykBgHUQ
	JiyIQlWedCAz12inG8f2357QKWplJdVD3ZFYQKUs7jDy+meolT5elNY5
X-Gm-Gg: AYBFou0IUEkMViF0RiSio0/EUZR8JrudY9jvJGkIPY1VI//5kYrTKgtYq8OCu156D+B
	xC/aTtbNX+buEBtAChD1RKsT+yu2TISXnlLsmxf5GI2ka7gAYjRJeOns1B8wljQQtmRojEQDSMp
	ID/iUQ63Dub7xRLhWDOc10F5nXQ8UOacBAsAoWot3MrinNEqwil8iyz011H3BkHCxXkooMt/uuj
	BFgOvauFaUT2/3caf97UCABJqP/sMMtKc/sI1p6qRUzgZP8sMwAOazEGzWa/Ist5CiY0oODm9Hr
	T+4S6dlWrNKBf5yD9UcBHkwWy/XOX7T3wyQX902UClluIIBLqRQWgxPcMs4FRqHZE2jWM4YELD9
	o1ltujFrgmreCsfdQfIMRbxbvQ/KIC9kXfKb7xab6dkzZARhj6B5E8NnHSsExedu77/XP6L5++d
	RpRpOCZewYhpuZYXic3zaBEoj8DAekMwLgFLQu1pWMYoLHVblvyxCKvkxwJ44tAb7GsU7Pyg==
X-Received: by 2002:a05:6a00:1796:b0:874:706d:8573 with SMTP id d2e1a72fcca58-874ddef6806mr9062175b3a.27.1789822392717;
        Sat, 19 Sep 2026 05:53:12 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:53:11 -0700 (PDT)
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
Subject: [PATCH net-next v8 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Sat, 19 Sep 2026 20:51:18 +0800
Message-ID: <20260919125119.2107089-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055313_570465_AC075F5E 
X-CRM114-Status: GOOD (  10.70  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3b2eb2a7a89a8..f53a519da6298 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23739,6 +23739,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
