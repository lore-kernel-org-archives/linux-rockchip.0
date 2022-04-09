Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5067FC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 15:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MT6IIBMj1ByTwXI0BUQ7c9pVj22R3Njmey3qvn0j0w=; b=bGlHFPzykEV2HV
	JV8aYWgdNXva/Spot3UQgKVpQ1qP51vTNeB0BoL9K5OszqBwPkbfSrllYnAeYQh+gKoD0b6vM/WmZ
	XFGVYoDaqDETVhdC+Jko1NXQewCaJ+iotR5t9VspZN8UDXEPGaKQc1rfWyaKmEhfc+aQsijIjrDov
	rvdZJX7ppfMOiww+CAspxNKhPsPrfGaXFIjyAH+DOIcTicWx1/GRP4RCj/CVs7saN73sAupZIamlZ
	qW6xfy29sp2B3j+OrxdaGpBg+QHnrHUoCDIhrQaEBvYLZnJ1ryePTwHyoiFd+3hkrbwVky7eSTh59
	UAEsMHxU7qoe6tF5woyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndD5O-003Po1-PX; Sat, 09 Apr 2022 15:33:14 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndD5M-003PnL-0H; Sat, 09 Apr 2022 15:33:13 +0000
Received: by mail-yb1-xb29.google.com with SMTP id x21so20028624ybd.6;
 Sat, 09 Apr 2022 08:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5CNNYXuOr2RcG8eSzPuXT83KGiDGSucj1aFS0r5c1ZA=;
 b=dc+l+QFt+ZkI4ADTsbh1RkzZ7R3GKYOGpQPN5INmbHlFKc7ns4gaQ8MzsnTZxHC9VZ
 sbB+msnC5t+3A0if7JaXZ36vTXMRQDtmmNtdcUvAsD1GXSfjPe0XqX40aVc8WaaCdXR3
 FKbS96lEEYq8OvHfAKySYgRQOCU13wtfmO2z3cW4WuEOX/uFIHm22Bbt8NKrZTXdd5zn
 6Krcdg+Zap+0/M3Ee0533KHqgEnbVS/gOg93P/KNY4YLpf8ezcXDX6JTxgibmW/+PIEs
 IjtMFpEt+lHA9MZi3/RZ1SHRC7/jYdMqTmE6qz+mbwfHMbAv4TcYcVYzdKffy/eR2a9W
 nLxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5CNNYXuOr2RcG8eSzPuXT83KGiDGSucj1aFS0r5c1ZA=;
 b=0hyfzjk8/wDUz9d8bzzXs/weF53vlbb93gjf7RCM3j9any9JeT3fmfv7l1XzN7pU+L
 2xEJ7wir0G55haOEKEeNcVknMPqGz73YAgPoBQk/P5nvwQrjieEeZ+sXPm2HFwe54WsU
 FtQ+3+9Fi8T59wvjoWcAiY8cx/xNPtFFNxNndrsAM65QnLtZpmJBHjYnAFB5j8eEBTnZ
 6gyZFKkWkyTRsv4QJW4oFaFcrN8e5NafCwaCNt66zzbrPCAC7haaMlrXgsB/ko3qirvO
 Vs+XGKSAKiE1Ncpmliz8lJtrxd8pk79wosFWMUFky6pDC8lCm1Xh+WFdUOK74ELsdOyJ
 HOIw==
X-Gm-Message-State: AOAM533B7hU9ZSkuwrJDp1sdn2UTUg7W90DCcnUIlqSLtTKGllg1xQdq
 IpTqN8I/i+XnF93ueYMRivfiPxZK2Kis7NOY/D4=
X-Google-Smtp-Source: ABdhPJz+u2vMB6vK+JAGuD+cHl3/9qosUF8iC3kUhZx4Qftx7dvTPzvltpLQ174kmxzW5MzbnQt7E8oPwm5+FKTFhMA=
X-Received: by 2002:a5b:ac7:0:b0:633:cf3f:6d1b with SMTP id
 a7-20020a5b0ac7000000b00633cf3f6d1bmr17740849ybr.585.1649518390548; Sat, 09
 Apr 2022 08:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
 <20220408151237.3165046-4-pgwipeout@gmail.com>
 <trinity-3ae2b0d1-a3f0-4c64-acb6-2fb4fa0b36b3-1649434480623@3c-app-gmx-bap48>
 <CAMdYzYrK2KV1svrHS=zMjGYh=dUis-JKjgYHaeOB4LQWXM1+4A@mail.gmail.com>
 <trinity-7dbd5148-923f-479b-9eed-a75f000456e5-1649489032880@3c-app-gmx-bap35>
 <trinity-75c90ab6-a336-4f5d-972a-364b7f32c597-1649489861756@3c-app-gmx-bap35>
In-Reply-To: <trinity-75c90ab6-a336-4f5d-972a-364b7f32c597-1649489861756@3c-app-gmx-bap35>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 9 Apr 2022 11:32:59 -0400
Message-ID: <CAMdYzYqHLVnu7nwnGHAFGTEctnZuaRx515usYqeGmGnEpBb8Gg@mail.gmail.com>
Subject: Re: Re: [PATCH v5 3/5] arm64: dts: rockchip: add rk356x dwc3 usb3
 nodes
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_083312_161959_09BC00C3 
X-CRM114-Status: GOOD (  14.73  )
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

On Sat, Apr 9, 2022 at 3:37 AM Frank Wunderlich <frank-w@public-files.de> wrote:
>
> Got it,
> these Patches require different clock names
>
> ref_clk => ref
> bus_clk => bus_early
>
> after renaming usb works on my board
>
> will send an follow-up patch for this series
>
> regards Frank
>
>
> > Gesendet: Samstag, 09. April 2022 um 09:23 Uhr
> > Von: "Frank Wunderlich" <frank-w@public-files.de>
> >
> > at least i nailed it down to these 2 commits in drivers/usb/dwc3/core.c, without them it works
> >
> > 5114c3ee2487 2022-01-27 usb: dwc3: Calculate REFCLKPER based on reference clock
> > 33fb697ec7e5 2022-01-27 usb: dwc3: Get clocks individually
>

I've submitted a fix for the dwc3 issue.
https://patchwork.kernel.org/project/linux-rockchip/patch/20220409152116.3834354-1-pgwipeout@gmail.com/
The offending commit was: 33fb697ec7e5 ("usb: dwc3: Get clocks individually").
It breaks backwards compatibility with rk3328, which follows the
rockchip,dwc3.yaml dt-binding, and thus this series as well.

This fix is standalone and necessary no matter which route we decide
to go with this series (and the rk3328/rk3399 support as well).
With this patch, dwc3 is functional on the rk356x as the series was
submitted, so if we decide to fix everything all at once, that is a
viable option.

For those not following the other conversation, here is the TLDR:
- rockchip,dwc3.yaml has different clock names than snps,dwc3.yaml
- rk3328 and rk356x attach directly to the dwc3 core driver
- rk3399 uses the dwc3-simple driver, which still uses the clk_bulk api.
- commit 33fb697ec7e5 changed to individual clocks, which follow
snps,dwc3.yaml naming
- to correct this beyond my fix patch, we would need to align
rockchip,dwc3.yaml with snps,dwc3.yaml, which means rk3328, rk3399,
and rk356x will move to the snps clock naming scheme.

I think we need Rob Herring to weigh in here, as this is a rather
uncomfortable dt-binding issue.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
