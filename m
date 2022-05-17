Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FA8BC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 22:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Z9DtK2HQIOcLW0PJt1R7NOBtSWtoIbSCKe6uN9SUno=; b=ucZMD9krLyh1vm
	ORiq9WzqhrxNlTyS4H0XLmQyyNzhDUI3aJn8aYFDTQVzgogJZvUvr1tWRjRCHKzFCLfidZif1Lx6x
	uXdADkaErqz3wMJprIKe7Ra5ZOidEKB2L8w+Q4HAeaxms8NFW4TjaRBs27XQ4gISjmURD5roQf/L2
	G8BSjAxPvvPtVjT5ocilQ5V4IA6mwJvHEtVmnK3aO4zonUV5Xkp/uFGiR8QHC6qc3ZIrIcIh35YTG
	lpYnbi5NdKytKwdPKjyB7w2j0EflmxDLcUn3yWfBrkBjcsEjokxRoKSsC964bAgIaR9vc/scby1Qy
	DjDKW5LAa234wHewgqbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr5XR-00G6XO-PU; Tue, 17 May 2022 22:19:33 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr5XO-00G6Wt-Um
 for linux-rockchip@lists.infradead.org; Tue, 17 May 2022 22:19:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 85575B81D0F;
 Tue, 17 May 2022 22:19:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E5B7C34118;
 Tue, 17 May 2022 22:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652825968;
 bh=mFLGnAFNfhDLPFt9oeV7FYWUbLbyyvFH3zlUGOjfHTA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=LsAYhuWnAE492gwWLqYiH8Jhn3K1W+EzQ0PIk58eD2KsBTnliRDQrDrMH2dmOL4pN
 TFMxVxYeqJEIH+WA2/8zmNALR1MjO6P88l2wYbXUUs91CfFcGrsk5G+C3zBAJmYWh9
 nvgbH7mqzMTE9mDagb6vRQxPtLMhPYP8HYFGWQobSfzWR7h7SnuZhy9GGIKMXV73CG
 IykPUG8/KrjErokgSpLZkbmZ3Eb19IZFeTr6wvXz8zdsvA1ejNWUn1DBrXqifxlVVv
 MA01OQDj/JBpZ7sJ4h4IfuVFPpnzqf1di6F06t9sH183naDmnLlBI9ayoADPtw8L7p
 40vUIXP9Er6lg==
MIME-Version: 1.0
In-Reply-To: <8148508.MhkbZ0Pkbq@phil>
References: <8148508.MhkbZ0Pkbq@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.19
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 17 May 2022 15:19:26 -0700
User-Agent: alot/0.10
Message-Id: <20220517221928.2E5B7C34118@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_151931_176807_3EC3321F 
X-CRM114-Status: UNSURE (   9.60  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Heiko Stuebner (2022-05-17 12:25:19)
> Hi Mike, Stephen,
> 
> please find below some Rockchip clock changes for 5.19.
> 
> I've split out the conversion from txt to yaml into a separate tag
> which'll follow shortly.
> 
> Please pull, thanks
> Heiko
> 
> The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:
> 
>   Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-clk1
> 
> for you to fetch changes up to b21445db9818ccb9fa1c0ba81fd3705eb8d347e3:
> 
>   dt-binding: clock: Add missing rk3568 cru bindings (2022-05-14 12:40:41 +0200)
> 
> ----------------------------------------------------------------

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
