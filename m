Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D952C19F28
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Aug 2022 10:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tg9krpead9fNIdh7VmX2YCWz/pOTih0TlClh54UvINQ=; b=a7J25pi+7eRyuU
	ErdJIRw22cV3OJUgfnZq29OzPvzVM4Hss3Nu7Rh+oJoC/cScaNRxrF082W6qYSRf/9Bx/NbkW57/V
	3FYNYA27bw8KdC1bgc7CFw+AN9y7LpryzUCsmA+OHasUybVOEQ4+zn5jt3QUSrfYg7TNyet/rOuZw
	aFcwo2+oUHoKR2nvROh5cra0Szb7gi3U8ApQrGaQGLUtp7o3AXGE+LTVPJfuNkfiNpkezZ/+i+A4E
	C1mvuzGvm4Zp3z6CaDwh3OnoQM7NOVTX+BVnMbfo5rg3lGKVVjro9A6KlPVKXU6+t5RRmnT+/uKvQ
	lervaze8VA9qtD2744wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJBwJ-0050lC-JD; Wed, 03 Aug 2022 10:49:23 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJBtM-004zsw-TX
	for linux-rockchip@lists.infradead.org; Wed, 03 Aug 2022 10:46:22 +0000
Received: by mail-il1-x12e.google.com with SMTP id w16so8312023ilh.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Aug 2022 03:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Sdl1HDAMO7QN2zfOTcK0TKELdtFAbVwfNiLV0pjEOVM=;
        b=gwTdoIzxxTdgP0N5qgtx/pdTIShdgMTfYdfnc9OpVMmRLjLPaMfRp34XXVZG7RnFHm
         OI4hAkJe/jFo08ryCnrZJaat/qnfgi0zO23zm5oFG48ruOgt0TX+g5HknSuPi41f7VjZ
         spuxXMg4yh5J+k4AqB2JPGi+7jNp2dTp+FNW+ase3QS5wvjFKeEAPLNlDCDh6QLRYL4J
         3sWYm7rCDgSOV/1igKUhCVHz4r+vRpcuPFkxyFWOr9mVGSggjMZOzAiyfcsXnNns+FRK
         xBhF3tNjAaNlwY/Bg7GBY0MGJ8d3tHYNid+kd23Y3/agwBJ3i3aD1zr9WJaNh4ldNcTY
         ccVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Sdl1HDAMO7QN2zfOTcK0TKELdtFAbVwfNiLV0pjEOVM=;
        b=oJUTlqCjyvqwrWEU+wDUz7xcqVqacmk4dEk7URcbjTy0+ta7oPyR+WIph7+dtavcCJ
         gWhoTz5z8CZ+Qmej7ZxIeuwCGa3n0x0iJcJXSPgnrf+LAjTTpiYlMTEzF5jvjGzGjvqM
         BlhZ0wcwTUkLrjh8BctiedBh2nFs7a6AXXklbHOPGuHRsV4hmAtwZfr6rakhxF87x8hZ
         vo9XHxv3Lb5aegNQojn34NwTtTBIXz5s5Fq6vf2+iOA5NfcrOuJ4I95WpvJ++rkgH8Uw
         ZcHlcLyCobF4TCJZnEY1u0WEDh0ChGMAs94bnc29Wn4yHb0BbCzo+D7qpOa+SHhZyRSh
         vBKw==
X-Gm-Message-State: ACgBeo0HxRIJpXZ/0RN9pfk0v4svlb3g+JKAdkFNiBCFPcqxeiOZQ9wf
	g1VJK7JyMWTBj971vVxV8ia4VB2e68Ltfu1cFnYtdA==
X-Google-Smtp-Source: AA6agR5Sb8mkyscBBiAfGTgCzp3wbpXMwA4TotySl5QQZm6QkPjhjhUsRaZodv3Um3jHY1wL16wO9py5LQJG9CTZXCM=
X-Received: by 2002:a05:6e02:198f:b0:2de:91f6:f70e with SMTP id
 g15-20020a056e02198f00b002de91f6f70emr6100277ilf.80.1659523578256; Wed, 03
 Aug 2022 03:46:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org> <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
In-Reply-To: <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 3 Aug 2022 16:16:07 +0530
Message-ID: <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_034620_975892_40999B7C 
X-CRM114-Status: GOOD (  10.75  )
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

On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/08/2022 12:24, Jagan Teki wrote:
> >> Vendor in filename is needed.
> >
> > Yes this follows how similar rockchip vendor notation
> >
> > $ ls include/dt-bindings/power/rk3* -l
> >  include/dt-bindings/power/rk3036-power.h
> >  include/dt-bindings/power/rk3066-power.h
> >  include/dt-bindings/power/rk3128-power.h
> >  include/dt-bindings/power/rk3188-power.h
> >  include/dt-bindings/power/rk3228-power.h
> >  include/dt-bindings/power/rk3288-power.h
> >  include/dt-bindings/power/rk3328-power.h
> >  include/dt-bindings/power/rk3366-power.h
> >  include/dt-bindings/power/rk3368-power.h
> >  include/dt-bindings/power/rk3399-power.h
> >  include/dt-bindings/power/rk3568-power.h
>
>
> So when are we going to switch to vendor,device pattern if you keep
> adding files with wrong naming?

Do you mean the above files are following the wrong naming pattern?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
