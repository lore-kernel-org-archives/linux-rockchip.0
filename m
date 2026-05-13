Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16097CD37B6
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 May 2026 10:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08CalfE1EPzxIVEmn80cv7TWnbztwv3cOQPekPFI+GI=; b=VkpNoCeJeA+iq+
	86mNIkkyme8LqzOuiuW5EvQfGNUNFYAXtW2S7800bh21yBPrxycgB86apG8xg+e/1e5NwOx4jCWH7
	UGrDh8MhjvGkdFU5hQYGERd51/78X7zLhZhek7aaPODT4Y2ZjF9wZbiyfFELVxyloyZ1i/GEUZ/Un
	EDzyhr95WzW0Rmin9Yx1CKP2knWjdLp7ukgxhAj9e1Sa8UalNF2irARWzl3Stmaduv8AqCskpCC7Q
	rEr2iKKys8CL7FSef02/Y2s/3pquC/8ouv2uYfHlPyy/Gn1CNCmINaieP5R9pkjNu5FfxxiXw/gj8
	lhJOMFu6GeNB8ll/apRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN6yM-00000002DM7-23zs;
	Wed, 13 May 2026 10:37:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN6yJ-00000002DKv-3BZS;
	Wed, 13 May 2026 10:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xfLB7UCd1FxhnipHP74KybOFTqY+Qa3iF1Dpbphypnk=; b=XmEQNcMu3kYeKzGVmVJg2R7QEt
	ccGBPq4XrtkEbOK90ewHWnU1SnCWIrGXz5gPuKSBo0ralsj5l9THdY5y3m5m32krKfQJ+x2amR8Nt
	qRSpYebR/eXuyjG5ova73aCb8kHqdTyLtGNGAsgZIST8Qy4o6Q2Ou+cPqX8YBW59FHQaZG0yyVlKX
	yDIckFXK6V9Hpyf/Lur3MWYcsvcqLm3FLU9cXRxo6GknBL3IRmjqwtkBmzwkWCuDPaBlmggoEVbbc
	Y/IE9kHvWbrbPmKry2N9D6fR4g2tW9VZ93R98Qu2F0LvGYpCrmbMuhNG4dXl+nW2yaq2TvwJcKEwB
	zW7U6hMQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Rosen Penev <rosenp@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH] clk: rockchip: allow COMPILE_TEST builds
Date: Wed, 13 May 2026 12:37:13 +0200
Message-ID: <177866861364.141763.5731097553415107944.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260509003602.956186-1-rosenp@gmail.com>
References: <20260509003602.956186-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_033747_820619_E58475A0 
X-CRM114-Status: UNSURE (   8.66  )
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


On Fri, 08 May 2026 17:36:02 -0700, Rosen Penev wrote:
> COMMON_CLK_ROCKCHIP already gates the Rockchip clock objects inside the
> Rockchip clock Makefile.  Allow selecting it for COMPILE_TEST and use it
> for the parent Makefile descent instead of ARCH_ROCKCHIP.
> 
> The per-SoC Rockchip clock symbols already have COMPILE_TEST dependencies,
> so this exposes the existing build coverage to other architectures without
> selecting the Rockchip platform.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: allow COMPILE_TEST builds
      commit: 7edfb7fb58ee058298e18fde76a6077ef17d19d8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
