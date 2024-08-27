Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDF84C54731
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 21:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nW0DFNZ9dM8lTz2LMaOqwsj32uLw0YJ/U7aD7pK3yhk=; b=msXSjoeQwayNck
	GwI0HbM13w1CDDczEUlpmFhhWF+bVcHw/nLYei1vGT2rNB1zf2c0AyBlkLEKOm+st+B4iEY/Lze4r
	+XI6TWatIXoe/vfEts3DwUz0mthpw7YvONNTrNVwNNojpmhsNNAGzJamfgdPzS5Oun61TMYy4zNJi
	YswA3xuLFHFlmeajWUXt09WenlpFFvtJqzna9Ykx0Vn6YS+9hEIPbaPcZPYqUfc8jIt73CNJJrHHY
	6vVECBCKp80TGJapnwPP4cr0LiDxhNtSjvjHKQ0/SOBKpgkZNnxFsPkgrgReOHJK/U4/YeEm7CvL/
	c58LKKiIL3TylxXhG/rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj3c8-0000000Crcb-2hox;
	Tue, 27 Aug 2024 21:20:32 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj3aT-0000000Cr8L-0UqQ
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 21:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1724793523; bh=N+m6VozoSQEDl4c9f4ixFCDyQnruh/fyJbGweefwo+Q=;
 b=uMMhWIDdIxguXtaWryD9G2OORZyT+lQ4M98ZD4ih2UfqxMOCv74lz+qV12qsgE4uh+ukuH3jG
 oAEdxMOOPsek30DqdARyNTQdk5DBob59WZjhjV+mdLuls7MozHx0twb5KrmQPmI+Wv9/mJd4Ski
 oaJ5nowZZt+s5wyB9s9J3skfw91fOzo3gqQaKKGxaovvjA399W3EaeQOqVDzJ4AiZvZONVq01wK
 aEVS8fyfC0+UpRrIJbI0SSbo7Wlq6/voOb0KmFVovJVaYeSsxMcrif8QV5+iSbNY7zhFHhvjX1G
 dWdmuSL5MPqNqSrJiOr0RYetN3dJ2m56LKjAGKf8N7IA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 3/4] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
Date: Tue, 27 Aug 2024 21:18:17 +0000
Message-ID: <20240827211825.1419820-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240827211825.1419820-1-jonas@kwiboo.se>
References: <20240827211825.1419820-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ce42b2ec205819dc6f17b5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_141849_213710_7F21CCC2 
X-CRM114-Status: UNSURE (   8.03  )
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

The Hardkernel ODROID-M1S is a single-board computer based on Rockchip
RK3566 SoC. It features e.g. 4/8 GB LPDDR4 RAM, 64 GB eMMC, SD-card,
GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0.

Add devicetree binding documentation for the Hardkernel ODROID-M1S board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2:
- Remove the redundant rk3566- soc prefix
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 207358b2faf0..1f137a8dc572 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -598,6 +598,11 @@ properties:
           - const: hardkernel,odroid-m1
           - const: rockchip,rk3568
 
+      - description: Hardkernel Odroid M1S
+        items:
+          - const: hardkernel,odroid-m1s
+          - const: rockchip,rk3566
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
