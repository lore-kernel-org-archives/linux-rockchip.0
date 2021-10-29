Return-Path: <SRS0=iXk1=PR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 416FFC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 06:42:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AA396113B
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 06:42:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0AA396113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V4Hw1Tmb+rzcWh2+0EwjvKwXar//GeXibvE98xahJ4=; b=kPSaPfD7a1E8ss
	Hg/7+BBai1udp8dh1gPRIsaHFhwIH6CiKOXf/zVyn/9Uh7WeQS+fOUYu1R+xIr09JveoDrsjCN7Id
	U2EKOpn3+Zj3tAEyP2hsG60u4ge8s2DQYVklgKpj/Mce4XhJ42tf4x3KL3t9HeEWyzybirsTCyM6Y
	l3ayCVQrN3NYqMnzhdJoWivGXPh2DqPMBJdH5cxu8zFThuA2YODNvA53ZFKqmTpKsVA885LyPFGc/
	GxubH4sYXjLwPa149Aow4e7j1LQWdyc5BEIvzDOe4m98sAebPMtQXvNeUSHrCkuIIIETxid74Czvm
	IZtZgwgCNCANPH082chw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgLbA-009x7I-43; Fri, 29 Oct 2021 06:42:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgLb7-009x6i-DL
 for linux-rockchip@lists.infradead.org; Fri, 29 Oct 2021 06:42:42 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5AFAE600EF;
 Fri, 29 Oct 2021 06:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635489760;
 bh=zBNxfMJIs1Z6C1TH8uhcx7fmyaXW2dEQiMCpmexM9Bw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=PCAPt1d60ZqvAafTQCZKvM+OzBV4/P2YA/BowtZOXGszQZ6bO/dsPINbTOV69F5Eu
 qLGGZLP9/IycFBT/hkoRWFctrd0UdoFvw7LWX1TpEGARqt1y8v/yDdsGfjNweQM77k
 wrcNTWDwXYbjRoMBneMEDrHgU8xu5jSr71f7Voc8xVb6f+QT92KvNNmqGob1JU4/dq
 PrkvCkKETZyLvk3VFNhQv25epmaPSr1CrZha3jNkWzNyPrQONaSeTOruNfAGE7Oo2d
 VYWMZ3z4Y+D2who3p06znBbP84FkMdO5IyfMOtssk9MZHepbI/xbEV1P4bKa8zSZAY
 INYoda+XEa+Ew==
MIME-Version: 1.0
In-Reply-To: <20211027132616.1039814-2-heiko@sntech.de>
References: <20211027132616.1039814-1-heiko@sntech.de>
 <20211027132616.1039814-2-heiko@sntech.de>
Subject: Re: [PATCH 1/2] Revert "clk: rockchip: use
 module_platform_driver_probe"
From: Stephen Boyd <sboyd@kernel.org>
Cc: kernel@esmil.dk, linux-clk@vger.kernel.org, mturquette@baylibre.com,
 heiko@sntech.de
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Date: Thu, 28 Oct 2021 23:42:39 -0700
Message-ID: <163548975917.15791.3256808775240329493@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_234241_487268_C45442F2 
X-CRM114-Status: GOOD (  12.62  )
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

Quoting Heiko Stuebner (2021-10-27 06:26:15)
> This reverts commit 1da80da028fe5accb866c0d6899a292ed86bef45.
> 
> Reading recent discussions [0] [1], I realized this change introduces
> a number of problems:
> 
> - only converting to module_platform_driver creates the issue
>   with the existing __init and __initdata attributes.
> 
>   When the driver would've been built as a module, all the missing
>   clock-definitions (all are initdata) should've turned up as error
>   in testing suggesting that the change wasn't at all
> 
> - a clock driver is a very core component of soc bringup and making
>   this able to be built as a module solely for enabling the soc vendor
>   to add out of tree changes for Android implementations is not in our
>   interest and also everything except a ramdisk won't probe without a
>   clock controller.
> 
>   This is especially true when the changes aren't really tested and
>   are merely added to move the mainline driver "out of the way".
> 
> [0] https://lwn.net/Articles/872209/
> [1] https://lore.kernel.org/all/163529604399.15791.378104318036812951@swboyd.mtv.corp.google.com/
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
