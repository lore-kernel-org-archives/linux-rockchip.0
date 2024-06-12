Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA6DC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PEPtGM/P0p1wqYlUcytVmigZ7UHg7Vl1TLVlUcxCqIc=; b=O6Ezo1dEKzY4Aw
	eLT/dYqyNXxFZsgyPLCedvWFsu4B7M1OXywj1tmCJMMtiA7f99itzca2NwBeoRGr+qq45Hd1pIHq0
	IVIQpltK+ZXYjQuzaIabOzK+/clMXDJ5AVZrClKkmbCzF8uJpLYzvl2hrDhq22aHCjCpJwByIOIE3
	nUkoyPiBEeMe8DiDf3SzGE36Hgg4GkHzCtnLm3puY8V/VrrH6gBwAtFB9RRaSTyQHEV9ci4ykfQsz
	DYXTU2ZzduF8P1JyC/zZ1RG2hmB/Ls74EMVybgvCrayaehK6OrRcvzJ8AR/bFptayCGVxzMS6kbek
	mYVZWgd5Dzg9wCOH9q7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHUzE-0000000E6Db-0A6L;
	Wed, 12 Jun 2024 20:54:28 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHUz9-0000000E6Bj-0WvW;
	Wed, 12 Jun 2024 20:54:24 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout12.mail.de (Postfix) with ESMTPS id B4E4E24193D;
	Wed, 12 Jun 2024 22:54:17 +0200 (CEST)
Received: from postfix02.mail.de (postfix02.bt.mail.de [10.0.121.126])
	by shout02.mail.de (Postfix) with ESMTP id 9BFA92409FE;
	Wed, 12 Jun 2024 22:54:17 +0200 (CEST)
Received: from smtp01.mail.de (smtp01.bt.mail.de [10.0.121.211])
	by postfix02.mail.de (Postfix) with ESMTP id 79143A00E2;
	Wed, 12 Jun 2024 22:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718225657;
	bh=6m8xzsYHtwC9JE0M/yKVz8jVu/Kt+2HzHaIfh10Nz0E=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=6QIKw9Rsu7n7mugdZdPgsZCP5RoN1d8UdXFDSM2jJN16MDT6GPwUNfogw9SsRqD3C
	 FMoNtk9N9LUzoPE69SQ4DhwdQgORjCf2UqFdQUUP6C7TJ8uhZ6g9v0LYozBfsdj99F
	 RMnjD8TrGIJTWH8TB9KiakYMGvLUfX9/sBkwO0QEtB9BuFc56TWP0e0KsXV5Nbb1SJ
	 wkqhlrNrxC2XZsSaOAraoSRwScaR0CxjUKUKuRSQ1NUvzXlv4uSUPOvhFBWsdwAoQG
	 khVbU4997HK6yoWuYcUU0sQnRsWhhej1cUSav/eyNrUJ+fzu4LJ857VogZRU38foyN
	 GMHuRYEkXjFmQ==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 30B682400C1;
	Wed, 12 Jun 2024 22:54:15 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Refactor, fix and improve NanoPi R6 series
Date: Wed, 12 Jun 2024 22:48:09 +0200
Message-ID: <20240612205056.397204-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1402
X-purgate-ID: 154282::1718225657-FE5BF670-6DE0309F/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_135423_332981_FD5294BB 
X-CRM114-Status: UNSURE (   9.34  )
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

Hello,

This patch series fixes a lot of minor issues in the current devicetree
for the FriendlyElec NanoPi R6 series (R6C and R6S), as well as adding
support for the GPU and one USB3 port which was previously disabled.

To aid with these patches, I have refactored the devicetrees in such a
way that they will now share a common dtsi source file in a similar
fashion than what the NanoPi R5C and R5S are already doing.
This makes changes which only affect one of the boards easier, less
error-prone and more maintainable. Also we don't need to work with
/delete-node/ and /delete-property/ this way :)

Cheers,
Sebastian

PS: Additional comments in patch 2 and 3.

---

Sebastian Kropatsch (5):
  arm64: dts: rockchip: Add common definitions for NanoPi R6C and R6S
  arm64: dts: rockchip: Fix regulators, gmac and naming on NanoPi
    R6C/R6S
  arm64: dts: rockchip: Improve LEDs on NanoPi R6C/R6S
  arm64: dts: rockchip: Enable lower USB3 port on NanoPi R6C/R6S
  arm64: dts: rockchip: Enable GPU on NanoPi R6C/R6S

 ...-nanopi-r6s.dts => rk3588s-nanopi-r6.dtsi} | 242 +++---
 .../boot/dts/rockchip/rk3588s-nanopi-r6c.dts  |  48 +-
 .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  | 743 +-----------------
 3 files changed, 193 insertions(+), 840 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-nanopi-r6s.dts => rk3588s-nanopi-r6.dtsi} (81%)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
