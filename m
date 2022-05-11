Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A682C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 23:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1UtEpvuyZEaTjx0Wx7HnHtY6BDWmGqfWO3HdNf/Q39c=; b=5DMUHxp24bfpww
	/27MUDpnk3Y6y0PmMWZgpBjQRNHkSPRRbs0ciQHAhICHXSVOQSdVcdqAUbwb7EhQArq3NOk7PhLgj
	9/P7ZnlDPtStcdsXUsOxWzoqr/i/+gzXQA4chQ+PcvJ6D3efeNTJjxJaTAi15+fYGGPhBJrCDrB+a
	DPlGfHy+oT8b8OyO5K4pwyMeK6umBOLkZBEZJ93x35QOog4+FF9QpK2JxQ39oB2TV62Iy7GCEA2ba
	dtUcc4UFZxNFoOYtXa1oBUyuVenHYMFUP/8p9cexI1zJ8m9bjt7Re8bNGqWaYf67zAFuNDp+lnsdD
	UttSmlZombr/bs7wZwuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1novyQ-0095fH-8w; Wed, 11 May 2022 23:42:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1novyO-0095ds-0D; Wed, 11 May 2022 23:42:29 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1novyK-0006Td-Jn; Thu, 12 May 2022 01:42:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip soc32 changes for 5.19 #1
Date: Thu, 12 May 2022 01:42:24 +0200
Message-ID: <4421093.ElGaqSPkdT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_164228_089081_21E30B2E 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:

  Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-soc32-1

for you to fetch changes up to 2946aa908bb63539b566fc3ba0b867022787602b:

  ARM: rockchip: fix typos in comments (2022-04-04 10:43:20 +0200)

----------------------------------------------------------------
Comment typo fix.

----------------------------------------------------------------
Julia Lawall (1):
      ARM: rockchip: fix typos in comments

 arch/arm/mach-rockchip/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
