Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C05C27C55
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 12:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H4B6gk7qJ5QLZ2AZs2WryNuRPO57x7PV3OPKnycbn2E=; b=bdVmmzfF097qqb
	pEceNoC7cmoBrqQkO7IL/QmfkTDl7t21jGZDYwyPvQ6eMuyRDvYLxveGqw/HLfnm8JuzAB5W75NLt
	WzIN0zb266vr7yXp9CFkzJHnR9bMWN6RQQ1DnLR/SbNFqYax7A/dIviZ+QbhtSDSgB8YgGv+t3s/v
	S9hNKl+xe6sXj/5PC7xkN3qUdEEbLJUdSQFBCWNAqqIjI8xAbftQX+ykqiYZU3gUpsEj3alKeQ4aQ
	nT057roQssYBvTMEvYk2tDemT0zKRzIA0DSjag8kt6pNCs0F0oVK5rYNWUi+OhYp3J/GRZK5Fn6Jt
	+HlEI/tGaqbtmnVDQNaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFCh5-00000009lVU-2tEZ;
	Thu, 06 Jun 2024 12:58:15 +0000
Received: from mail.eh5.me ([45.76.111.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFCgy-00000009lRI-0Ai6;
	Thu, 06 Jun 2024 12:58:10 +0000
From: Huang-Huang Bao <i@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1717678681;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Melp/AwKYwWBq+3w6XX7+3avHSKYtUya/gkYeN1dljg=;
	b=CUaeKEjDvimojDiRC7Q3Dyn7DZBWaGvlZu9dEGLvePnXyl+LQTapvxPzvBg8kJ9dNprKG4
	jdkbBJhQ9ArXCnG7HxD16rlLVknW6At+eprU0tfigg5jE0PsTxfRVT2SE6PEkXtWaLJ8EC
	Oyy0vHMixbo6zhV9ytejZasn/KWlNcU=
To: Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Huang-Huang Bao <i@eh5.me>
Subject: [PATCH v2 0/4] pinctrl: rockchip: fix RK3328 pinmux bits
Date: Thu,  6 Jun 2024 20:57:51 +0800
Message-ID: <20240606125755.53778-1-i@eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_055808_224440_C48A4D56 
X-CRM114-Status: UNSURE (   7.24  )
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

The pinmux settings for RK3328 is incomplete, correct the pin bank
settings and recalced mux data according to RK3328 TRM[1].

There was a patch[2] in rockchip-linux kernel repo that cover part of
missing mux settings, unfortunatly it never got into upstream kernel
source.

The last patch fixes an issue in rockchip_pmx_set which is general for
all rockchip platforms that might cause unexpected pinmux to be set to
0.

[1]: https://opensource.rock-chips.com/images/9/97/Rockchip_RK3328TRM_V1.1-Part1-20170321.pdf
[2]: https://github.com/rockchip-linux/kernel/commit/d69af8ab6534bb28c1556076f08d2a5ab4935d95

v2:
  - split commits for GPIO2-B pins and GPIO3-B pins each
  - add a missing Fixes as suggested by Heiko
  - add Reviewed-by to last 2 patches

Huang-Huang Bao (4):
  pinctrl: rockchip: fix pinmux bits for RK3328 GPIO2-B pins
  pinctrl: rockchip: fix pinmux bits for RK3328 GPIO3-B pins
  pinctrl: rockchip: use dedicated pinctrl type for RK3328
  pinctrl: rockchip: fix pinmux reset in rockchip_pmx_set

 drivers/pinctrl/pinctrl-rockchip.c | 68 ++++++++++++++++++++++++++----
 drivers/pinctrl/pinctrl-rockchip.h |  1 +
 2 files changed, 60 insertions(+), 9 deletions(-)


base-commit: 2df0193e62cf887f373995fb8a91068562784adc
--
2.45.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
