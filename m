Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F42D49795
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 02:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x5asQ4paI98W54DwUZ5W39WkNnp3t8nwExnvQZ8YHPE=; b=wtTbSmA5cwbnV5
	iVuMoqijUuzEKKjKe6XP/ZDV6HlqwX85Pzhl6Y4TMfIE7CcoPu9nASc3o5HmqYWWjJxMtX7XtdPaT
	+Ct8662nLmTo2J8fNmlxcI7+SGkXxTYoz5Xfi8hUR2YJAs5rKqmFKlrs7tANzdZMKFscntaATl20t
	A13gXNeWHY7/estY0rGGbyXR/hNfze1Pdd8HWbJ4SlGBhQLeijcBlOIVXGawu1p3feqZhh9SM/UCw
	EIHmwQcwBYVJJ1JuXv1cMO/kYqmWH1+Zsf5njm29cW8TDUw+5RWpReH68GyuL2H7Z/yIHmWhUCYsa
	7xC4s//HizUjtKhYAnyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHwGR-00000004oiz-2ZL9;
	Mon, 02 Dec 2024 02:34:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHwGP-00000004oiA-3WuY
	for linux-rockchip@bombadil.infradead.org;
	Mon, 02 Dec 2024 02:34:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=8lfY166LJpA4ajp9CO98GWzsJ7RPDQ9cXBeQ0Jd4YEM=; b=aWAsH6rYTeSZ7VNvuwdPIROo5/
	utfoCCL474UTPvYfUOqMyVJPwHP7gbNwI3iEYMyeFNgCmCEl7Gb66q6XFoiHCrxzqmUXi8rnqicfx
	qgQlOh9XOhvrh3LFVqgZaNAKuAERacV7v3+7Vb3aFZLbqn4bE0aktyKOvE6T9oklPYOoC6PhyPWOJ
	kNvrfOiuYUYdZe9Dbuw3LSHqvyUhrYlTWiOtjhQSJtR8073BcX5UYRn8JNW8/DNfsr/J1JQYkQOd6
	EB6W4ArCWmWPkEyo0ZHwux2jtUKANztOlQT7cFp6ybBekIGOrM0NpkFIn47XJ3MEruLbP01lXYKPr
	fJ8xOB7Q==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHwGJ-00000007Ntm-0pfI
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 02:34:16 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B22XVDd000375;
	Mon, 2 Dec 2024 11:33:31 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v2 0/4] arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
Date: Mon,  2 Dec 2024 02:32:23 +0000
Message-ID: <20241202023227.2671-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_023413_167431_B8720B60 
X-CRM114-Status: UNSURE (   3.48  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

this patch series sort nodes and properties, remove redundant
properties, and minor cosmetic changes.

no functional change is intended.

this patch series depend on following patch series:
 "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
 https://patchwork.kernel.org/project/linux-rockchip/cover/20241130004057.7432-1-naoki@radxa.com/

FUKAUMI Naoki (4):
  arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
  arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
  arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
  arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 184 ++++++++----------
 1 file changed, 86 insertions(+), 98 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
