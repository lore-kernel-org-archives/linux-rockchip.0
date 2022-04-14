Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C53EC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 03:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4W7EXcTdqTJK/k5ueO9CRElzZZ7Jk7qZI1RZDnokhM=; b=lYZTraMiuLP6S/
	HeGEyjjkAEi8CNb7Z5Nd/BPwxCzsvQrBhKVd/3qMVhpKFOE1WpTGTDNNYHYSsdTV5yfXk34s6U0oz
	h11RKZpK+hN2UFT+PYjwX4Dk22ILJwjqwZRrfhkt2bhk0SRmfRYTJYD9OZlfgS14/tLMmr0TqcnNv
	ABP2UPzP2ohEKKtj1YICQL5YcVVNEogfXD4uEMsjk0SYH3x8rJo5tYFaQNMkTGES0KViJ6bPbRId/
	TpRL8vR6PVPz2V4h61OxNbxnpMBho7Id3pRLX5lgGQepcYbpe6+JmX0lWpupC/2fn9xJAdh6IoDcg
	yX3e5GOvo8+9gMLXgEMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neq5Z-003h8v-G9; Thu, 14 Apr 2022 03:24:09 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neq4Y-003ge1-NG; Thu, 14 Apr 2022 03:23:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 182545C059B;
 Wed, 13 Apr 2022 23:23:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 Apr 2022 23:23:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649906586; x=1649992986; bh=JB
 SEPKc915xSzefZ0CTW6PeicSizTdW4KnF7s2wyqrw=; b=SmJ7IUBpwx3EqhSJY4
 e/zpgcBX9Il00K34p5aXOFBfnpfQy/a6JvXxQ62nAWfoZnti5cBbv/l13dFdi3fp
 gNSnYGCnmyc2882xmIf6wRCNj6eRyXenfS7RbJDqk/NxxC+o/AJtyk1qITbCuSy1
 3GomB3ipmkivnenGcMmqSi2/n4FA8RzbkMQGGgAGET6oraIVc2f6hiF6SKgRyCqA
 BqGEnREyPPKI3w2w9esjuXErgZ8A5I9VAdDRWe6GhN7jhEav+K1jgaTu4YDVCDIs
 Jokx2Tmnl+Lq03/lbKtEaoohQ48j3w7SiqPJT8RjcQRdvPLD3cCqjAgUsRHLGscC
 ypNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649906586; x=1649992986; bh=JBSEPKc915xSzefZ0CTW6PeicSizTdW4KnF
 7s2wyqrw=; b=xrPsAt+QqBqT90qN6D+S4/Ub1LWKZoZGedhcntw3XPXdfkSiRXI
 MrhxmdpM8DZqrKrAcyoRyr9Q41+OYyI6sKXBufjM5LvW7dw8yG1orLn/Bg+zvbfF
 5QVmUhIA9mX9ZIyFDW8XUQW9197Ns3agg0CVUr5rtwwNnPyxmZYW83jhwQJnDWUY
 XemtgbyzoXCSMSkPUkk1y1c2BdmqdH/nM4NArZo9LQrO9o+G4ItNlhtUc//SqhTn
 J3HEfcF3UNFv8y+RyHW7EmWr8w9+TNo0CdTRxdBnnMB0MItSrJzpoSL2FDvX8QOs
 EmPSSYmgJi4fgf4ExkRWUnldgrKypcwNr8Q==
X-ME-Sender: <xms:mZNXYuZwspIk2uvkvNiqDkaemI3R1qo-gctN2TQJ_8Vml_ta4GqcTQ>
 <xme:mZNXYhbSZpfRabiFtBSs_pTqEmo9lhppX8ee4g6KBkAuRmcoAe9IJZTMZlRLDBNik
 jUkeTfI4eZAq2PKtw>
X-ME-Received: <xmr:mZNXYo-PL48EFmopz945PF34cIVmKzK4OuhBgWwq9RJXd2GKui2TuFaLM-3KN93kZCs9rzRZueXoLbfXdKvvfCpnloZ7J5H4uy1-UtBYPtX6YPkXmXMaQBvR4M6oLEMlTVC8AQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:mZNXYgoG8lCB6807iws35L0oXY_fyQMY7mozX5NWazl5yf5V4wxN1A>
 <xmx:mZNXYppS9WHQv6E1tF-YoV_vPTP4CdM5eM9pcCZggJfwKhpc8rmrbg>
 <xmx:mZNXYuQjiVBa5Z0uvSf4ao4FsrD7k7rhs-Ly7wgOmwLlbNAeyNBVMA>
 <xmx:mpNXYtINIaPPe74drjMJZSvC99cmYKJSuyhyhwINqtrLope-HeXJjw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 23:23:05 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 4/6] phy: rockchip-inno-usb2: Support multi-bit mask properties
Date: Wed, 13 Apr 2022 22:22:55 -0500
Message-Id: <20220414032258.40984-5-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414032258.40984-1-samuel@sholland.org>
References: <20220414032258.40984-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_202306_948681_3B6A8BD8 
X-CRM114-Status: UNSURE (   8.94  )
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

The "bvalid" and "id" interrupts can trigger on either the rising edge
or the falling edge, so each interrupt has two enable bits and two
status bits. This change allows using a single property for both bits,
checking whether either bit is set.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 3422db56be76..c694517496f8 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -253,7 +253,7 @@ static inline bool property_enabled(struct regmap *base,
 		return false;
 
 	tmp = (orig & mask) >> reg->bitstart;
-	return tmp == reg->enable;
+	return tmp != reg->disable;
 }
 
 static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
