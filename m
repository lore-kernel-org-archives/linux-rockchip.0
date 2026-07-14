Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F28C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 05:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CWt+arVqscZegi9OLbRTqZw0eeD+vQKHdZyI+zTPmIU=; b=LN/aLAeK7nncwQ
	VVdXnEWkV6GpqvJwqjiDb9f46m/QhH7zYkq2yuyE4B1yGrOoTDcMpxv5ZUc7l6Xg10IrEgjUDj6Bm
	M7NBygquTxtOuJiSEGBS67jfk6hugyj6Ast5rjnURQNcYjUdzqCMK5zb730IPKPF/VECH8qvqFxvX
	+oykieC68gHoOuBmEzhlRjhUA/i9RETsABARiPtyxpt6KjVBH9UWFiKQWtZGoyqscIqz0eafGHr7z
	vwpHO4+0wKjmZHgoQES+hRmUOZoX7aA6wNwASyi5ppoRPSnSNmxjewV/Ng1CDhpkAQ7MZvo3uC/00
	NnqSfjWOpbqPqjcQL58A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVz0-0000000Ayos-47uv;
	Tue, 14 Jul 2026 05:47:06 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVyx-0000000Aynu-2d3M
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 05:47:05 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-38dc4553f62so2617237a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 22:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784008023; x=1784612823; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=rCH472Fm/tovXRRz59mCJ5fU+hD6fMIN1TYNRbso0Bk=;
        b=eG9hv+LKNDMPDXM9qlKYu6dACi8C8GmcwVr5b3ZNBX8Qxh2qqovZDovEQPKhUHaRTV
         ZoFg7xlTe1bUnseyDwn7Kn4s8qDLH1srWHQ9tviKZoA/GXGhlzzY8tpsBZkHzo+n1MN3
         6Ppxr0c/HeSxpUPAemCPSqSJusTJr1LpFNLcTocl76V9jzBpRoQEzExuHwwkkXLSfA7h
         xi2gSk4U7xI9+KDydPbZSt9z7kTINg6Gm+uJQ2Tgz6NFJ/Q4UUEYDkoEHzNwdr24tdeC
         SrvYNLifO++wjj39IN3xxo9+emSaOrA36NQlm9T3f8tkz3KgmSbnayAnO/FM6dcpFNsB
         CRKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784008023; x=1784612823;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rCH472Fm/tovXRRz59mCJ5fU+hD6fMIN1TYNRbso0Bk=;
        b=iIHDIHGBMWBceGSQHiWfPblT7/YMUxBQak7WLs57KYNakdyUEUo7uURf2FD/HGndRt
         Du8j0ZZSfZFzn7sCV84lI7kp+wkunl4yrANoTEiMA8qua0XnyWCWeE09euyc39rr6oOO
         fV0ICJmPMGp8T6VYfivUNGbGng22KSPhSbdlZSf68KwOKSW7k8z0GomGIoWsCuUQyi0x
         TWG4yP2JoAPOZ5HTSlmn7adcbybltk2swq7K/r7AIxLkntCvvFLLpvQSWKjjax/c0hwz
         Jvm6ywnU+XeFvFHrPKrstkaCZ1IQtc5Qee51g1kgtoCowDDMa0zDR4XTyTW0qfXyJ8t4
         INJw==
X-Gm-Message-State: AOJu0YzoA4ZFZfv4ww4G6DrrpQZDQVQWF5vjBIel7Dpj7h91lSE3za2n
	aKFoYNgetnlZujhMxSgCkoHYZN6qVQejAVdOlBFPNkQ2BJ1rnYnKiBF6DD2H6+cW
X-Gm-Gg: AfdE7cmYl9kemAycFfJPPSKXOWBRhuNyZ13Ta4WQFnzziKc7DIjG+lO/gwB61/rmJMW
	/kUVSpQj2Y4e3ZNls1XWZAlZgzNeVGYetSBGWk69QSsKCZchg94CBsf99BUgxrP4tUr9yqHEz5L
	z0ezbRsZ4Bu0A+QOeEmA0mJ85WYtTq5e0GFY3LYG5dD1CTFSYWOMQV46m/wbVX92mdQZPr4PSZu
	lNXaUJ1NnGTb1TowZhkDAmKr885sMRj7EAjkxvOXapwy9L/5zo2WvqDGStwsr6+4JFpnyZZYUbz
	CtOvZoEZCnVrNx5P3EqOHV2yhpo2iOmn3/yqzL/IG/QMpjs7vyjHWnUZYVLPcklNPT4m1TJCItX
	CHxo6fYFq55x29jNyUata/juePAQ23DTRWP1l4WZFK90T6SYULQOqk9aI2MNSQ6sptmluSMVFmM
	+vf1UTywpoFVlXQ1oafj0=
X-Received: by 2002:a05:6a21:730e:b0:3bc:5235:f386 with SMTP id adf61e73a8af0-3c35741635amr1111837637.32.1784008022663;
        Mon, 13 Jul 2026 22:47:02 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3117483dec6sm77965054eec.11.2026.07.13.22.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:47:01 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v4 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Tue, 14 Jul 2026 11:16:51 +0530
Message-ID: <20260714054653.266842-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_224704_067693_2AAE8249 
X-CRM114-Status: GOOD (  11.07  )
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

This patch series adds device tree support for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

The Vaaman2 board features include:
  - RK3588 SoC
  - eMMC storage and microSD support
  - RK806 PMIC and multiple RK8602/RK8603 regulators
  - Real-time clock and status LED
  - UART serial console and SARADC

Note: This series is generated on top of the Vicharak Axon v8 series.

Changes since v3:
- Removed accidentally included unrelated netdevsim patch that was
  sent with the v3 series by mistake. No other changes.

Changes since v2:
- Moved 'compatible' before 'reg' in the PMIC node to follow DT
  coding style convention.
- Verified with dtbs_check: no warnings.

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: Add Vicharak Vaaman2
  arm64: dts: rockchip: Add Vicharak Vaaman2 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-vicharak-vaaman2.dts  | 547 ++++++++++++++++++
 3 files changed, 553 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-vaaman2.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
