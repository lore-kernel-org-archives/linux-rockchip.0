Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9AB9C83F17
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 21:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5gzk2I7vln/WTZB3v0ictqkL0/VHvgrcfg9pFkJLiYs=; b=w3a0H8zpgWDNQG
	thvUypWtyNVl7BGVLGl0Kw5q3ZBPTs5V1NFTD7jZ805GnTvnGcfXhSo6CG9kt+quxXy01iqdeRu1V
	JO9KfYBOlihBsTi761aS5wHyYNzvIpYyMZCzO9oSRqMhyG28jIo3WKk+fFDkmnV5On1NHkOvbjCJz
	8QdgI11HXZZ0YPV0BnbGZjB+AeNKx0lbOXZsWQzOB9BDf9vz5RFUWHg1S2CqyLqcndoFpU3fkGgiZ
	703o4I3ZXQreFhaGxepCiP16mZ8g96qEf/SYHS4s/NfXmL3Dxwsl5hiIILPO7R3bnktrFNtvYuAC/
	q4MQGK53EzMCwBH6011A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucsM1-0000000DSRo-3ccd;
	Fri, 18 Jul 2025 21:10:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucsJa-0000000DSEj-3oIz
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Jul 2025 21:08:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=54k6sFdGBp4s1YIJqMzamAxw5U+YBLgP6C9de7yVWBE=; b=nCDInpQG/1vSCl1B60HljDWF8r
	Jxm9bop/KWP7tarNjK93x7WyDvcMv2Zj3B5xTyPx91yRVJzXSdDFukOLFOxP+8uRypUkp7VxctxK3
	qMWqvRtNC1VUF/M4LJPIVZGPFJ4HUtlRamSDX+2DV6K5EvVEziY2Ld5uao8UHXtaEu9QQzK+eiTp7
	JJul6vhn90SfZMe+jiglq8lwTILlkHPYqwbZ33HN7wTUfqd4WDwKa8ukUiIEuAZjOim/7Y/puSIf7
	Xy4ODb5ei0/XVcRCr25SLNjZg7ubDniMRpFqroPdEthvOVrUGjmgGYU/tmghvbzpjGi1YKMBuMybg
	/2ijqBrw==;
Received: from cst-prg-35-241.cust.vodafone.cz ([46.135.35.241] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ucsJW-0007H3-3H; Fri, 18 Jul 2025 23:08:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.17 #1
Date: Fri, 18 Jul 2025 23:08:17 +0200
Message-ID: <6515302.QJadu78ljV@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_140822_956277_12354943 
X-CRM114-Status: UNSURE (   7.32  )
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

please find below a pull-request with Rockchip clock change for 6.17
Just a single new PLL rate for rk3588 this time.


Please pull.

Thanks
Heiko


The following changes since commit 19272b37aa4f83ca52bdf9c16d5d81bdd1354494:

  Linux 6.16-rc1 (2025-06-08 13:44:43 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.17-rockchip-clk1

for you to fetch changes up to 132b62280a9dbe38c627183ae7f1611de3ee0d9a:

  clk: rockchip: rk3568: Add PLL rate for 132MHz (2025-07-10 13:47:36 +0200)

----------------------------------------------------------------
Just a 132MHz PLL rate for rk3588.

----------------------------------------------------------------
Andy Yan (1):
      clk: rockchip: rk3568: Add PLL rate for 132MHz

 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
