Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B99B8D111A8
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Nov 2025 19:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZetWVJ4Zd/oQRKpurL0kPUf3eRaWy66ER/uCHS5XC4=; b=Cd6U9QglsqVi6c
	+L/6Igkg3HR6EIHdogyHwioIbgG73MmSC97WBJBfaVdIy9ycdMuxsBURNO6JQyN1tZ6/axM07536P
	lb7j/WBxdVbgZs/2XhIJP3Cou3Nxt0AlakCt6cTIordeM1K+fi5KnsYCkPHt8MLNzCFQCl8MwW8ip
	uOk3oTb8YoEr6z+CMW+p6wP8UlLlLMRD9o31jepzNbxJ77rYMrwCgHvydQa/itFTW315AVTCnRhDs
	RRKIfkmM3nEhrO90It2hj3qVt2LahduzQ/JnF4p6sdjRlp1QsAdZn+7Hh7HFxI6I63iYvOWYlWxn0
	k2iUL+edz4MlpT9s9S6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPnJ5-00000002WSY-08ka;
	Sun, 30 Nov 2025 19:42:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPnJ4-00000002WSO-0e9T
	for linux-rockchip@lists.infradead.org;
	Sun, 30 Nov 2025 19:42:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 495B360052;
	Sun, 30 Nov 2025 19:42:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E84D9C4CEF8;
	Sun, 30 Nov 2025 19:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764531721;
	bh=uBoEGOPuR2UlaK9Xo/sPUaqui0n4YWeVvB6Znq0uSbs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=oQW/gzUbLJkoQRZSA4GdjBLMhqnVZCiTNbTM2Zhf2x/pLDPLFoaIf3Em59kQV8Wvb
	 czhYiiSTpx2ZUoSM8sLMIHweZhSlMyKr+qn69jnQ7tCcMrBYOh6qqXreO05e9A4dpm
	 uQIukyp/NGLhFfWgCqcDeh5gNFtt9Zjp2hoKMjncq0hUCI3zuCArOWkJ+whMexI8SM
	 89QxR63/KcxWB8KNFp6yOFhNkMX358OjYaKGdAj8ie6VD9Nia+YGMDiCYzpCuq9r4d
	 jU968VK/Gvqvl+slYsWUbrMUlnfcQ6HLtcns6JrEY1rNs4PYwR/aJpi3GP+m9rWwwX
	 VJER/igrkH17A==
MIME-Version: 1.0
In-Reply-To: <3018362.e9J7NaK4W3@diego>
References: <3018362.e9J7NaK4W3@diego>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.19 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Sun, 30 Nov 2025 11:41:59 -0800
Message-ID: <176453171913.11952.17955530818254096640@lazor>
User-Agent: alot/0.11
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

Quoting Heiko Stuebner (2025-11-24 13:57:09)
> Hi Mike, Stephen,
> 
> please find below a pull-request with Rockchip clock change for 6.19
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 3a8660878839faadb4f1a6dd72c3179c1df56787:
> 
>   Linux 6.18-rc1 (2025-10-12 13:42:36 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.19-rockchip-clk1
> 
> for you to fetch changes up to 18191dd750e6c9e17fabefd09ff418dd587bcdb9:
> 
>   clk: rockchip: Add clock and reset driver for RK3506 (2025-11-23 22:56:49 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
