Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45093C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:25:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B3AE561458
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:25:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B3AE561458
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0sDnSrJZ8qHfv7tFVXTsAlMC9yOQgbPaZXaa3+ecdCo=; b=UTtBnO56KTO3ZK+zT+7Umgj9L
	MnGSovxCCsMUZb46Ekbec2tNd6l7jeesqRo9dLSRNRKYLG1HtDR+daFJNJy4lgsAiEpkKd84wbiIq
	NPu6Gqp9fK9rXnf77hiZ2pprJMgi/eD7NmczOZMWF7NzdXPqlm4SOqXsfo/MCU6dGoy0tV+b3ZJsA
	9XDnr2DW3KqNqzw+28uUSl3h+7/hcsi3Hw42qXON5EWFlj9EDQbBg9RhhccyWb2DQyJda5TdBViEc
	dHVeyzf/LOjv398JCL2OkQHbcUK5yCEuZha3ZYADP26h8rKYd1AYSVK5OoT2LIKn3NmEuz6LmtWIi
	FF7TMWskw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhZhI-008OTg-88; Fri, 14 May 2021 15:25:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZhG-008OTY-UP
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 15:25:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vqCUlgEhU2vMEHObdxNGJkUzrl21MYKxGafI7N4a84s=; b=F1Q7xQa+7rWlxLKGyRoQA/PG+j
 gHYDV8RdW9cKO4cit2JkdpH6CC8niWVylEx3Z90h0ioDdXF1vPEzIAIynVX/SMOoN0zM2tGFx7M9E
 0j1kRle0vEho8linxiGD1vJI6kEC9ZzDzFAAexk6io7zU9rgEdhyJAybDfokHf5TRLH4N0T3h2rbw
 CsjNZYVckKuAutamTRHS1686VggQVVljAj/26y6JQcqltN0xPJoAmojOHCAxAOlA+g2mmw2+36sRm
 44hQCqHx/5qH1+Y1iS56pNbeb9cgzAprBRUOerdOoUB/n5Mw+avE3DlkrYoODRxbu8pI+lgng8Bgi
 XghjZZZA==;
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZhE-00C4wo-0R
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 15:25:49 +0000
Received: by mail-yb1-xb35.google.com with SMTP id r8so39315619ybb.9
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 08:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vqCUlgEhU2vMEHObdxNGJkUzrl21MYKxGafI7N4a84s=;
 b=ClpN339cc1cnyFhsMokqbR+Pcw5ZIT88FYVY557pVaa609Kd9FBTClI0MRaUJbqZ8L
 aixexHzYPwcFd+6VjXVAFI+zJISkzIabGyaoQ1Aah1bH8CQHoDd0jaa3MH1nPxkABEpW
 f2FZdZUH6vCGoKnsjU8wFVLbu9B3TFQH463gd9bzYdknttYQtC58EksSl0aLzCuLS45C
 aySBwbkfF+bcgmfZH/rCPpxtLRVtai7eHAK1PGQ6NdmfGu3pQpIiDIddwDKrlcvibRWs
 CIpPwjIMurCbBccN+lGip53scfInyVoPz8266s2//0YbYCd4z6T3xXgM9VHaOVqw0GO0
 8yiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vqCUlgEhU2vMEHObdxNGJkUzrl21MYKxGafI7N4a84s=;
 b=WGdEVDvjlcSm+DYINfE0U7r/JIJnXIYxtiXzU9t2xsfXP4REFAmx0yNIT0gz3acgZV
 C+4y+VxiP/GGTLqOCzd1dCbcRuuhLsBkusDFUly1uE+BgYSlJRokg0bkzK11yCfeo3ie
 X2wWmvnFUi91mpU1VSjde+yJJiv6ZjkDSFX7JD6pjcyDsoEqISJs6hhIzfH80Qq1JZUB
 0MKXij2UxOSWWvB8Vd0jQj5Lj1Lso42+eOfX5SXZPMueq65OhO217KpS7cfr4dXoCLPq
 Y5dBxY/fQ4t/orpTRTxQU/hwUdAZQTkL3ooHLyOi3OOzYL+sneTW7nxBxqgCD9N7S+xs
 BsuA==
X-Gm-Message-State: AOAM532mDiCrBu6S8OGHr4UT2rpu6MbbbfgOcHCD2T2A4enuDOUIx1Gu
 pjPA2pxoktFxaIlD651aW3TwrfCaW3gxU4UD7Kg=
X-Google-Smtp-Source: ABdhPJx04DscHLr+Tp32e93DCe+zWPSXZGHy3f/l+WhpgVsCc4QIzwzlDQXs4nwHoYPjm8LgnhGO3dXA/+RgqApDaHQ=
X-Received: by 2002:a25:4d56:: with SMTP id a83mr57525294ybb.437.1621005946841; 
 Fri, 14 May 2021 08:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210514115826.3025223-1-pgwipeout@gmail.com>
 <YJ56G23e930pg4Iv@lunn.ch>
 <CAMdYzYrSB0G7jfG9fo85X0DxVG_r-qaWUyVAa5paAW0ugLvoxw@mail.gmail.com>
 <YJ6OqpRTo+rlfb51@lunn.ch>
In-Reply-To: <YJ6OqpRTo+rlfb51@lunn.ch>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 14 May 2021 11:25:35 -0400
Message-ID: <CAMdYzYrdNqDZdkCj5Jf9+MmGtZgy263cYmwWkB3rZY02dPefYw@mail.gmail.com>
Subject: Re: [PATCH v3] net: phy: add driver for Motorcomm yt8511 phy
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_082548_084859_33F56C60 
X-CRM114-Status: GOOD (  17.11  )
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

On Fri, May 14, 2021 at 10:52 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > I also wonder about bits 15:12 of PHY EXT ODH: Delay and driver
> > > strength CFG register.
> >
> > The default value *works*, and from an emi perspective we want the
> > lowest strength single that is reliable.
>
> I was not meaning signal strength, but Txc_delay_sel_fe,
>
>   selecte tx_clk_rgmii delay in chip which is used to latch txd_rgmii
>   in 100BT/10BTe mode. 150ps step. Default value 15 means about 2ns
>   clock delay compared to txd_rgmii in typical cornor.
>
> [Typos courtesy of the datasheet, not me!]
>
> This sounds like more RGMII delays. It seems like PHY EXT 0CH is about
> 1G mode, and PHY EXT 0DH is about 10/100 mode. I think you probably
> need to set this bits as well. Have you tested against a link peer at
> 10 Half? 100 Full?

Good Catch!

Guess I'll have to set that too, anything else you'd recommend looking into?

>
>    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
