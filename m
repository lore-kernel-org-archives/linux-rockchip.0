Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF7CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 05:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OZAS0d/0sQvYqpcYsNqHgXTLZSDhTAZthbOCjspy33Q=; b=QG0S8nKYAC4VmUp/famlx6OvRG
	LzFaUTbnGAK6tah42HPheebHCwb5CREK+nM6UFvEJpmuY3r39r2ETbk0VehnS+Kg0X3+Nc8Bymb2R
	e+uCd5J0pCE9LlcLZsb+LUyf/Ub7ECIhyMta6e/awsdgY7n86yD09cETlUH3F6WFvl11df3c2CV4u
	5yYAWH4R8TqdrTRIh86HFfqtloe6UbC6kd20jsF8UmzH+syKqxcbdtEyZPlFCqfo0klrIV+7jqn17
	H5K90F66vicFNX7BtZ1BoU4abSOYtXWNAlylD3NQpyksDnfqiXW6snPpCNv94m2TjRl167MengTAh
	wkTudBCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o796x-002x0W-Jr; Fri, 01 Jul 2022 05:22:35 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o796u-002x07-D0
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 05:22:33 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 3D2AA5C0084;
	Fri,  1 Jul 2022 01:22:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 01 Jul 2022 01:22:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656652948; x=1656739348; bh=xupKOXu9Wy
	6eOhZr6xO1GqLz9Qo5947UOVv/tG8j8XU=; b=blQ0qr/ZHM2tZF4cNVBG+J6MzI
	lF2Rg2dAJRV6DTscyz6Nv2PpE08hIzKodsqCICtSEWF7cocYRL+Ftj1Gy+Q3ke35
	RqLWrkvgZTdKJOLH99+BUgpt9PgEu3h/VWUB3vLdDETL9hd3Qw42QtFT6L1wdSfb
	XlKhgUJme+ZIOi0JuFJnxSDdG1yFnM4ioL1IgclO/sqQhIAtn4gdl2K893w+9JsG
	jM6nFcKNzJcyePBdMOczj6EQu268vr5U/+x7Ge5C4AB4qT4/ypdCdaIXq2C3xkHl
	9NDyY3YBtCsrpai5ixsH7+rFew8Ck0yV3KGM7Tpg4Xn5hPNtOmIzd0W0IhPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656652948; x=1656739348; bh=xupKOXu9Wy6eOhZr6xO1GqLz9Qo5
	947UOVv/tG8j8XU=; b=VGiWtLnAibS4Q/2DMn0DcRZYBedA4xNmLyJnAEQbrbcO
	YxTMuq0ZxsyNoDYMVSoMcchLwf4fvVqsqxZ767xKCQE3pvMaL1Ts1c8Z4aJ1mqZF
	1LIj2dAIoCpbXaEs8AQTQ+DRZNGD6p52T6LFlVtqqMy3UwG8xArOrPLPTW0lwm7B
	IEw07Oisy9gnRPBQLdCHoAgLbOP8XluD8uRO8UjHgBiQRokJ5zjC6TVeZ7OTEFwW
	hy8bg9WOsNegsyjpcTB9tebJYJ9lqdfUNmM1JslpqrWxZpQoNSuidh0rCdEbsZCU
	JlAQNL62ajWJuwB5OVRr7KhIxFjMmAJQVT1gjEVWgg==
X-ME-Sender: <xms:k4S-YrOhOpLgWLQX84H0YHQdtaj7gllOq75a-bPmsOaAKZKvdXBRSQ>
    <xme:k4S-Yl_HN4NB1BIfYeya6pu7F3cUTZTocK_vJULxSluWo805ugWR3KXZrGYU0FwF7
    O_8kOUZQy9W8weWtYA>
X-ME-Received: <xmr:k4S-YqSV0yD4S2SSCmsk-wMC2ab0WLBKI3CQYHneWzIj_J4qidn8hw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudehvddgleejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:k4S-Yvt6m4LOsN27pF7tH5WJX_9Smyj32iNojB99A76KHXNUWHtJPg>
    <xmx:k4S-YjejWJIBbHQYXO0fgX_t32LYDUarmzC8bMrfzTm8Q50DUDGixw>
    <xmx:k4S-Yr2E-5uje5pntAfUuh97jQgDpvZ2mSm8fIN26LgANequ4s_jlQ>
    <xmx:lIS-YlvnLarwbj6DSWCdY0lGOtE58FZ6o-3WJ_daLlcbo8dF9kV0tw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 Jul 2022 01:22:25 -0400 (EDT)
Date: Fri, 1 Jul 2022 08:22:22 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, heiko@sntech.de,
	laurent.pinchart@ideasonboard.com,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 43/55] dt-bindings: media: rkisp1: Add port for parallel
 interface
Message-ID: <20220701052222.a7rtl5hivr4oy7bk@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-44-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-44-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_222232_548749_530032B5 
X-CRM114-Status: UNSURE (   7.85  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 15.06.2022 04:11, Paul Elder wrote:
>The rkisp1 can take an input on the parallel interface. Add a port for
>it, and update the required field. At least one port is required, and
>both may be specified.
>
>Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
>---
> .../bindings/media/rockchip-isp1.yaml         | 23 +++++++++++++++++--
> 1 file changed, 21 insertions(+), 2 deletions(-)
>
>diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>index d1489b177331..b3661d7d4357 100644
>--- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>@@ -84,8 +84,27 @@ properties:
>                 minItems: 1
>                 maxItems: 4
>
>-    required:
>-      - port@0
>+      port@1:
>+        $ref: /schemas/graph.yaml#/$defs/port-base
>+        unevaluatedProperties: false
>+        description: connection point for input on the parallel interface
>+
>+        properties:
>+          bus-type:
>+            enum: [5, 6]
>+
>+          endpoint:
>+            $ref: video-interfaces.yaml#
>+            unevaluatedProperties: false
>+
>+        required:
>+          - bus-type
>+
>+    anyOf:
>+      - required:
>+          - port@0
>+      - required:
>+          - port@1
>
> required:
>   - compatible

Could be nice to add an example

thanks,
Dafna

>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
