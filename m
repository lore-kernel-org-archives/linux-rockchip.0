Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E737C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 10:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ML0eL1qVw7M/6gaCC5/U+A1fFpTNLea7NDU9IJg9hf4=; b=nCEiS0VxCAZ35E
	Kyc/LAI8YPkozCljCfuGMUn11ZYnAYRIji5SvWUzftwqCHbb/CtoTK/WgdaKcoFsACQ4tnrzL0wwn
	gOcipdCwBznZTLYvyH7CMa7hIIXKRlBEocTczuTmt7pWuCiaXaHIVpDL/4kt6/7+mecLFLzTnu4ux
	qghzFz6hRRc0hfhwrZLl2roS3H63TvLbgZodH4Gm5ELefqYV4eqwtUWSfCU5bFOhc2xjN4tjBBVEG
	G0RIzAOWPIzu8P2JTl+Du6XtCxMDxliNddP3WpMUxqtzksU6AXA3Zm3lzHNu4W2nCHSNGKXf3m3Ue
	j93cBGYYBTHkZU5kMn0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5ltm-008sgl-Hm; Thu, 15 Dec 2022 10:55:34 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5ltj-008sfO-Si
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 10:55:33 +0000
Received: by mail-yb1-xb35.google.com with SMTP id c140so2983505ybf.11
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Dec 2022 02:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MAzkART/K+H1BtBy2iGf2pMDNR/MlfcpKi3QLVUBijc=;
        b=3XwC3z+7qmKuu3PPVK1x6/x3iu4IDgw/47F0Lq1kOaCXFWv8uu6uZuN0gLYi7w+3zm
         kvOWLkPOSsh36KlrBfmKIhkfe/QDvyP3UP7uIXDDmxQdZDEa5EsMOvn6+lDuqPlMc6Fr
         Ty4+PnXwXPwWp1sDc83bUv7lHZRyie5AddZzNEOK4QgPZwK/WTzIbp6ftggolib+6jsR
         5JCm/goNnWG0lhyid5lCYJ/kZuOuwQKNSiY61WUFC/ksL09Lbg1JdIhY5rMzqAmXyItM
         ow4QCkRMSJRujiAmdHAupsiQoE/3rZREJGls9+gGjPrA5XMDMLUjk4bovi7CdB3dvN2s
         rkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MAzkART/K+H1BtBy2iGf2pMDNR/MlfcpKi3QLVUBijc=;
        b=qbQG+qfBeKLzENb1A7UfHKOacFGnk//DWhuh7vyxbdHPmA9OJ2EfZpXRKe3FRhx4gw
         w2v2ikoHjM04JhqehO20csUQ0EQhQSv749ufLtQDnWoCU5ITXps8haJJs3cp4fz3cjGp
         MKT1XKJ8mTnyGbY0LkUtEkrz0dFyw1hDJMdabjN3LI6EmKX/2iQ8dp/9benIEwWQhxZB
         GLKmhUZuRM9zSqXH9m9dEPpDdjggdy0TqyvEIg5+RblNsq4njuCQZYeqR5K7fStOECfM
         QBFeLjT937gr27b3tHz1gtt1daxWj+sGDWq4qEHa7dqyP+iVhPesH3gb5WwS07/NQmzt
         ZK7w==
X-Gm-Message-State: ANoB5pkhvg80e0sUvYllu/DP/ofx08LfYJdu4blAkpNwgassvXDp4yMB
	TFzh3QsurL0nIGJExzyu2VKQY4Ves2K+0645HVTZGw==
X-Google-Smtp-Source: AA0mqf5D2ka2OLSU6EKaH/KzAy3R9CDYQoDtyeqHkE52AM+pBVLuEEW2g1AXaXRdS9FL2SHNiUg+soG/TsJ0Rrphz/I=
X-Received: by 2002:a5b:ac6:0:b0:702:5c2c:c9ee with SMTP id
 a6-20020a5b0ac6000000b007025c2cc9eemr14594410ybr.44.1671101729873; Thu, 15
 Dec 2022 02:55:29 -0800 (PST)
MIME-Version: 1.0
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
 <20221214182247.79824-4-sebastian.reichel@collabora.com> <CA+VMnFzMgOC7sgcpQ7nZx2gaJfqqvRu8RxETguaBHN1Lg_nG_w@mail.gmail.com>
 <9a3cf2f1567f2a5990ed6dea9d6a5669@kernel.org>
In-Reply-To: <9a3cf2f1567f2a5990ed6dea9d6a5669@kernel.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 15 Dec 2022 16:25:19 +0530
Message-ID: <CA+VMnFxuzmP_7Rxp9UtUaeyZe=WCLCd2idqk8rorYsQWMSaF9g@mail.gmail.com>
Subject: Re: [PATCHv6 3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
To: Marc Zyngier <maz@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_025531_946214_935F5749 
X-CRM114-Status: UNSURE (   9.18  )
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

On Thu, 15 Dec 2022 at 16:20, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2022-12-15 10:45, Jagan Teki wrote:
>
> > One nick with dtbs_check,
> > ethernet@fe1c0000: Unevaluated properties are not allowed ('reg',
> > 'interrupts', 'interrupt-names', 'power-domains', 'resets',
> > 'reset-names', 'snps,axi-config', 'snps,mixed-burst',
> > 'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'mdio',
> > 'stmmac-axi-config', 'rx-queues-config', 'tx-queues-config' were
> > unexpected)
>
> You did read the cover letter, right?

Now I checked, thanks. Seems a known issue to go.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
