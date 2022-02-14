Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6254C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 16:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1C4khHJVye/ErWNJr8rRO6Lp54Q53SHYYLy4X/BaEtg=; b=heN4gqkkRBDT30
	VtL3514ACQW6bgEWbaOAiJqSpSC8ccDV+1kUc+3LYFzcwmcCzfb9PVWZFDW9xmLTkKHRzEwzBdv4D
	sxnipCXykwbemIMoEhn+GVWm93N9ePuNAk6EJlsSR/8uCd0BWxCPIJYQpBIwkRYKs7IIKHuBn8ir8
	FD8GUwGQUwZUV+GGO9rYWZx4DKRIwiBYYB7s7edrNTOGWAhnCmjkf8zN1V/WF5DcUmxXXnF5PNLqV
	InkEYx+EUhbiHlyXNqpPM+8aJzWPk0rNdwCD1Un8GB0CS39BQEPvnoSRopKLeGBX3AJ3/gYrnXeHe
	xTx8uI+tIDtrw9dCr/vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJeE0-00G0j5-QA; Mon, 14 Feb 2022 16:29:16 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJeDs-00G0gm-PJ
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 16:29:10 +0000
Received: by mail-io1-xd2a.google.com with SMTP id q204so20497066iod.8
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y/lXxznWJk6t4L5VwAqaMS0+NBIKS0zk3kQAGJ/1b/k=;
 b=JZLXUfRWra54tioTiu2lrYxDJmGtcUX8NNdySo/F7BWBvDruBVnf1bOydWNgXOogN5
 Iz7arnCufrG1kJ9V7DcoDSRxMCbNRVV3btf8XwNiGUJYm3d1E2eS92/RlK7bOd1VQe5G
 IQJLzFRnqEVjliOJs+NOd9nwMMPcEvNaZXjNo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y/lXxznWJk6t4L5VwAqaMS0+NBIKS0zk3kQAGJ/1b/k=;
 b=p0PFKgE0iW6gUIasegHSs+Tse/VYbvq/cmyKzvwFNDzA9UyPr9Y46JXhbQy/QzX0UX
 e6g354+gEByDx69jCFfw3S0OnsWgSTBxEoWrPjy80q8xTtEcUgm2i/NdSxL5CH4Jassw
 KZKV2gS4X0hPMnnN1BNkpqnZF1tzK9BrIokFKlbWOHdTBt1Tc0JEca9njnPYguXZhoSe
 qNv6BB/v8EMP2MG9xObgF6rq0W+lzspayCNiSpvuzaUGTeHbcpowRVYlBk+Ufp/TKQK4
 TyyIK1CvgjLTgNHZuCPWcsUHqPRFD+DTQxECshXM6FPIoGbBhw566Y92IxuD4Fy98TUQ
 bsHg==
X-Gm-Message-State: AOAM531tH5CeD7hNiDZqC4zkoUUD13CDCSvZts5qmiWIUHVJBfDgVtuc
 HtyvutHdanQNjccaqqrY4XJ8CovCU0RGCQ==
X-Google-Smtp-Source: ABdhPJzerqmsbLeUtw+IsYSRplbCBYV4kQk/ZdijHdHd5TBNbitJIeUcpJqXzm1zeb0HgHMWdqtFbQ==
X-Received: by 2002:a02:272d:: with SMTP id g45mr279845jaa.165.1644856147987; 
 Mon, 14 Feb 2022 08:29:07 -0800 (PST)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com.
 [209.85.166.182])
 by smtp.gmail.com with ESMTPSA id b5sm14526906ilr.0.2022.02.14.08.29.07
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Feb 2022 08:29:07 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id z7so12730139ilb.6
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:29:07 -0800 (PST)
X-Received: by 2002:a05:6e02:19cf:: with SMTP id
 r15mr119973ill.180.1644855716786; 
 Mon, 14 Feb 2022 08:21:56 -0800 (PST)
MIME-Version: 1.0
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <20220214081916.162014-4-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220214081916.162014-4-krzysztof.kozlowski@canonical.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 14 Feb 2022 08:21:45 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VNarYKq8cZVqWfFKccTqxH46Wmm8Tr979EVsiAoOnT_g@mail.gmail.com>
Message-ID: <CAD=FV=VNarYKq8cZVqWfFKccTqxH46Wmm8Tr979EVsiAoOnT_g@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: align Google CROS EC PWM node name
 with dtschema
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
X-CRM114-CacheID: sfid-20220214_082908_842932_D4BB0A54 
X-CRM114-Status: GOOD (  10.73  )
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
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi               | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi             | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi             | 2 +-
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi                 | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
