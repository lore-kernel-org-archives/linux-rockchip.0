Return-Path: <SRS0=K/1+=EY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97641C63777
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 07:18:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1CB7A2223D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 07:18:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="h95xukz3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZw1+P6X"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1CB7A2223D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W0zM0FAqwKT6DmJv1SK6WecFowWf1lWVOZG+PUtJvtw=; b=h95xukz3ld1Wx95SobXWmscsd
	vFxtSkncBixE+jIEcPjmvmSGRcBlcNI7xGpJ4KjTsvl+w4dDDf0huCCX6vqYPt7epIuqJUJ6r4D2g
	gmZKhWL2eXIAJpEn9qsbcJn65wwFk4ypsMzW/BMCOXJ3F4K7atFdkH/rS/h2asq5j2qhZOQTU+24v
	kuR0QANIbpy35CGjVJVwwjD8NMufn32Du/fX9nlXtA7fUf1U0bUjj/Tu36l1lAKdv3lgoLkIW3PHv
	6SOpABg5l4sX87E/jZ+55OmUd2TpnY0QmJg9hXEtP44p32fkvywvBybKWYKsPVmv9j0MWY4mmtkfY
	1JWH4WdzQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfHjE-0005jc-Io; Wed, 18 Nov 2020 07:18:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfHii-0005Xh-5o; Wed, 18 Nov 2020 07:17:38 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DC3E2467D;
 Wed, 18 Nov 2020 07:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605683855;
 bh=q0JIDRhJdDz77Yyth8UbeOSGaE5MbbRHj8XZKD8tXFM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fZw1+P6X2B5zX/qz2dggYW0PIEOQHKQh6EncGn90uPS3Vp6T91KuRtHdujYQdoN7z
 8kmEtUF28L2+jo48we+gE/hjtz1w1tG+Rrxx9cOUZpBcGo5qXpTe4mL7bIcrBHMABv
 /SdjglvbibQ/U5caweKqFEJ2wxkF7i3hqbvW3lpE=
Received: by wens.tw (Postfix, from userid 1000)
 id 894AD5FD69; Wed, 18 Nov 2020 15:17:31 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 2/4] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi M4B
Date: Wed, 18 Nov 2020 15:17:22 +0800
Message-Id: <20201118071724.4866-3-wens@kernel.org>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201118071724.4866-1-wens@kernel.org>
References: <20201118071724.4866-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201118_021736_444467_94118830 
X-CRM114-Status: GOOD (  15.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The NanoPi M4B is a minor revision of the original M4.

The differences against the original Nanopi M4 that are common with the
other M4V2 revision include:

  - microphone header removed
  - power button added
  - recovery button added

Additional changes specific to the M4B:

  - USB 3.0 hub removed; board now has 2x USB 3.0 type-A ports and 2x
    USB 2.0 ports
  - ADB toggle switch added; this changes the top USB 3.0 host port to
    a peripheral port
  - Type-C port no longer supports data or PD
  - WiFi/Bluetooth combo chip switched to AP6256, which supports BT 5.0
    but only 1T1R (down from 2T2R) for WiFi

Add a compatible string for the new board revision.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 37fd456170d2..1c0ec57ba860 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -126,6 +126,7 @@ properties:
           - enum:
               - friendlyarm,nanopc-t4
               - friendlyarm,nanopi-m4
+              - friendlyarm,nanopi-m4b
               - friendlyarm,nanopi-neo4
           - const: rockchip,rk3399
 
-- 
2.29.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
