Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55349C76188
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 19:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ez1uUR3+y/DgOTx/8cXcv5g0etUF/oQJKmgjaPf43u0=; b=uABp8CJbun8S5o
	ey7Ex7MiW8m7SxOvk9iygjS2+YDAQ40Y0T4amAWNE74zVbRv5e6rcC7GB6CVGkPy9/lDb+lpgXGj0
	RTLXE73x+CdNwfkf2Q15/0K0u1jAH7qi5qXjFhujz1u+HY/8LgaIiOZHgD4CyBVJn5VQfMrdM2F1l
	jevZa4AtyPJyQBXHCYb5nQV5dvXCwkWqbrnSvQSZtr9TVd6a9fNClUxDiB/s7OodsenNJ+OoCCrFF
	/xt0Xe4GXYIb0kwHl/GwnQ9SsmiVNlJrrNWBnflw69SqyEQ5Zxmc4UCFhhKZons8efZOD71xuzsIV
	Vjkeil28UjEtkhBz5BrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8Yx-005TnH-2h;
	Wed, 05 Apr 2023 19:12:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8Yu-005TmF-2k;
	Wed, 05 Apr 2023 19:12:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6B07462839;
	Wed,  5 Apr 2023 19:12:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5B04C433D2;
	Wed,  5 Apr 2023 19:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680721971;
	bh=vwktBVYIyMUDS46F4u5pTUeYWYOR6Pcpn0ycUeUxRC4=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=doRDD5ie6KpJ+VMDSEGNVYXm/DoI1xphMtnhX3W9t92M9UhnfSKL+aKsh1FlWUpGj
	 rcPnmd5A8X+xcAIeLwRzH7QDkkjZT27QweULCrd7lOqN7QzPX1sdsG0U1/3pRwie7b
	 8A3694ypCAxR8ZL4eAAG9XZzFUs+txDrGzx3ZBFULo5QaIGcTAXeB8fk807I53GbCn
	 uTdf87qCCx0xRf+l3W29UqFLjcc9PDVimCV+OP3UcNjErUIMKzzXyK5BxjtbekQv6+
	 XwRwkNN1QwiBAtAGi+rgE8E6Yi38eaJ0Bg95JVxkw1yJxgSHw5nLz65xsHTPWC8x67
	 M2aYtU8eOHsvA==
Message-ID: <07ad7dc2a1fd51e73c4ee4cc5ae450ae.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <58e1950566e40e2fbb31004baee57a164ca6a390.1680423909.git.christophe.jaillet@wanadoo.fr>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr> <58e1950566e40e2fbb31004baee57a164ca6a390.1680423909.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH v2 3/4] clk: rockchip: Remove values for mmask and nmask in struct clk_fractional_divider
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, abelvesa@kernel.org, festevam@gmail.com, heiko@sntech.de, kernel@pengutronix.de, linux-imx@nxp.com, mturquette@baylibre.com, peng.fan@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Wed, 05 Apr 2023 12:12:49 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_121252_929891_9BDB34FD 
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

Quoting Christophe JAILLET (2023-04-02 02:42:06)
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
