Return-Path: <SRS0=UDvA=OE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB8C8C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Sep 2021 13:40:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9DE38610E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Sep 2021 13:40:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9DE38610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRbtgnNRr8fnr1CiffzdqiG/+h1zfutLp9OQg+1LApA=; b=xyuierm8mKDDhp
	12netOpimQkjYYWpWPSSfu893enoIb8hKBfNM0LhWNEQRp5UXOxM49E/n6rO9OHsS04ZMqjf4P6rI
	0isflrJSj2pWPpSD5Wk9rS1tpZiBkOSguYzw2+soGfg9uio3y2D/hV2QOH2NEdDzN+P6FGSIbFk55
	8YA54Zk/tTX/FvKz3Svc50927p4+LD945iq4P0kcFCvyUneoj0WaeAJR1uKAolxR/Xn+sboexrUD4
	gAjUUF7oTvEBVZTpj/raV7uGZJK3/UtyTWKlnm0PrCE35hKTMIRPdPkn76/Ax3UahAGG8JaJoNj8g
	4vAVq4NNWDAC/VrOdRRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ8fd-005sv4-Az; Tue, 14 Sep 2021 13:40:21 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ8fQ-005srs-BM; Tue, 14 Sep 2021 13:40:09 +0000
Received: by mail-pf1-x430.google.com with SMTP id g14so12251092pfm.1;
 Tue, 14 Sep 2021 06:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n1xHERTWrj7D1DTPEGJj3xVwOdFR4NfsEg1IOHAruuw=;
 b=N4HjvaGMKIHbXihQJY26tsfN0SewA/NZla4RAEMjOxtJnPQfLV4agqUhzeTnjj86Mt
 LP0m9lTl6Gc6Dye+LCwhyvl/J0g772XxXhLEL/qoIq7xOen0Ca6jYCS8eZ2/qpZq0CpS
 iO0vzwUwO6nDVOLORCamflLOU2mxqFvkBzACzG8ZqC8Bld+xFWgUSd0csXsxALqCZhCm
 HPkXkL2TX1Gco+oKpFU9M6+4J58W844WQdDbfFQm7AV71OwP54oZplG9BA6hERNK2z6I
 D6pebIdKVNWIMDx5h12PyCUXPFJzFt0WMgD+1+QclBKkdJL568CtTfs8ic03gNLoycKT
 9AiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n1xHERTWrj7D1DTPEGJj3xVwOdFR4NfsEg1IOHAruuw=;
 b=Sh+ptGtrcxtuk+uxZzzjoOExyQgHoED0GJfVqICUKca13sDQ8GfqbBH0rOGxPlaZKD
 zH847ov2Hn7mE2lIcRGdRShsAFR5cLZU+YEo1in40gvQkev6UZbMpdG/H7GqnCM/3v0y
 UEARXmiRZpWFOE/zCKQxX96t/V5J+IgS5PLmn0Mk1NxBQ9ruMspQc3v0IoLZd2vhwYPR
 dwah7UuRk3cUeVV7bGUvpFamURvfXzNVTLVcNZV8YC1l+EUwoL7XwSlg3UiNdUPDpmk2
 K8EF5ybsy/tAK4yZiObKjwTpwPZiOjs5x/wQtrBwGedIs1MTIz00hrWC5BJRa/f9ZJEe
 7WFw==
X-Gm-Message-State: AOAM530fHKJbiz3KVcTHPNgbR/YB9VzXX8zQrHcts14EYCaVIGfOt+qp
 91LQLyhDhNFEO0kQmR7yszMVBsLb8eWkGp8ATN1BY05INlQ=
X-Google-Smtp-Source: ABdhPJyx6W1PZKwym79XKRlu1WIoa0lt5UEVm+XWEe1zmmFeUxgWA/N1FXcqIdWfUY+sZHxx2c6EUP6FZ4I55/6Q7mA=
X-Received: by 2002:a62:770d:0:b0:43d:aff0:dbec with SMTP id
 s13-20020a62770d000000b0043daff0dbecmr4853543pfc.79.1631626806301; Tue, 14
 Sep 2021 06:40:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAGjnhw920kNaJ9Vkg54WR8vh2TaomuTtA3WwR3eieD4v6iEJDw@mail.gmail.com>
 <2ada6f05-fc3a-a301-a008-594f7665a514@wolfvision.net>
In-Reply-To: <2ada6f05-fc3a-a301-a008-594f7665a514@wolfvision.net>
From: =?UTF-8?Q?Sebastian_D=C3=B6ring?= <moralapostel+linuxkernel@gmail.com>
Date: Tue, 14 Sep 2021 15:39:39 +0200
Message-ID: <CADkZQakh49i-M_1NgsENkqBnacVo6J3Rj8D2NFijvyBts9Pneg@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Ivan Babrou <ivan@ivan.computer>, sashal@kernel.org,
 alexandre.torgue@foss.st.com, 
 davem@davemloft.net, joabreu@synopsys.com, kuba@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
 mcoquelin.stm32@gmail.com, netdev@vger.kernel.org, peppe.cavallaro@st.com, 
 wens@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_064008_430950_5A775303 
X-CRM114-Status: GOOD (  20.66  )
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

Hi Michael,

I guess looking for a better or more ideal solution sounds good, but
sorry if this is impertinent, as it's coming from a mostly uninvolved
3rd party: This is affects a kernel that is labeled as "stable". It
seems extremely unacceptable to break ethernet support for boards like
the rockpro64, which are used largely in a headless fashion, when the
offending commit has already been identified.

I don't expect a stable kernel release to completely break my hardware
and then see people not immediately applying a workaround patch. It
seems strange. I'm not fond of having to fix things through serial
console and hunting through mailing lists to figure out what's going
on. I'd only expect this for -rc kernels.

Just my two cents.

Best regards,
Sebastian

Am Di., 14. Sept. 2021 um 12:09 Uhr schrieb Michael Riesch
<michael.riesch@wolfvision.net>:
>
> Hello Ivan,
>
> On 9/14/21 3:10 AM, Ivan Babrou wrote:
> > Is it possible to revert the patch from the 5.14 and 5.15 as well?
> > I've tried upgrading my rockpro64 board from 5.13 to 5.15-rc1 and
> > ended up bisecting the issue to this commit like the others. It would
> > be nice to spare others from this exercise.
>
> For what it is worth we believe that there is a different issue with the
> dwmac-rk driver that was obscured by calling pm_runtime_get_sync()
> early. Investigation in progress -- I hope that we can achieve a proper
> solution before we have to revert the revert.
>
> Best regards,
> Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
