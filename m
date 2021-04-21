Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D696C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:04:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C530613B7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:04:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C530613B7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0XTeTXEya1HGCg0BQwrpk4vAtgcmJRZUMhmi22iOM2o=; b=MbqhhOFrKo4aq2qAuwG98xQiC
	dUMz/KP4dptftnn0AdvmFpFwp31iwXkEDi/Wz5FRU8tsB5z7Xt54RgogBkSoiioLo8c5B3Bh0Mb7n
	uLjKhvpJDCoULe6ewXzhDz3Ker1oA7xoSCq5/2YueQdXFPZoO2cQ7wq1H/3y6TX/tu6lsrtJkwh6O
	880l6aow/z3IpfKrWT+AJ9r0k8HXdycNfZzm9xIVPSKeH6TXz+j/KuBhoHeXn6qsetaSsHoEd51x9
	yczv3mMe4yVy0hNx1eRB0/n409whBLZFLhooPHzq4vtHCIfSEnu549p/PbRO00yPH7HKCbQ1CYxIS
	zurtkIaEg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZK11-00FCDQ-I6; Wed, 21 Apr 2021 21:04:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZK0v-00FCC2-Dz
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 21:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=CTOQwg+97kZmtmR6jrIlCQOLnfDsywqLt+lGqFOZpY8=; b=TzUIU1CQRCCSn0DgalufZppccR
 HFOxcb3ME8rpcrUyLPOByCzgQyXqUJHtAl548EYeqTNRk9QPYmAyIehI4x4Ln+EU+tM7lrzQt+Xsx
 m609D8XORUVCGUYrktgAus4SF8YjhdX9DDXEB5E3pM3+7OFcwE0brawpLHNDsKs7YGiizeddEprs8
 tvQyrt6j5yODAoox4v/VTetWvpYyvQZavgfRag2LwJImhaTadsjm94O6TNKBXd2JwfrMJN5Bc6a7B
 0N+RW03hjk3+5g9WK1uHNDifGxWvE7QZdNUl0fWIhpr5smRSr+CihNQGAcB1KmW7HEMXvPa7UqkWm
 FY5t0pyg==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZK0s-00DBzC-Vg
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 21:04:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 508A71F4261F
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Joseph Chen <chenjh@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH 2/3] dt-bindings: regulator: Add support for TCS4525
Date: Wed, 21 Apr 2021 18:03:37 -0300
Message-Id: <20210421210338.43819-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210421210338.43819-1-ezequiel@collabora.com>
References: <20210421210338.43819-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_140359_173511_021E3E57 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add a compatible string to support TCS4525/TCS4526 devices,
which are compatible with Fairchild FAN53555 regulators.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 Documentation/devicetree/bindings/regulator/fan53555.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/fan53555.txt b/Documentation/devicetree/bindings/regulator/fan53555.txt
index e7fc045281d1..013f096ac0aa 100644
--- a/Documentation/devicetree/bindings/regulator/fan53555.txt
+++ b/Documentation/devicetree/bindings/regulator/fan53555.txt
@@ -1,8 +1,8 @@
 Binding for Fairchild FAN53555 regulators
 
 Required properties:
-  - compatible: one of "fcs,fan53555", "fcs,fan53526", "silergy,syr827" or
-		"silergy,syr828"
+  - compatible: one of "fcs,fan53555", "fcs,fan53526", "silergy,syr827",
+		"silergy,syr828" or "tcs,tcs4525".
   - reg: I2C address
 
 Optional properties:
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
