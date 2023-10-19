Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10042CDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 11:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dWZbwX4i3ozJ94+GxJD7LBnmbrzK/WZEg10QrMH+oeI=; b=jK+yohqQjhmUPu
	p4XQOZIsAQ/fFm4nzRAugVTT1JWjySkpaZIEjWevC5G1aRTh0y3pW9SvsgU3AIUuDTxu+exWiWXVT
	ojtDjQSmayqthonHAqWJPGEhuAEPxOMY+66Hwt6D9mgCpeMS+ZWuGq2KLAjr8jdbB/CwBCZuhtOml
	7EYyGPzf9JkNAHf3/Etunm/k2UIDrVQTV8TUlIMXmmdFRBNzZ64xhSxR36jCsotqt1SIMP1R2Cjq4
	KznZGU8k2rgyCX4gkrGVK5BgKoHzL+/2tTUFkltAleaaTTCfYWu8nD7v+/gQ+U9X7ozs3YqGoq5Qe
	8jeKvmsqNQy59jCtTp+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRE9-00HAKx-1w;
	Thu, 19 Oct 2023 11:30:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRE5-00HAK5-2H;
	Thu, 19 Oct 2023 11:30:07 +0000
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtRE1-0003Dq-9D; Thu, 19 Oct 2023 13:30:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL v2] Rockchip driver changes for 6.7
Date: Thu, 19 Oct 2023 13:30:00 +0200
Message-ID: <2171043.Icojqenx9y@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_043006_569324_CAA65339 
X-CRM114-Status: GOOD (  10.29  )
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

Hi Arnd, Kevin, Olof,

I still see the driver pull request pending in the soc patchwork,
so opted to replace the tag with this one.

The only difference is the addition of one new compatible for the
rk3588's pmugrf.

Please pull
Thanks
Heiko


The following changes since commit 0bb80ecc33a8fb5a682236443c1e740d5c917d1d:

  Linux 6.6-rc1 (2023-09-10 16:28:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git ta=
gs/v6.7-rockchip-drivers1

for you to fetch changes up to 3bd1c0c62bad8ea7f9cc6662e754f77ec8baa46e:

  dt-bindings: soc: rockchip: grf: add rockchip,rk3588-pmugrf (2023-10-19 1=
0:52:13 +0200)

----------------------------------------------------------------
Converting the io-domain driver to the new remove callback
and addition of the rk3588 pmugrf compatible to the binding.

----------------------------------------------------------------
Sascha Hauer (1):
      dt-bindings: soc: rockchip: grf: add rockchip,rk3588-pmugrf

Uwe Kleine-K=F6nig (1):
      soc/rockchip: io-domain: Convert to platform remove callback returnin=
g void

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 drivers/soc/rockchip/io-domain.c                        | 6 ++----
 2 files changed, 3 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
