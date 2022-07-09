Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A46C9C43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 10:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Un1fHT4XwvyOliWcx3xD5eH6+riDFH1R4jCbh6irMic=; b=O3CRv3L9yZw9nK
	kjfdwlacCpdX9zc9Tmx6i6GPdGfP0qS/UKoE4B+ZZS4dsk1P9yG74Szy9/uvXyVa20JS96PIXR+ut
	TWwMmztAgRik9A1y3LiHLw5MBqW6M5y/fLPOSoUwglSJ5kr1UBP5U/9Zng+pt9ZpBYsLEO5OljaML
	N6SXrdG+nS0NGTPlgfO8e0RG/yPSId02Q08VLSyhB+X1QXGAqhiG87C0IPIxbjFCspns+BxxSB2V2
	nfpcVtau++2Kmf8FPBpwslx04n2dCljpeT/hitiXm5N0jgxcgE59gMgvKvwVLUjJdTl9+EwR4hpSX
	rmNBs2oTSiFoA2BWSTFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oA7iV-007fio-Hj; Sat, 09 Jul 2022 10:29:39 +0000
Received: from mail-m973.mail.163.com ([123.126.97.3])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oA7iK-007fg8-9X; Sat, 09 Jul 2022 10:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=l8Sjh
	h/ajXiO3k0wRoZh6m+Gbm4m3upjBKizi7FLLKw=; b=V2mWCaJwuSP2gsunVwZYK
	dbxHpHE1URf//dqC9YoLYsa2qAYL9uaehBW+tCNWiZ/7pjke8A4+RrXrxDbqbHOl
	Dd4Pbu3zUbNlJyqjLwfqcfRT8Sdfjae8P5WgAva+xW5cqhLE5R+uRa8mjR5ktQ41
	92OkFNCq3hfCpQXn02t2tc=
Received: from ProDesk.. (unknown [58.22.7.114])
	by smtp3 (Coremail) with SMTP id G9xpCgDnVndwWMliAnvfOA--.503S2;
	Sat, 09 Jul 2022 18:29:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 0/3] Add support for rk3399 based eaidk-610
Date: Sat,  9 Jul 2022 18:29:02 +0800
Message-Id: <20220709102902.2753851-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: G9xpCgDnVndwWMliAnvfOA--.503S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZw43Jr1kuF1rJFykZw1DWrg_yoWDuwcE9w
	4xCr98JF48Z3Z5Ga98tr1xGrWrAwsrC3ZxWa4rtF4qyF98X347JFn5J3s3Z3WfJFW29Fn3
	ArZ7CFy0q3Z3KjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xREpnQ5UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBsh05Xl75fWYasAAAse
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_032928_773685_53E37350 
X-CRM114-Status: GOOD (  10.62  )
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


EAIDK-610 is from OPEN AI LAB and popularly used by university
students.

Specification:
- Rockchip RK3399
- LPDDR3 4GB
- TF sd scard slot
- eMMC
- AP6255 for WiFi + BT
- Gigabit ethernet
- HDMI out
- 40 pin header
- USB 2.0 x 2
- USB 3.0 x 1
- USB 3.0 Type-C x 1
- 12V DC Power supply

This patch is test on Armbain and Glodroid with
HDMI/GPU/USB HOST/Type-C ADB/WIFI/BT.

Changes in v2:
- split bindings to a seperate patch
- address Rob's review about power-key and auido codec
- drop status property of fusb302
- enable bluetooth and typec otg

Andy Yan (3):
  dt-bindings: vendor-prefixes: Add OPEN AI LAB
  dt-bindings: arm: rockchip: Add EAIDK-610
  arm64: dts: rockchip: Add dts for a rk3399 based board EAIDK-610

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3399-eaidk-610.dts    | 939 ++++++++++++++++++
 4 files changed, 947 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
