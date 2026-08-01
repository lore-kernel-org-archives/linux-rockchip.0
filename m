Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E20C55178
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 14:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezeeJjS++hB0WMTgfcE9svN/EP/SfGeziHRZpeQSHME=; b=AG54+8QimEiixc
	85LNVwXwHkGf/25EtLJXBNNu5w9z3L4mdAg9cMnbztRtWKJ35zHOqcCbK/lkSGChv8s+zYPzJ9ksE
	v/wBMSbjS0ATiJ/ipWH+uuvaKNujkd5LN+OP3oJVWMmYq+ledsVdZcVVXl2qcbdeo5RYTw4MkCyJK
	6vqEs4GJD90jnV31ux1sMFA4AYgru4T9aOtbQjQIyWn4lezhC43Clk5cSzLsfMzHY6JQn9+GS/AwO
	RZXLkleLJgTnSPLF93CFugF5TuWMMhOY59o5nTN+Z5QZ4/4Yluu9ndoab7mO2trWOuepB5PyHOrfL
	afneuoNK5KTnAVg+dRTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAdW-0000000EjMH-1iXn;
	Sat, 01 Aug 2026 14:24:26 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAdS-0000000EjGl-2aFF
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 14:24:24 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cc80544c74so5203885ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 07:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594262; x=1786199062; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q83Sos7xhYVmpTWu/ghFNGUmMBURB6KpF38DP5+YZjg=;
        b=pfJ6M0ANNPoedGNGUdiTGJtgVg1yXBEvVD/okb1zr6DXfqbprUpAI/a3Ajt7qoWeGQ
         lkoiTn7PR2mAESrF+9CJW0MklWwI3mXVYCZQg5AZ9wBFnziSfewvoUmKRoI9LkBK9f3v
         ZaCRcPpsamisfgGX550jq/jKYo4yGQx/z8ElQBnWKFbrD3AuacgbcqjR3ZSAZPVD+4Rs
         2RjWgqg9Va3xqQ34NnxYaSt4x5/2MRExHpkp0uVTWHcCvQq+Y/Z661xV8BdLRio6Yfhi
         xNrhKxnBoYS/yzNOgShar/th4SmQVOZlo6bSj1aNF66pomROAc5JdU/3/MHMn69q6ICg
         oR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594262; x=1786199062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=q83Sos7xhYVmpTWu/ghFNGUmMBURB6KpF38DP5+YZjg=;
        b=DB8kNY+9kKZXNYWQ8ijgE6FIR1wmtWRHewngYZTQiVinabhcN4FPpZxXrF3b+U5CWR
         uWqIma9iSU1xk8hdawTSE+d6spqf9+RBXZ2VQSTFbvxyjDbpLjlasHpSCvOmT6Wbqg5v
         rcQmFo7VjP3ZG2yL6yGK0fmUA4AAg3/oNeIE3xFauzSY8sM6JA+EAVj7HRXVTgPo9d8D
         ZTnRXYRW3AnzLpkDgQwYtfrzvrZcttuPEm8ijuSGEwreboghQuWBEjmyOYRYUWqRFxm2
         xm6YgxE1VxDEVTHURfeQnoTZSxy7wT8ieGtaXTcOhQZeTRbMdQABEWoRkGO/pjG8qc3U
         Jaxw==
X-Forwarded-Encrypted: i=1; AHgh+Rp6Ev4UMbDrPc09woLphOBoX4Q3bpzI2bV9S2l0g41alq5RQx5BWl3+nG1c9wVUntijPjpj0x+QCr8v7F8Gaw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGYRI9Dn2Re2mqFi3gG68xBCXh/k5kUuOHAxiW/KILb9ZU5Zc+
	rD97AsElh2mXL3jnZNB/zG3QZDdWKQjFdpXsQyVQM3Wh6E0jndqiTD5E
X-Gm-Gg: AR+sD13M8+p/qB1tMlmqzIVaHdhzXMRLpnXcr6jBC132PTACnqXFxQisQF4u9bbiLEg
	k+JrDwEXrBTgBDu6hxxi3yo4B7HDlygCHe8l9sO/pnbLkCXPkqQ5I7WiTQB4p5Ne3Roy1XRSNmD
	E8R3rryJompYcRDKdD1AS+zQ2LhI2EFnewbXPQw4AXqNRWelOGyM8MRLYPBc+b4lARk3/kfFAZv
	p1AGr05ELH6elFe+VpZ4OC6NHn5vZ5Ye7pq9wLkwDgJUpVaGZOqnzRWQ2K+1NqXIrMQg4G06y38
	kTfhL0ikhqUuaj8TsseAe/uaC+KyEL2AxFbLL4xxHnlzv1TkGCNyVvegsGjeTZOA23lq5sYClE+
	1CacJQIw9AyiwKDpiCYuCMiNlkUMeHfS2aw8im7Cxqp1rkiWYKOKjVxlT/BcIVc5NbPcD0YVUn6
	4yO2Qe4o6pYRB0n+o8qgC/moBb3Jhh9KL926o518PVQX8w2BeJWx/jMmY=
X-Received: by 2002:a17:903:234b:b0:2c7:f12d:5d37 with SMTP id d9443c01a7336-2d0521b8488mr34096625ad.17.1785594261862;
        Sat, 01 Aug 2026 07:24:21 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:24:20 -0700 (PDT)
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
Subject: [PATCH v2 10/10] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Sat,  1 Aug 2026 22:22:34 +0800
Message-ID: <20260801142244.679437-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072422_658709_0065DC58 
X-CRM114-Status: GOOD (  10.66  )
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
index 5114e6db7307d..cd5ffae6afd34 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23468,6 +23468,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
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
