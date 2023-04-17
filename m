Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34401C77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 23:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F5fM45R1+nsWetI7r4HKriqe8ZkwAu0pl53NOyBL8nw=; b=tZbzcEvh+NFR8Z
	ubjGCOx/LFNcVUz1TYeRNmFS2jGsGAmCDFTaAX9+DtXE7As4W+RSkd5vhKMZ4hVHdpOCLhjqsWFZ8
	gtHeRpo+8DDJXN3AwFDiP+wGqxO5L3iig4WkPjSGAHoT55DbV6tjUO0qFWMjZjbo3VEvs8dP0Nzt3
	mWJkgLl9/g4yD4REtxYgySI1vFIwzJ4ShD5zfJyrH6IzmKnh5W8A3skPJnkS693R0APYRWE8sEQom
	oSYGD420y5OxNtFlSbLbT2o0KyaGL4UI7zrTcgLM0KF1zEbCBif2bFHRYVG1h7i8y6+0dAM97hVcf
	GXxBAqe0qym4vY3BQd/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poYYV-000QW5-1s;
	Mon, 17 Apr 2023 23:46:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poYYS-000QVU-2Q
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 23:46:41 +0000
Received: from [77.22.52.211] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poYYO-0007Zj-6C; Tue, 18 Apr 2023 01:46:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.4 #1
Date: Tue, 18 Apr 2023 01:46:35 +0200
Message-ID: <3292931.atdPhlSkOF@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_164640_793949_F388682F 
X-CRM114-Status: UNSURE (   7.20  )
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

please find below a pull-request with some small Rockchip stuff.

Please pull.

Thanks
Heiko


The following changes since commit fe15c26ee26efa11741a7b632e9f23b01aca4cc6:

  Linux 6.3-rc1 (2023-03-05 14:52:03 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.4-rockchip-clk1

for you to fetch changes up to 64042c28c3bb6729df8e2fda89bc7ebbe3790907:

  clk: rockchip: rk3588: make gate linked clocks critical (2023-04-18 00:54:04 +0200)

----------------------------------------------------------------
Reparenting fix for the clock supplying camera modules on the rk3399
and more critical (bus-)clocks on the rk3588.

----------------------------------------------------------------
Quentin Schulz (1):
      clk: rockchip: rk3399: allow clk_cifout to force clk_cifout_src to reparent

Sebastian Reichel (1):
      clk: rockchip: rk3588: make gate linked clocks critical

 drivers/clk/rockchip/clk-rk3399.c |  2 +-
 drivers/clk/rockchip/clk-rk3588.c | 42 ++++++++++++++++++++++++---------------
 2 files changed, 27 insertions(+), 17 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
