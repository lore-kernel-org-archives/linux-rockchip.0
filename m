Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA071C433E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 16:23:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77F1B212CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 16:23:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77F1B212CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UNAtx4ONlTCGraeq4Wxqh1DVBjM32+jIAzbCaa1lecg=; b=1OExavjxFPoMTKtnGEUS/htcm
	FyQSUghxsy0JITXd1bnWi6P4RoahtC6TUm4EWPQgd2tP8waWxO4ibEWBT/ybqRdYZdbn6f3nun1/5
	L2/xDgDVKko30x32eZ7TsHsHWigChHXwMr+whUpYpYIXKYLqISW2g1CE1HhTpoD7WlOOhGat+u4+8
	C8opzhtJu9iLVrz1hxG/XdSWme6OFDE3QUgyY+fBxoPGrNJtVH+FMUk9XIXMD6+AQkz2UNHyXrJ3M
	zLTKmkNt0w2EgVLd1ggqAtFT2AEyUziXdUVptZcWwmXA23AQo2HuzzLQOFXYn88do2IV4WqpeUTUX
	izy9xPhug==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2ckI-0007QF-HU; Thu, 21 Jan 2021 16:23:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2ckB-0007Nv-K4; Thu, 21 Jan 2021 16:23:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E504E23A22;
 Thu, 21 Jan 2021 16:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611246212;
 bh=vbZk+5NiV+voE7vyxbI+E68xQ2e7BmZr+LUw9f1ff78=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ODBtjb4Chxkm3+oELVFLjOhpiuaUfxuZzk25iisCJctLhez6n1hPE5FlUqy4qiXTO
 YExdAaHRQT49V51naGIPP3zv/YxQuSKpU6ehzbOKGcyddtjErffJ+7lMONDjJc5UYv
 oSaSoJMnzPSHT0X9ILJI1U3MOkKM+XPToUDBWxXyjx9U41lOxyu+SA/oQZH05wm2pW
 JPkkELiOTUlkiGh3+gi2cUXkOZ/q7ZE0Ad31Oy1N9qjP4r6iYRY2NMMMzj/3ChPUeV
 jTkCItxCQNqMSDK9z4oG/mxOzeJv5jv+8/Th6YvOFqYi1+vYyoARQZ9ZLMuLE8FQyF
 ZDnB/qzqymt8w==
Received: by wens.tw (Postfix, from userid 1000)
 id 7C0DD5F839; Fri, 22 Jan 2021 00:23:28 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v4 2/4] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi M4B
Date: Fri, 22 Jan 2021 00:23:19 +0800
Message-Id: <20210121162321.4538-3-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210121162321.4538-1-wens@kernel.org>
References: <20210121162321.4538-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_112336_138869_51E5696B 
X-CRM114-Status: GOOD (  13.04  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Johan Jonker <jbx6244@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
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

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 8a2dd9f1cff2..c3036f95c7bc 100644
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
