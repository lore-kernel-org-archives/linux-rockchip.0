Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7122AC4361B
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 21:29:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 194F822C7C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 21:29:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 194F822C7C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YR+WkOjCohJKoMyEo//MwdtN33epUeRHhBFP9a/bXC4=; b=DfYObetm78IHu6a2rM1VAdOFs
	hxDN7mzr5bu35KAKYkS6/XWWaMUf+wdiLqgLz48V0PpGg64f3e33wo5SpU06FJV3aR+Ij2ygCdyDh
	02430UCjYgBp+X6GP50x8dTNoXA/TQeN+oJLegbeZ2WcJtsxpNo96VckzGNRb+BdEhyuM26Kyjhio
	FdZsGSBFE/VNq7SnrtJqW0nkkWPsah8djSjs4h9g87WHpMOFPTUPnBro9rO1r1QD6GWANl1TCQAJz
	VY/8iRw8T+3oY6Jel1mpHFuVMS20E6ah4XqSV5E2JmhVb3sHqDWaS+nPwelBOrpF1P6bWUGTHfTET
	slbacLYJA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmO47-0006lQ-1D; Mon, 07 Dec 2020 21:29:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmO45-0006l3-1N
 for linux-rockchip@lists.infradead.org; Mon, 07 Dec 2020 21:29:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607376539;
 bh=1NyZkq+r9GIAEnDMcrQBgRznt4H6S0WMSlyeNHODLi8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ljnj/MMt+fOyRRqNabC/peq8Ji71Hj4LxbgsZD9iBhHlSzKOLoIUbPgY204SbyFbF
 nGT5nPPnEV1k+Q8Xyb1FSxX/G3RQbUiHAgkSkXKJnGhrH8spInhKF4hRbZnOen3xDR
 bUt5LIClEhBHcUQLSwml9YeCrvMGGFiaUbRtzDN9V55+sE1gqPOG5H82DUVRfkyYHG
 1LKw4IHizUXChoRcis169b6Y5ctnNmFLQ4CoSe8ENrCwnraMT9SxK4mL4B5bAVbgrU
 q4cxqVapZMB0Cfj5XrHmgYhV2UXzkg8lrc+IOoyqV7J4k/gBIbqMpRhmHImzWBf9YV
 Yju6JxBzfoYTw==
MIME-Version: 1.0
In-Reply-To: <5662766.lOV4Wx5bFT@phil>
References: <5662766.lOV4Wx5bFT@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.11
From: Stephen Boyd <sboyd@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Mon, 07 Dec 2020 13:28:58 -0800
Message-ID: <160737653822.1580929.2930727213908816182@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201207_162901_212572_8B1651EB 
X-CRM114-Status: UNSURE (   6.58  )
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Heiko Stuebner (2020-12-06 10:27:36)
> Hi Mike, Stephen,
> 
> please find below Rockchip clock changes for 5.11
> 
> Please pull, thanks
> Heiko
> 
> The following changes since commit 3650b228f83adda7e5ee532e2b90429c03f7b9ec:
> 
>   Linux 5.10-rc1 (2020-10-25 15:14:11 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.11-rockchip-clk-1
> 
> for you to fetch changes up to caa2fd752ecb80faf7a2e1cdadc737187934675e:
> 
>   clk: rockchip: fix i2s gate bits on rk3066 and rk3188 (2020-11-29 20:10:45 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
