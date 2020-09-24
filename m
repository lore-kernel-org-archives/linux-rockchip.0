Return-Path: <SRS0=jnQU=DB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64418C4727D
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2020 06:18:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93A38208E4
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2020 06:18:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zbumCrsA";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpwdy7vI"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93A38208E4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ey7RNFo8KtCZARxM/2kZjpk2PcyGRBSiw2Si9Qb6P98=; b=zbumCrsAaW4u2YCytI5CRyzs7
	i9uZAskv0N77d6BlYrieZU75o1y2FzGOWUW0a7eUTZ11cooM0UbyBRT07gbzBmlrFQx9aqo3+p5iR
	W5rI8HhTxiAWvN3PGMGwjAvU5XzxzuKlDV+k8a+CRCm0IN7h4b0SAHR2nE0NfQzn6SZPmckokcibr
	JAxAltHFhSwSclfjT9G+wXFktxOleAH7EIM66ev10g7HQzj8qP9cwktmmEhml0Ole4UbqOj8nrUJk
	lRxUvsfbhPRa91wvK15SrAFSYunByhG7vQ236KghzrzK73uMB2rqcsCDDqyOJ9JKCmyNWAkrGWGdq
	FeBuxDSXA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLKa5-0000ip-3x; Thu, 24 Sep 2020 06:18:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLKa3-0000iM-Iz
 for linux-rockchip@lists.infradead.org; Thu, 24 Sep 2020 06:18:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9679E208E4;
 Thu, 24 Sep 2020 06:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600928289;
 bh=zV0zcBuOmJZQZOUiyJKCQ6sMzk4PN9wLqIZyao9boNg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=hpwdy7vIDJ62cT0vCYyimu8hrxG73bgcQmz7IeH8InLUFirRembi0vkXaKmtZ2Vvo
 5VU0l9/WsceFsTam6pPxpaHC+3p/T/G/7G36LEzLC9+4dlOEqfO/921jdsGRVg1264
 ZvoPSq9dcBlCpq/cufbQ66qxUmt1QZRbFCU/TWmM=
MIME-Version: 1.0
In-Reply-To: <2431097.4Q4uIW3KjO@diego>
References: <2431097.4Q4uIW3KjO@diego>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.10
From: Stephen Boyd <sboyd@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 23 Sep 2020 23:18:08 -0700
Message-ID: <160092828844.310579.8167865385489225339@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200924_021811_773285_A0D98A02 
X-CRM114-Status: GOOD (  10.62  )
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

Quoting Heiko Stuebner (2020-09-23 15:20:38)
> Hi Mike, Stephen,
> 
> please find below Rockchip clock changes for 5.10
> I gave the module rework a spin in a number of different Rockchip socs
> and all were happy so far.
> 
> 
> Please pull, thanks
> Heiko
> 
> 
> The following changes since commit 9123e3a74ec7b934a4a099e98af6a61c2f80bbf5:
> 
>   Linux 5.9-rc1 (2020-08-16 13:04:57 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.10-rockchip-clk1
> 
> for you to fetch changes up to 70d839e2761d22eba6facdb3b65faea4d57f355d:
> 
>   clk: rockchip: rk3399: Support module build (2020-09-22 15:16:54 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
