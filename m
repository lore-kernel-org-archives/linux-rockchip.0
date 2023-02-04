Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BDC4C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 08:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ikm8NjuTXwoBJut83c2O9TZ/JIl5ide2GKUvA0mreA=; b=DbiE179Is46HDA
	EAr/LWM43UTHi38kwyDeMY2UCzcztLDxH75h1lA+pbtLl64gWbVg8al+N5KlTXk3hAf0cXrocubWJ
	A08bkaosrhZODOSq/qbqNLH4cb+3VgTZ+t7VSQpo+7Vh5HmNTmCdtt72CFEefWutLsVcvUi9xRrpE
	s3xM4a84/2FlIIheblkKffYBA5FKHzRf2HKvfKoJmTmta7P8WHiNpa/vEcz4r3tnJAKB724zTrlfc
	Y2RAblS+xPAE0P9Bi5XHkTMf7JrP8Kgnsn6AtUjn/h/V87x02gRM0iDBpYuzAwcAkP8YzbQmOZknP
	87XPHREBj5SqHj23JnwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEEH-004kQo-5d; Sat, 04 Feb 2023 08:49:01 +0000
Received: from smtp-out2.suse.de ([2001:67c:2178:6::1d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEDj-004kGX-6J; Sat, 04 Feb 2023 08:48:29 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 874515D656;
	Sat,  4 Feb 2023 08:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1675500504; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=V5b1kCfDGCU5YcLqwmfOEQh2ID5lw/xCgrao4KcPQ+Q=;
	b=L541wiwkzTIVzs0gseWewF1wgmx9zlLPdqWbiM42I5YTJ/UPglAmk/XHOh3Gbvx1OokdQl
	eCflQA6XXnSpEUeZXp36IQ4YrHNqf920jUoL3PnsoriM0tmB1TybzT/nWqgzkFMiTsHYZL
	/wxQDqPZhdQkik7AMvL100KhZFtBq3A=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 4498C133F5;
	Sat,  4 Feb 2023 08:48:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id UOkpBtcb3mMKLAAAMHmgww
	(envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:23 +0000
From: Qu Wenruo <wqu@suse.com>
To: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: sebastian.reichel@collabora.com,
	heiko@sntech.de
Subject: [PATCH RFC 2/5] dt-bindings: pci: controller: add pcie controller binding for RK3588
Date: Sat,  4 Feb 2023 16:47:59 +0800
Message-Id: <fe221481f4df1b552183648489a02ab5ac3216e6.1675498628.git.wqu@suse.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675498628.git.wqu@suse.com>
References: <cover.1675498628.git.wqu@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_004827_397459_DC0EFAD9 
X-CRM114-Status: UNSURE (   9.28  )
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

All the properties are the same with RK3568 PCIE controllers, and in
fact the driver can also be reused between RK3568 and RK3588
PCIE controllers.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 2be72ae1169f..473c90a163b1 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -21,8 +21,9 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - const: rockchip,rk3568-pcie
+    enum:
+      - rockchip,rk3568-pcie
+      - rockchip,rk3588-pcie
 
   reg:
     items:
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
