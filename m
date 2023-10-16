Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 201DFCDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 21:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5+UbD9srrXB8SI8Aznxlnqy2x70TbIUOvaOZFqrBdJw=; b=1DL7FkY5QEzgIP
	e+4bU65pQFtNfPTy+sGQOIEVJJA4T3P3fkNq/cPdWp6GOx4ePP+a3x8r/pMrCHvboYrOgGS/ea2C2
	bBTddozQlL9ykber294tvLZVF+wqSVMmICzI/y8cnN03knLOX2dp7J3VeI+1c7365oDlH8mSvGHXI
	ZNIFVSVKeIPp8Tj66gJbY4Slbb+3Ncvm5taeV4zRMxKHLIA08nerGCxALBMPMjY+BnzpUYSmSr53j
	+6kMuqm7edaDZkFDWS1gsiH6WGw70m/RTrZBEAcBgbfNMeRRood4KfRLCGcAohlam8I7QHBun+HIs
	cgfMByfeY7hQZUzQQz0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsV47-00AZbb-2M;
	Mon, 16 Oct 2023 21:23:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsV45-00AZb6-0w;
	Mon, 16 Oct 2023 21:23:54 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsV43-00013u-Cz; Mon, 16 Oct 2023 23:23:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 6.7
Date: Mon, 16 Oct 2023 23:23:50 +0200
Message-ID: <2578684.Lt9SDvczpP@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_142353_333451_0C4B0F52 
X-CRM114-Status: UNSURE (   6.21  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The following changes since commit 0bb80ecc33a8fb5a682236443c1e740d5c917d1d:

  Linux 6.6-rc1 (2023-09-10 16:28:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git ta=
gs/v6.7-rockchip-drivers1

for you to fetch changes up to 20bd1191830478cfdc9be766a735923c5fbe5350:

  soc/rockchip: io-domain: Convert to platform remove callback returning vo=
id (2023-10-02 00:56:13 +0200)

----------------------------------------------------------------
Converting the io-domain driver to the new remove callback.

----------------------------------------------------------------
Uwe Kleine-K=F6nig (1):
      soc/rockchip: io-domain: Convert to platform remove callback returnin=
g void

 drivers/soc/rockchip/io-domain.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
