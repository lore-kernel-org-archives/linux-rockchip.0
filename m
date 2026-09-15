Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A283C88E75
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqeCpzicayMnlZ14WhfomCPLanACmz1vuk5spmw71Fg=; b=aVFnrviSojkODu
	ZyBvNeWs3Rh3lRJ6KePV2Sx6jmOFjzEt7nwbqpFMIeirx2Fc+Ot+oq92jRx/F4LXsU61No0S8fRxy
	IGu0vDZRtwOiI59jNbkIZIDn7H7E1/W7YsD1RX9KAMe+eW59wI9VBFGYjAtJOVXNDURbC3Tgqkk/H
	Ncfgbw95cZ3VYHH6qitEXJtdZCblPIqck27CVRZvT9L5PSNFRkEti7j1RH0km1LIZPYDHdAWdvQbT
	eHTknrIUMpscDlfiq612xvM58gpL6+sh4Ya2TMGin6734mlz93ww5kREQ4r1AXoW9uAJitzt/10OG
	XqrwWkGq3zIBF3qyp/6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SSJ-00000006ZAF-0HwG;
	Tue, 15 Sep 2026 12:40:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SSG-00000006Z5U-3Aa9
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 12:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=; b=SBkh/VQ6bod6bMGssgL/88K9nP
	lE19aSe0KB533GotMdKYFuercD1/dt1+GLhwx2TkVrL23AEx4Ev1vmZ+bbTrjtZ3YI+fst3vSnz8u
	2ZKy3ozVtjvKz4tUPL92rsuIO+L6S+ggWOJaEIKIa4WmJyeTVliUCz28vQImZyf4OQrvD+apzlD5W
	lCUDbLoYIEZlvNaka6AtC3KocBuGSUHKxWQGdkjFCUKHtVpNUmsqTLiXU+4Pbm6jOZEaB4zeyU5Qw
	rY54ghfXgvb69bU6SETeSKnw6nPHI3WXZomGmAbegwR9HCOE0e4FWVW60vqcCYxLpq0qUXam0IBex
	FcLBcK9A==;
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6SSA-00000006kbF-0e8S
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:40:06 +0000
Received: by mail-pj2-x01.google.com with SMTP id 98e67ed59e1d1-3989fdf58bcso265597a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789476000; x=1790080800; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=;
        b=k7TTV+We8fMLNu+BfsZX6+rIVnPxSphz+Q4UfFfOWPsjdAgqTBqyMduIoIpRmeHtuA
         I1XJH22TdkSz8HkbqoXWlk8DCOBAiR1qRXX8YhV+AJYUrXKH18tWrpv3HMGBjM0c483M
         S82RrLQ3Bi9ebfVmRTMahyvHyDrvhYGcLXtpLU7JKyFpsu6Mvw2YosMBKdLhvhZALmjg
         Kjsiy2ewErpgbkH1JQ6hpwM9EoGahoBT35vnaZfcTPvXM63ZISPH+vpfvMxM11yL5Ynu
         6S/89pfqc/Kf8rYnA3O82Pzr03ldSkOgemCScsWSmbn52C/kjMBZoaXkdvBoRxw/WTEl
         qUDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789476000; x=1790080800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=;
        b=26U1hNOqkmBPcpPE0eCrTJ53ccWc1BAVlJkx0aXMb6f+Tg/UDyLJJPadAbTb53sWX7
         p/EKeFCHFu2zO1tRaHRbLLRQo7aaFxJZnJD+wbTszn0Ozmbhay71z89zknNwg/BuJ4up
         Aa7X13YA73f99oViltNo5Ro8HJBjzk+4yVBtjsUABc56f5GHTVS8eKx/CVkrYflSW3VD
         wJlZifcU2dXbRskLlduF1loBWN58u+Y7qDX8NuGqG5d1AHzZF2CyL/EYrGiCEdh0A0n6
         JI8u4JDULJ5AO/eHxZOxIfDtXcfJvFWLsexx6jlrxdYpvU1l90/cKuur+3fdW0J1BvxB
         OkpA==
X-Forwarded-Encrypted: i=1; AKwUvBw5ZJlf72X0xe9Bp7rS012cRzwXhYyXmnad5xD7Ls6NZCnrbYZQ0lxUW5hXrsc9x7lRaKNUcvIKkrnclcnFHA==@lists.infradead.org
X-Gm-Message-State: AFuF++m0sfivzDZrE8VQJ3yi9IwUTXsXYjE3/R5C31PwuOYNa5jTj8rS
	ZsO6XyENvCbDEOV4xqE9sZ460u/DiLP61VqhKRnfHq10kj7Vx8iyGUOF
X-Gm-Gg: AYBFou35ekyt5yCKFWvVR+0qA8cf4g+smPbxz3qihm9w99qIAr7hjvmc5doOJkGMQnL
	o9Wo0ymU1hlE2thX8i6Ulkw2AcksqPZfr5mftIltJbJ0DgYvkXIE1RQ6v0nir63eiOEN7lYMfoN
	fQDJuEWznlqKSaKW57qnCGERUlDedxw5rknewbKf76AY9zj71m1cESMgbzVI26C9FX04W4gQAiD
	dxCfSRLrZO2LOHomud3iCW9kyHubsbc1EIg3FCrRCx7FdNzDRDJU+rXua1AUxMJ/jMaKUoOmNpK
	NlCsvMyBWEmaezWDGN9qvUrQn0nFlKY2mJLESJvwNGfJanKJMnqRUK48AzE/1kB8/FdUJLwO36Z
	EpAPZKwo8KcbgWHOc/cDvjv9F2dxHCnvouAcznwZfVgQ6bOg1IP3LRVLGZSPRaq1XIxqI3sAYO8
	L7gKiW+KbIjCOTljV3ifIUs1E836t30rB9pJlo4Ts+kR7DX9gAfN6EdCCM0988/kK9yyG3EtQ=
X-Received: by 2002:a17:90b:314c:b0:398:9bd3:d6d6 with SMTP id 98e67ed59e1d1-39dfe1901e4mr3823167a91.16.1789476000343;
        Tue, 15 Sep 2026 05:40:00 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:39:58 -0700 (PDT)
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
Subject: [PATCH net-next v6 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Tue, 15 Sep 2026 20:38:00 +0800
Message-ID: <20260915123802.1561724-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_134002_549272_41AC9816 
X-CRM114-Status: GOOD (  10.88  )
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
