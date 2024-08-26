Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 046A7C5472C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 21:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GhXjuGRWoqHDlWnOh4EoOuMsCQMNq82xBpgU5pxNa8=; b=0OwM997bl9y0fo
	QCjcYlcuEFci7pwdBq/PiWDF6xE8w9Cv5FzKbkYye37U+z7t1/S//zPXJ/6YtHXwoajxkH2rcPqYK
	qpqN4X4VVbhvb/q4FM3mTc6fTasqnwQ0LdPlWsY8guEAURNv/bXr3gdHdu8Zn0Bg7pwlyJQvwTzkw
	J3/+JnHCw/u3uDc5dRFRAf2v3gl6kFRXw8aX9N50jiZzA0k/rMyW1kfairCmNvQjpdoKnHg1XbeeZ
	CUbZS3gt0NvPqthgzNT023oTvsTPRAiHXdN23VUP5II3H0tel9/8lwwQpxLm+2lPt4mA4DQV8GM3S
	zG1744UBh9PVgZIliO6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sigu8-00000008jw9-30pR;
	Mon, 26 Aug 2024 21:05:36 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sigkw-00000008i0z-3oXy
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 20:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To: Date:
 Subject: Cc: To: From: Message-ID; q=dns/txt; s=fe-e1b5cab7be;
 t=1724705762; bh=rBviEIkX4NSS97yuSkuvpa/5bbBsSkrEIl8Rpy757A8=;
 b=jvKNhVyzBp1KI+Qik5JwQyEhAtzwOtah/4OrZheQjAVwj32DpPBQe8OcgqaaSy/lbqqfqmcfw
 x4mDv3wk15+F8QJWPrZcA/9xbBAz46qFFbEHtRD/u98QM5+1gsVh6C7q+0dTBNqkdj4xilnBwtf
 M2sW/g+tGZ1wTIwg1WA3DG5ggTv4nUDEZuDEfsslngPE27Z0/mgGBNUrMT7PqUQR9qMiO8hvVDj
 BfcTFzSTJKCy4BpoCQJcw7AOHrQPmN+TJ/JZ7WdAsgJNnjz3AByehprflTJHWTVnpD/WPzdXOKO
 5w59mc89HUE/WVQvYeHbxvBdRcLyxtLCiFVFSmkkGjJg==
Message-ID: 20240826205538.1066103-4-jonas@kwiboo.se
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/4] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
Date: Mon, 26 Aug 2024 20:55:30 +0000
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826205538.1066103-1-jonas@kwiboo.se>
References: <20240826205538.1066103-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ccebe2e59276ede82034a0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_135607_046496_041EB940 
X-CRM114-Status: UNSURE (   7.98  )
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
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index f08e9f2f5dfc..9e29a5ecc94d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -598,6 +598,11 @@ properties:
           - const: hardkernel,rk3568-odroid-m1
           - const: rockchip,rk3568
 
+      - description: Hardkernel Odroid M1S
+        items:
+          - const: hardkernel,rk3566-odroid-m1s
+          - const: rockchip,rk3566
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
