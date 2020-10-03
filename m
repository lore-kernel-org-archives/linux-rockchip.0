Return-Path: <SRS0=yZ4S=DL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25AEC4363C
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Oct 2020 04:01:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2395206DB
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Oct 2020 04:01:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ToDnqkMh";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lixom-net.20150623.gappssmtp.com header.i=@lixom-net.20150623.gappssmtp.com header.b="iRQgJlKK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F2395206DB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lixom.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S/kWPdn7t/WEMVyq9W0g+hp1N7gzdvbrOYeVdAhCqgc=; b=ToDnqkMhOryrH9+B64qHeD7kC
	ijxwNdd1bDsHDLP0iI4r2mhojMKUHCT7yR9U7+wz0FS1sgACgQuzIaoqx4anwZs3J5/LYutqaY2RX
	6tpA/AMk86SqRkkoOEjTiBnzufkViCT76edjUWh3tythXU9ytbc1XA16jE8tsvxuUJ0S6D0DSSwsF
	GxRQsrH9GnMhnYnhUaCg6ABf2/H6bJ8WfmyYgM7hNYvpZb/R4pAcsx207llTts/jorV/wz3H5cRNA
	xFHYTrvSSLChTOitMx5nx/P9CPCtzeGhlgo/IMyZE+oB81C75yLiT3xVKigJq1jElMtqTjgipSMrE
	gsItviu5w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOvDT-0004xE-TS; Sun, 04 Oct 2020 04:01:43 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOvDR-0004wk-JV
 for linux-rockchip@lists.infradead.org; Sun, 04 Oct 2020 04:01:42 +0000
Received: by mail-ed1-x543.google.com with SMTP id w1so5977757edr.3
 for <linux-rockchip@lists.infradead.org>; Sat, 03 Oct 2020 21:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=297xi9tN3l6vpiU+OkfOlK0NUnI5T0Z/FG9oAtBY26c=;
 b=iRQgJlKK+oNqKSSzKlNcgeHnwu83JlXWTUWpA4H+ZqCYkqwIpNPWSLEEFmgcEjUWwu
 SkojPq3e16qlKq3gEvp3KEkPaEgLsigXHhrB08VLwcqNk05yvzvQzVFz1UEz4yCWZLIU
 SBlLFlDoqwONOP7CTlX1jfG47t0EmyQ9dUlkCI72uAVrxR8w5d/izdCRAgVjc/Mga/zs
 o6padKvbNx9vbxbkyqDsELe25i+TqspbT0U9WB34w2pY9RlRy3pCGbZ5kFvgUe26NDGj
 rBa0w8O5/PvEBqvi0/TfHnsDYEZsqmnQ7pUq5/XYp8Kcd0Zl21VHs82g0HcmOusyD3cG
 BfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=297xi9tN3l6vpiU+OkfOlK0NUnI5T0Z/FG9oAtBY26c=;
 b=uYv02/2ofcSuXvDqfGJ3tu5AHPqRdUYE/cOVM6bIRuHVjug1A8YBSEkRLyipmpLlbr
 ABqH76zwr1zaN+BwKcfHEGw9UyXe6mVmakk6OH71B37zVvnoKdR8+C5tFbJ7mjyxmIyJ
 R4K/19Dmlhcw8x4RlH3MIEErM8j3TwfU57glpHaGJzKPe1bV9N5UVvd2S1otifmN3Nol
 tbUJ4dCnwY1BgfETeV5yIxNzl+56IYCZa/JsH0Ow91awzf+A09bbAHCRXy4Jsb5XdJbT
 rlTipi3Z/fqZDybodZMpPgfOjvjJ8/5b/vFPBXfPEFmry+wD2q+DejEpafwyw4jka/a/
 v5FA==
X-Gm-Message-State: AOAM530s5MqIxzB7pAceMY1cx3hC6dnfqSejxkKrNOm8BemXWldyu7UO
 NaXdlD4+o95YeSH27n1wJQqxjvlfkkfyy9cX
X-Google-Smtp-Source: ABdhPJwprQg/HdgdxsrX4qIn3ruMS8vA7gEhANoj9JqYlAJrlNpEu2DQz5t1+Zg9y6yjXI+eCIEzjg==
X-Received: by 2002:a05:6512:200e:: with SMTP id
 a14mr2610320lfb.49.1601757093767; 
 Sat, 03 Oct 2020 13:31:33 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id c3sm1948157lfg.15.2020.10.03.13.31.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 13:31:32 -0700 (PDT)
Date: Sat, 3 Oct 2020 12:38:31 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko St?bner <heiko@sntech.de>
Subject: Re: [GIT PULL 2/2] Rockchip dt32 changes for 5.10
Message-ID: <20201003193831.GE8203@lx2k>
References: <16010805.MhVyP8KKtY@diego>
 <1834049.gShM3QRH0n@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1834049.gShM3QRH0n@diego>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201004_000141_757215_C28DA729 
X-CRM114-Status: GOOD (  14.16  )
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
List-Id: <soc.lore.kernel.org>
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 29, 2020 at 12:45:29PM +0200, Heiko St?bner wrote:
> Hi Arnd, Kevin, Olof,
> 
> not sure if this got missed, but I can only see the arm64 pull request in
> the soc tree right now, so here is the 32bit part again.
> 
> For reference the original pull was in 
> 	http://lore.kernel.org/r/4293766.LrauBeaUkW@diego

Looks like it didn't make it into patchwork for some reason, my current tooling
depends on that (I should switch to b4 for it, but it wasn't available when
I started on it).

Merged now.


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
