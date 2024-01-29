Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1781C47DDB
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jan 2024 14:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O7g8LKrAF0+sBTcOhZ4uCavbm6Og4GaDRkVo6QnVZgI=; b=c7SIEp/TYcnhpjkehLnIoY8aqq
	39uYVPatbMQsAnqMCCHqHRWAOi6jPIJ4PoAhMK3lEiLspUO0j9iSEytSMePYDDtjAg5sKhabLt9y6
	cE7vHDHk2KnAT0B4k2fWDXSwTq+sGwvL49BcF0/F7cj4QFVvNbgCro00exuQ4vPHtufl/h4LC9uaY
	Ykmrz7zyV7wPKKlLyg+LfvFJDsH1xwgmIT/2Wsu4s5H5L+yrnamMJuHmi75/uMvy5ohE3n+Vn6eGm
	ad1QlLYRkgrx8341QF39ylq4CXRtMxJdaXaZdVf7L4nsUAwcsSgoBBJUqA46L87yfcTxw+81mUYC2
	oWxq/YdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUSQN-0000000D1VN-1aFU;
	Mon, 29 Jan 2024 14:15:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUSQJ-0000000D1US-3ABx;
	Mon, 29 Jan 2024 14:15:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8E7336211B;
	Mon, 29 Jan 2024 14:15:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E110C433F1;
	Mon, 29 Jan 2024 14:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706537712;
	bh=vr3DMYp4IS30j2TMZVX5H2vM2Q0pXkhh7UDGjQYWSu8=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=Mcvz1uzLPM5QiA5FAOblFeRfoOuE2rbkuhqWMjuzb1s8GL/WMVcjeS5WHlAhqyDgP
	 +oAF0HYqF3KTl64kInbrIaWBACD7f4WZDXQ7xGtO5vS2UpNMUrqcIOA9+KdeSO9JDS
	 PyZv7oK9dh3u3It506q3blwLBFmpXFmcghXvhs5ckCB1KpLpIzJh87AM85VZWlwoUO
	 AX8y73l0xvO9RdSwWQlhTREw6ldLqViFLd2dHJDo7S1e61vmXCunbX6/Hc2fw1NSSn
	 qXxNAK1JNmMkXDAjiN4K9WylJJ+OVsiIJounBmym8wtOcw1+Ty3LJCfoe/61178kra
	 cEWT5j6I7Iodw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2677DE3237E;
	Mon, 29 Jan 2024 14:15:12 +0000 (UTC)
Date: Mon, 29 Jan 2024 14:15:18 +0000
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
 bugs@lists.linux.dev, linux-rockchip@lists.infradead.org
Message-ID: <20240129-b217334c10-a8e85a2041b0@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: linux rockchip gpio2b4 (gpio2b5) gpio2b7 broken
 GRF_GPIO2BL_IOMUX GRF_GPIO2BH_IOMUX 2bits 3bits pinctrl
 rk3328_mux_recalced_data (a fix exists, for a commiter brave enough to
 commit it)
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_061543_890114_33B3692F 
X-CRM114-Status: UNSURE (   4.34  )
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

antwain.schneider writes via Kernel.org Bugzilla:

ping

View: https://bugzilla.kernel.org/show_bug.cgi?id=217334#c10
You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
