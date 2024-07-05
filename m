Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81BAAC30658
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 04:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bddAvR2LY+LHMPaplspMdDhThw0JlBTqo/SROr/RH/4=; b=kdeEDGi2r1fOACzPLqmSaN59UJ
	Axuw070pJwJgXrDkvjfuIx5eVQdjMBMrDyrgUt73Qn4O2ONT6MnuqgjE+5Q95fIev/6r5jMYA0v/1
	Y32cFH/5PGsvS8HhJtdNcA++LCWMFAvLTSquhj0N0YaobP+lPdhQA3FqY+dsw3oA9p0usp29ppm+B
	yCfxg3BHUqr6I7pwk8un+R/QG9VIB0VnuNG2bxndmjKan9WiuFg/CAjTfCfTwoItu/hkonhJi41t7
	hJOSSC3f/khVfaLXdRMQjWanTMANWSJfG7uC7yfQgH3DwOHGXSD+pfbz4Bu1JL9vQY0SikKZB79s5
	q3zzE0wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPaae-0000000EtHr-08xp;
	Fri, 05 Jul 2024 04:30:32 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPaaQ-0000000EtHD-0YPR;
	Fri, 05 Jul 2024 04:30:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E6240CE3B44;
	Fri,  5 Jul 2024 04:30:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5FFBCC116B1;
	Fri,  5 Jul 2024 04:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720153814;
	bh=YaiCw5CY4r8pXM3kxE0waLspkOpuDbbx9IcNWMWxYY8=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=YEvdoToF9z5R5UJeDfvRiowmNy2sZnRY9593f96PSduxoAx0JsuYAyMYhGvWDZftn
	 o12a+N7h8gL8splK662P0HjRD1v1tV3B+CQoXRTRvkz5AK63XVH7gCmVN5KWMAXwn/
	 PrcHBXPAFvFp1SedFcviLd7LvHtbkAPX+g6e9d78rDsC9MYrqTgBvLy2+WXueyfgqS
	 cGkA9o9lrtCK97M6zNB3A2wjfKBk0wF6HQy0ou+0ttkn5YyDg6Frr6ssGtk4iEe++b
	 nUL9MGHZUl4dnareHAjj+JSzdikK2vliziQVMQ1+C1snAC58ny3F+/OvMBLw7TgUp1
	 3sn5DOp124y/g==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 436CEC43446;
	Fri,  5 Jul 2024 04:30:14 +0000 (UTC)
Date: Fri, 05 Jul 2024 04:30:24 +0000
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, bugs@lists.linux.dev
Message-ID: <20240705-b217334c13-13d1a8cd7c07@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: RK3328
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_213018_385084_579ABD68 
X-CRM114-Status: UNSURE (   4.59  )
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

thank you Huang-Huang Bao for addressing this problem better than i with commits
commit e8448a6c817c2aa6c6af785b1d45678bd5977e8d
commit 5ef6914e0bf578357b4c906ffe6b26e7eedb8ccf
commit 01b4b1d1cec48ef4c26616c2fc4600b2c9fec05a

GRF_GPIO2BL_IOMUX: 00000600
 2b0 | 2b1 | 2b2 | 2b3 | 2b4 | 2b5 | 2b6 | res
00 01|02 03|04 05|06 07|08 09|10 11|12 13|14 15
 0  0  0  0  0  0  0  0  0  1  1  0  0  0  0  0 
GRF_GPIO2BH_IOMUX: 00000000
   2b7  | reserved.............................
00 01 02|03 04 05 06 07 08 09 10 11 12 13 14 15
 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

View: https://bugzilla.kernel.org/show_bug.cgi?id=217334#c13
You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
