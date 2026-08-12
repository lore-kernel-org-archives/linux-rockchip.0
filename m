Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F5EAC5B56A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 06:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dfqg4dYGthkTXM8lUr04vedHF4hNXbfRsmWS28XIY9c=; b=ACBfYidUh2YnCj
	k38FR1rWL30F8p+nlavcPkikYv0yLcyhAfgR+hFZKOUlO3g63vf7OVVUwHSNQ7tVxe00pVwE+/0XM
	9sui6k8YGOpI37wLpZVMtxULaY+htWoGDHVQZNtYt0AfmF9racSqVbc1PhPUxorw59fPrevkddJdB
	11I5dXsZLEcfdA1AKf8qarOUrvIPPQnAPffdoNrk4OTN4Sjkl8+vIkWawvCexGObF5AXrUsMltq/x
	ALf7Qu+iY2KbF2xpmStUte72Te/q95wDi5rXlQHV3RwrIwOSDF2xKYdon9oEdNErv4XiswBxW6rKn
	C7iozLc/ks/GojcRVscg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu25R-0000000FU3f-3Inh;
	Wed, 12 Aug 2026 06:05:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu25R-0000000FU3Y-1bPf
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 06:05:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CE7164144D;
	Wed, 12 Aug 2026 06:05:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A09991F000E9;
	Wed, 12 Aug 2026 06:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786514712;
	bh=Z5kwtcLai9cqB9k96HC7xug55Ee5HhObcrKVWtvYDQk=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date;
	b=fmfxuqD0N2DIMWW2+XmDXhm5U0sj0eKCKTpYTArDp9qm3F2SGYiUHO216zL9HdZ/i
	 Ay3z2aA8Jj5VCGehLnIFzRWjb47pwDdubyGGZ9JkZs5fZi4lM6c7RpX6ze7++hqnsk
	 N1xCBKVzPhN6e/hpJhNuhLOnlQo8C3vTwKgle+EGn5ZSZDBcyBvxsaUuNMHNziJnrU
	 tAsXkWW0q85jU8FNCzwumS0F+vUT3dIh60U7OUew5DjhVoY8Z8ziHVt5se3rqnfTW8
	 BKr+zfe0VU2bshkdu4Oj8w9xz9WT9dyGCId7XWBi+QQPM87YdXs25yAF2Lkdem2p0+
	 MXpxIeupZkI6w==
MIME-Version: 1.0
In-Reply-To: <5218537.CQOukoFCf9@diego>
References: <5218537.CQOukoFCf9@diego>
Subject: Re: [GIT PULL] Rockchip clock changes for 7.3 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 11 Aug 2026 23:05:10 -0700
Message-ID: <178651471066.5862.7206595209942698705@lazor>
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

Quoting Heiko Stuebner (2026-08-05 14:23:57)
> Hi Mike, Stephen,
> 
> please find below a pull-request with Rockchip clock changes for 7.3
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:
> 
>   Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.3-rockchip-clk1
> 
> for you to fetch changes up to 586ff159ec02533c17dd928641529cb0b52e9c62:
> 
>   clk: rockchip: rk3576: fix source muxes for SPI0..SPI4 (2026-08-05 22:45:22 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
