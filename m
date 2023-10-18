Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46C2ECDB483
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9a+XHEOtQdQBC0l3VjoJOW5pVBKsYGX2mDHKihM75/w=; b=UcYf2jADeilbnT
	DxU0yhGxyeZ0CxDPbZ64Zu5BgzW8nLkylv/UjRbqtvclNapvroq3g/DMYQfDAs0oabfYC+Di5FG/I
	jGVRx3/Yqo5zB1JPTdm2Sfdn8JTyX9LCV12z3UVXdk+z8Tpe80Ao6R1zJaIl4w7y5JjLIU/+f60RQ
	boI++l7h4UIZgcVMEx+mtsi5SMt+VqfvIULwJMqqY4hqmVeAbS192T6gsgf+mS2BuFKTlPTrVggzc
	+iZGfQYWI0CDmXmZnbuN+DL6BkbWOxQDWYgl/oNOt6ND4lNLwXwYsvnxst84T7vnI6GaggVubNW3k
	DEgPIO/cmhkmAf0DF4dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Yr-00F3es-25;
	Wed, 18 Oct 2023 15:34:17 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Yo-00F3eD-2V
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 15:34:16 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-57b5ef5b947so4497375eaf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 08:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697643251; x=1698248051; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6tQJZrmwh77q4KJG6d4/vwBiNQFUJwablon8OTMlyfA=;
        b=ZVJ794u6I3OL+IuB/mVSHUd1gc0/1+E+wkEufhssI7mLQzis25Bzs5j2y1Rh/2IzAN
         SDc54BlisrU89mkNiKywaLloxqH9tB47PSq70JI58TQGjLN2LoGam7lTYTBKFLwgvo5B
         bGbvV7KHEvGgTzMmVFWvnwpvpRs+ux6KBuq3QcqgYq6nMOJbp7qZEDNYZkCXccAJz23c
         9dw8zFVeYUdAtsMOAc9SRMQ4XGkPW0BsWqfqu9yE0zOVAJ/YE3TSlLPmeFRIu6udzJwa
         xdVQXQMuhF1NAht2rLvB3yOwYtVwhmgK0Jo7fYNJ7jpINSlND14i5rQUR51MZ59HWoIt
         haLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697643251; x=1698248051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6tQJZrmwh77q4KJG6d4/vwBiNQFUJwablon8OTMlyfA=;
        b=OLtDG1KkWGeieq106JkfIWhHI1R82uFMX8jdi7AoMWGgeqgpTsuAOW9CJVULU1ZUrG
         9RDWVx0UgIiuS4dVO+q+u4WxCLiL09pag4KxbLJEAI1T95EaUe3+mbb+h/C5/ICFUo2C
         QefOLRWvcc/LwD7dyVaBR/dgrB86VA3PMIMbMJNkysseiSPLGDde5t1odr0eB4ErLY0g
         UqHWAULKCGb/aIcj2oMGhsPoCsGHkEdwgRzjGD3N/r6wEdWXdx0PnKzc/IqV56uOT9au
         A48VfrLoWz3kor+hhGjyWis3asMi6T8Nc+v7fOj0gI1EwCgU0D3CjHXZrivQ1CWmrXS8
         +Lig==
X-Gm-Message-State: AOJu0Yz8xAa502rjdMUEcGvQ6bZSKmnz0kYIquXfQGdUB6L6elRY8S7Y
	d8RtwVZeev788pNadNCadQ095EbMmSA=
X-Google-Smtp-Source: AGHT+IFTBAebvUI3C/PnjHyGd/EVx2sycdpXqSQObZD9ieoQ4sejU2vINPA6JY+WSFXYippZGc5xDg==
X-Received: by 2002:a4a:dc8f:0:b0:57b:6ab1:87c9 with SMTP id g15-20020a4adc8f000000b0057b6ab187c9mr5965150oou.0.1697643250979;
        Wed, 18 Oct 2023 08:34:10 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id h16-20020a4ad750000000b00581e090fd1fsm523782oot.8.2023.10.18.08.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 08:34:08 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Fixes for RGB30
Date: Wed, 18 Oct 2023 10:33:54 -0500
Message-Id: <20231018153357.343142-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_083414_840374_F04BB509 
X-CRM114-Status: GOOD (  11.80  )
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

From: Chris Morgan <macromorgan@hotmail.com>

After preliminary testing, a few users requested that I see if I can
make the panel run at precisely 60hz. As the device is typically used
for retro gaming, getting the panel to refresh as close to 60hz as
possible is important.

Additionally, I accidentially left the UART2 enabled, even though this
device does not have an exposed serial port on the board. Disable the
UART in the device tree.

This patch series applies on top of the already applied commit here:
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=for-next&id=1e9ac3e8a6a9d4da9efbad2d8e95cc1140e0e23f

Chris Morgan (3):
  clk: rockchip: rk3568: Add PLL rate for 292.5MHz
  arm64: dts: rockchip: Update VPLL Frequency for RGB30
  arm64: dts: rockchip: Remove UART2 from RGB30

 .../arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts | 11 ++++++++++-
 drivers/clk/rockchip/clk-rk3568.c                     |  1 +
 2 files changed, 11 insertions(+), 1 deletion(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
