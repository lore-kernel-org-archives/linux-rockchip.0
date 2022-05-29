Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 560ABC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 03:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIdwT3SLTKd5G2F7wKyZ8zCKhdsj6i7x86rOACHjKmE=; b=wpFKqaHPlDIjra
	61zuvv6hUetpSqjyBb4w7QAKke7kGFmyWSUrTAwJrqL3wIrq1RRJUaqB3Mw4e4DOc8HIXZumxMG4Q
	ni4Fgabi2w+DiWFUb/qC5RcsH1FfLWuxiFjOZR2r50D+8B2SQ3jXXY0QklJzsX/HMm/aOJ9YVSTdx
	M0LfiMEFwvGMK4xKRErUsLEIYqNcQQYBDlFJT+vaRYB5Qs0QfawEVawJ3NOV9cYwiIGsauQ7zOZIT
	JFTsssdAPm0QLUDS0g+fToDLzEhQh5M/e7Cp4yje4VJQI2VVtFtVe4By4zKg/cccc78iuDhjO9VA7
	nJyE2t0skY8DUc9K+fXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nv9S5-0039ON-Sc; Sun, 29 May 2022 03:18:49 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nv9Rl-0039KD-Jo; Sun, 29 May 2022 03:18:31 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 206263200805;
	Sat, 28 May 2022 23:18:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sat, 28 May 2022 23:18:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1653794307; x=1653880707; bh=bYTkG4XdjS3n2q1tqYSo4fETESSr2TpAok8
	7vNcHK2s=; b=shgOIz+my/9ocJOYuq7E4juL2P7+wprpHW73Ee4bLqIZw6AGFY+
	pCa0BZNidBO7+mmVLrny2I1eB7n4zlQfEC2t0z0GSCuq9YZbc5EHT78LuKXecYJc
	FbxHdPRZqtdHblIYqS8KTG2TaGwhgJG/LqdNBDez5KheTis0GtrVMPhUXpyBAgCW
	oAuGOXQpWEempMNDGZRPLY5Sv1oCG7xXMuNubomyF2N1/GhZZEvs41rCJEQIuIGn
	p7zQkSZ9L3oAbKw29AYmHB08q1gfC627XywSZYmf0y/EBXfTxn1GJcCU9N2v3Ue9
	uMN5GraDRh+p4V4KeDufmDOXkehI6CyGbHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1653794307; x=1653880707; bh=bYTkG4XdjS3n2
	q1tqYSo4fETESSr2TpAok87vNcHK2s=; b=pEJqljiDYjmjwmAY4iDOsE9L5xD3c
	fvR2V+sVdOYtireMUaJ2V5pDy2BtZ39HWmLO/oiRMicSSOn9X2jSIBzxfPuJq5jN
	oDhndcN7204QJPES8q+gcKc0F2Z65cdnenDQovdMnLnIJR6wuHV057pvf/Q/IdCP
	rIfi/oWaoPWenslMJJRBvErOk7Yey6inckUBZ9fSsHAh2LOHeCDNpVlj9+if+oNZ
	28iTpI0cmq73rBl3uOyTG4lnJSYdBW8PruMsaiotsMq19mQvxxWjNCkaPU+/S+Gn
	0vF1ddegIMH47JIK23u0gjZupVnSw+4hg5UFR+m5e0PcHW6WtjdwPFB9A==
X-ME-Sender: <xms:A-aSYp_bK5k1nChFKmjesRzOHlMzIQODpqs2rhG2ScJa1tNgkNumTA>
    <xme:A-aSYtt4hz8UmZpJQHzxGZr6jr1pTNOcZYz32RkACSS0mPPKrg4OroHcdzPt9nTIm
    xrUMMJx0DtKZ7wOOw>
X-ME-Received: <xmr:A-aSYnCPhw4HZNlUeT9DDsbx-aiYX2r3wunPMnMencmmJQdupkF_J-tnwH_5eR2_NbnfpjG-oVHdGsq2-LPRc9kNTwSFE1bRq9E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrkedvgdeikecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvohhmucfh
    ihhtiihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukheqne
    cuggftrfgrthhtvghrnhepudehfedtkefgfeduieelgeegleettdehteefgfeuueegffel
    teeiiefftddutdevnecuffhomhgrihhnpehpihhnvgeigedrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtohhmsehtohhmqdhfihht
    iihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:A-aSYtceuppHkBIagfYXqX68ag-IzIex7wIjgUPDGL7BrRFycowmSQ>
    <xmx:A-aSYuMPbDUiZn34dTANgg7s8KC_A7KEcPMMHJYI6qOmC1dB88tjgw>
    <xmx:A-aSYvlRc9WtKdXO_zHfLRb-DGv7cRHO6B0r8RRCj9eMa9HrGooFMA>
    <xmx:A-aSYov09rhmGRKooaCrwyqO-aSTmhcTySz4tk1JmPmi1K89l4YREg>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 May 2022 23:18:24 -0400 (EDT)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>,
	Ondrej Jirman <x@xff.cz>,
	Martijn Braam <martijn@brixit.nl>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add PinePhone Pro bindings
Date: Sun, 29 May 2022 13:17:04 +1000
Message-Id: <20220529031705.278631-2-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
References: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220528_201829_714105_6FBAFC96 
X-CRM114-Status: UNSURE (   7.61  )
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

Document board compatible names for Pine64 PinePhonePro.

https://wiki.pine64.org/wiki/PinePhone_Pro

Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eece92f83a2d..e6a1b76f9c44 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -489,6 +489,11 @@ properties:
           - const: pine64,pinenote
           - const: rockchip,rk3566
 
+      - description: Pine64 PinePhonePro
+        items:
+          - const: pine64-pinephone-pro
+          - const: rockchip,rk3399
+
       - description: Pine64 Rock64
         items:
           - const: pine64,rock64
-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
