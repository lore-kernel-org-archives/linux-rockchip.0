Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF68C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 21:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExlAT6TZI0KXtK+G5CLJIcmlmYnIEvtGnGIB5r2nNPI=; b=PJMo1wiJcGMaXg
	mth254l+UV0Pg7PQTXf0hFVoxmB+kjamSXGhOcNkhnMWvrVMcuDv3uyw3fJGlOUiX0F69VOORViVR
	3uJ9DeDf612vq4t3RX3lmwVC+OoIzLeN24f7OmeQ+2I7EDk1CYpmd8c7yXlzKhMP/6fpCcSa7GAqJ
	ZeJK43mmehETijn2wu75AGjFCFfwor0K+kQUaOiQY2LSGW/lG01bgLza47muvLGIgdlPCKG73jeFJ
	kW0w8oWNOsY/M+zgaF4wxPjPYCfHdjhtTYHRzpgJjsgu3I62lAN5sX50Tz7qXHMWP0h7Xzat6EbHV
	mbt/+6gIzOl6fh3CXT4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfRxg-0000000B3va-1zDO;
	Wed, 28 Feb 2024 21:59:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfRxe-0000000B3v5-0PeG
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Feb 2024 21:59:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8859760C05;
	Wed, 28 Feb 2024 21:59:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00F6EC433F1;
	Wed, 28 Feb 2024 21:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709157573;
	bh=MiBk1miMfpbCTAE6/v5GmbIq1g6eyhk1G5oZN/8HAC0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=jkBZM1bzFm0CIlDuNyIQurZDJ4/6k++brmWhSk7b8ABNM6SAM3udmwFi0gH1z5d/P
	 kLuYjCsV9FH+kX+5VWKnNWT7GFLDFNc7r50XAciPTVbemyYsobBuZyM5G8y84UcLGZ
	 0qQAHj+lpro4QroGIoukCQoVqJpgT4VjE42VI+AAUeAn707JeODg2yEey699Fs38ye
	 b8s/nmQ4QoaGUuhmoiZLWR1WMdGwgjY+iLDdFKGkcVS7XmhnZu49y/DbEEXBSRNqxG
	 RuQ7CYgfp1MEKKgtU801tGnnnSiPhCgy43B8z/aZKDw4os79FGJTSkaKsbMSYhergQ
	 8PFSanxsaizCQ==
Message-ID: <6ef4172aeae6ea47b56fd012de653932.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <4130821.6PsWsQAL7t@diego>
References: <4130821.6PsWsQAL7t@diego>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.9 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 28 Feb 2024 13:59:30 -0800
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_135934_206318_12FC8958 
X-CRM114-Status: GOOD (  14.27  )
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

Quoting Heiko Stuebner (2024-02-28 00:33:17)
> Hi Mike, Stephen,
> 
> please find below a pull-request with some Rockchip clock changes for 6.9
> 
> I guess the most interesting change is the removal of the CLK_NR_CLKS
> constant from the rk3588 binding. While it was nice to define the upper
> limit of clocks for array-search purposes, it was noted that changing this
> when adding new clocks actually breaks the ABI.
> 
> Thankfully Sebastian invested the time to find a solution to not need that
> constant in the driver anymore.
> 
> That change also got the needed review by dt-maintainers and people
> also checked the usage in i.e. u-boot, so it's better to do this now than
> later :-) .
> 
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 6613476e225e090cc9aad49be7fa504e290dd33d:
> 
>   Linux 6.8-rc1 (2024-01-21 14:11:32 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.9-rockchip-clk1
> 
> for you to fetch changes up to 1361d75503fccc0e6b3ecbcd5bb53bbdfdc52f0a:
> 
>   clk: rockchip: rk3399: Allow to set rate of clk_i2s0_frac's parent (2024-02-27 23:45:53 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
