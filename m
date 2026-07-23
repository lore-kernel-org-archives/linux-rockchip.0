Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C65C531D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 22:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uGynqpf/YhrHcOm3vCnVslqDisnhxPiFgzvqLYhIKDU=; b=CWrFSyYMOkvTo5
	B/2AbAChFVXCoIYmSJ+rMuKBbnQTJ+5O5E/AHZonrrPjhtfuqDQA/YbNjokoCzAWL5n18TPIVQ3E+
	2jDpGnYfHjpAyCbrQU8t71kGq3//IOlPDgfBH5b7noJYz2rv2hB0Ypg36bEHbd5Q7HKMQ/KLMovfY
	wrUKePBcKvxR52KGfs0TILbTlvc7GY6fnzxID1H45aeE+CXnbphASn4cUSV7PDkXv7BuuffGQqgNu
	ezwvhz9JD9LUha3YGA9SnaWJqH/x0zldyD2mWRs3fPhQoRGhgc7lv+akGx05c3Z5CUcDDAGCjqPhq
	veNLtVRAhcXlzgeJpZUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1zP-0000000FDrZ-40EP;
	Thu, 23 Jul 2026 22:34:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1zN-0000000FDqm-2kGw
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 22:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=MpEHESMNTRc4WI9oAvqXsy9cYc98aqQpHvwBNvy6r/M=; b=LYoJwbLRmOOK88zsXAWXGyU0p4
	ZkOuAekdXCRuIQH8poWjT1b3CsxALXIH4E6ppW+HTl4++ehT2Z/4ZHU5VtUYBElrJFnjOs8IJkRtG
	NyaeRWtuMOwUY+KQXQLyncNVK6aOT14AKbeiG01M2lzt885WNxR0fZk6b2rRzkb234mbJSDQvpMYI
	yDLMSwuvJOnnrfqYHqA7hG6+uj7brrlFlGn4B8hePNALZDb+3UB7vVtfn6gi1BxsplQ90GpbA6Eky
	h79kTEZNeBm138X21pZ8s0K6nyku9yfZP3Q6AfRfV3NfiqmXaO30qQv5iflBPMe0wYfsoIBooXfQP
	QuezOEjw==;
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock fixes for 7.2-rc
Date: Fri, 24 Jul 2026 00:33:43 +0200
Message-ID: <1912648.b8e9qBsS6s@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_153401_722601_CD015D30 
X-CRM114-Status: UNSURE (   7.26  )
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

Hi Mike, Stephen,

here is one of those seldom PRs for a needed clock-related fix for the
current development cycle, which fixes a regression by keeping
newly added clocks on, if they're not handled by a driver.


So, please pull :-) 

Thanks a lot
Heiko



The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:

  Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.2-rockchip-clkfixes1

for you to fetch changes up to 946352b2f88fd2378f0341312e47dff1e8dc2fac:

  clk: rockchip: rk3588: don't disable unused I2S MCLK output gates (2026-06-28 21:09:50 +0200)

----------------------------------------------------------------
Fix for the recently added i2s clocks, to make it backwards compatible
with the existing devicetrees.

----------------------------------------------------------------
Daniele Briguglio (1):
      clk: rockchip: rk3588: don't disable unused I2S MCLK output gates

 drivers/clk/rockchip/clk-rk3588.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
