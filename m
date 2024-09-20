Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E13DBCF58F1
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 08:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYj9Tg3VuXDvldnj3pIt/bjhcivrPzLYCONt3KaePck=; b=sb2sLFRgrRvpXD
	e7la9bee87v7FDTl3Fg09UJ7ZuZSx8YGsW4NK+SHwI/eZouS3wM5+ZMPjOKkfy9H3e0bOfQEmK7/Q
	7zYiZL+LGhNI0pH1vxul+n/Tubwxvh6A4gY1MlgID59eQcKo+tJoTYkDnNMz5l65eJApn+j2eeA9b
	X9vHf+PSXhUFDieCLbH/C3llfFcZGgtwCe8vEI4F0sPuir4SnbtrDWXLAqR7PG0Q2aHXRqLdXAB6H
	vE/IAkDTXHpSkK07I5/U6vQ+nooa/FdMn1TEJoLV+qOfiJkQa1FQ1j6P+2Tpk6mIAwsQt9FLt/cKV
	/LB3jMooOPjnq+LnKOJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srZGz-0000000Bokd-0mLY;
	Fri, 20 Sep 2024 08:45:53 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srYvB-0000000BkRq-1Brf;
	Fri, 20 Sep 2024 08:23:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=C7BXA
	3vRFQzypGqSRa+Pr7mmHTFBAcqnlbyhQTd3wVU=; b=JBQy5fCd8gJu1BMZYWjBt
	WS1bMgTY2/jGGmacJ0zY+fPrPXMV6GON5OxK5L3649xLNlgpW5sMaWxWCpyPsHxF
	jQ03uu82829tVXG7lj8xlKNvDlL6bQsZu0IFiMdCOAIzNGPRNgNqlcsIlJMVj6dt
	jTdNj0dLTG9hrLj9W8uGQY=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp4 (Coremail) with SMTP id sygvCgDHLl7rMO1mqCVvAw--.49823S2;
	Fri, 20 Sep 2024 16:23:11 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	minhuadotchen@gmail.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 14/15] dt-bindings: display: vop2: Add rk3576 support
Date: Fri, 20 Sep 2024 16:23:02 +0800
Message-ID: <20240920082306.6982-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240920081626.6433-1-andyshrk@163.com>
References: <20240920081626.6433-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: sygvCgDHLl7rMO1mqCVvAw--.49823S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7WrWrKFW5tF18ZFWrKF4rXwb_yoW8Xw1rpa
	93CFyqqrW8GF17X34kGF1rCrs5XFykAF43GFs7tw1xtwsxKrsYgw4agrn8Zr45GFyxAaya
	9F4Sk348A392vrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UZo7NUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g9gXmWX0hs8xwAAsj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_012321_709340_6EA7BD5C 
X-CRM114-Status: UNSURE (   9.70  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Add vop found on rk3576, the main difference between rk3576 and the
previous vop is that each VP has its own interrupt line.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- ordered by soc name
- Add description for newly added interrupt

Changes in v2:
- Add dt bindings

 .../bindings/display/rockchip/rockchip-vop2.yaml    | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306..a44964b6c36a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3576-vop
       - rockchip,rk3588-vop
 
   reg:
@@ -37,10 +38,14 @@ properties:
       - const: gamma-lut
 
   interrupts:
-    maxItems: 1
-    description:
-      The VOP interrupt is shared by several interrupt sources, such as
-      frame start (VSYNC), line flag and other status interrupts.
+    minItems: 1
+    items:
+      - description:
+          vop system interrupt, such as bus error, and vsync for vop version under
+          rk3576.
+      - description:
+          independent interrupts for each video port, such as vsync and other video
+          port related error interrupts.
 
   # See compatible-specific constraints below.
   clocks:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
