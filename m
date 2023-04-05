Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C003CC761AF
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 19:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z11oSbQnnF9FMEAfpkpOdeahh+GbSUYKOEzCZDyZwRw=; b=awXMAvjSUWGxcE
	YG+1rNOkLa0GnmJwSrWXbs7vf52qPu5YqitKqkpQ/B4V0Q7YW9y6Ye/WMk34iyNM28dTsqwSeS8Ud
	U1bd48L/fsa+E3pexXTJn5R3WyCO6cq/8p4Mxm8ApZuLkk2+oWfVXea9DowgOZu3VlBuciPitCyYD
	6Cl5hT0oAoShQDlAbjxlBZeKiqdfzJNEPocdJYxG6BO7/0/1ywBkNUHYtbOeoQ6P4qTWqEyiYebc0
	9n23csrEzf8J+Sh1uhAkcW60cO4hRXRI/HffPcEkoqY2TLY8A7kBwALWOZ31Z7ctPu59fhwFT3O9O
	HDy9UPXx6tPqxrcnswMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8Z8-005Tqs-1m;
	Wed, 05 Apr 2023 19:13:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8Z5-005TpH-09;
	Wed, 05 Apr 2023 19:13:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6B35062B1A;
	Wed,  5 Apr 2023 19:13:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6472C433EF;
	Wed,  5 Apr 2023 19:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680721981;
	bh=TfdA32qkhTaC65VE89dlgg3nhsFidvoOwThd1sNOR1I=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=dyjwqrcLO1f+Fq/oOQISj2jtc9W6s9F+A5lK2cH2HWcsPB52VwBK9D9StB+MDFGB3
	 8oUEXK4pUGiXU0w/hIohdgXjVCtxIp01GUIsoalcrYpjidKN8RqMWxkiV+p62GX+xf
	 zNeJJCGja1S7Zl6VA1r7p8TQy7DLj2M+ysOcEqz9IT3xjhACWn6DXaKKp6JMnHIb49
	 NPHBwlxlfQG1Qr5u3ci+fgAy/o8B7sKDZ+5RABt5AcL9yeF6obCiM5TpRJBqWmAOrM
	 M7gKn8R8M/vcWHbPoqr3e6p3ed7Cj4T2oiNg0cIQ68h2nMfyYncO0NWzvwFttcD0oS
	 PdAHL2dHnwD5w==
Message-ID: <0cbe45046219218f1c52f22f70004826.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <187a2266c3a034a593a151d6e5e6b21118043b5d.1680423909.git.christophe.jaillet@wanadoo.fr>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr> <187a2266c3a034a593a151d6e5e6b21118043b5d.1680423909.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH v2 2/4] clk: imx: Remove values for mmask and nmask in struct clk_fractional_divider
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, abelvesa@kernel.org, festevam@gmail.com, heiko@sntech.de, kernel@pengutronix.de, linux-imx@nxp.com, mturquette@baylibre.com, peng.fan@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Wed, 05 Apr 2023 12:12:59 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_121303_124978_D276667D 
X-CRM114-Status: UNSURE (   7.84  )
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

Quoting Christophe JAILLET (2023-04-02 02:42:05)
> Now that fractional_divider clk computes mmask and nmask when needed, there
> is no more need to provide them explicitly anymore.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
