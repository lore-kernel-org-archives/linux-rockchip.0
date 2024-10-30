Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F7D2D3A67D
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Oct 2024 09:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uz2VF3PyKld7LTqU7q1scw6wDdAiXM00jLUITkgB+s8=; b=cr8xsD6sbGaCUe
	6Iiq2GCZl6wlmmIPdxyWNfBMyCStZEvmU1SjPb2Ht4Gm0QHJetITmZWafbL1BHFMJqqR0RKvWsO34
	yKAxTU86dnjYB+hjyrLUyUO1czg+b7YMewErFEKxDJFfjU7gWYjdZztsTx4TCNG7UuZZ4d7NZzejv
	JcvN7m7rJJt4bcbkYxIa81HNn9zbLxMR6cG/X8LHOAcSWReUcLsmEt2HCbmyqiIImycH9r6/jopJ/
	Amh3fsYVAWB6SXzj5jY4X+iJRtED9zRvzz5pF11vFY8acQ8V0I6ZR7MnnP3OpGokWI1pcJZkUUh9W
	c+xDIb/LB0Ns+9NxjgQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t64ws-0000000HO2U-2xe2;
	Wed, 30 Oct 2024 09:25:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t64vU-0000000HNq5-27Rv;
	Wed, 30 Oct 2024 09:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Uhdou5cD5+0jzF0FGqaV2hlj7IP/eRGRFKnP2xqKfdo=; b=qENsQbh9M1Km9wcDHNUQJXnAZ+
	W0pmHZ+Kz5GzO46RdDRoEdhSunMrO+d0CV2LIyL43PMkGN7aBz2MjH5QPn+nhUHK32KpkGMpWZ/Ii
	fx559e3xIzqH4tQ+AvUnLzmyJCoJ23L8+Cdso9mQ109VuwnHk9djRrOqG5BhjdO5KTRBG9Okx3pWn
	DNjNkSsVYe1gD/ajv2afKdHtiNowmvucMKGl3kPGiVtcGFEciL7GXcx1cGJT7cYc7Z72YFDrT3LHJ
	HP+8GSpCI9UPqYCki97ert7e9g4P9gD/V1uguu9aGO9niGQG0uu8Jd93Oiiz8KMYWnpNGxROOi6zF
	cqLwl3tA==;
Received: from [185.156.123.69] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t64vT-0000ki-6N; Wed, 30 Oct 2024 10:23:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.13 #1
Date: Wed, 30 Oct 2024 10:23:38 +0100
Message-ID: <6096384.lOV4Wx5bFT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_022340_578088_C8765D0B 
X-CRM114-Status: UNSURE (   9.90  )
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

The following changes since commit 9852d85ec9d492ebef56dc5f229416c925758edc:

  Linux 6.12-rc1 (2024-09-29 15:06:19 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.13-armsoc/dts32-1

for you to fetch changes up to bdb2696ac5786ed3f43520e700347fe2152ea199:

  ARM: dts: rockchip: Add Relfor Saib board (2024-10-14 11:35:50 +0200)

----------------------------------------------------------------
Watchdog for rv1126 and the RV1109-based Relfor Saib board.

----------------------------------------------------------------
Karthikeyan Krishnasamy (5):
      dt-bindings: watchdog: rockchip: Add rockchip,rv1126-wdt string
      ARM: dts: rockchip: Add watchdog node for RV1126
      dt-bindings: vendor-prefixes: Add Relfor labs
      dt-bindings: arm: rockchip: Add Relfor Saib board
      ARM: dts: rockchip: Add Relfor Saib board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 .../devicetree/bindings/watchdog/snps,dw-wdt.yaml  |   1 +
 arch/arm/boot/dts/rockchip/Makefile                |   1 +
 arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts  | 422 +++++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi             |   8 +
 6 files changed, 439 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
