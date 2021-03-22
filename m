Return-Path: <SRS0=HfFp=IU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AF5C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 10:04:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B128A61927
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 10:04:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B128A61927
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OXrWUzZs2+05KCNKmLemvtjgl8TGyUpWAWSjU+zdtyE=; b=TD0rdw/xB3JMWs+bFeh9nNKoI
	iehH6YBwHgnZWhxHUCVWI8nvduigZsCuNXIANKxstlDMeaEksbFhvPOktO3ePNfmWKp0Pmik6kDSc
	Hrt+EYBMoMCICZFDuwa12eK/uisCC9kvei700TevPvD1t8wdY8svYX8oIAJDPB7RyTq9PNGuAixPq
	m649Jb6M7iMlBcjNfZVwL+tUnE0HscTKcywcKXznxYzV+BF0vN2PtthuCxdkKVJH+qH+n/l1vWxec
	Ne1NrsTkwko2qLInT+8wm+ChaG3QcxqItUVUhybMx/jUnxvRzxCcbQqNezQa05qUKV0I+Yu6zRf7j
	EjdGokcJg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOHQ5-00BIv2-MB; Mon, 22 Mar 2021 10:04:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOHPz-00BIuE-SD; Mon, 22 Mar 2021 10:04:18 +0000
Received: from p5b127c0a.dip0.t-ipconnect.de ([91.18.124.10]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lOHPd-0003jN-LW; Mon, 22 Mar 2021 11:03:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Marty Jones <mj8263788@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 David Bauer <mail@david-bauer.net>, Johan Jonker <jbx6244@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 Tianling Shen <cnsztl@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Date: Mon, 22 Mar 2021 11:03:52 +0100
Message-Id: <161640742725.808893.3666594351389773587.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319051627.814-1-cnsztl@gmail.com>
References: <20210319051627.814-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_100416_315097_9081AC01 
X-CRM114-Status: GOOD (  10.40  )
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

On Fri, 19 Mar 2021 13:16:26 +0800, Tianling Shen wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R4S.
> 
> Changes in v6:
> - Fixed format of LED nodes
> 
> Changes in v5:
> - Dropped the empty PCIe node
> - Dropped useless `/delete-property/`
> - Renamed LED nodes
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
      commit: 1003888415e83e15ddb63d1d96189b4f2c5f1d48
[2/2] rockchip: rk3399: Add support for FriendlyARM NanoPi R4S
      commit: db792e9adbf85ffc9d6b0b060ac3c8e3148c8992

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
