Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9AAAC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 03:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=377DABFSYDn8mzZCvFevcPJldIcGIfD/YOUl2hpFwME=; b=wvZVr896iy7rGa
	49lP+y3TuJoL04AZCZWRIpZJOKU8IvOG83eQm4OH0Wcog0oUs6/K/PhKMZsaIe989GrODkTbdinsd
	/ImXF9FTfgAsfKAVftpWJ7k942xj5U5WF7kgvWeJnE0tztHizis7VJMt5p0vA5iVCP+GvN0a3YzqU
	xLsqIV76YnjKFZ06tGQQtM5vqbx2eAyZncMeq2wr2MSJ9urbBsaODyk2WdtddtkTieZ36Ul9j0Aac
	SCmfAuFXNrjIts8R9oRXtCAy79TrSmyOftZQrFuB7INTnJfZ0LHM9/CLefAEqJBEbJ/fieFvO0Coy
	c9mY8MzAyjyx1dAm3b4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neq4i-003ggx-5U; Thu, 14 Apr 2022 03:23:16 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neq4V-003gci-F4; Thu, 14 Apr 2022 03:23:05 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 2F2435C0592;
 Wed, 13 Apr 2022 23:23:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 13 Apr 2022 23:23:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :message-id:mime-version:reply-to:sender:subject:subject:to:to;
 s=fm2; t=1649906580; x=1649992980; bh=C3mmvXZDOtnT5CAr1mR7N4ijX
 RPzVFhjMZOWou2pCO4=; b=CqrQmwhyKx8NQy2r9knoGzrweikr90xUJIUuH8H5q
 UGs7HnofSl7eRyRk0tXZ/O1TK0c1tTCvPDlZ4bsxxoZ5KaB5d2ge6cJ0o11iv3/b
 cbhuq4KGpV6VbUmHVRph4M3wwOADHw5s3D3TRTZ2ECrTRR//ejsXRh9cY4aAK3ip
 ZHAozjkdbF7E5knfBFa3Z03n9JfXM5C9xkqA8tpBKxunoNZ86UnlkeKiUheNXPm4
 KKaejlky6LyrGlAAvBN80NffPnYK3PU+baSovLaCFtE+EzxuguNGZYCZ3BE6B2bR
 K21wiF4X9xSxY3n10+HOUn5atMSAA8Dpa++O6stlGWMxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1649906580; x=1649992980; bh=C
 3mmvXZDOtnT5CAr1mR7N4ijXRPzVFhjMZOWou2pCO4=; b=fJC8lp5MCmaYVw/my
 tR+kZa4M4F2CXXJMEyzT4QswkmMLmhy+RGCJ/oROLZ2NAj+BT/UTEknqQWFZkkoT
 /YlGH7McJRjrG/043VcAkiJ/wqOQw7qzigOPRN+D3a2comvo10n8hbPPZDNknEm3
 YpMd0nSwlRCDxlNAXjjv+o3i4VIl4u2j35W+DzvrWF9nSJ5eZ0H/xlLYKFIaVNl0
 irZOO4n3SDpZvPdEcf5btKlBGDn/rYXrNbPcUezBjm0Nw5gLzKZ9XoO2/Whz962p
 xO7b7eEGyt+a+Sqel5jW2fRf4tCs5BkRGWpIK8b2WTggsoRfBZivYov6JHJPqTmK
 /H8Cg==
X-ME-Sender: <xms:k5NXYhwzsRwaj5h_PtkLE_h-0__ofz3d_xjeHsMiQqJDnMoIXfx59A>
 <xme:k5NXYhQHJBlKtOkUcS4HEfGc28_xbaHq7EyN7R5mppmRiGifLosjARYCo-mvMxFSa
 u4KH_OZrkSo3JEiwA>
X-ME-Received: <xmr:k5NXYrVTg-jEVpxtQytWLH5kZiuc2wz0eg2_JNkd4q1uSFiGl30g7o8mDtj9JoFAyNIvN554bJQhejaHNzSU0HuXPR6OclLl7giFv6n7lf594KAq0gJlwIIbn7AO8YKY12bZbg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtffrrg
 htthgvrhhnpeeiteekhfehuddugfeltddufeejjeefgeevheekueffhffhjeekheeiffdt
 vedtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:k5NXYjiu3mLLPONNzn7HX3xF5dMxZy-7fw8CTJcRkWsWw6ejEX3vuQ>
 <xmx:k5NXYjBCOpEarflyW8fHwJnJFRFYjh9z3RFbeALr8GcLMrPjnuAEIg>
 <xmx:k5NXYsLqa1IKr3bvZDeXnM2TjGZn_78YqmN97L7AQpDMo1dnAIdYdQ>
 <xmx:lJNXYlB-rVGTnuozFMzbPz4uB0gc77210DdYRI5UzKLkOgc-1TMqyg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 23:22:59 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 0/6] phy: rockchip-inno-usb2: RK356x OTG fix and enhancements
Date: Wed, 13 Apr 2022 22:22:51 -0500
Message-Id: <20220414032258.40984-1-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_202304_148344_BC6999BE 
X-CRM114-Status: UNSURE (   7.32  )
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

This series gets USB OTG working on the RK356x SoCs, as used in the
PineNote tablet.

 - Patch 1 fixes an interrupt storm issue specific to RK356x.
 - Patches 2 and 3 are a couple of small optimizations.
 - Patches 4 and 5 reduce the delay when unplugging from the OTG port.
 - Patch 6 allows OTG ports to work in host mode without depending on
   another driver to provide an extcon. The specific use case here is
   a Type-C port controller that provides a hardware "ID pin" output.


Samuel Holland (6):
  phy: rockchip-inno-usb2: Fix muxed interrupt support
  phy: rockchip-inno-usb2: Do not check bvalid twice
  phy: rockchip-inno-usb2: Do not lock in bvalid IRQ handler
  phy: rockchip-inno-usb2: Support multi-bit mask properties
  phy: rockchip-inno-usb2: Handle bvalid falling
  phy: rockchip-inno-usb2: Handle ID IRQ

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 125 +++++++++++++++---
 1 file changed, 105 insertions(+), 20 deletions(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
