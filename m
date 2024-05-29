Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F185CC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BR7lqdq8YBDfCuC+qZQXqeSBj9sGxGDTLMJgWq2HHeU=; b=slCkTor06mMrio
	251WkEDxIsbCDpfR71Y/qpphr+12nNApTvgxmz6JES+O1A8YODdHpbbUI2JWs81QJrXFe0hIzeo6L
	RFNYLYeQLb3siqD9nLq1YU2u/8g1W99Y1xXZbovGW8mx9bkzb9SUjxWtbUsDvTiRPxJ+fFifjaTww
	1WwWt6+y+hRuVXyIG5r2ypxkRtKQYtRWPHNiqaM1i9TaRUcC5I8xEEwvItVPjJpNYahB6iNEquwhR
	/w5TIJgcDrG8DpmtQRTqXz/byXq+FMDyCHTVBmAreDeGxz9MptFEqilH6FglOz677i5m8V8j81s5L
	BCvCoJatoFGTSs0jqhxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCKXn-00000004X7h-0C5M;
	Wed, 29 May 2024 14:44:47 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCKXj-00000004X5X-0xeY;
	Wed, 29 May 2024 14:44:44 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52b0d25b54eso1143384e87.3;
        Wed, 29 May 2024 07:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716993878; x=1717598678; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wmg0Xdln3CoQgJ9NVNuMFs06AxZyiuM9wtNOUDPn1Ws=;
        b=SmmhXgWOwLAGSKiHZe5SzKJ4TgdLkyURiQOJ14ZARuHjaAV5F08cmOIy7huNeTf9rw
         VUiF0FOlVQ3m6nHK5Ko15juJPxYkjdSvpDKFeW0xJ5GweRUMlMunOtqhAZvJ7PpU44Hz
         vMbsIqnDtiIQdkH5L6TxM391GfRQItDjUUFZwnTLfC37mtNw2j4LxYSdWwmzlLqCZJfL
         i1CWiYFQ+RQa7Qpy1BYJBytiZhu08Pn6rB5cYIwPQNL8f898a3DOHd7qHiCyq5koBNX7
         HkJvrtMynApHM1Am7q9krux3mMS44GDDvx9jZ8rS7TIAk0hQDOPQNiEJnj4pkjvQvJd+
         Ftlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716993878; x=1717598678;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wmg0Xdln3CoQgJ9NVNuMFs06AxZyiuM9wtNOUDPn1Ws=;
        b=M+wU8M/Qxz2leQM00KPboqraK6dFGs/SGXfKrzat20S7VV7Dd6jGqCtv1kznZPNJHQ
         OVP4f5nGMKR6s34PZeL+/dqzTOdSpEv9G3QFYTAEolZHXIVMAOpi7ospq4rtiIqwKMBs
         zSYBbQeQglMJuSGXncbwBJhPLh7QtyRYpxmXhmaN9tTEvDoPgLBS4msFWIbPpM4duBDg
         R+Boq4on40tQGPomn9iyqysjYN1Cw27Tg98u1auohOte0Tcumue7w/qVKf4J/MKvgKud
         /lCnuPSJ8T7tmKTdxJnwKsrlgf7hafAXOAEs7nmFBSXM9NE+NAccj+1eVOkToCLHcPYg
         MXqA==
X-Forwarded-Encrypted: i=1; AJvYcCW4BVRayZYVy+LtI5HYFD5f/aPynnIg8+u/1J6eK+NHzGsnWrFEnQKkU+tqK4npPgAffOZnjUcbRRUY3G++oBQKLUnrte+nF40kLDDZEK9lDAbfR3iDYZBF0GmgCIQGTmegQThENSZNTFQqgsUbgpGXb21wllKx30I=
X-Gm-Message-State: AOJu0Yz0kVFyU1VYQXxcd2dLlyTegltxm5jpUsCFJZamy1JRqdbaD9wl
	zBgZwWYDVBs1hPvOKwV285tTkj7VOZCGe0WxxDI0NdJGlX/fVLnS
X-Google-Smtp-Source: AGHT+IEmeGBP4gSt953JX9l/IvekTaw0WinbNkSEyrZcdumRfTqWxO7Errv9yS6JwzWsqMFJg0mUOw==
X-Received: by 2002:ac2:5dc1:0:b0:522:8352:ff29 with SMTP id 2adb3069b0e04-5296736bb86mr12370567e87.42.1716993877840;
        Wed, 29 May 2024 07:44:37 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529ac903bd9sm928915e87.236.2024.05.29.07.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 07:44:37 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v2 0/2] pinctrl: rockchip: add rk3308b SoC support
Date: Wed, 29 May 2024 19:35:32 +0500
Message-ID: <20240529143534.32402-1-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_074443_296928_E8BF5569 
X-CRM114-Status: GOOD (  13.14  )
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

This patch series and adds support for pin controller found on rk3308b.
According to rk3308b TRM, this pinctrl much the same as rk3308's,
but with additional iomux routes and 3bit iomuxes selected via
gpio##_sel_src_ctrl registers.

Downstream kernel [1] managed this SoC's with rk3308b_soc_data_init,
wich picked configuration based on cpuid. Upstream pinctrl patches
droped soc init function.

The function rk3308b_soc_sel_src_init sets up gpio##_sel_src_ctrl
registers, making SoC to use 3bit iomuxes over some 2bit old ones.

These patches have been tested on Radxa's ROCK Pi S, one based on rk3308
and the other on rk3308b (from the latest batches). For the new boards it
fixes broken spi1 clk.

Similar effort [2] was made several years ago, but without keeping base
rk3308 SoC pinctrl support.

Based on feedback from Luca, Heiko and Jonas, the v2 series droped dt
binding in the favor of runtime SoC detection, so iomux_recalced and
iomux_routes updated for the new SoC's and patch 1 delays recalced_mask
and route_mask init.

[1] https://github.com/radxa/kernel/blob/stable-4.4-rockpis/drivers/pinctrl/pinctrl-rockchip.c#L4388
[2] https://lore.kernel.org/linux-rockchip/20220930102620.1568864-1-jay.xu@rock-chips.com/

v1 Link: https://lore.kernel.org/all/20240515121634.23945-1-dmt.yashin@gmail.com/

Changes in v2:
- Drop routes fixup patch, already applied
- Drop dt binding patch
- Add new patch to delay recalced_mask and route_mask init
- Rework last patch from dt to runtime setup with rk3308_soc_data_update

Dmitry Yashin (2):
  pinctrl: rockchip: delay recalced_mask and route_mask init
  pinctrl: rockchip: add rk3308b SoC support

 drivers/pinctrl/pinctrl-rockchip.c | 286 +++++++++++++++++++++++++++--
 drivers/pinctrl/pinctrl-rockchip.h |   1 +
 2 files changed, 267 insertions(+), 20 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
