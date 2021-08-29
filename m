Return-Path: <SRS0=VF+v=NU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFFDC432BE
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Aug 2021 17:48:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C62B601FD
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Aug 2021 17:48:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4C62B601FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/edH0/Rm7UQ9Rf+64r/UcqIJXQgAiCFTBUmDzVdPeuI=; b=sDpX8JFAw0tL4g
	kd83NUw5qqcK1CeYU+EJK/pVJV8xqgFfJ7NlACm7/FSQuPWz9boP3YxqBB59V1j+WRj5ubCqzRDoZ
	zrD9hKENQcRT0CFSavgzIMxsoI/LpBdoknk6okXzV8WCW9e54z61OD1kXLDFanCxrdaGa9MLYbWCo
	kGLQjjf/UGH85qDfo8JRpikhujTykmDqiyLFLKDloitJpKbpqVfki929u8rWK0EwoAIt7vEmL9Hab
	i/HyNK2+wLBhHFKEVw6rgE3cd36e84hY3f4TOHEy9hsXATOtFbHIgU4jx6xhcCpNInWeZ8D+sxHan
	elGAUOM6MiYDro1KMiAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKOvH-00FpcQ-8P; Sun, 29 Aug 2021 17:48:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKOv4-00FpbH-KZ; Sun, 29 Aug 2021 17:48:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E5A860F44;
 Sun, 29 Aug 2021 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630259313;
 bh=Ng8Nc7RPjC5XZnL4EXuDtogqZsofQfD04ok2tzTdyg0=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=WfLgDYhad3SWUz1Q4kjSXblwrfvtrwvQKrBBbqTsJgc9VEDQ7j0W46HWUbQGj6Q+K
 DZDilVD4HVaFbbPrRc8sjLPWJaCJC4+o6+hqJ5NSmlfeSgwh6w+Lyl0XGSun/MyOYS
 /kMm/O4VXOV2YzUvKbT/dhKfQ09ka2cwsUosXz3fBa7njXBw8QLnsVNX0+CVascDjS
 mzuavtotaNgLVb7fG/UEOXwC0XMAyhu8HtoU84+2E+RG7f9L53p2auRsy+l4OtyvGp
 al8f3KENJLJHQGaLVbQg3LBtb9vQdUIG7d2YiDYqdV/OB4oJVvFSk4n/agQFy6pSKd
 LBScUxJf9dl/A==
Received: by mail-lf1-f41.google.com with SMTP id bq28so26323950lfb.7;
 Sun, 29 Aug 2021 10:48:33 -0700 (PDT)
X-Gm-Message-State: AOAM531oqXjbiN7Di9QELqMcJpOe4h4tVDdG5BzyihG8svmqxYDXHmnq
 IacBGoelD3aba01ieRmg7I+9b919h+QlU3Qdv6Q=
X-Google-Smtp-Source: ABdhPJyB1nMr9MC5DfmQcKkSm3lO+DjPQnAw0j9giP2Ell6A/NFUpcvTKa18StEugRVNKMxhup/rEojB0Viq1QaPQ5w=
X-Received: by 2002:a05:6512:3f89:: with SMTP id
 x9mr14794257lfa.233.1630259311683; 
 Sun, 29 Aug 2021 10:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210823143754.14294-1-michael.riesch@wolfvision.net>
In-Reply-To: <20210823143754.14294-1-michael.riesch@wolfvision.net>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 30 Aug 2021 01:48:19 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Duk_56fOKVwZsYn2HKJ99o8WJ+d4jetD2UjDsAt9BcA@mail.gmail.com>
Message-ID: <CAGb2v67Duk_56fOKVwZsYn2HKJ99o8WJ+d4jetD2UjDsAt9BcA@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: netdev <netdev@vger.kernel.org>, "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210829_104834_736012_40A47004 
X-CRM114-Status: GOOD (  11.70  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Mon, Aug 23, 2021 at 10:39 PM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> This reverts commit 2c896fb02e7f65299646f295a007bda043e0f382
> "net: stmmac: dwmac-rk: add pd_gmac support for rk3399" and fixes
> unbalanced pm_runtime_enable warnings.
>
> In the commit to be reverted, support for power management was
> introduced to the Rockchip glue code. Later, power management support
> was introduced to the stmmac core code, resulting in multiple
> invocations of pm_runtime_{enable,disable,get_sync,put_sync}.
>
> The multiple invocations happen in rk_gmac_powerup and
> stmmac_{dvr_probe, resume} as well as in rk_gmac_powerdown and
> stmmac_{dvr_remove, suspend}, respectively, which are always called
> in conjunction.
>
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

I just found that Ethernet stopped working on my RK3399 devices,
and I bisected it down to this patch.

The symptom I see is no DHCP responses, either because the request
isn't getting sent over the wire, or the response isn't getting
received. The PHY seems to be working correctly.


ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
