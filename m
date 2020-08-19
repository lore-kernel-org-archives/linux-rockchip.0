Return-Path: <SRS0=yKcj=B5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87EDC433E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2020 03:09:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 964292065F
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2020 03:09:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="C/+c2ylJ";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwY7F0fl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 964292065F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X968G1eYDXoqdKHZAiKnmgp2cvOeSoRTSViMU/sgexc=; b=C/+c2ylJ6e9bp6nn/0yvbsPWG
	aZXZx5Zh5pOGbZMRidxP6+EigLscMp3SYaXqm4xz4Ao0wTcW5gI8bl/GGzv4tMsFLxbTxphz8Mae8
	EmIgCZa+rEwj8GpJy/P5yarToecY3eK6pa35ugvsyecBZDEjOypslL+fsHjuLM2S+2Yr95qYEyAD8
	3k+DpYDQ5yj8uv7LCQGtetUTgtcifbnk5IXxNofJcR2wvM/R3C5d2CxnmhGdQlG6WJuBC/D7mS0+T
	XzM5C7YrD05UHj5ZcogxAaJjhvaUkX9akwXCC3VbepnNKlJidmqf10Ave+tDvUr50TKXz4tWXTYZ3
	i8kNMF6cQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k8ETl-0008L3-O3; Wed, 19 Aug 2020 03:09:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8ETi-0008KJ-IJ; Wed, 19 Aug 2020 03:09:31 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 303882065F;
 Wed, 19 Aug 2020 03:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597806569;
 bh=dIhySR/k16t4QbeFvM/+iC6A7uHOWR3lLBzVgDQjDZo=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=WwY7F0fl7pTCdmoGsECtz6g6g8C4zUsn9TErj5VE0Z0kHKD/GY29uuajrxTI7eyPF
 A/g0FtPPoAnT5R/UXDTHyZOsi2EZusDDZF/ftysxcucvXRb2SxhbbCXlQpYr0K/VRh
 eSz2rXNbJPfSWqttwkOZAY+0qMYLqZo66q1dSUi4=
MIME-Version: 1.0
In-Reply-To: <20200810044020.2063350-1-natechancellor@gmail.com>
References: <20200810044020.2063350-1-natechancellor@gmail.com>
Subject: Re: [PATCH] clk: rockchip: Fix initialization of mux_pll_src_4plls_p
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 18 Aug 2020 20:09:28 -0700
Message-ID: <159780656806.334488.9415034364202507585@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_230930_664685_94A0FD16 
X-CRM114-Status: GOOD (  13.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Nathan Chancellor (2020-08-09 21:40:20)
> A new warning in Clang points out that the initialization of
> mux_pll_src_4plls_p appears incorrect:
> 
> ../drivers/clk/rockchip/clk-rk3228.c:140:58: warning: suspicious
> concatenation of string literals in an array initialization; did you
> mean to separate the elements with a comma? [-Wstring-concatenation]
> PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
>                                                               ^
>                                                              ,
> ../drivers/clk/rockchip/clk-rk3228.c:140:48: note: place parentheses
> around the string literal to silence warning
> PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
>                                                     ^
> 1 warning generated.
> 
> Given the name of the variable and the same variable name in rv1108, it
> seems that this should have been four distinct elements. Fix it up by
> adding the comma as suggested.
> 
> Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for rk3228")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1123
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Applied to clk-fixes

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
