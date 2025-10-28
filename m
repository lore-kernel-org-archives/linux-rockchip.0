Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B449CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 08:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YTaNT7TbdszaEUKA7C6ycEK6fgx6Zc5O3+e7BZgXd1E=; b=Cb7Hb/d9Ess5Kp
	InzsoUuxRODB5Q+AGndVJsddramwmTLZgBRYqtaKrO7xnRZGJ7cUNBdbE5G6DGlFvKx7uEjk1dxRC
	j66HgFDDe7RjIG9n3kHmOlbqu5DWxBmWeCwX21ZPhMNSbeVBJJfZqbkdbhGZV64m3apjqZM+KFcz1
	j7esFaQmYt6LrUzBiwfx43siqtOIj3mhYcUgjOtISmJzgL+vP2bqlGg2KFpmpHigFv77eG6qQnhpj
	dMnHrHljjmPrem38n2sE6Y9hj60L13kuSvJztxXBTFJn9Xn6uWfejQmvN6DQARmsS24JB9HBWnYyc
	0oV+FjxZ0qA1HODkxWmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeeh-0000000FUwX-3Go7;
	Tue, 28 Oct 2025 08:02:11 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeed-0000000FUte-1fEh;
	Tue, 28 Oct 2025 08:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761638524;
	bh=w0hVbt0p8X5uVDG3kntIZUMpWvl4mJzdXMzRwu8Mtys=;
	h=From:Subject:Date:To:Cc:From;
	b=qxFBeKT1dUgT/LlBYTUYbJTMz57nWxhv6fGkB6yT9D3gkdCNLpPOLQrluXu2gAijV
	 U9Lxjp+UrbuxDGO4nE2YHX24L2h1fwvG/tAJBIUdCzyeSwk+w4EjKCsRaMPqaXXYxE
	 Ffs972t/IRjbof0BhdXGsNJSTMmkdn8tk95domcYJbexhCD2gNXSWySC3+ZDL2YbqA
	 TM8cGV5AO7HRLL4MREEVPX/h2M6uz/p/N8ALwDZ5WhQCrkDbmVHIofTCvW2NHwadsS
	 Xvv8OYD4uhbt4pwdyCMjJGxSP2wjhRz5cfx+vbNPBHYX+yIhE3lUEqd/1kV970RC0u
	 bI0Xju0TiOWrA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id BCBDC17E1278;
	Tue, 28 Oct 2025 09:02:03 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH RESEND 0/3] Fixes for phy-rockchip-samsung-hdptx
Date: Tue, 28 Oct 2025 10:00:53 +0200
Message-Id: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
MIME-Version: 1.0
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>, 
 Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_010207_607112_5E17171F 
X-CRM114-Status: UNSURE (   6.07  )
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
-- 
Cristian Ciocaltea <cristian.ciocaltea@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
