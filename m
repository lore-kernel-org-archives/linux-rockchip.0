Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73038C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 02:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyTpT23aKXrO4Syp3HautFGwmiF6jkvtGQ/IEFSotE4=; b=13VXxxp/T+jcyN
	xK3WxIY9k9HXehU+HidG4N5wKa3AWzqBEAq5DV5YECy6UQbHhlM5jm2FHXw/SdVofY7bH4QZ9U/f3
	DRzwg47mlcAeavNAsb6oV/8uvRa2Oa2Mnq7Qb/R/342f33UVOBvKUdU20mYHBoZHH+9qdeXqIB0AK
	105A7cNYbfP6fp9A3Dk2N5dwTLkP9UH/o42CQpIWtksgCLlHrfn731lcob/yrcBUTLZXPSPSMhYv5
	i/0OMPwGudomU2BgzsW8Q1idPTezCH9/13WXao8HIFpdUhfMtM7uftNYrLqkFU8aFtjK3xE2quNX1
	U1T3DIvexp3GT0G67EXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbv3R-003Ket-IY; Wed, 06 Apr 2022 02:05:53 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbv3O-003KdO-K1
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 02:05:52 +0000
Received: by mail-oa1-x30.google.com with SMTP id
 586e51a60fabf-de48295467so1462773fac.2
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 19:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/B6OEeKNYPJ4Ptjy67RysQjps4ixI/LDrWNN950F0R4=;
 b=LOFD1TB5DHCmdfFhLMSs0KFUQCTqjO1cUH6JeNgY3rqhZKF4HwlfE5cVVqI7+9FwI3
 1nWfuNTNewIPCUr2fopefsiatrMpzcGWOywnhsuJ1QCvvzT/rigzes5gu0xjmGk6RTbj
 91zvAhi3vAWNLCyc3+P49DKDOOP9IICYV9kwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/B6OEeKNYPJ4Ptjy67RysQjps4ixI/LDrWNN950F0R4=;
 b=fZMf3oNPVc1lyDPRAxDWKZ3AC7yLQe2B/FuzV+nq8T1vVt7fBLTLhphQHBC31KueR0
 Pf5PQUyjLgOqvU2XRyWWCQDqhmQynKPVKNoNR8901EECORX8Q+8lH+ctSEe7SC/vBJ7O
 4gQeArnL6HNBH7RYQkicRw+68fHrnTfWuwerKtOW2cCLgtp0W69dHAcittzQ70aRG68s
 X0ifO5RxsfQmZ1MnM4/Oek9VM3LaIPP3zJxfIwKczE8r+N1nMJWAfF0sXwe7Dt8rSqte
 jsn445NNYK+7qWEumJhI2v6U6DwCMiPWJyYfXLt56n/LgTdqKNXCBNPLT4j/PkHrJgeo
 mHrw==
X-Gm-Message-State: AOAM532Sf70zhSzs6fE+HH6NroBQsDBgeFJN/RoOYCU9LLWjQez4yQJ+
 vy8QHzOE4SzvrbD8IMarYr+dfKoCLzipIA==
X-Google-Smtp-Source: ABdhPJwhx1V2/UaFWJ7KLkp5uGChUHdeWkbDyyhdN1e9VusEbasFN7Zct4yZ1XWKxO6kdp9kEl5kWQ==
X-Received: by 2002:a05:6870:56a7:b0:e2:125a:b74d with SMTP id
 p39-20020a05687056a700b000e2125ab74dmr2928071oao.133.1649210746018; 
 Tue, 05 Apr 2022 19:05:46 -0700 (PDT)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com.
 [209.85.160.54]) by smtp.gmail.com with ESMTPSA id
 h12-20020a9d6a4c000000b005b9d727d4b9sm6398011otn.14.2022.04.05.19.05.45
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 19:05:45 -0700 (PDT)
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-d6e29fb3d7so1432661fac.7
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 19:05:45 -0700 (PDT)
X-Received: by 2002:a05:6870:c142:b0:dd:d5a3:767c with SMTP id
 g2-20020a056870c14200b000ddd5a3767cmr2910063oad.291.1649210744492; Tue, 05
 Apr 2022 19:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.12.I3a5c7f21ecd8221b42c2dbcd618386bce7b3e9a6@changeid>
 <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
In-Reply-To: <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 5 Apr 2022 19:05:33 -0700
X-Gmail-Original-Message-ID: <CA+ASDXP46bVqZAyzgUQkZAqqVf6Yc5Zg9CZ_1k0XCYUSYq_QLg@mail.gmail.com>
Message-ID: <CA+ASDXP46bVqZAyzgUQkZAqqVf6Yc5Zg9CZ_1k0XCYUSYq_QLg@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] arm64: dts: rockchip: Enable dmc and dfi nodes
 on gru
To: Peter Geis <pgwipeout@gmail.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Lin Huang <hl@rock-chips.com>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Derek Basehore <dbasehore@chromium.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-pm <linux-pm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?B?R2HDq2wgUE9SVEFZ?= <gael.portay@collabora.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_190550_720738_F6820EF5 
X-CRM114-Status: GOOD (  14.88  )
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

Hello again Peter,

On Fri, Mar 4, 2022 at 6:47 AM Peter Geis <pgwipeout@gmail.com> wrote:
> Transitions anywhere from the default 800mhz cause a lock.
>
> I'm digging deeper, but I'm hoping you can answer some questions in
> the meantime:
> 1. Does this require something from firmware that isn't available on
> Mainline ATF? (AKA special firmware to the Chromebook line)
> 2. If not, do you have any recommendations off the top of your head?

I may have a better answer for you now. In the intervening time
period, I've discovered a potentially-relevant bug, involving
interactions between the kernel power-domain driver and ATF. See this
series for my current fixes:

https://lore.kernel.org/linux-rockchip/20220406014842.2771799-1-briannorris@chromium.org/
[RFC PATCH 0/2] rockchip / devfreq: Coordinate DRAM controller
resources between ATF and kernel

If that happens to help you (it may help, for instance, if your system
was toggling NPLL off/on like mine was; it also may help if you're
hitting a race on PMU_BUS_IDLE_REQ like noticed in patch 1), I'd love
your feedback there.

It's still possible your problems are completely unrelated though.

Regards,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
