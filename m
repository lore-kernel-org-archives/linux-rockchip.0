Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD9E7C04A68
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Jul 2022 07:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qEseWHGMpHvNYcMdBk2tBmThb+57yfeeNvpn803Dps=; b=JB2NLHHhQjgtS1
	n6xPnyq52gVm6Gs7QkK3wIE2FtRGzf1Frz3+iOS5vcDRmy8lKGROrY6ozmIccrziIx2fhdlbaJqoI
	Oah+72LtXia8SVhZNmD3GcV+iznp3J0AUML/pRj0hGiJWa+1MUiOcYfXSxehvUnI4xFt671XexJCu
	WMlEDwdaukZKl25qwCR+v7SFFBjLRtMeNOWM94VhFWk6xFgSX6qnzheEpg9UUMpNwOqVHuGxtd0o2
	j8hrHiT8TKGPaHbncUON7YK4UmxHhho8JUK0ORgNB3R36fawju4d4Q31FSklsGjrFbADJxL1gZ/At
	jAZcP6kEJbGPsBZq4+gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGbWA-00AYcW-Pn; Wed, 27 Jul 2022 07:31:42 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGbVx-00AYRH-Gi
	for linux-rockchip@lists.infradead.org; Wed, 27 Jul 2022 07:31:31 +0000
Received: by mail-io1-xd2c.google.com with SMTP id h145so12993154iof.9
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Jul 2022 00:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SH6RabT82dXf7GDeww9eKLpCzN/WMhrGP3YU/7xxSHA=;
        b=AnaXnp7k4WKoD/9vDFQUHSEXzRE9alHPKFNp9KJHKZj3aEMCUx6hTk2/cOK7jiMbOG
         BO7v0GAnxGVEkLGLBkCAR/HMaZlJ6/O2IqlE6rowtXur5OBMkJKcdCxqU0nO0ifl/av0
         Bu87pLGYHNyNQJdoMtgs82flXbw2VF59+VwBNee5xJl/yCppznEDd3KqIpk25C8zK7R6
         wKPD/G9XGrmikqwT+SF+WBu8lsYEUeFV8t8sFAzBIGNzo5U5qu0wL9YtHaMSV0PAqxBU
         j1PQnPPjJ6uzvrjRSg6JAvGQZkEkPRjCcbzB8AZ94WFiwUljrPZ1m5BsqhscLQi0UuaF
         2lIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SH6RabT82dXf7GDeww9eKLpCzN/WMhrGP3YU/7xxSHA=;
        b=U5aJ8xgS70HNYZOo6ZvaKI92BAyN78vMgr4gkoEFFBJJchxE+HrxoXU+/RjDV/JqFC
         V/UoC2C66+dOxAChnDmTHEk7/dbETWxwd/dGEJZ96aU5rthdCEhYwSLbCmN+osqTR2ky
         fSuhMd4bpFgXmOSCpodtAsRRHIRKlQ0a/ivO7DfxoadrK080FCJ/Frw78GEtEs6jt3XB
         dmB1ETl86P1U0uzBn9KMq2+aEsfVIZEsme0MnLmznDEFpXH8jgpm7nt7NaPstWL+uKte
         x4u351/BQawXWiO8K0oenLsWoImprYuHw18AirfAlsCWnACU5nFkXiBwINLHmvP498rQ
         Gdqw==
X-Gm-Message-State: AJIora9uJHPhDmnhUxHRQdV2Tpw02SHKc++eDs+hhPFHYnji8bo3Gbwz
	YTPlYlpCG0jDyf3JH1dAM00Rb6KriUy9hs29oBsh4+VfqtyuiIAIJEY=
X-Google-Smtp-Source: AGRyM1vspyw6A+eVAxDft/5JSlEZLYOwSGDypP0y/PNM8skbY298JYW4x4TRrtrcczZH2A80T9I1ENjcN9jtZFKTDXQ=
X-Received: by 2002:a05:6602:2d4f:b0:67c:24ec:73af with SMTP id
 d15-20020a0566022d4f00b0067c24ec73afmr7182998iow.73.1658907085117; Wed, 27
 Jul 2022 00:31:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org> <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org> <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
 <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org> <CA+VMnFynxRL7ynLh4ZwGWYj-97pHP4+me8CvCCbm36Sg=4K9AA@mail.gmail.com>
 <dbd15d26-a0c3-f608-9e06-952403a75b48@linaro.org>
In-Reply-To: <dbd15d26-a0c3-f608-9e06-952403a75b48@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 27 Jul 2022 13:01:14 +0530
Message-ID: <CA+VMnFyXNMcba8adY9zipZ1ZgOXPXVzeJmVP+sBN6g6L+m0ZKQ@mail.gmail.com>
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for RV1126
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220727_003129_563774_4AE3281D 
X-CRM114-Status: GOOD (  29.18  )
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

On Wed, 27 Jul 2022 at 12:46, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/07/2022 09:09, Jagan Teki wrote:
> > On Wed, 27 Jul 2022 at 12:31, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 27/07/2022 08:52, Jagan Teki wrote:
> >>> On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 26/07/2022 15:44, Jagan Teki wrote:
> >>>>> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
> >>>>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>>>
> >>>>>> On 23/07/2022 22:43, Jagan Teki wrote:
> >>>>>>> Add power-domain header for RV1126 SoC from description in TRM.
> >>>>>>>
> >>>>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >>>>>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>>>>>> ---
> >>>>>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
> >>>>>>>  1 file changed, 34 insertions(+)
> >>>>>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >>>>>>>
> >>>>>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> >>>>>>> new file mode 100644
> >>>>>>> index 000000000000..f15930ff06f7
> >>>>>>> --- /dev/null
> >>>>>>> +++ b/include/dt-bindings/power/rv1126-power.h
> >>>>>>> @@ -0,0 +1,34 @@
> >>>>>>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>>>>>
> >>>>>> Dual license and a blank line,  please.
> >>>>>
> >>>>> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
> >>>>> the issue with it?
> >>>>
> >>>> The headers are part of bindings and all bindings should be dual
> >>>> licensed, so they can be used in other projects.
> >>>>
> >>>> Of course if copyright holder does not agree to release it on BSD, then
> >>>> it would be fine as exception. Also would be fine from us not to accept
> >>>> such bindings. :)
> >>>
> >>> I don't hold anything here to use dual-licensing. The only thing I'm
> >>> wondering here is none of the rockchip power includes (which are
> >>> merged) are using dual-licensing they simply have GPL-2.0 which is
> >>> used in BSP.  Let me know what you suggest?
> >>
> >> Hm, I think you asked this above and I answered that dual license should
> >> be used. Maybe we misunderstand each other?
> >
> > Sorry, I'm asking again as I'm liable to change the license here or not.
> >
> >>
> >> Do you include in this header any work which cannot be licensed on BSD
> >> (e.g. is derivative of existing GPL-2 work)?
> >
> > Yes, it is from BSP
> > https://github.com/rockchip-linux/kernel/blob/develop-4.19/include/dt-bindings/power/rv1126-power.h
>
> Eh... if you don't have permission to relicense it and you copied the
> IDs (although one would say it is not really copyrightable work), then
> let it be GPL-2.0. In the future just write the IDs by yourself (not as
> derivative work) and dual-license the header.

Yes, I usually follow the dual-license if I wrote new ones in bindings.

Thanks for the details.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
