Return-Path: <SRS0=2xxz=IL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F641C433DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Mar 2021 22:25:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7815564EC9
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Mar 2021 22:25:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7815564EC9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=chgVaZjSIphBC69wTsRQogBIrzxmq5eDOjhO2A0nbEA=; b=fPjCXrrlgVp3J5slOr/rOLYPt
	NmdVsEJOLF4T4M8YvLRcEfoxVoWFqSCx2oVtCJpZ8mHfS9dPXLiM6zWcs1TEuNekiRc4MHiGXK8It
	kNZhPKYj0FiO5ixeRTr4Ke+7ZmKPBP4pyZQqX6Sw0/cCmXL9Rk4c3tfNGK0/fyuvUy8YBvphWN0ke
	BzsxnGGoBvdCNe4Q0HlaP9Cdx9iVUCwboysAVC7uSCB7NfMyVVJYrS3g1PXtP0miLmyjliVW9SsA0
	/Fvdi5UuqP3VkwNFE0iE2jlxKywOrrNlX2LkcTWFbl42RkrtSSzDYwPht4R+ydUGTsM2JEJvEB3EQ
	IwTgNmUoQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLChP-00DfXb-AQ; Sat, 13 Mar 2021 22:25:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLChC-00DfWn-5V; Sat, 13 Mar 2021 22:25:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8BA0E64EC9;
 Sat, 13 Mar 2021 22:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615674316;
 bh=XNgqaZ2i3/Zjc4Q3m1D1qEEm/vTGTGwUoIYDh1YUMx4=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=VvS7SMUhIcP5DmSLkgLps5Ohia0lLPsz77zbFIk3XrvkVYiEPHBT1DqRACuwnF26y
 RO9O8Mi9zGLMIDe2esJfAAlZMjUcwg8QsI8MGyexqtUNT6Vr/Yur5NNFO72lbkHckx
 v2JRpwd4EHYq+CqcZAAYlpXUzj5Tbrr9k8Iq3HOczddpzgWOgGOczAeuFisWNbJfJI
 9MSFU71NOWA+yIHk7Z7AksXNpmI8pDl7HumYSEJmI+zLmzkkSAbQ03apJVZ0U+0rFh
 pc7+OBsOwNwUogvOR94nkUa53IchUwZc9vmBbqah78+ISFv10Qqmr9QXj5RQoy5JaU
 pF9ZQ8ehXr/Zg==
MIME-Version: 1.0
In-Reply-To: <20210301064749.10392-5-zhangqing@rock-chips.com>
References: <20210301064749.10392-1-zhangqing@rock-chips.com>
 <20210301064749.10392-5-zhangqing@rock-chips.com>
Subject: Re: [PATCH v3 4/4] clk: rockchip: add clock controller for rk3568
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de,
 mturquette@baylibre.com, robh+dt@kernel.org
Date: Sat, 13 Mar 2021 14:25:15 -0800
Message-ID: <161567431517.1478170.18210364268176534887@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210313_222518_867219_55B8E99C 
X-CRM114-Status: GOOD (  13.40  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Quoting Elaine Zhang (2021-02-28 22:47:49)
> Add the clock tree definition for the new rk3568 SoC.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  drivers/clk/rockchip/Kconfig      |    7 +
>  drivers/clk/rockchip/Makefile     |    1 +
>  drivers/clk/rockchip/clk-rk3568.c | 1726 +++++++++++++++++++++++++++++
>  drivers/clk/rockchip/clk.h        |   30 +-
>  4 files changed, 1763 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/rockchip/clk-rk3568.c
> 
> diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
> index effd05032e85..2e31901f4213 100644
> --- a/drivers/clk/rockchip/Kconfig
> +++ b/drivers/clk/rockchip/Kconfig
> @@ -85,4 +85,11 @@ config CLK_RK3399
>         default y
>         help
>           Build the driver for RK3399 Clock Driver.
> +
> +config CLK_RK3568
> +       tristate "Rockchip RK3568 clock controller support"
> +       depends on (ARM64 || COMPILE_TEST)

Drop parenthesis please.

> +       default y
> +       help
> +         Build the driver for RK3568 Clock Driver.
>  endif
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> new file mode 100644
> index 000000000000..60913aa91897
> --- /dev/null
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -0,0 +1,1726 @@
[...]
> +};
> +builtin_platform_driver_probe(clk_rk3568_driver, clk_rk3568_probe);
> +
> +MODULE_DESCRIPTION("Rockchip RK3568 Clock Driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:clk-rk3568");

I think module alias does nothing?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
