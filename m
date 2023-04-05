Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D2AC7619A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 19:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fljnysL6FlZKzDes0aRNtCp8U+4m+CMS8KSHYoGPUHI=; b=J/YYqhkYeaUz5l
	X32Eyaau2xWJD3U8evo64CFoCJBhZAbjaPaGBW+oGbfjYghHyawKbcseaWf9qqWmvmtcfDGNVuz4I
	g36fBIgBYvoxHtduLHWP+P1LHtmtWmcwvCUktFvJb+HDZRRsx8+pjLmqsK8wAcr1wHxMPO0IaHVhS
	KSitS5RwiTRwEyli5diD/ImKNGR8Zc5ZpwB4wKYW2dTQYj3HoeJNJuotbOTuRwPpyuqxUdfiZSm9g
	SeihOg2/Acc1vzmmt/wMh9a8nB8Lg5+U9HkVRC+YPj3fraaGCvewgAeACahb/BBRLb/c+fb/FTPoW
	kkCYUOsDNYW7YpYOFo+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8Yo-005TkR-0o;
	Wed, 05 Apr 2023 19:12:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8Yk-005Tju-36;
	Wed, 05 Apr 2023 19:12:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8076362B4E;
	Wed,  5 Apr 2023 19:12:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3E91C433EF;
	Wed,  5 Apr 2023 19:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680721961;
	bh=f6Za8lkRKG4F7M3+X7pyY5YOrHQRCTJaJ7vE+LTT95s=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=nvLCAzQ1nsjrckSeCd6yLxKqowcUMYhXDCpw22tS4g75ARQGcZCKvTjyZZxqLnDGd
	 3zH6E1nen/7mYLe9k8UxWVpVEi/du/W7duYogiVcB2aSvYuuoAQocTxp9uLnJVeQZL
	 W4EkgK2i8R+QI6aiHhrSpLvBQ9KdF2nizxiHaCly6nbm/rWbSQBSNKufgnYrbfmX0P
	 a25+MuxBvcOqfrmp55phrzH1pTGfFQ1knV4AfxGAh4evLibgieMEY0EPFMwpM2NY5b
	 S1eHh+U7dHT69vhZURefgBZyl2lEzV9OWDF4FtnnVn8nob7wzvCqXS5bS0fzTRA8G6
	 5Qpbj7XIKQOug==
Message-ID: <a934cd700d03416b386245c1d91502ae.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <680357e5acb338433bfc94114b65b4a4ce2c99e2.1680423909.git.christophe.jaillet@wanadoo.fr>
References: <cover.1680423909.git.christophe.jaillet@wanadoo.fr> <680357e5acb338433bfc94114b65b4a4ce2c99e2.1680423909.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH v2 4/4] clk: Remove mmask and nmask fields in struct clk_fractional_divider
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, abelvesa@kernel.org, festevam@gmail.com, heiko@sntech.de, kernel@pengutronix.de, linux-imx@nxp.com, mturquette@baylibre.com, peng.fan@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Wed, 05 Apr 2023 12:12:39 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_121243_056768_9D918405 
X-CRM114-Status: UNSURE (   9.01  )
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

Quoting Christophe JAILLET (2023-04-02 02:42:07)
> All users of these fields have been removed.
> They are now computed when needed with [mn]shift and [mn]width.
> 
> This shrinks the size of struct clk_fractional_divider from 72 to 56 bytes.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
