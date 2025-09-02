Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E48CACA1005
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 21:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ur0Fr1o79N6TsBt/lwMkihQ4z6pzmJQgfnd56UVW3Bw=; b=WRbfdbGMb1X/st
	Spt+mdjRJ+NmGU6HLAJXENDDXFG0zDwnbH81Rfl+JOGyGN8eLrqOZo/ky2EGGrAAEvCPMLC+jQ4xs
	rRXrAQkVJndWJBvhhbQx0Q+Pcm4PvIIO7+VlyPLxa3sHdY6SUAgKrI9qDK1mMxuGqPEg+pigfoDqb
	BSnPUsH3gcd6TWCQsj5ZGA9W67t6+yCHcQYQBxg4SctgQvz/XaKin9yRAjHGGCQ7Et3Rva9m0akX3
	4spjcd9s8laK6qX66uYNK6sXERERPh1TmGYeYjJ7+ilFDwfrdLWaDogJ3JSGeVLr+GyJqaJ6KTDvL
	eyTYF7IDqUIbqR7/OhuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utYoE-00000002DPJ-0Nue;
	Tue, 02 Sep 2025 21:44:58 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utUTX-000000017G5-3wqE;
	Tue, 02 Sep 2025 17:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756832837;
	bh=LR53mkG+mbobU4tLnlfm/nOI9xIl/+sBawJ/Q6bMwJY=;
	h=From:Subject:Date:To:Cc:From;
	b=hjqWFO/AJyR6esVG/If33vfD6nK5724Fj5f6i7dLHQqlLvtpKR7DdvjW2g6wsDkcI
	 pJsMJNT/r2FfU+ivkGofcFms1ZILN50b6hGZ5crcstPM/OB+cCekxw43KKt/hefGGB
	 37khEnSE7iNqPAcYxXb9Yxu10rrP5vLznjRMdo4cN1JXocjU0zA4imrKOpaR2/7jpN
	 CwqWZhHsUOxjENQWq0odRo4DofsuCk2H7eSBtZLtezDfW8+ULL8gh6/14cbEkzoTJh
	 tZ+4Jk+aid364ss9a7vwFL6p4wCVVe0ZYY4TVSyG6oCbkoN05QFhU0mdWs2dEjMaZq
	 WRdavYxbtN51w==
Received: from localhost (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 7C8FB17E129F;
	Tue,  2 Sep 2025 19:07:17 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/3] Fixes for phy-rockchip-samsung-hdptx
Date: Tue, 02 Sep 2025 20:06:58 +0300
Message-Id: <20250902-phy-hdptx-fixes-v1-0-e8d9ef9748d6@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADIkt2gC/x3LTQqAIBBA4avIrBsw++8q0UJqzNmYaEQR3b2h5
 cfjPZApMWUY1QOJTs68B0FZKFi8DRshr2Iw2jR60Aajv9Gv8bjQ8UUZu0r3zpGtl9aCXDHRH2S
 a5vf9AMD+O6FhAAAA
X-Change-ID: 20250902-phy-hdptx-fixes-7308ffea4c6a
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>, 
 Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_100720_140551_0838F741 
X-CRM114-Status: UNSURE (   6.51  )
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

These patches were initially part of the HDMI 2.1 FRL support series [1]
aiming to provide a few fixes for the Samsung HDMI/eDP Transmitter Combo
PHY.

I'm sending this as a distinct series right now, since the FRL part
might require additional time for review.

[1] https://lore.kernel.org/r/20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (3):
      phy: rockchip: samsung-hdptx: Fix reported clock rate in high bpc mode
      phy: rockchip: samsung-hdptx: Reduce ROPLL loop bandwidth
      phy: rockchip: samsung-hdptx: Prevent Inter-Pair Skew from exceeding the limits

 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 27 +++++++++++++----------
 1 file changed, 15 insertions(+), 12 deletions(-)
---
base-commit: 33bcf93b9a6b028758105680f8b538a31bc563cf
change-id: 20250902-phy-hdptx-fixes-7308ffea4c6a


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
