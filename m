Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43C6AE7DF1A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 19:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kiu9uht4nvA3rTcNZFqAHAwpe4yeRwEIEWXhQvnAl3o=; b=1Ydb9d8sDw/c9g
	cRFoJ39N444JSFxOXcuip52Fn32M2l18nJjrjUwOlePdCA6xUVZPCkDu17Om0c9VbxTB2mB0AaW4g
	lOdRgr4Hb2xvJK5dSuq9SFPY4KC4Rc4WAZ9/mzSZAltIIIu1rpQ+8KLxVoiPKvF9OwQRRF7s4Wfb+
	Csz8et07I05L3zJc5m+CIEoaHwyZQt6Mf68g/oLnE0x8a9Nql6v4cERg3FWu4QaT9yTkVZQ6FKC87
	xS7zlefVXyuh6eVuKJwPCFN5oFWec5A9Rc/NCIzcqnd5fqyJ8IMPKxuLFg9d040+a1vobopNw8MjI
	RZfN49n8Lx5QSSPhg6XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmzD1-00000005U6d-3p0S;
	Mon, 02 Feb 2026 19:03:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmzD0-00000005U62-06F9
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 19:03:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 432F140331;
	Mon,  2 Feb 2026 19:03:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FEE2C116C6;
	Mon,  2 Feb 2026 19:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770059017;
	bh=TdgAPsYtLNa7eA628pR3ESYZjHWL0NOGyWyRNwblZKo=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=SM4u3sfJ5Uzsm9RwrrDVAIez7Dx5+HixkQYVl86zIAse7Yz81lDl5yUy+J1eQV4+s
	 ZEXLiTQGPoboagOWMH5nkYV+z/qZBTs+lEAL70+JaPaUYu80cTXPTJub/pdNoXh0aD
	 KIkc3SYbcjaV8uzybi13y8sve8vnGXPbaDNqlWZh1vMcBBtc5Dn3E4Ai/fSZwCWYAc
	 EsgQgoEyY8EASxzWQiXl/wGBoAjEwZTOF/DSZ+NBqeozVfYWXxW4SyuvmNcDVvzqhP
	 sfsvJTgf4GtFaN6n6VBWHfK+VCEBMWO+HLifTgb2gO1ENpnrCXklyQABUlrKDPQ9nb
	 +VI9fuzLnt63g==
MIME-Version: 1.0
In-Reply-To: <5742396.ejJDZkT8p0@diego>
References: <5742396.ejJDZkT8p0@diego>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.20 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Mon, 02 Feb 2026 12:03:35 -0700
Message-ID: <177005901508.4027.9674604444759816459@lazor>
User-Agent: alot/0.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_110338_085129_28256138 
X-CRM114-Status: UNSURE (   7.41  )
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

Quoting Heiko Stuebner (2026-01-26 10:19:16)
> Hi Mike, Stephen,
> 
> please find below a pull-request with a Rockchip clock change for 6.20
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:
> 
>   Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.20-rockchip-clk-1
> 
> for you to fetch changes up to a8d722f03923b1c6166d39482c6df8f017e185d9:
> 
>   clk: rockchip: Fix error pointer check after rockchip_clk_register_gate_link() (2026-01-09 21:16:20 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
