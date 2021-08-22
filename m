Return-Path: <SRS0=1QWa=NN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1454FC4338F
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 10:14:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 481EF6126A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 10:14:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 481EF6126A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K3WE7xoluk4kWhn9VoJFUIX3RgYIh0MozWDH8KOfYzw=; b=fJDYDMiS5Y1VBh
	xPTA+nPCpXuvlEAjKzQNpv7AghczuhU0yiBnsYjh/Dj7K5M1EzybE2RjqIp+Yqcuv3fP6y/q8LFCY
	+SC6iYp4AK3jGm9ilCAqNG5Yk+UvVzAJRdKsky8KP5YDKCIgIUTY3e+hJYiOJpqqFbV4WEyob5Hsa
	JzIbHntoXB+E/RsaDmenTd192+xjIKvV9Vl3iO7mICbDOwDcAvaTFUIzU4LMAJjFuDLrCCVXDFJN1
	IpuBG5Oh3C7SnIQD+4jbDcFtxLngrl8m0bxxsr+Y1foETMcCJt30CGelz/Eqcu148lB7Q6j4iz8t6
	jvi2b6wM/a6WPA91gaog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHkV8-00DojK-Rj; Sun, 22 Aug 2021 10:14:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHkV6-00Doix-6f
 for linux-rockchip@lists.infradead.org; Sun, 22 Aug 2021 10:14:49 +0000
Received: from p5b3b3c9d.dip0.t-ipconnect.de ([91.59.60.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mHkV0-0003p8-Pt; Sun, 22 Aug 2021 12:14:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 5.15
Date: Sun, 22 Aug 2021 12:14:41 +0200
Message-ID: <4308060.PYKUYFuaPT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_031448_290115_D7912012 
X-CRM114-Status: UNSURE (   8.57  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mike, Stephen,

please find below Rockchip clock changes for 5.15

Please pull, thanks
Heiko

The following changes since commit e73f0f0ee7541171d89f2e2491130c7771ba58d3:

  Linux 5.14-rc1 (2021-07-11 15:07:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git ta=
gs/v5.15-rockchip-clk1

for you to fetch changes up to c0c81245dac7caaef4db627fb7043495d1afe662:

  clk: rockchip: make rk3308 ddrphy4x clock critical (2021-07-29 12:43:11 +=
0200)

----------------------------------------------------------------
YAML conversion of rk3399 clock controller binding, removal of GRF
dependency for the rk3328/rk3036 pll types and some clock tree fixes.

----------------------------------------------------------------
Chris Morgan (1):
      clk: rockchip: add dt-binding clkid for hclk_sfc on rk3036

Jon Lin (2):
      clk: rockchip: rk3036: fix up the sclk_sfc parent error
      clk: rockchip: Add support for hclk_sfc on rk3036

N=EDcolas F. R. A. Prado (1):
      dt-bindings: clk: Convert rockchip,rk3399-cru to DT schema

Peter Geis (1):
      clk: rockchip: drop GRF dependency for rk3328/rk3036 pll types

Yunhao Tian (1):
      clk: rockchip: make rk3308 ddrphy4x clock critical

 .../bindings/clock/rockchip,rk3399-cru.txt         | 68 ----------------
 .../bindings/clock/rockchip,rk3399-cru.yaml        | 92 ++++++++++++++++++=
++++
 drivers/clk/rockchip/clk-pll.c                     |  2 +-
 drivers/clk/rockchip/clk-rk3036.c                  |  5 +-
 drivers/clk/rockchip/clk-rk3308.c                  |  1 +
 include/dt-bindings/clock/rk3036-cru.h             |  1 +
 6 files changed, 98 insertions(+), 71 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3399=
-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3399=
-cru.yaml




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
