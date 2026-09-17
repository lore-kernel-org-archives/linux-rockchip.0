Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC305C982D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 20:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqeCpzicayMnlZ14WhfomCPLanACmz1vuk5spmw71Fg=; b=L9KbHHDaoTR6+j
	YiQxfvSC5lNz0WLysg/4/JVKVJ4eO3vGMsnODgKEr3cnJ+Oqram7JXn+kjhuw4+/3Keh3vAmg0wKu
	jyNOj1W9VEhIv4D/e64jhg9Ik801MV0+Z62XiVp2YYBahlCdwzOgoKcUuT+1aKH6/eQXpUglaxkrT
	ssFHCIzrk3NnlFzn36xoVEHMtBj5TPaCBMKpjHPQBZX71pxwpEz2Fe5qaR4fDUErB0v/hGjXh29kh
	2/B3G3M73GMWOkKFUrh2HyJc//Fu3o7VuPN/YekQ3JDwxShoq3lU3864JgDoNy8fdZzvR2o0HU2cY
	CRMXrDCl0CReAcE0v/bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J2E-0000000CTuT-3L3s;
	Thu, 17 Sep 2026 20:48:46 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J2A-0000000CTpD-1mBm
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Sep 2026 20:48:44 +0000
Received: by mail-pj2-x08.google.com with SMTP id 98e67ed59e1d1-38fd9408220so21634a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2026 13:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678122; x=1790282922; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=;
        b=Y15GQ6VzrD0ggjDrRPwiUzE0ctJhFohOVCaawQ3zJOpULxqQMIuP9Fizb1Gyia53BL
         0P6JY9myOFN3oE2RXpGjyuR1Ck3lx1MAELry28xoVPnwfSkZRouMuwq63nDtxddUJJO+
         MRZxFrrt06RJI3Sg86OKn6ijS3hjFrMBB53gVIZ5iN7SzRQtitgwuAzccKUZicz76oV9
         MjiBM0KZFn7n5llpQ/uIPi57gKaHEmcs5Pq/yTlHNuvACeot6GbbYAx3cOwZ+anTDrjN
         2eleoL5/G6jap+OrM8/U4mz2GPeL67tnH/1vfiTFOCeaQkJxMaV4LDyq0tJq+ti2jmcY
         1RjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678122; x=1790282922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=;
        b=SmytUmPXPOQK3TC/nkI5mpy6/aUwM1LFUJ/pV24cSYNPPp4s3yufYL0BtDHZOiWBe2
         saRoLFl8qApye4e5DPTHyo2iUeezooOIxsFEtF6E5UXjP8InUxPAkW8FPjmNz1PrIj1j
         XUYkeNrGre343S+IA+VYlXHLDhI4L5PNSnPbhlKuENLoDa3xs0J9pyxcvFuIQ2CPm+RL
         b5Yat4aMQ3W+pplhbmy4KpZh5WkgLV0CFUTwXnb1gcXseEUgZhVM2Lr1e3r9Zp0YfCsl
         mR1FyUjbD8Z+8NySmndqguJOn4J+WsdRSEUDPVDmiL9DNxVvKtXt3eIXN9r+xw2Vc6IF
         8+yA==
X-Forwarded-Encrypted: i=1; AKwUvBz7c1e1wlCnqaVqaKxHVQW3A3XAyICH0DUcIcL77mbLcS+GnFlewfPge+njgjLg1AXJd//U/slMJEB5RrHXWA==@lists.infradead.org
X-Gm-Message-State: AFuF++mq8ngeRi3kt3dKzFV1uQKzvedT2fYjbe12aUe/+sxZngCYJ0h9
	ZlQk/ng3iRdLd1ymdtmiLDX5e8GL1FMbutc+TdMMKqVyQbjl4hj0aVOA
X-Gm-Gg: AYBFou09VsOHMfSB/GQRqZYR4WOGorePIIpFzFG2FdW4CYUX5TJhmLM1qadkUyzVzeC
	gj56XgQqkDVRIgpzJ+UKex7IS9zqKGa0UDSvo8GL6myxXQOhO/4+UeISRRJYekAu7b1z7EC9KUF
	vcRO3gpPpuMugyxv35w45XomHgkYbsRsepKT1B5L+knzHQWOu8lA1x5HlrNQtible5eOxapGN65
	gQZS0TwwHmyQtdywVOVLvYnZiaGX6ES0KOAQzl0AWvOfwnu3up7fqN0aWVFZLSy6jbm9Ngy4aJb
	fpTlWWqJ0RRAeKIq8lWb7B7lX8ZBNkE9sFmWTF82j4xSb8hSQ1++ow7EQoqvYWJoTEI05DUfn9e
	foVftyJSn8VWtLJnrv+X2RcP9MGOXR0VrdbQNfcFWFH3PMShRi4V6hzs2dTW4VpyZXg5zW6YIMO
	mmA8d22xXBaAfJ/eFF+HDwhs9hH+np6HPBUmS4grKUIxcmKkw+tM1z5oRMeBuVkobFUEGMSA==
X-Received: by 2002:a17:90b:1cc4:b0:39d:f351:8f0c with SMTP id 98e67ed59e1d1-39e54dcb193mr699171a91.13.1789678121557;
        Thu, 17 Sep 2026 13:48:41 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:48:40 -0700 (PDT)
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
Subject: [PATCH net-next v7 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Fri, 18 Sep 2026 04:46:22 +0800
Message-ID: <20260917204624.2427486-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134842_495212_4290A57B 
X-CRM114-Status: UNSURE (   9.81  )
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
