Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F957C27C55
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 06:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cg3eDvg6DF7/11WJYU5nkrlrDKU3BG0tSvIdHq1OCpw=; b=JBZPuVrWT1JFxV
	fvUv7fPimuYBJtzQ41Oo5FeFoIacMEN0VFNJJ2trDn+JSMFMYByoCCa9KL/SHRdQjiewfmoEVppk3
	k73ndJfkGfohETT0F0hhSrmRCHQK/7O0BpTHPVVAqEtqvj7hWOnAQOSgLo7SVIlt33h9usY9MxPQd
	NP++NM0YwvgKFdeC/xE92eSCMlJCyJq9oGp7QHs9+B0dLVENkiXatHH8O/s/vUCDO8O7D51tQicIc
	DgKmWtfD0wkzXZXAMtBqQCIe/9cf8mR7Y1pjNTsOavS5w5IQhmVYVUxmEM81gI5PVZWUyIYNPqcDO
	KUY6woeK1o8dpR/8njXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6FE-00000008TCk-2Q0f;
	Thu, 06 Jun 2024 06:05:04 +0000
Received: from mail.eh5.me ([45.76.111.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6FA-00000008TAf-06qa;
	Thu, 06 Jun 2024 06:05:01 +0000
From: Huang-Huang Bao <i@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1717653895;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zzFshImQcnkQaOjfbtCDV/5BL1a1t8gOqnWdgJ2CXJI=;
	b=N0OHZzx7klyLzoJpE6VsKhaSkWRTjimHDHLLqjdY+5zHf4EppQoK2GFyIC31o3a7LsV7I5
	SN1aoJH9l37P2YBEV6iBEDTMykibsYsvpt2EtgCLhB5c6wxDRSsbL7flOjxPH8ZCEsc7SO
	GcpLjlGiQHeIetHlWD+QvfIr1MwPkk0=
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Huang-Huang Bao <i@eh5.me>
Subject: [PATCH 3/3] pinctrl: rockchip: fix pinmux reset in rockchip_pmx_set
Date: Thu,  6 Jun 2024 14:04:35 +0800
Message-ID: <20240606060435.765716-4-i@mail.eh5.me>
In-Reply-To: <20240606060435.765716-1-i@eh5.me>
References: <20240606060435.765716-1-i@eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_230500_211523_3C5DD620 
X-CRM114-Status: UNSURE (   9.95  )
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

rockchip_pmx_set reset all pinmuxs in group to 0 in the case of error,
add missing bank data retrieval in that code to avoid setting mux on
unexpected pins.

Fixes: 14797189b35e ("pinctrl: rockchip: add return value to rockchip_set_mux")
Signed-off-by: Huang-Huang Bao <i@eh5.me>
---
 drivers/pinctrl/pinctrl-rockchip.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 24ee88863ce3..3f56991f5b89 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2751,8 +2751,10 @@ static int rockchip_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
 
 	if (ret) {
 		/* revert the already done pin settings */
-		for (cnt--; cnt >= 0; cnt--)
+		for (cnt--; cnt >= 0; cnt--) {
+			bank = pin_to_bank(info, pins[cnt]);
 			rockchip_set_mux(bank, pins[cnt] - bank->pin_base, 0);
+		}
 
 		return ret;
 	}
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
