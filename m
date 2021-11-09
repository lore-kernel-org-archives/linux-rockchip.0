Return-Path: <SRS0=bU6c=P5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39FB5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 00:04:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF0EF61101
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 00:04:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EF0EF61101
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/z8fqHEjTTCPRCbNtkbNi1GveAWY63F3iW6/82729XI=; b=eRpGF6tkpx9Jks
	hHqQ8T4VU2HrZzs6o8/N8Ny6GjOewUGEt/NUob3IgbR7XLtENCny7eYzwgNPjLpHhrUE2VqZXrxt6
	XvHqWuWVry/VC6tBWmKi4YWhyGbnaaPBLY/tY/hb2WVD3COwdw83KS4kVbjuB7a1KMeY0qMt16Lad
	WC/ZGkcSs/zg9Uni5yKFEue8yhHwCxGXp1S4UzmNz277oDRSCju/HUteanyEVDT9vQyYUVNiDHBb4
	Kdc+owPVeRhkI5OEAXJSgLzPwIYBq3A6f5eAAOFH8LdWwgzP9T5PVpubqRT029EsBfBQJ7254wTiY
	We5e6IcNX8ertAbHavIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkb6R-0046ye-3f; Wed, 10 Nov 2021 00:04:35 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkaZx-003scf-HE
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 23:31:02 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 h12-20020a056830034c00b0055c8458126fso1216184ote.0
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 15:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nL261LfEnE+lH5hQroZYFitjsNXa1tK6YPPcrVYv6c4=;
 b=N1HvdV99468q9bEv5q7ellPorYQd/W8mpCPrWLqn8S4ksJv0XInlTz/z79o91irx8F
 IBinuVJR+3dv3ohTcMOjoLOjds8IlTm/Ay2TbcpMEIQb7TPl2tCqAAaonqYywCgsr4kN
 ZCEWZuQ1MSmhqlppYjbvItwe0X/k2DasKrpK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nL261LfEnE+lH5hQroZYFitjsNXa1tK6YPPcrVYv6c4=;
 b=2ltEbWxMx3zXFNTQ2fRCC8xYcux4DCOKGjgCV7VOaphnL2QEW5CB+iW+lk3EQ/PUt3
 WOi1if8+yNxENqn/fFcEnKrQ8mE81dEMhcws1wjFMxLzkH1H4C1+PQeZd7jEoHVukWrk
 wpriS5c+mwCiqBatqGEa8ftdKGxXW58LUCjVSkTmMbRtViW0tEG3I8eM7RMk6/8afdfJ
 Dr9e/TdLNsPGwajz5KySaTWd2nFqAxzk3M8mRExlfW+sFVtQ6Wie8PgJ+Gv7rItdCOxR
 bVNccYtMwQ1nXxtJS+s+OFOFybOmLgZFWVpG5S1/RxcB+eBNVvUO5IZnOefv4dW9pYp+
 +eiA==
X-Gm-Message-State: AOAM532RsFjz0GvY3O9j+GdUCmOUOIv12vPYKeI2AkCNy5Ypoy3o2U9U
 BQM8tAS2vXa/UJqCpiFUIaO2n+qgi2Gb0Q==
X-Google-Smtp-Source: ABdhPJxsY8GIq9ieI8juYECXUwtscH/SXXAmpTbbiXCs7DydOU57sfEzh6q/6ZOzvmdDz3SLkqq1bQ==
X-Received: by 2002:a9d:6ac7:: with SMTP id m7mr5360874otq.306.1636500659068; 
 Tue, 09 Nov 2021 15:30:59 -0800 (PST)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id n67sm7922269oib.42.2021.11.09.15.30.58
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Nov 2021 15:30:58 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id
 b5-20020a9d60c5000000b0055c6349ff22so1069769otk.13
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 15:30:58 -0800 (PST)
X-Received: by 2002:a9d:734a:: with SMTP id l10mr9337755otk.3.1636500354735;
 Tue, 09 Nov 2021 15:25:54 -0800 (PST)
MIME-Version: 1.0
References: <20211109221641.1233217-1-sashal@kernel.org>
 <20211109221641.1233217-17-sashal@kernel.org>
In-Reply-To: <20211109221641.1233217-17-sashal@kernel.org>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 9 Nov 2021 15:25:39 -0800
X-Gmail-Original-Message-ID: <CA+ASDXNcC4_MpURRjbeXsyXsQ9Qte_YgoXFCJUKtrSWpZsHn-g@mail.gmail.com>
Message-ID: <CA+ASDXNcC4_MpURRjbeXsyXsQ9Qte_YgoXFCJUKtrSWpZsHn-g@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.15 17/82] arm64: dts: rockchip: add Coresight
 debug range for RK3399
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Leo Yan <leo.yan@linaro.org>, Chen-Yu Tsai <wenst@chromium.org>, 
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 robh+dt@kernel.org, 
 pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, 
 galak@codeaurora.org, catalin.marinas@arm.com, will.deacon@arm.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_153101_625524_239AA435 
X-CRM114-Status: GOOD (  11.62  )
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

On Tue, Nov 9, 2021 at 2:17 PM Sasha Levin <sashal@kernel.org> wrote:
>
> From: Brian Norris <briannorris@chromium.org>
>
> [ Upstream commit 75dccea503b8e176ad044175e891d7bb291b6ba0 ]
>
> Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.
>
> This IP block can be used for sampling the PC of any given CPU, which is
> useful in certain panic scenarios where you can't get the CPU to stop
> cleanly (e.g., hard lockup).

I don't understand why this is being backported to -stable. First of
all, it won't work because it's missing dependencies (specifically,
around the RK3399 clock driver). But even if it did, I don't see how
this is a candidate for -stable.

Methinks the AI has gone too far again.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
