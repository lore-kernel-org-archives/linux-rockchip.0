Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C565C44501
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 09:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sNGSVvR3wY0SRWq7AppDOzs/09XPHFE5xMwHjPo8OL8=; b=fEYUW/x18C/m84
	ne8iuBBDgllximDfKnJyg7OhwhTsHvgZNtyrcAW0Q/ChchEdQS/xh6egVrUoKctRAl/Y8nbkZkruU
	f2SxbEi89mcY11glTFWaoxk2g+NRnVQInA6oIfcgm6sZxUAEZmx20tROS0Xd9q1ChhnmEQbX797kX
	lBZKarynciZa9j1UMbLpKvs7kzkCTxjDmhZeydBGIaVjQ6TRJSpgB8ZAr/cltG831QBK+UDUDzKjp
	c6jrJkrqRuEs+2y7+oqsQ8f0jPvPEca5MqDq982HpBYr+AkkZhTci8ezxJMKNUu8JSIGIzmm5ZREj
	bHy5an/ui4CyQyTDhUPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIPB-0000000Grg0-22oQ;
	Thu, 16 Jul 2026 09:29:21 +0000
Received: from mail-yx1-xb131.google.com ([2607:f8b0:4864:20::b131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIP8-0000000Grec-2On5
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 09:29:20 +0000
Received: by mail-yx1-xb131.google.com with SMTP id 956f58d0204a3-664c6304683so2844715d50.2
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 02:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784194157; x=1784798957; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=7bEKQGHUgc4QA8xdZ13jzbjLw4qQ92cli3uju/L+EgQ=;
        b=YLfE4jpl/PjtWeZyDZg7HUwGXW0veSPzZiKgWBY/0SoBs9FMUTgeWreQGccGissUmA
         r3Xwq9PkyHsOnh4LiA70CdpGjTmNgZV9JV+f4PAAg0Zpb48yVuqbI15qErBwlhkeV0bu
         bU8WhggWu7tDLd8exsQnBx9DTW6UqzgBlb+zR9oParTnXBdweJqd8Ev4EHpXIIAOHA4d
         KxmnYLJm8HcZe09NsGkQhVwOKyUPuqSGT+cZtDykwl3E/4z+Wx5GtmR+6rDm1/3+9/VD
         w3ydlLLu6ODgcD/WvZfC/OWc9ORPVgCdzSPqi9PUb9KfQ4ZTSoS21aweuVUCbMisqWe8
         OFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784194157; x=1784798957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7bEKQGHUgc4QA8xdZ13jzbjLw4qQ92cli3uju/L+EgQ=;
        b=gzChvo2FXNNBjqU7Lrg9xFYwDUYXn59aJMyODgmtYrvr57maXDkmEzDzpDQDxO0ypl
         W4AoeZclyzCsTlcfwjAsop9IM1uKpAJ07rf38UK/joNmpsWDERQNCEt52eGE0clfmvK/
         RJBl8lMaq8DHm+VCGgutIQL3sw1GC21EAbINrbBEx7HoyqkEyscGlQMYoY9hChQmPuor
         ANRxcYF8d96cfPIXOPJDhzHe04kwuaSSjKO+oDwN9agpoV1vXgoSDDfDOwlTQ/XrtpkT
         0fX5h2Q8eR0S7PSyaX1i92ccFZsMZ0apzjoRmZ4UsLczIAwghqlkQQNKq0r5/l+VzVQ1
         yqtw==
X-Forwarded-Encrypted: i=1; AHgh+RqN2QS8kXAHF07DU23dwD+zWP84Wa7fLGR+W1f/reuEMUGN+tff1sK53mSpxkERrpgEvauZdtLzYIsvhPu7hQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwuK4oFRhHQrzu4Z1/5cg44yfd79IF0v5Cm/MHjLC2SojJ+rC/S
	xpAq2JbWB2SJS41BjTkBIN7kITINxm1BCrEafmmE5VDebVf4ep52wPD9
X-Gm-Gg: AfdE7cka08mEflbtFDH+7lNzrDZftCynR1LziCp1qpUR4M+kZm9A77Pdfr88Ay5wK0L
	iHWBfeBTgeVex8AEenIAXMmaT/AQL0St8GVePuMqvbkZUlZtKsPJkNZj132L3YCWrk0Gbj+DYo3
	4CZDO9dPdJKDfT1Z86xNIUffe9+D12564ccwj6K9cnIsMu4A/XF6dXOEGoLAxlsu7sDAJbxOHtE
	HUILNZIdAW8oycOkDnKZRBIbz9pKvyJVpTPAE6cz+mo9NcndMrIHB2j8pLm/JFswhjcYtWGaPR1
	00/bmpP0UUDEm3v37tH/BQ8tS5D1QrGJM3OrMq3yfCnbakLvMMzPCVqJTCabVvWqAPAoXx3VITL
	1N5mI8xeutgYVEPMyCmg0GJGZqfIA3paXxB6BQweASwh01KPbREpjDiVHN+bHY7o3DRjcV0PVwf
	RlGyLAbLn3mA==
X-Received: by 2002:a53:c053:0:20b0:667:8b90:2eb8 with SMTP id 956f58d0204a3-667d7f48184mr12002616d50.87.1784194157327;
        Thu, 16 Jul 2026 02:29:17 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81e950567eesm130241807b3.13.2026.07.16.02.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 02:29:16 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 0/2] Add support for Vicharak Vaaman board 
Date: Thu, 16 Jul 2026 14:58:57 +0530
Message-ID: <20260716092859.512306-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_022918_610820_EEF818AB 
X-CRM114-Status: UNSURE (   9.55  )
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

This series adds initial support for the Vicharak Vaaman, an
RK3399-based single-board computer.

Patch 1 documents the "vicharak,vaaman" compatible string in the
Rockchip arm bindings.

Patch 2 adds the board devicetree, enabling the RK808 PMIC with
SYR827/SYR828 CPU-big/GPU regulators, Mali GPU, Gigabit Ethernet,
eMMC, microSD, SARADC/TSADC, and UART2 console.

Tested by booting to a userspace shell over serial and verifying
eMMC/microSD storage and Ethernet.

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: Add Vicharak Vaaman board
  arm64: dts: rockchip: Add Vicharak Vaaman board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-vicharak-vaaman.dts   | 438 ++++++++++++++++++
 3 files changed, 444 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-vicharak-vaaman.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
