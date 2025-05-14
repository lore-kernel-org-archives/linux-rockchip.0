Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D33EEC3ABD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 08:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rw3bdtME7zwiaitKMUHyE/BXMXFWvQPf3viiI+tjAxo=; b=yckyxa9LXnyhlY
	Ya71BYjaTLgX90HIEvBsP53jNdIQpnlCflwem5xHE4yriK3BlXhkcJ7HKc0xxInzhhSOr9l/Y1Nk1
	7zenXGPlGfZqOGrkyV8a2BHG+e8c4f33K5RsHTmsgB9aKJ9jCPwHYT/pFY8aCLwkMHuH4vsn0RUnt
	NKTgDK/5pYv2YDSkMQXV/ItwAnRbAgEFV+Yz78YQriNBCEsqrccKipOsMPnsx+kLZeidjY2eo07AK
	y1z6Fgk3d6vk2tOGKkC+bAgOddi3Ns3YgugzqgVwOKPB3XwEKd+LP3M6UwU8GKLPDDnvF6qZQIOE/
	XNAc6mSp8cQPqJsRf0IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF78u-0000000ERDc-2x4V;
	Wed, 14 May 2025 08:07:08 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF72D-0000000EPqL-07Mp;
	Wed, 14 May 2025 08:00:15 +0000
X-QQ-mid: esmtpgz12t1747209566td5a1098c
X-QQ-Originating-IP: FI8528WaxG2H3euIWiQn4sbSZe3lWe01+6ZwNSM9swk=
Received: from chainsx-ubuntu-server.lan ( [182.242.225.107])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 14 May 2025 15:59:25 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3460519599123491404
EX-QQ-RecipientCnt: 10
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org
Cc: i@chainsx.cn,
	conor+dt@kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	sfr@canb.auug.org.au,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Sakura Pi RK3308B
Date: Wed, 14 May 2025 15:59:13 +0800
Message-Id: <20250514075914.194651-3-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514075914.194651-1-i@chainsx.cn>
References: <20250514075914.194651-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: M3uTjkO5QXGxU9dBLPLehe6v7aI1+EYgkxS7x8s0VW5KyeTM81Rp6hJs
	L7Y3eiAj+9mZ30tc5UiB1+5xfVWeL2/xN66oiRLANsDS0IqzUZKcVZxA+JvpeKXSr24OQI0
	OXJvfSqQj3Rv21e8EmzF5+PlwG9DpKgSkRvKgG757RZlliVhqDPSCTJrbe2Ff3PQBTNxoKs
	bU2m4jljspO8BJHfBcf4yAZzs9KTAnHYscr0Bh97qsFh8FF/mJ5CjBIbWAsonsQxlBvSZA/
	oimT2V3tX1yH5L8S4QJudLpPNRjDE7AULcHyTFAMPrPdQJyC1K62tcQFP2LFP3TBP+pePLZ
	nsJ1Vrz8YgekZ+jqMOUqngwmdubXg/f5NTd36/beTHyftpcfq3QWWAhhMfHCx9lrBZqcVzd
	zoABRSrZqiO+TLnaJikg/0Sr1Gkw7p7V+MvFJ0CmNhYuhcFKYE9ajhjd7PeA58+VwdBO4y0
	/XElK3rflcmjPlyAbp4NmxyWn46Bnrr9V7WBdWLI614SyDzRBrqQM2pBpA8LWIFVd+5ntL8
	Fnks8yQ+MZAIehJxuxw294pM8FfzUO+IK2uyBfCWVeSlq/WXod8Kp29agsyPUhTG6xCLUA9
	tMKC87I7vy5bhecBnmlEAB5sR4P+LYpCZ7q57jcEB97ZIb/sgTiP4dnzI6S9RbZaBQoaii3
	pNE+geiydvLrtYDyjiYOnAoKdIGsHCrVio+Sti6/bsOn8vBB9shJtExw/hHNtienhr0bFNR
	vBPIo7IQxg1z2cBwlPKw37J1kvrRU2B9bIXOsKa3ypkIQ4T7VHAUbBny152K18xuQ/Rm8Vt
	Mjmuw8+FfyomJn64wZ4p7bDcwjK9+VJKoiY+92uIs9zOOucxxedvQCCCFGUIPbcNUvYl0Gt
	89rx6Gmp+yoQ4b7vRn7RBYSInoHXZ8EjUdKI2oUfv3bog7VQG0y/FZDoDerR47fYlIBXImr
	I0X3BnHWVbYTM9sXgK8W15VeGfTRmdMAupO9tO2pzRshQ734kt7QFIdHYwwsWVFgl4fINWI
	JQKDZBymNzYwGpBa9Zs4YwihpBmWb0YETZQtl2Nq/93caMaxY6gk5wfPllkPs=
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_010013_621400_BBD19E16 
X-CRM114-Status: UNSURE (   7.67  )
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

This patch adds device tree binding support for
Sakura Pi RK3308B, with compatibility for the
Rockchip RK3308 SoC.

Link: https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce

Signed-off-by: Hsun Lai <i@chainsx.cn>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 115c3ca43..c64adc0d0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1109,6 +1109,11 @@ properties:
           - const: rockchip,rk3588-toybrick-x0
           - const: rockchip,rk3588
 
+      - description: Sakura Pi RK3308B
+        items:
+          - const: sakurapi,rk3308-sakurapi-rk3308b
+          - const: rockchip,rk3308
+
       - description: Sinovoip RK3308 Banana Pi P2 Pro
         items:
           - const: sinovoip,rk3308-bpi-p2pro
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
