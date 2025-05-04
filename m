Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10E69C369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 22:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2yL/TpETQ7UhvGCaWkWvm4V/zF6RnLvZgoaOJDz6Slg=; b=aViFyvKH2PdELh
	T6Y7OKvii1ESLDLZmjQnmIS1YkAPxOYdWaR8aHeFICy/NTjWahQ1DFu0efUExwPkyeEksZZWaXBq/
	yaPDlsqE9p+U18itEwsFHVSMUB5I45zBHu9crRQ3xLKeIy7Aj9gmmjVrp2AzEgfOyw0yO3j0CsHw3
	hbuU02xErAznNezaK4uylKA3jkCLRnK9iMfdzh1xNWwEtrEH/VGVqq3Jcmw0w/C2tnkiFzZMsXyNS
	xXKbGjwzWLdkp0mLmSU0ZTQqQqy3s6JFwZVyS6DxzqmAT7DGYwOhAnlYJTsSlSeL/p5fclqbfLSPV
	it0uv5qgZ72Dqv7YSxEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBhWL-000000062GE-1jFO;
	Sun, 04 May 2025 22:09:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBhWI-000000062Fa-1tYk
	for linux-rockchip@lists.infradead.org;
	Sun, 04 May 2025 22:09:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=UJHS/deKALTS1fEsNNm2kcY+92bgBd8Nc8/JBeUNYdM=; b=POgwbCERqcEyY6iBwWLO8DP3cu
	USU9WJFu4XDFaG2MTk0mskNDOGnfMtamWVGjEUyEj1PtOXM+Yf8gTspp1GP20A/JjmumL9Yca+eBq
	S9dVfoPE3gwr1cSVAYSjV3pxRcS57XM0wqAEbHjLeTf/7j91rd5CTu2gLuJuTWsLAsiCspdF2rYMd
	lOC88edKHXlpSawMWidRcLS9NHX1bRL0SdZU0JcakWxswJXrCrM8lQ6SmN0BW/5r6A/caFN4JH3Ef
	2wjtyHvHL/ghh9RGVmUde5HrZORZ9CVHzu/BDH5lHnPYMsrm9w0bPjcEnhFo8YjFBRoHPWoFb2bsz
	EYRh13XA==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uBhVz-00069J-QR; Mon, 05 May 2025 00:08:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock fixes for 6.15
Date: Mon, 05 May 2025 00:08:50 +0200
Message-ID: <3034384.VdNmn5OnKV@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_150910_519659_7E93102A 
X-CRM114-Status: GOOD (  12.05  )
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

for once I do have a fix for the running 6.15-rc round.
The nvmem support for the rk3576 encountered a number of mishaps.

First the clk patch was marked as applied with the driver patches [0], then
on the way from the nvmem tree to GregKH's tree something went wrong which
caused the whole nvmem patches to reach Greg after the merge-window [1]
which in turn meant that the otp driver change landed only after 6.15-rc3 .


So right now, both the driver change as well as the devicetree parts are in
6.15-rc, but that one gate definition from below is missing for everything
to work.

So, please pull :-) 

Thanks a lot
Heiko



[0] https://lore.kernel.org/all/173978599692.25901.15315285566342669137.b4-ty@linaro.org/
[1] https://lore.kernel.org/all/20250411112251.68002-1-srinivas.kandagatla@linaro.org/



The following changes since commit 0af2f6be1b4281385b618cb86ad946eded089ac8:

  Linux 6.15-rc1 (2025-04-06 13:11:33 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.15-rockchip-clkfixes1

for you to fetch changes up to d934a93bbcccd551c142206b8129903d18126261:

  clk: rockchip: rk3576: define clk_otp_phy_g (2025-04-26 00:04:49 +0200)

----------------------------------------------------------------
Actually define the gate-clk for the otg-phy on rk3576 to make the nvmem-
support work, that was merged for 6.15 .

----------------------------------------------------------------
Heiko Stuebner (1):
      clk: rockchip: rk3576: define clk_otp_phy_g

 drivers/clk/rockchip/clk-rk3576.c | 2 ++
 1 file changed, 2 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
