Return-Path: <SRS0=uU3o=GJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D47C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:46:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6AE842311A
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:46:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6AE842311A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OIA16z+O/RWri06YE9191I6LYqu8w9rT7yPdcQJPt94=; b=gNG9cvJsiXKJH5alngPBJYMml
	YDxKEEEVRKGwYumYwnLZpuZcUE+8ilLLfueBMpzfBaS9j81ozGyDzOZmtGDaAtsBfowwSjyyAGeMY
	tTFDUwMB1jq0Nh7Snu2AS4xsQV3vIXGjl+wdNO58W3tvG/50rRsvzazY8JuVQKAzGm6sVIQzWT6mF
	CMB516u3QQOnRrBEZz69YyuK3H4a4SL697EPWooFfmmvC6+a/8Sa5qkp9y7x5udqkdkpBqCg9Wjry
	DahAB8KDL8/zPzW3nY89FlbMdAoL9gXVX43WOoR53v1o2UT8/z5Abe0cVPdmk/Jn/a7ktX1MxjQEB
	TmALbIQ1w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kx996-0000ms-RD; Wed, 06 Jan 2021 13:46:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx98t-0000gM-Og; Wed, 06 Jan 2021 13:46:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6BE6D2311E;
 Wed,  6 Jan 2021 13:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609940786;
 bh=tYKdxArNM4nHAHfgzQ+s9wREa9C4OBkvvuMWxCIRM50=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d8OlBfLIAVBEcTXbyTmWAbDjrXox/N/ncOzpWyUyxwAr7m1JZ1rAwvQ+mIkGBT/L4
 cuYC6eqbEZQKw/lYye7CNXjJ7TovOPnGeBiWlUCccC0dLtvxht861vvQBWLyAvgg+E
 80NYRIIoUDu/3Sn/XbhFEgAHgXL8y9HiBQ4qLOwbyUeTctqDa3bp8BLd3fQuMf6YPq
 hMRJSTXD9i7XLhWNJ9sXfFdmd07LDYCdCX9rG7Jr8/1C2BGpQjg3N1shbDrDJ6rodp
 fTXkkRFuZC2OsvbGeSR+rMdRtoYPxQ3nEb3JXSzChmK95SZ9zOTwbhoe4pojbOCEZs
 7tDgGqtoSwPrw==
Received: by wens.tw (Postfix, from userid 1000)
 id 63E3D5FBBF; Wed,  6 Jan 2021 21:46:24 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 2/4] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi M4B
Date: Wed,  6 Jan 2021 21:46:15 +0800
Message-Id: <20210106134617.391-3-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210106134617.391-1-wens@kernel.org>
References: <20210106134617.391-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210106_084627_916876_8843B907 
X-CRM114-Status: GOOD (  13.21  )
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
index ef4544ad6f82..773fd4c531ed 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -132,6 +132,7 @@ properties:
           - enum:
               - friendlyarm,nanopc-t4
               - friendlyarm,nanopi-m4
+              - friendlyarm,nanopi-m4b
               - friendlyarm,nanopi-neo4
           - const: rockchip,rk3399
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
