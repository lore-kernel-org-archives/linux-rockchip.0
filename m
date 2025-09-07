Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1BFFCA1017
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Sep 2025 16:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7wnX72+CGXaJNfxd1eqOoYY9kJHDV8NLFzc4v8j5tdg=; b=GLx/0V6N4vmaDo
	jvNkkDtcrZIPDlEe/KW0EdK9LdXM0SQRvld1l/m5Y/kRXk6PPVzEYO99hlu2ZlWVLF5tijJueEx0r
	5S3elq+NfmMD3C8msjHoKCCJRUb9qKfClgoyPYvDx8TlwvoEV6/kJSyjvZ9L6YwOnL/3RJ23j9Ckm
	szbkzKAGU0r/LTi4xfYFebRv/+XAr5rs3U4OjMdrHCwOOe78ooUQbWmy4rWRnMDXQTcv2WBLwMkvi
	L38Ue3TVNztpkeHTgO8s8w2GfQMU/H2X4U6Wt4OSpr5qIknpWTjPlN5NkjkVr1VeF9G/wlI8RwdvX
	OchcKNCXo32q5Ovn35Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvIaw-0000000ByA7-27RR;
	Sun, 07 Sep 2025 16:50:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvIYe-0000000BxIW-1EGa;
	Sun, 07 Sep 2025 16:48:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=v7A9UPoEFzVjGQq7Qwoob96FGINY41pu3fhxh//oR8o=; b=d4Asq/kEu5j+gUlR3furkmGZEb
	b8GAEQ1bmF7A9ChhOqgVwRlleVlXAHSAYDUgK2rq39f45N+CmTGMTqgmq99aLd8IkRRCqd23uI19f
	MWrnoqqUDbFam6NyOYyUc0SceKTpTb28e6fSZpezjikBuRTxrcWRXWWakoX1CKHbpVILhQMpKVH2m
	GrdWAiFfqCPObhGedqzRUlFtX2c4e0rI5H+XXTMeTn+cH7qRcXe4aUlXHJ8aF4cmrF5xg2BccZuOp
	vfeSW//O91iSIcTz8Y12LTlXvtLv91whFDLnDK6V++Yh8nSoPjlLMHuWgk5aW2nbItpt0vEf7uhVb
	CL/ANDcQ==;
Received: from [61.8.147.163] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uvIYc-00049p-Cr; Sun, 07 Sep 2025 18:48:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.18 #1
Date: Sun, 07 Sep 2025 18:48:00 +0200
Message-ID: <12138356.VV5PYv0bhD@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_094804_347586_AFE2D4F1 
X-CRM114-Status: UNSURE (   6.81  )
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

The following changes since commit 8f5ae30d69d7543eee0d70083daf4de8fe15d585:

  Linux 6.17-rc1 (2025-08-10 19:41:16 +0300)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.18-rockchip-dts32-1

for you to fetch changes up to 2a91dcd5be9dde3239c87e4309f5878d3e4fb9d2:

  ARM: dts: rockchip: add HDMI audio to rk3288-miqi (2025-08-30 14:37:24 +0200)

----------------------------------------------------------------
HDMI-CEC and -audio on RK3288-Miqi

----------------------------------------------------------------
Alex Bee (2):
      ARM: dts: rockchip: add CEC pinctrl to rk3288-miqi
      ARM: dts: rockchip: add HDMI audio to rk3288-miqi

 arch/arm/boot/dts/rockchip/rk3288-miqi.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
