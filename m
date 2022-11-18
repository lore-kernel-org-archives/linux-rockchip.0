Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82AD5C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 19:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOYButS+gRqdpqPrz9ce5q44LHXOudYCP6EardLukE8=; b=YgftwsoWwZsHwR
	FYyQieGjwGRC0srJ0G4Fu1PQ0aDkqal2WZSxYPGXpNgzjb7pXp6BGy+V+oH/WKQiIhAFCoUDUmHbZ
	o4j1MGQ2UIPlgNdiUsyICbpfdqaPphYqayncwjYpSWChPsdChCRHz/S3ADBl/Y1dR1PHAfoj++HHX
	O8r4Vuv7pysCYleYdWh0PngeUAdF51v/SN13dEOg44wDxhYN0DcThBplem1SvdR9m+TOB72c2hLyz
	y4ocvchUyAngL+zQT3KMsAjA8rRlAbeoGeFvz++oLWN8zl6Sta8G0s4o7EtVHcRjA72xNtluULlLx
	L+jg0rp8TV1gjLDecY6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow6iP-007RK5-7b; Fri, 18 Nov 2022 19:07:53 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow6TK-007Jty-8Z
	for linux-rockchip@lists.infradead.org; Fri, 18 Nov 2022 18:52:19 +0000
Received: by mail-wr1-x42e.google.com with SMTP id a14so10678311wru.5
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Nov 2022 10:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Qt6TVDinU/RMP8d3grv+u5nyW9aTQkn9s/ghe6giBwA=;
        b=Aj6bT/wYUUgL/SyhgIjWBU6f6UCFyG57wPryV4iMtnO8F6phPyjNeCFDB6Fvq/vmWe
         3qeSGl/9HrBZmXlWDx8ef1hgTEvMZl7p02SCmpGaCiflMBEel9KpBOjwD3spRgZ1+soy
         EwvaWBjxEBvlLFdUgRvdx2v7PjH9/KIeg4iqOpbLi5P6A51Gl4wPc6++F2rnXIhce5nV
         ohIyqybaadTDMr0DLjz3MgFft0yqSJ9llUW7MXnV6I1+z5YEBwVm2bC2wh7otB+gkVn2
         qvCYhAchPMu2jVaUVmqbhJ/7iDZxEv8dyFz+w+HJtSguSguuLwTgEF8M7furQOq34A8q
         015Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qt6TVDinU/RMP8d3grv+u5nyW9aTQkn9s/ghe6giBwA=;
        b=pFpPaCR3bWa4KK6uSqU8Z2h7JqZz6rnr3baifFP8prmFV3B8YGyPiMJXXMtxcIvIH4
         lmm9ve11Ctx+vZgsuWsWbnsgJmWQJkS9fPaPS8qvAAnN7IL9H4mLh2Vz84BPfmLsj5Gh
         THoBY8uBJ7YOAlwa+HhgCcZJUOqobchQH7x79KjvcQ7Fu2tosHlx8656yqIJ4qd4fqCU
         4A/fa5yVetSeqNoNiQowww/clZbfiVQUkAt54+bPa4epSE99bb/RjSWSqn+0mCTCjp36
         3xP/WjiAOeF/3lFiZa8WcnjhVsCPt7iFBaLdTh41yhmYnQw4cbFqRsIFtm3WDsZs8gxp
         nqdw==
X-Gm-Message-State: ANoB5pmI7Nk6cwpHUVAhbofL/OfKD1Ged442ZcfyhPBgPBXVt3Pnec24
	WRPJrXUbkMCgKAcu84RypUVF5xivsqgy+t4iSVY=
X-Google-Smtp-Source: AA0mqf7UHaWn6BdgT7aoPZFxulq0JyFcKfd6UaQb+YfB1Hy4TCYBBcw8x6+TfiiBpzs826YsoG/Kmd8I0KYBMdp6k0o=
X-Received: by 2002:adf:e4c3:0:b0:236:55fd:600a with SMTP id
 v3-20020adfe4c3000000b0023655fd600amr4863937wrm.109.1668797533516; Fri, 18
 Nov 2022 10:52:13 -0800 (PST)
MIME-Version: 1.0
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
 <20220923160115.2946615-3-a1ba.omarov@gmail.com> <e02b6efd7d242f95c5cdfb2c5cdac29fe65a7d13.camel@siemens.com>
 <CAKyg=SU_1pFcBvwfTHgPbzFiUrNkx=aTWSbN59K2Gtzb5nZSXw@mail.gmail.com> <d48538acdf415b051b21876504187859074b38fa.camel@siemens.com>
In-Reply-To: <d48538acdf415b051b21876504187859074b38fa.camel@siemens.com>
From: Alibek Omarov <a1ba.omarov@gmail.com>
Date: Fri, 18 Nov 2022 21:52:02 +0300
Message-ID: <CAKyg=SV25kOKtC8QcWmKPP8zdai99xW7CQSEnVmg5xUv5F4nOg@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
To: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_105218_356571_CB6ED677 
X-CRM114-Status: UNSURE (   4.25  )
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

>Your patch works fine and shows some LVDS panel graphics on a custom
>rk3566-based board, thank you!

Awesome, thanks!

I didn't made any significant changes since that but I will probably
resend it when I will have free time.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
