Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B905CD98C5
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 22:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=da/ZaCHYiX8OqS0HoSzF3PE6zXPAzassFBtZka0GpA8=; b=jdQxSLh3Rxkb8R
	Qy2LYVDRh5gED7F1DBG/p/e1k5znAeDksRZuPYvmU4p5j/fxH9fLeRwobfbNz8lizaR4TJhlHBb+i
	VfZ7mVNiwlFiREiZDmXAKKBAixFpqOnl4giLPTdb8Cs7YJljCDmfUt4Fag/FHihtrPs+dzWxdwlPM
	JRxPjYYjBrcbgckCYAMmE6dOLRl+2ibOhtmeDGNywf1m8LJgG7dWv885CUSCXp0TxYgYLKB77O/dy
	zjxuIX/Lz7U3qWmjw/R8pMK3Q9IdSUSkBHFpPS1Kq15YbN4St3IfbPHWVzj4eE/tGPZF+qkG4uB+X
	nl/b66Uhv80BInbs6gAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYXFo-0000000CakZ-3xRQ;
	Sat, 13 Jun 2026 22:55:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYXFn-0000000CakN-0uZW
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 22:55:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8DFD244277;
	Sat, 13 Jun 2026 22:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60B511F000E9;
	Sat, 13 Jun 2026 22:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781391302;
	bh=SjUBfdi4LdjoTQHtLZhEUMBg8a67K1Nl1TJEtZTwpOY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date;
	b=XLjmhtL+V6hC4vaJcQsI5KZshRXmFOZJw5VjKH8kQLN6h3/UbtSEj1E1zMBtX4Kgg
	 wrx3dE3YiYP69EXVmwxsgfuPedn/hFJqExE9cH8vqsj11SVr4CY008c51GvSPf6Hv3
	 /SGGPzLB6NOnN2lSM2mMUejMxrSoxIocTUmP5KeKBJUhP7+u1oC6kVKmV3y4dcdoEj
	 3WvNH+sg2grIxpZ6hpAdvUprZjbzjjQMYOFlnVix7faU5TVeF8cSj/SXI7d/V2eHTv
	 SzAlKdiTEKuK6p0JFLYAg5x7bKioJUFdg226i54K1yfSWie2iZszlsKe7qP8Z2bmu/
	 td4MicSBqa4Pg==
MIME-Version: 1.0
In-Reply-To: <4272848.9fHWaBTJ5E@phil>
References: <4272848.9fHWaBTJ5E@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 7.2 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Sat, 13 Jun 2026 14:51:04 -0700
Message-ID: <178138746455.819343.17093210868169147733@localhost.localdomain>
User-Agent: alot/0.12
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

Quoting Heiko Stuebner (2026-06-07 13:59:31)
> Hi Mike, Stephen,
> 
> please find below a pull-request with a Rockchip clock change for 7.2
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 254f49634ee16a731174d2ae34bc50bd5f45e731:
> 
>   Linux 7.1-rc1 (2026-04-26 14:19:00 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.2-rockchip-clk1
> 
> for you to fetch changes up to 7edfb7fb58ee058298e18fde76a6077ef17d19d8:
> 
>   clk: rockchip: allow COMPILE_TEST builds (2026-05-13 12:35:57 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
