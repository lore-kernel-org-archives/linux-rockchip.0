Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DCACC76188
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 19:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FiZbeYM6Xz1sc2ZSEipiQx7eu31Okczs/VlyIYJ9kCM=; b=PVPx/QjuU1XqKF
	ZKkWA8T0L+zk7VPk0NIiJDD10FkRymmQ528LMCkEcrwHhEEgU5I5U3cjvR7rFQVCsRtHXcYjbRuq5
	fbRhz04d5zftGkjN7+Qf2Ygn8dIpszGrBxKLOiwarhx14m54aDMrFtkw8a5SGLfQxG9njRk6b5y2W
	aV4/T4P+3oziPdl1GvyNwfAVmiIFpigEk8bzPlnpNQVnkTRnIbNQ3QZ0xeshotVv8OPu5GuIANnBl
	MlwugB3MGNmZmZ3y3a3vX2jIgAUXTIGNM/hNFtM0lyveGmA+MTedpeACJmMq/LOQ+THOi3U6iWNg2
	FGoRa1HGIeJU2oZHlotA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8ZJ-005Tvf-0u;
	Wed, 05 Apr 2023 19:13:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8ZF-005Tts-1G;
	Wed, 05 Apr 2023 19:13:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EEB3164072;
	Wed,  5 Apr 2023 19:13:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 944D4C4339C;
	Wed,  5 Apr 2023 19:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680721992;
	bh=g7YM6++deJJ1OVDShMe3rsNwkCW83YRBl4vJieZdUCY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=rQv93tAAdfe032Ci5oj4n+5Jaap71RV6OuYnH92ZGdIwyu84R1zY7KY9Ev7sQqGB+
	 7d24pSgGWbu0lwCLiYjEei3qh6ZUUTYT+txsTM3sqWc1+fQ+Ez6/pN5OxI2yTiE9AD
	 VSTPLYu2np21SZbd4MvsHSHFkiKg0WyzIm7FXrHuE4w/HNcHIpPjNumCJwA48Q6ZEu
	 3y+ErvubNKMVKFdWcFMXHFKtIjPYOqG2PWmpTctxhbst/956SpWuTXVwijT0jVcvNx
	 4eV8Rp0S/RRf1fb/PKcbKLYYOnTmnPRp8l+mZSEvJ0yGQzF+WjVYiWom3VCXjqW+5l
	 rS+fdocoMV7ag==
Message-ID: <eb9db30505b469e44ffbc98bcfccdb85.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <0fd6357242c974259c9e034c6e28a0391c480bf0.1680423909.git.christophe.jaillet@wanadoo.fr>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr> <0fd6357242c974259c9e034c6e28a0391c480bf0.1680423909.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH v2 1/4] clk: Compute masks for fractional_divider clk when needed.
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, abelvesa@kernel.org, festevam@gmail.com, heiko@sntech.de, kernel@pengutronix.de, linux-imx@nxp.com, mturquette@baylibre.com, peng.fan@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Wed, 05 Apr 2023 12:13:10 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_121313_468304_E50D98CB 
X-CRM114-Status: UNSURE (   8.35  )
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

Quoting Christophe JAILLET (2023-04-02 02:42:04)
> There is no real need to pre-compute mmask and nmask when handling
> fractional_divider clk.
> 
> They can be computed when needed.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
