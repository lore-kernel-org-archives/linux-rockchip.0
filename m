Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B1FEC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 21:16:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2ED761102
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 21:16:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F2ED761102
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWIhX0QDXiUKTOd8p/4EvmD5GEtHYtOR8xjwTaSdSXU=; b=zDtEfVFK6Ev+B7
	UHO6gN3rwyRKZXPeOBueGbg1VGd2IwfzPWmR+pBVoXfEgg/2JJ5OO1Q5l/WhQZ5RU3FCfHPswxNjT
	oGj7wPKb8BTCClnp8ty54Bc6aLvFHb2gAMGzEhtrRbYjQUEU9rt5hm9kJmlHTQAZodtIubU/ssqEs
	bFZv7P4mb3r8yppwb3PWxaErMG9sMzX2zK/jHa2qXy+EqqDoANRVcFzqvECjVmpHOq0FMc5e78ayF
	9EYMcwpaDX5T4EB1G5FPSLqqJb+pdeRPEcVWsIXZu7wVxFwgusW0fc+XT+SRlk/H8+cJc69RmX2EK
	gT4t0/GzJJhC/9Ta0v1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHBsZ-00C7r2-A1; Fri, 20 Aug 2021 21:16:43 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHBsT-00C7pv-S9
 for linux-rockchip@lists.infradead.org; Fri, 20 Aug 2021 21:16:41 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 g66-20020a9d12c8000000b0051aeba607f1so8521126otg.11
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Aug 2021 14:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JK5qp9aGPwlk30xRI3qcWwl4gv4KOP1fwY03JpC1sQc=;
 b=JybGeEAWGaaSntO3R2lT7WUj35AygFj+itlN16mJYpO0OvjZL4KqEBkfiQp4PGz5Mh
 IrMNHPoa3RsBgJOm5bzBRMyg06657LdqdM3qiOSs3QY6vOx/NvESZuyoce2FByz4HnNL
 1gZiAXesklldc7Jy2N/XS7I1aWhbJKnHGm2DE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JK5qp9aGPwlk30xRI3qcWwl4gv4KOP1fwY03JpC1sQc=;
 b=df3LSe6f5ttY88j+0nQvKrg89nZzoLHhCisCH3V6ZrnIh9oE/kD+vlwJXPkPhS1ayY
 0xLILA3G3PwtbL1OzBt7e7aZBlQndfGxD8M4jiCaveLUI8rdZ3mvqk2FRf1QuKWojEBA
 WNq6QvTdux9Dmf0xv4XIdDkw2xRfvQIz7egLL7LAnup4izR/rK4oKSt/EY+E5eChAE/d
 84x3l+GkYDYOt34imDFqBkKu7t/scianUR49HmkER9WrW9Ou42bhcKrwG7MtNtqzthb+
 zimu7BQMZtWhNSNQVCeXnDeXPaIly0H9e2u4Vd4S+kbCASLP4LtbgZE+dT/44V039bBJ
 TZng==
X-Gm-Message-State: AOAM530G9ew9yxvJ++svhX8P0hgnC2WfYhBp+vZ5QfR4HnboPrsG+9Z8
 pgNNW5Vd+48rPU82h6IzVowK7br4n6NNrw==
X-Google-Smtp-Source: ABdhPJwZQZybD6+/hUy7hqdtE+4M47ySUmdZfLjT1bqQm611c/X9grjI99mY0IefW0ex1CzhR3HKxg==
X-Received: by 2002:aca:1c13:: with SMTP id c19mr4233532oic.93.1629494195270; 
 Fri, 20 Aug 2021 14:16:35 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com.
 [209.85.210.50])
 by smtp.gmail.com with ESMTPSA id x198sm1540475ooa.43.2021.08.20.14.16.34
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Aug 2021 14:16:34 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id
 r38-20020a05683044a600b0051a2c6dd421so17013754otv.3
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Aug 2021 14:16:34 -0700 (PDT)
X-Received: by 2002:a9d:309:: with SMTP id 9mr18770960otv.365.1629494194200;
 Fri, 20 Aug 2021 14:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
 <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
In-Reply-To: <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Fri, 20 Aug 2021 14:16:23 -0700
X-Gmail-Original-Message-ID: <CA+ASDXO=Bjr+f4mtXwt7vtiTz6tSw7SPuY1RvNWMp6-43Baqfg@mail.gmail.com>
Message-ID: <CA+ASDXO=Bjr+f4mtXwt7vtiTz6tSw7SPuY1RvNWMp6-43Baqfg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add RK3399 Gru gpio-line-names
To: Doug Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 LKML <linux-kernel@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_141637_960665_11946BCD 
X-CRM114-Status: GOOD (  14.75  )
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

On Fri, Aug 20, 2021 at 2:05 PM Doug Anderson <dianders@chromium.org> wrote:
> I guess one minor nit (now that I look back on the veyron patch where
> I mentioned it explicitly in the commit message) is that on the veyron
> ones we sorted this down at the bottom with the other pinctrl stuff
> instead of sorting it alphabetically with everything else. I'll let
> Heiko say which he likes better.

Huh, didn't notice that semi-convention. I can sort it however Heiko prefers.

> I also notice for veyron that we had a second "ABI" exception for the
> recovery mode pin, but I believe that goes through a different
> mechanism now so we're good there.

I believe the recovery mode pin is dropped from recent designs (don't
quote me in general on that), and there's a different mechanism used
just to get the at-boot-time "recovery mode" state directly from the
firmware.

> Even though I didn't do a line-by-line review, I'll still give:
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> ...though it's possible an "Acked-by" would be more in the spirit of
> that? Not sure...

Thanks!

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
