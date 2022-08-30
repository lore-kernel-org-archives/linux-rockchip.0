Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57A5EECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 20:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHN0uEgWeQ+qEYwvDf0X4YDrorsEE1y/0r0HV43mhVE=; b=Y7TRthK3uq9YLm
	FXM3YcrVWhq4/WHFnJEihN+2PENZPYoSgaY6Fr/vxTHPf215bNpwol/eaFxSi1K/JYXAQ7e1e3ydf
	10usWyTaT7VMhMZnOzGXNQWteTFbE/x/9UInIZsKlLjc3DRkIqgk/48OBElHOZ1qz1Ko8xzMvqx0W
	048YGc3UW8D/5ViHS1/wFWRUqLLKoW8iu6NzKi2pu5+Z2bZVgxPiT7QnFBA0yB0ZJNev48hydSqXi
	3pxUgyWBKm5JbZH53SWlYg0yEd4mP8SVyVw9RJMwa47/jDJdzunTpG9ai0p4E79Ne8vu3YgoaHGQs
	LnVuqTZ3TPJXMvcJU/sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT7gs-001odV-CU; Tue, 30 Aug 2022 20:18:30 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT7go-001oZD-PT
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 20:18:29 +0000
Received: by mail-lf1-x12b.google.com with SMTP id p5so13943130lfc.6
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 13:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=1yeP3DjVWaMGF9lHlaP/DrKMq/Tp9AtHGNc7ptmf5YA=;
        b=CVPzEkz5uPI8rDre+RUzmevOwuldj7MWQUhT749lZ0N2Tv8G+sg/fIPVM+Zs6FKpWa
         drrtDv3XsftxYHApfXVOwWowWUlQj3eVEY3Q6fepbpIKIV07GtgLdZgKcb6TRRL6auBu
         Rq9Gy61LL2U9VHkNyUjdNl160fz/KcwQY2Siw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=1yeP3DjVWaMGF9lHlaP/DrKMq/Tp9AtHGNc7ptmf5YA=;
        b=TMqp05dj2RTwYdw+EOrsMqfEF0VVQrrMwEd+SZJZSpkWPweCArgnl60knHOOVXkuSA
         tzWHzSDbza5t3CBlvWuOxx++BuftQOzS9JDOHSVCJM6J0HEPsKsWsbloWnsboGqHAPZW
         8Nv7fHjJ/6EzOmJhMsDG/dMt5E30wWjU1MVrLcAF0Sz6yN8VZInWoTHVif134GCJW3N/
         /5X0SYLHqHqk5cMM/lCuv0Pgz3ys2k3I2GPJkB9sM4NwnJKpJZYPkJ5QCMiUktlr7Mxo
         LecD4P/srQkr3FTb0Cn0eAbtdmN6LQ5MwJZETLAHSPD4mN1ct4fTCWn8l0mku8PZJ5dq
         1JPA==
X-Gm-Message-State: ACgBeo0ljSCUzCHw66GBV3TaM9U+o20pAiOD/atLMWhqsu3q2t52Laf2
	VuC7ZAerukPH4HsmWkomuKHtBzC0MP6hbw==
X-Google-Smtp-Source: AA6agR7KutJJaHAJeQZFyAW6NK+cvB1VGzbTe4lSsg/DixX0RAQuVhZ+YlPr4H1ITOJpgmu/hvtyeA==
X-Received: by 2002:a05:6512:1156:b0:48a:fdea:520a with SMTP id m22-20020a056512115600b0048afdea520amr8767162lfg.138.1661890702754;
        Tue, 30 Aug 2022 13:18:22 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id g23-20020a2e3917000000b00265181ff814sm979040lja.97.2022.08.30.13.18.21
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 13:18:22 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id y10so9417563ljq.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 13:18:21 -0700 (PDT)
X-Received: by 2002:a05:651c:241:b0:25e:65bd:3a8a with SMTP id
 x1-20020a05651c024100b0025e65bd3a8amr7863518ljn.206.1661890700872; Tue, 30
 Aug 2022 13:18:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220830123231.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
 <CAD=FV=XO++XMrdZmupY8ED97W6AaU=H=sB2PN=6EpRxOOo4Afw@mail.gmail.com>
In-Reply-To: <CAD=FV=XO++XMrdZmupY8ED97W6AaU=H=sB2PN=6EpRxOOo4Afw@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 30 Aug 2022 13:18:09 -0700
X-Gmail-Original-Message-ID: <CA+ASDXO_iqH8pPmPPH2=3RWVVDKa2XYLNEp4P=1r+b4=VsxNHw@mail.gmail.com>
Message-ID: <CA+ASDXO_iqH8pPmPPH2=3RWVVDKa2XYLNEp4P=1r+b4=VsxNHw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
To: Doug Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_131826_892519_4E416DA5 
X-CRM114-Status: UNSURE (   9.70  )
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

On Tue, Aug 30, 2022 at 12:51 PM Doug Anderson <dianders@chromium.org> wrote:
> nit: Sinze zain wang's SoB is first then I think either the patch
> needs to be "From" zain wang or you need some different tagging, like
> Co-Developed-by or something.

Urgh, I think I did a conflicting combination of --reedit-message= and
--reset-author when cherry-picking / rewriting. Fixed for v2.

> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
