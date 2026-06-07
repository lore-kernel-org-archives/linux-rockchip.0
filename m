Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86F84CD8C90
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jun 2026 23:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BKxcObGNc0pC4L9AH7LigRMtIu5j0vply1H+sJ/e7KE=; b=ns6lgKyQzBipMo
	8RTTMSg4nkYBtA4yEMTB/VFIY8M9YV/iQngJjV6mJFZiyh/OqK+bvAc9MddrHSvRvs4i/vOXfbzoy
	E1IZDH7dkuAe1iqTi+0pWay60sHqV6kp1bnssxSSyXn66WAzUm9myHV471MKTSPs+Dk/EM4UW1QzA
	Z4Olz48mhniSCQiNkf+05GiDWWxvX6pjx1RB0VZAvXYc1Rq4LTH0g9FcLVUvNB1WwQVzGSAv0fZQP
	DRhDkewCegQIipzXFXNWaLRjYUgMErLSdWgDuqGgRPPucTzaM2wslUjDs4TTZZqgxPjHei+ixSQsu
	j3QJxnqVwaMUS9nqnuyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWMYZ-00000002ar9-1N9V;
	Sun, 07 Jun 2026 23:05:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWMYX-00000002apu-3N1S;
	Sun, 07 Jun 2026 23:05:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=cE/v/JRWqxvR2nMJfCCxhijGuM9JNKaEf7wsDCp9848=; b=YlY3+8waVjjmyA0a0J+o/DDs1i
	inaCig1IZQZAFadHnaotMWwduUWZOu5JxF/49MUaYDlkodrccZuaekR+WCGMm+JZSR+8VMx8FF+71
	ydMob57IWnE2I7t/LsnSo8tLGBYo4DgEUzfymdk3L7c6Y30mSBF0bJPMdcOmIUn9AE3+T0lp43MWN
	ag0+YcU1igzEGBXhAFvqcW8YwsT9EwVtJjeRMoztmyvjvm9S7bpT2HLPQqbwXvVGlQbGtAufs+a5c
	+Ysj5sFFVzlKFLcSkQ5U2hKPO4C812CEPcVMgeg/b9TAfmg7GKS9EKt0gCsm68/3WVj5+KKatewHc
	aK/5bb0w==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wWMYU-00000000Gch-1Igb;
	Sun, 07 Jun 2026 23:05:24 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5998427740;
	Mon,  8 Jun 2026 01:05:18 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OapcbgyAuZT4; Mon,  8 Jun 2026 01:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1780873517; bh=Y6ZqthY0/KmfwbT+mbcPRxThag2E4h/avLxT8wpSRmE=;
	h=From:To:Cc:Subject:Date;
	b=EJjtLYkwO+t6DDJH7escbwwh0r1yL3RwRmB269vydRugTEsH7/hhpUWgvwY/xXNeA
	 MEdwG3EP8zMcv2TyjqoEsVa4Igr5iwmnZOQvUMik4Omt9CWj/Oi58+QdcYuLdWUyce
	 1MVWyfvRUlKGYc+wyZnEKZa/pWBiEwkDFSqCjW7ZhbowI5vhFwHc/bJmAORqmNihwj
	 ecjF4p68zB87E3RhlMSJGzQb1T5+9w7qG2F8MNYvGYqVzJANUrzR/DaOwTJlK2eBb1
	 9xdhzwtHz5GH80ReQPAPMFsIb65yV4VsPbFwYhNnpqzAo4Yad96JbTPCvpsG77Wubu
	 KveugGp5d7IGA==
From: Marco Scardovi <scardracs@disroot.org>
To: Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] gpio: rockchip: Fix generic IRQ chip leak and modernize resource mapping
Date: Mon,  8 Jun 2026 01:05:01 +0200
Message-ID: <20260607230504.35392-1-scardracs@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_000523_018782_0AE2E784 
X-CRM114-Status: UNSURE (   6.86  )
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

Hi all,

This series fixes a generic IRQ chip leak in the gpio-rockchip driver
and performs two small cleanups to use standard platform device helper APIs.

Patch 1 fixes a leak caused by generic IRQ chips not being removed before
IRQ domain teardown.

Patch 2 converts register mapping to use devm_platform_ioremap_resource().

Patch 3 converts interrupt retrieval to use platform_get_irq().

Marco Scardovi (3):
gpio: rockchip: fix generic IRQ chip leak on remove
gpio: rockchip: use devm_platform_ioremap_resource() to map registers
gpio: rockchip: use platform_get_irq() to retrieve interrupt

 drivers/gpio/gpio-rockchip.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
