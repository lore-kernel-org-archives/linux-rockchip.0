Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DE1ECE58A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 21:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWHECrsZWKKE6h6WzZb0VOopOvCxrBAT1Y9lCafVasw=; b=xYTAl88CVMBnM0
	vHyOVg1EVOViVR5NXyF2C7TyPQoqLKhMNOn2uqN/T1+K9O1xolYrkP5ZdN8jQSJrGHGuMDwKhinmX
	xc+0XLkYfKTI83OsgaqHJov3T397tDg7ya9JS+ypQwv3YWa5d37QftGH14F+GtjyBmo5e8c3WpEVN
	uvhEK6kk+gWYuNk1rgVdgh5qbKnUYOtU8014KKItc5+/nYGstwhEUvmEx1GcZhtiVgpXJlChKOygU
	2w0PJsc9qkiZ7ja5CbWYeO1NsMIR0i3OStAxa8KwNeAUFORaCkUCPRwkWs233DqSotgzx2BJxrAha
	c4HJoWsVCFEOEBUWI8sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snlZ9-00000003Jo3-2oxY;
	Mon, 09 Sep 2024 21:04:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snlYq-00000003Jhi-2zoa
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 21:04:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 816925C0206;
	Mon,  9 Sep 2024 21:04:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5937C4CEC5;
	Mon,  9 Sep 2024 21:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725915875;
	bh=M7m3GH+gOlIpfjY+G+PXI+B0/CNE0K6PT4myOc9uHKk=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=RApUS1vlkxvSjLqP2ylVqWgJ1e6QwPvQY3QF+9b4HEbsz8s3/5qDzPDIuT5snyNgI
	 FjrhYyq8HvxdZaKaMdstdHlp5lmpTvnO2fU7R6hvT6OlqlGaKDSlk8fiT0QqLqnIcy
	 ni+1OmwTQNxb1YddvE8w0AZ/ANelht5fTLrvPOgEY3MJD89Mwfpo6HotSepdNM/mNx
	 EzS8euz2KdsHQlm0y7OIqOHw0FsyncC9fyvZ2yxP1Vy0mrV83bQwUcReLwfwWMWo/k
	 NUu/7NOqZXXRYwfu8q3sD2kD1VwwamZtuA/AHhWLBgolFoFf9KFP0Ji3TbmkkSmCrI
	 ZamQcgAy6ZJAg==
Message-ID: <9f354ca3eff2c20e98b84bf2590eb586.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <2436757.DCRlREXTYf@diego>
References: <2436757.DCRlREXTYf@diego>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.12 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Mon, 09 Sep 2024 14:04:33 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_140436_819020_371C06A8 
X-CRM114-Status: UNSURE (   7.70  )
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

Quoting Heiko Stuebner (2024-09-08 14:51:56)
> Hi Mike, Stephen,
> 
> please find below a pull-request with some Rockchip clock changes for 6.12
> 
> Please pull.
> 

In patch 'dt-bindings: clock, reset: Add support for rk3576' (49c04453db81)

WARNING: Block comments should align the * on each line
#100: FILE: include/dt-bindings/clock/rockchip,rk3576-cru.h:3:
+/*
+* Copyright (c) 2023 Rockchip Electronics Co. Ltd.

WARNING: Block comments should align the * on each line
#698: FILE: include/dt-bindings/reset/rockchip,rk3576-cru.h:3:
+/*
+* Copyright (c) 2023 Rockchip Electronics Co. Ltd.

total: 0 errors, 3 warnings, 1212 lines checked

In file included from drivers/clk/rockchip/clk-rk3576.c:14:
drivers/clk/rockchip/clk-rk3576.c:334:7: error: 'mclk_pdm0_p' defined but not used [-Werror=unused-const-variable=]
  334 | PNAME(mclk_pdm0_p)                      = { "mclk_pdm0_src_top", "xin24m" };
      |       ^~~~~~~~~~~
drivers/clk/rockchip/clk.h:564:43: note: in definition of macro 'PNAME'
  564 | #define PNAME(x) static const char *const x[] __initconst
      |                                           ^
drivers/clk/rockchip/clk-rk3576.c:333:7: error: 'pdm0_p' defined but not used [-Werror=unused-const-variable=]
  333 | PNAME(pdm0_p)                           = { "clk_pdm0_src_top", "xin24m" };
      |       ^~~~~~

Please fix these.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
