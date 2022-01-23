Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2344C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 13:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WsvZDTy9bnz9sQokTIMByUZNm0C1QjtAjt/5GfH5qs=; b=VPKn+S6CYuOFDW
	6Z7boEFzu8wSZkjEiEdVu6vxFmLKE5G6ANez/uNzdG+FReZWflTuY2W+CKd0qcaj+VSroptkmlI9N
	lv93ELdPWaWDXz54q5FQBtriF8JZQpjEozqe4S/oMjnhaXoUvJDN+4lTckfy2SknfuzUJQf4yc0SJ
	kJx1z5PzPrtsMygS6QqIYyWkzvHPBMzOcYmatYG75WGjRvqWZVZHlpLc8XzYD8wjeplOApjXHcUZN
	VVwzKiGlrZkbAUE6acHKEovQjJo+JtIjBAF3sj5EakGl96WoYIGMIxM2GEdcK3iYpkXI+OSrqy6YO
	H2u8Xpx53I/P309LxuBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBdHh-000uSG-6F; Sun, 23 Jan 2022 13:51:57 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBdH9-000uHT-J9; Sun, 23 Jan 2022 13:51:29 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout1.routing.net (Postfix) with ESMTP id C829940177;
 Sun, 23 Jan 2022 13:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1642945881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cp8maleWJkAj3g8Rqy87pKYRY7/YmFrFYofmm6M7tfU=;
 b=rZUsMfTkDgNskC1cunOKZfTFi99yjhL47JXnmLDGS6pskjcUKEnyazJKBsHKHMLB9giDpp
 YwM6J6xT8wE1XY8HckZS5Kgu5rL68FI7lsW1qqnWRlojCQn1GtcEl6ll78DA1Z2y/ghZfv
 qnqjk7nWNbWYtWMaYY2n4Rj+kAtpmEk=
Received: from localhost.localdomain (fttx-pool-80.245.79.232.bambit.de
 [80.245.79.232])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 1A67A406FA;
 Sun, 23 Jan 2022 13:51:21 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: rockchip: Add BananaPi R2 Pro Board
Date: Sun, 23 Jan 2022 14:51:15 +0100
Message-Id: <20220123135116.136846-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220123135116.136846-1-linux@fw-web.de>
References: <20220123135116.136846-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: fd44d46b-3834-4f3f-8039-6be9dbcf7176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_055123_815969_766A8801 
X-CRM114-Status: UNSURE (   8.32  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add Devicetree Binding for Bananapi R2 Pro Board based on rk3568 SoC

Co-developed-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4aed16176434..33d6423fe6c3 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -651,6 +651,11 @@ properties:
           - const: rockchip,rk3568-evb1-v10
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3568 Banana Pi R2 Pro
+        items:
+          - const: rockchip,rk3568-bpi-r2pro
+          - const: rockchip,rk3568
+
 additionalProperties: true
 
 ...
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
