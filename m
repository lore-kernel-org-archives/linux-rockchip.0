Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A554C1B08C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 16:41:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA752613C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 16:41:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EA752613C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d+5CZn1MGjpBGDfcWs3qP94cDlO9uMSX2YR+ypsZAIc=; b=LSc3mfT/DZEhaP
	bm068cDo004L9KcUNHedfCHQxlSe70mxB2HK1vu8V67ilyX6FNryCx9xTpg2A9HZ0WR6bIJuyhIdd
	gdQUdPoQTtoTWYuobNsgJMQ35DsaMW6BJaXgODuxzyny5+T6SMFs5oqF7yMFvvdU4zqpbyrgiFt/X
	Zc8vOR9BZfIvEVOcKb805b3mgXnZwYLcUo72GdFQBfdi/8VA8/imCG0HrSvuORAqc1HzwnAnsX6ah
	k0zrn4q7vvCs46jtKAPf+YAeQTteBh6Y10YFHpI29MACRAXgbiEQJ/T8fyYpjf5vHhp0qe3NkK+9r
	0OFk3EpmX7re3TIlsEBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m44Qh-001Rla-Lz; Thu, 15 Jul 2021 16:41:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m44QP-001Ret-6z; Thu, 15 Jul 2021 16:41:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D71EB6128D;
 Thu, 15 Jul 2021 16:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626367284;
 bh=uyg8T9TNPb3ezXODwBGeW2rhMyNTLnpO4b7LmIATlXo=;
 h=From:To:Cc:Subject:Date:From;
 b=WZWj9S+0r0s5f8KR65OVvi2f/czleiyx7mCnQgjV7WqZI6sgLmbuWxvhAKiqqOTQS
 aMVLWUrias2HMFeqT6vj4biVRCDC/HT9zpHzz+TtJg9nzvQRn3Gc8lySV4nObm4T0R
 wSC7KEW4gtUFYYIR8P9qUNGhIgVah0HbXUt1qOQhhg4UQ38HY0mOJv8ocL2xbnPc42
 schfN58MgVU/9owMT1mcf7ESoJHU99cDl10XDc1HrGT2QrLk3zQgkZH3vb1NlyhIFj
 NiqIMmJYgXL99IsBVcdIzO6NACbUdBlBYlQHVI8JrMV/1vNe35zGSV9GNi+605HG5E
 ioGLxNKG1CuwQ==
From: matthias.bgg@kernel.org
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Matthias Brugger <mbrugger@suse.com>, devicetree@vger.kernel.org,
 Simon South <simon@simonsouth.net>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Guillaume Gardet <guillaume.gardet@arm.com>, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Disable CDN DP on Pinebook Pro
Date: Thu, 15 Jul 2021 18:41:01 +0200
Message-Id: <20210715164101.11486-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_094125_337320_B1F91A43 
X-CRM114-Status: UNSURE (   8.51  )
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

From: Matthias Brugger <mbrugger@suse.com>

The CDN DP needs a PHY and a extcon to work correctly. But no extcon is
provided by the device-tree, which leads to an error:
cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
cdn-dp: probe of fec00000.dp failed with error -22

Disable the CDN DP to make graphic work on the Pinebook Pro.

Reported-by: Guillaume Gardet <guillaume.gardet@arm.com>
Signed-off-by: Matthias Brugger <mbrugger@suse.com>

---

 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 2b5f001ff4a6..9e5d07f5712e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -385,10 +385,6 @@ mains_charger: dc-charger {
 	};
 };
 
-&cdn_dp {
-	status = "okay";
-};
-
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_b>;
 };
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
