Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D5E9CCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFo7Rx0pZD8IzHtHsre9zp6c9FSwm0KcALffFAI9G9k=; b=qF2giO7t6Aj/jx
	dSGa9uT90TWPN8FBY16IWxrSmv2tbnSPsJdJzxqLfqQyIegm+/2VeWIuV5vipx4t/YpTDVZzbioGc
	gnXnjg1PgsgOqg9okhZGmqu0rktpfWlMZEbsac5G3xh0FVRwqDVn1uQd1qFohUogIUDa3D48Hs+ak
	9zMeCTIzJ5q9ibw3QkxY3EpY8f5C7EURXnFqwh2Hs0aPzGpxOL5LItXaS32fCGekZdgH8rXvjeiIz
	2TrIpu1bbap6EGiTgucZpr4iUSnVt478dF8Y1YfiBpfUXiJJQVGdYdOacn6OL+aTBCLGTf2DKA4Ct
	daYGNQy02iRLZn23UQ7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkF-00000002O63-0d97;
	Fri, 16 Oct 2026 08:56:55 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkC-00000002O3s-1Jf1
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 08:56:53 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-cc785ed8aacso343431a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 01:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141011; x=1792745811; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4t98YFhToVmXSdqpvYlx+jh33cXkNHD7dPs1AUtblco=;
        b=b2Wr8fHP1/ARpXnQO1CI99PtwGhY5z+RgnlrCkXgys4RaqrO3Vm7d6AKvJU1ZAKMcV
         1YfVrWWWYnnK1KglX1JbYtSk6iS6jy99QXRoQJ+9vgJqIpyCrZVJw00gW5mdJdN0xzN9
         WmJHOZO5T0Lq+tIP79WPkNSwM4TFBGy8ntPgfiumXX9WJlbv5w8VzO3qfOCcJwNFH55w
         V9KIpiVENDVSdmQA7S4J4SfZWyGirTNiYlZCJ1JIIebj1B2XZ0rEoU6t0AwyV61c/Rpp
         UgObuDWdGrwSbJoF/k88467yJWd7NOuh3pfZU2ycQuRmrLJzDo6n3qf9WKqwtkzTJD6/
         VcAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141011; x=1792745811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4t98YFhToVmXSdqpvYlx+jh33cXkNHD7dPs1AUtblco=;
        b=OJhgERGSKCHRf+plNguUq4XH+O/zFev3pG4NVokpjpkMey1S8RLHtfORiSgickq+g7
         JEEgj5dU6mOSW8cVihcJMryuCOIABAyKLK8kEJxp+UCGm4zd1TDJ5rCPjazCk/VM3u01
         kZ8etOH8bHU91BYlLwfd78gcucaAhQK2Q7/FeNMQroA2hUr2oGbCj0gfCYYE+Bgxvu34
         q65LIlARZHjzkOldnPmszAccIG8PYp0ZITBlV7Noy5XelZ2ZSw74HV0mIHIt1NF5KqmA
         wBnBl20rgZmP600AGmgqoYTzvPovYAtOEVg+B+0FJBe8kzizzknQXWFbpqaTFewnlMIe
         46YA==
X-Forwarded-Encrypted: i=1; AKwUvBxvss0Etbtxo0aZN+vYOo+IzXjzyUDvNAvNhnxu3jKFEJkklnM4RfUjQPNaPDd1DC++G+Q0Q+bYyYNRp6asRQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIks9/6HS9Aco0wgWBMFzH+m4x6p0dinVTY48KKlVPtSVNNjvhZ
	wo8SHH2F6WFxPKGP6CNQCtuh+0WzRCoPZaNJMuIAknFLaZnus6UHkBiR
X-Gm-Gg: AYBFou0cUL5ONtZhvz9VFQQEdWXAApAo4hNUhhdcfF6kpTQ9mDRI/RLmESyqNsZQ9sn
	bNU2MH7eJj55p2fVBmqMH6ik4phYeQY5ZTBATL5bH6eumeQdXG/LD+KJg41x7dWGsCGijUCdGK2
	nIIpKmkQzqJKplkP1l57uFcCoylQiOjNCnRPVPPte6mUhg6/pTXdKX5Jw4DvnK/86F3iz+bbSsu
	l1BEooeZZnMrxduHJT9FwgaPXw+spNXnzHDsp5DXOq77Qe3+PPL9eljWzHsjPvWFnmLaM2jFoiD
	r9//Mqgqu9zsNNW9vtAfPufLqZvWfMMJDi3VQ3psekOY8vVo4N1oB1MRDrlz4TrKmP7hxlePXFp
	v3uGPc0GgEk0LV3fZ0tDj7DMxFmXKsEMywvaN2OA+o7nUS2PmCSMMOjM8nDhm/dt7sz+5orOQoX
	6fHVclLHWztxPlSQIWNUKw600+eB8SYnK+7pqf0h1CQKhH3fgsb8tMZghOrRs1wpDEzuF3kQs47
	CHdRfb/W2dRdhJrzavuqKOXHHCI7g==
X-Received: by 2002:a17:902:dac2:b0:2dd:b95a:e1db with SMTP id d9443c01a7336-2e8429a9f89mr307105675ad.3.1792141010736;
        Fri, 16 Oct 2026 01:56:50 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:56:50 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:35 +0800
Subject: [PATCH v5 1/8] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-1-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
In-Reply-To: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
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
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=1157;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=YkXszimtwNYxX/s0QEul4OMgnFGKSMEKdd1MDqGTukk=;
 b=LEId1ZHxKIWdktOliHM+CAcf07+0pEcd9I8lHvqF1BdgteiRACfEYBQ+XTP3tpx89PFHzEumx
 aaGdm4smqtiD2t/AMT7acnwO3RJ+9CO4aUpskESVMlXGNjLOdrzRAUn
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_015652_360890_64E80D47 
X-CRM114-Status: GOOD (  10.49  )
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

A MIPI D-PHY or C-PHY can be a transmitter or a receiver. Some PHY
blocks have one of each and can use them at the same time, so one PHY
node offers two PHYs. The existing cell, PHY_TYPE_DPHY or
PHY_TYPE_CPHY, selects the mode of the whole block, not one of the two
PHYs.

Add PHY_DIRECTION_TX and PHY_DIRECTION_RX for a cell that selects the
transmitter or the receiver. The first user is the Rockchip RK3588 MIPI
DC-PHY, where the transmitter serves a DSI host and the receiver a CSI-2
host.

Suggested-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.kernel.org/r/7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com
Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 include/dt-bindings/phy/phy.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..9ead74d9a172 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -29,4 +29,7 @@
 #define PHY_POL_INVERT		1
 #define PHY_POL_AUTO		2
 
+#define PHY_DIRECTION_TX	0
+#define PHY_DIRECTION_RX	1
+
 #endif /* _DT_BINDINGS_PHY */

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
