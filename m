Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEB20C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:56:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 56577225AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:56:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 56577225AB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZDWhVNZk4KyAAM3RLFwF9BZn1Hhn2S8ZMgMZCjl3tcE=; b=CB1UT3ooQN5y6UGnS4JSJ311G
	fk7e/r7ZaUoCie1Hjr1oaVCTYLeZMJK69frRFBuJnwSQma1i8YHqC/BcTsV7J6vpvtU23iOCwuNt9
	KlfmLOfJoQH44nNnOxXbDvprMH0OC63dbO774LPNU/3sl14+M0L0PqIM3fXIUIhsAaNjzIbLOAtSl
	ulH5DfN6NkaoJqxfA91qrVeZd+Vs/opEwQXUuIVN7OoCO0OwCQvCLlJzcBY1uA8H8TNZXnRws5cIZ
	U9v7czYWjIswUaVPudMQCJeYdePBtKmhQOpakxxcbTPh7i/Z2R26XDdg4WJPr/FUFbGQL5RsVG+Yn
	JWS/Zf/ng==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4Bip-00009Q-Sn; Mon, 25 Jan 2021 23:56:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Big-00005S-QI; Mon, 25 Jan 2021 23:56:31 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4Bif-00066j-Qp; Tue, 26 Jan 2021 00:56:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: (subset) [PATCH 1/5] ARM: dts: rockchip: assign a fixed index to
 mmc devices on rk322x boards
Date: Tue, 26 Jan 2021 00:56:18 +0100
Message-Id: <161161878917.2050283.16404617664067738024.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118155242.7172-1-jbx6244@gmail.com>
References: <20210118155242.7172-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_185631_105199_7D9D293E 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 18 Jan 2021 16:52:38 +0100, Johan Jonker wrote:
> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in environments where UUIDs are
> not practical. Use newly introduced aliases for mmcblk devices from [1].
> The sort order is based on reg address.
> 
> [1] https://patchwork.kernel.org/patch/11747669/

Applied, thanks!

[1/5] ARM: dts: rockchip: assign a fixed index to mmc devices on rk322x boards
      commit: 94e8a5f6d0dee8e81bdcef6d3e86a027459df225
[2/5] ARM: dts: rockchip: assign a fixed index to mmc devices on rv1108 boards
      commit: 1034e2b6b8435758c0d699b77761365fd09a5f4a

Patches 3-5 as well, just before didn't like the separate branches


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
