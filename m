Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC729C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 05:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+74MdCF//susnf/Q+087jb/fKyKZCQ4OVy8Ns5oV2w=; b=vW5FtN043JoWMi
	a/O/vpd5p1SF2iu0Z2zmA71HLZIAf1ilqHGk68z7x+5g/kgyp4YjGviR8hbNON3ejYsBcr4myf3nM
	cQv8GnEJtiSlMXG2BNsHdYG5dsmR+axvTcCaKfeuQ6260qkVMG3RZDJrHdzw4UUSsPBKZeGJmEm+I
	btst7xHXOllni/5gtI43VyvlUqjbgAgp8H8HyHqt0JhLLtP0IpNKqGfEH2yju/Tu38F/ALo0EwDjP
	Fx93cL1S3zg8AUpgt/Ae7WcVoLjIyDq4Ss+EaWJf0U4bDAIeVIjOYbdhh3OJ7z7lUoeuGT/EOPN37
	iBiFCaPVmkXcRMEzXESw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVnD-0000000AxGS-1sJ8;
	Tue, 14 Jul 2026 05:34:55 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVnA-0000000AxDS-3ZkS
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 05:34:53 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2ccdb73f0e1so5319245ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 22:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784007292; x=1784612092; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=uLqt9oBztUbvRv8OAQ6eZQm+Ad2L2smZE47dXioClZA=;
        b=OMW4o2a/FNkHrh5nH5CDDMJinnMBRfDZwW4KrlcMshonvCsSWff1Tes9P8cwCccwBW
         /vHQorWhrSdQUwxt0RGDemtJwt5Q23UR5AjbaK0JqdEEirhBs2IxK8g5MNHjwZEBc9uK
         hdaoG+nIjfpohRi057hT7zNDLwFKjnkQGN+Ltgmue0A7gBB9XXjdTAnnGMy+xYXja3g4
         7EqNgWEj23VAy9/5FmJQPj6myuzHQJNJj3He8XK/N2xozQkjWR2ARDlswmlwqOAFAFnI
         qH09A7ebi51F/H9hd76/t4tJgw5V7zklqnwozjCz0/33nkLU5aT/QU8v1hqmRqKAZTLa
         tA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784007292; x=1784612092;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uLqt9oBztUbvRv8OAQ6eZQm+Ad2L2smZE47dXioClZA=;
        b=P09sDn2VWODFHE/4R8yGazI3fib/I7uxkM9cHPamG57i+bnbBTlzJZrj7YuOX+7Qro
         NBTXw92UFHv7z/nU1Of2xrDss2ACHWwnk30pH+uiHeX893u1lYFQzOK1JAGsL2Kufebv
         z3Ex6EdNTV4q5IZmWVivvn48XgXT1iXynLhVysSkV59Lg/T5lpKiCUhS8rrqfEk+kc0Z
         01oAQgYom/8w3f2N0emlpQUjRnl3BfgYZu13A+n/kMxDhdhDMM18fuxEAYC9Gw7fztxA
         0JH91J0yKkKNeJdeSlWScenhIpVe0qI8wdrqFl+xsfzRTC0uD8+FEfK9ZSBYI4FJQpsN
         MyfQ==
X-Gm-Message-State: AOJu0YzQKwkEw0shba9OPgzDog4XnYlsfYJdd4+5x7CWnMUtDVvn7kKK
	1QM77kWi03tOyt6ubZ6sxQb136Nx8bXMVsgs1dRaQkLGSkPB/i7ruH4FfcZ+EvwS
X-Gm-Gg: AfdE7cmaFG8+eFwEXQfO/hQpfw+Gq+j2+ssWKf5v7/rkAV3wJs2NlXXmGVnKK4gzGlR
	TpOtJUdC2MmhhfhTXEnThajVOGiajkD1mJCc8UkXax+XfULc291Ur8+hmpTb9qwmlMKHOb9BKjZ
	VbbAw3rAa0EOo5u6QMzMeZqOUOy7nmesfhejSURYJbWJG+LqodcFjAkCYrf99G68HlyYhbuz4GH
	86zvltM38DUn1BqzYx2rwIiUe5FsPDJCXMUc8CmhDwDFlVDwwX4n5rz5E3Ew2hDoSM01I2252Eq
	bqtWB/TZ15md060pQNEflCTQm7HJYrZ8KSeShmZliSMx5kLtnWOJ7HbhXqG2BMnaVHGDZMP9RlU
	ocIzWpy+QrD/FotiCOheP0ZHYPwGvl1mtZQKzGY/3VwtaOxIMTjLqlTn8VcRrVN8QHOSZ9HcNF3
	9dPqcnjOXl7pHKVl2DuYT/
X-Received: by 2002:a05:6a21:b94:b0:3c0:9c1a:8950 with SMTP id adf61e73a8af0-3c110b34e5bmr12358936637.72.1784007291897;
        Mon, 13 Jul 2026 22:34:51 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b659d8da9sm131882715c88.14.2026.07.13.22.34.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:34:50 -0700 (PDT)
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
Subject: [PATCH v3 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Tue, 14 Jul 2026 11:04:37 +0530
Message-ID: <20260714053442.265587-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_223452_900702_E791F6E8 
X-CRM114-Status: GOOD (  10.58  )
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
