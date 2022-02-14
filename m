Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBFDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 16:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTQOanEkHi7aRluhGbBNMNPAotByzi0JXDimsJgiayk=; b=itTJpHZdYBEaoI
	FvA/8IVcP87OIa0I4N9vwbuO4qBOxN5nttXQAGLm+r6SnDx10mtroKz7HOot1WNDGzouDp++zZxIa
	M3kaaLfU6CXpSxMpzHuhj33/CO3FhaPepCnec3sWWlZpddhF3AQNn3CxraMUWSEo4qny7yyz3yaBo
	N5vXfmCBQAYs4DXmHBSKbszdZl4/xAWOxebaAnW9uDoiT76T5M3gv50M0cWS12ziXLIkpdHqqxVj+
	7roqbBajbyR/wT0gaF2fqMs/mmUMkX6vN3xs4gkEhpffAx9E0jRWLNSDS9CAXhPRrxaoP2jaKrVJ0
	UcpPwImQrDjfdKR4oQmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJe7Z-00FzEA-Rg; Mon, 14 Feb 2022 16:22:37 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJe7U-00FzCp-MO
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 16:22:35 +0000
Received: by mail-io1-xd2a.google.com with SMTP id c188so20469020iof.6
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JskXaZJX9EqtyU9nDYwhDYopK1GYBeF5QAk0Zlst3K8=;
 b=WFoQIvGxJEbg8UOaiV70tS6PGdyf3qjcG0fNJQKbyHSfj48VnWpT1uPRsHkSjKp4oI
 VyXEAHc0fq+QePjMo/XUxaUdqQMw6JpndQdJRAM+wSSoz81Cj3PoON8L3Dmir1bNHNxO
 JLMBAFjfwqf69spTV2mC/gqt6Gw5T35QWKhp0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JskXaZJX9EqtyU9nDYwhDYopK1GYBeF5QAk0Zlst3K8=;
 b=4LxoUl/+QKS5J/M2HkXtjOf52ZnCYq7QUnEsZnkIj+MPvPSGGJy5tfg3w6pEzzxbD1
 WZdaXBdw3k5X+nxgOXMm9jSaMEJoQM+XI9OQXY2Y1jCWcGrWCwA+9aAXMcqK5PMy9z7q
 eMygPODh5+SBHRr6FL2dus5AE+M+4lXaNylSpFQClA13K2a9dtSSYCA45EwAWUKYE7HV
 uymbHgA0O+gCp9kisdpbK9Z+kD0ROD4cemT1McJ6YLLfdnnwAnF+LhmDknbek3k/204w
 NkH/XWFmDM1Y8U2tbheRBhrfEJOXcM2C6SRzNuQjAjaNI4qklwTZw+3wlYEB75ikqMVr
 u/LA==
X-Gm-Message-State: AOAM532QiRmVkAKbqdpkZ8n0iKr3jsCPQ2Vbv5o+yaJMXYnv+t/o9OLK
 aVkwCqsladXBKrQgnS9eNmjA1dCSVwTaog==
X-Google-Smtp-Source: ABdhPJzh7jlYzN76bOxfAjpSMx4mtzrFUDCT1HT63IoFF8KlZhQXTTG1TrPPvSR8dBG0YUrjMHGN4g==
X-Received: by 2002:a05:6602:1594:: with SMTP id
 e20mr306598iow.159.1644855751677; 
 Mon, 14 Feb 2022 08:22:31 -0800 (PST)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id q14sm20422032iow.1.2022.02.14.08.22.29
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Feb 2022 08:22:29 -0800 (PST)
Received: by mail-io1-f43.google.com with SMTP id c188so20468865iof.6
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:22:29 -0800 (PST)
X-Received: by 2002:a02:3b67:: with SMTP id i39mr299652jaf.50.1644855749283;
 Mon, 14 Feb 2022 08:22:29 -0800 (PST)
MIME-Version: 1.0
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <20220214081916.162014-5-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220214081916.162014-5-krzysztof.kozlowski@canonical.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 14 Feb 2022 08:22:18 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Wzr=ra=_mt63Uj2p6PSNoEF1F=zN0-0yg5rcWkBFYkZw@mail.gmail.com>
Message-ID: <CAD=FV=Wzr=ra=_mt63Uj2p6PSNoEF1F=zN0-0yg5rcWkBFYkZw@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rk3399: align Google CROS EC PWM node
 name with dtschema
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <bjorn.andersson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, chrome-platform@lists.linux.dev, 
 LKML <linux-kernel@vger.kernel.org>, linux-pwm <linux-pwm@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_082232_767952_10858E42 
X-CRM114-Status: GOOD (  11.05  )
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

Hi,

On Mon, Feb 14, 2022 at 12:20 AM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> dtschema expects PWM node name to be a generic "pwm".  This also matches
> Devicetree specification requirements about generic node names.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
