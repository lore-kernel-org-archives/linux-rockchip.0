Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BAE7C41535
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Dec 2023 00:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGyq0hxXYwGwpOYTbgiCN36hpMTGuswzEitMkB/BWqw=; b=fCARUtnsSXunEa
	z3HewaQKhNqqCaW0xhJJwo9xDccb0Q9HmQnFoSPez9kb5eOTX3P9ylaONa9K7J63NTFU4vzNSAnFH
	CXkmRvtc4p4XDttQeF0xQGoE/yG/Ipketn0earkpED3Sx5hXz0evvzZpjdaH2FwijqqbgRZDmW9MN
	vF9eaZi+IyUA0izWuXau/JoC9hec4RhszUrh7sXvsYXmdJxJMLeHpRkhCTzGTr8Tql70pQ4RixAve
	aMPtytIWyOgseHUkhL5NtEZNM3T+xhCM2+8eWqUx3vv3QjhWBZcaOdhbnvIz+XyQaAg5TAqfzcOoY
	qk9VHeFAHF3dLz6+Sc9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEf2H-006v1u-0U;
	Sun, 17 Dec 2023 00:29:37 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEf2E-006v1a-1Y
	for linux-rockchip@lists.infradead.org;
	Sun, 17 Dec 2023 00:29:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id AB232B80924;
	Sun, 17 Dec 2023 00:29:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF14BC433C8;
	Sun, 17 Dec 2023 00:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702772971;
	bh=kC6GR00udyVW29are37Ujeon3BqneaW9y+Kj6W4+K6Q=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=FW2eHwxl7on7116oYqRff8MRnFdL3wqWk+RPr9pZvj59ZbWc0EGi0SnLl4YACWb8H
	 BpgNrDiMSjp6YpleSfbmqRgqmpcBvkBE+IuT50OQO2SUYOZLtzZm/PLyVD2amUGCrG
	 h6X0TJnl+p9BOF+pAbb+5fvBMrvjIO9HTS1leDT6K+Softn1pq45wx1G08VBqvq3gK
	 sOZrk2gMevojpInPs9TUnkZSB4eBrSJs6gNp35/b39vo69XCc09Nf/5FKHvc1/5M/v
	 5mj4ORydJ7/A4TMof9m2zG7ysIOarn2s8F9NcFk1Tmj/jAV71dmaqW6ZuGAQfN7HtP
	 Prry11yUbfHgQ==
Message-ID: <efe5adf3b5ced447c8f5f09b8b845e32.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <2913962.e9J7NaK4W3@phil>
References: <2913962.e9J7NaK4W3@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.8 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Sat, 16 Dec 2023 16:29:28 -0800
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_162934_683476_9DC0125C 
X-CRM114-Status: UNSURE (   6.38  )
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

Quoting Heiko Stuebner (2023-12-12 13:04:58)
> Hi Mike, Stephen,
> 
> please find below a pull-request with some small Rockchip stuff.
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit b85ea95d086471afb4ad062012a4d73cd328fa86:
> 
>   Linux 6.7-rc1 (2023-11-12 16:19:07 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.8-rockchip-clk1
> 
> for you to fetch changes up to 721bf080f249ab2adcc4337abe164230bfb8594f:
> 
>   clk: rockchip: rk3568: Mark pclk_usb as critical (2023-12-05 10:45:55 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
