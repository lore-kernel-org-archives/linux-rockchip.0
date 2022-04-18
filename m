Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A02C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 11:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wzsn1g7/wG8GjB2FKPZnUV4HGaG3SMuJ3aUZaRmZew=; b=3uZviEnHS3CW28
	fmq5hVmhZM365bDx/S6NonAv0sSPZ7Z3EGlrIMvbIPi6T+VmAvrEtgwSjN6QxKBdpuW+WonRKRHM6
	scl1t9/MBSjFRDZx7vjyPkwauoAVGRKqwW+KhmI+/xlIdojB8WMkb6HFbBEI5iMusLgevS+WMj23/
	UF+yyz2zP3jSaPBGu+t1S+OmgrtX2WPY2DsTnhOaR73sH6Y3vemk85ELIBKy2x7rk5sUM3SyGfQGi
	mVX1U/A1kZHsfOIyOBm1M4rukuv4JO6fbLmdbIt1+hppbMvdOG2F3V3DFFSRW6bMkcIbJ32xwz2ez
	8/kEKvXWpfvbOQ1pjwpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngPq2-00GWj9-B9; Mon, 18 Apr 2022 11:46:38 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngPpl-00GWcb-BR; Mon, 18 Apr 2022 11:46:22 +0000
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-2ec05db3dfbso136545907b3.7; 
 Mon, 18 Apr 2022 04:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R+k5R+6Tf+kVP5/jwUVVJcqexRzi8y2ZOUAjpeAiUi4=;
 b=Ce5lUboHlt/gmpUKC++rrBFPSCnQ9wxILvj8LVkvjt0FOXtEEJUt8jEE2p/+9xEXrX
 AGEhhymndfCana7cViuokWV7Um9RmFBZjENGfgzG7eyBVYy62vB6s4ilKjGc+rfJXTQe
 pAqrR9cf3zEDv/Y0t39vAsx6ptucgIysTn7d0pEIcrOk4xjwsuyDMAt47QfQ5aaBQoug
 a7y+fNQYoNbUHae8C9QBgSzxRYnafMZjkFX1M7iI5OimZch5nzLHI8nJ7czhhtbBsmRJ
 0ppqCtGxFQHePbG1lMZToT2EfPEmBK6/TNedmw9WpRxcnxYpYQa6xqqeAj+2jcoMTrdX
 AfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R+k5R+6Tf+kVP5/jwUVVJcqexRzi8y2ZOUAjpeAiUi4=;
 b=6WZ/J12PDnBPwKf7vQsHNRd+x8s2m80zTKsnY/ZkwS74GrEXOi3Hh5+jH5pzDjsfSB
 1W6TDeptbAxO2GebVtKuHXvF4HKo9uMolDii5nMPGXoJAOkvWOa1sBg2IrcaawtFfKp0
 Uxmv3Pcy+Z4Mss+b35MOQDfo+N/r9MxvMwxgyV6i9N1hO0xiy0CgayWBAZizpSTqWmbp
 P+I3/RhQmIb9uDuXplzlmFaFAGX3U//5F/gJ/g5UqfZTk2T/DlMDxZcIhAko1rq0E66d
 bXwfLnWXBVZqoaW8CsVR23BbwuEkvIPbVKKeaQIO10f1vu9s6Tc64L5V/h8DPOGDrW4i
 vmHA==
X-Gm-Message-State: AOAM531msC4bDdZTZ4NSmrPCIm1XgAHeRGnfsFUsLxzXvzEhZir5hAIG
 0wEj39wWcaJOgJetrbyVMVtAXdyoPX0XRx2O42c=
X-Google-Smtp-Source: ABdhPJye5yqT98SnUYRLXzqx8takuFC8eq2pX1Rbb4eUcIiR85AzHfMDt6Qbgw4uG0I1YL+4XsFc6rnW3OecwaE1v5A=
X-Received: by 2002:a81:5904:0:b0:2eb:f900:882e with SMTP id
 n4-20020a815904000000b002ebf900882emr9347609ywb.281.1650282378263; Mon, 18
 Apr 2022 04:46:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220329094446.415219-1-tobetter@gmail.com>
 <CAMdYzYrCZtfDiB6O20Jtp56YQhHj3jMVhCt9aCYNLbD_xwFc3g@mail.gmail.com>
 <ff0135dc-da30-18b5-f5f4-cefdb0455c6b@kernel.org> <12089439.O9o76ZdvQC@phil>
 <d3cb233a-1962-af6b-2663-c057e7823a2b@kernel.org>
In-Reply-To: <d3cb233a-1962-af6b-2663-c057e7823a2b@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 18 Apr 2022 07:46:07 -0400
Message-ID: <CAMdYzYr6ONFiuA7dhYEdjTXHAN90=NBCEGK3gOY=BBLzf7P-4A@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Hardkernel ODROID-M1 board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Dongjin Kim <tobetter@gmail.com>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_044621_443554_3DC2BCA8 
X-CRM114-Status: GOOD (  25.30  )
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

On Mon, Apr 18, 2022 at 7:21 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 17/04/2022 22:55, Heiko Stuebner wrote:
> >> Usually adding - in subsequent DTS files - means increasing the numbers
> >> so if you have regulator-[012] then just use regulator-[345] in other
> >> files. I see potential mess when you combine several DTSI files, each
> >> defining regulators, so in such case "some-name-regulator" (or reversed)
> >> is also popular approach.
> >
> > so going with
> >
> >       dc_12v: dc-12v-regulator {
> >       };
> >
> > i.e. doing a some-name-regulator would be an in-spec way to go?
> >
> > In this case I would definitely prefer this over doing a numbered thing.
> >
> > I.e. regulator-0 can create really hard to debug issues, when you have
> > another accidential regulator-0 for a different regulator in there, which
> > then would create some sort of merged node.
>
> I don't think such case happens frequently, because all regulators are
> usually used by something (as a phandle) thus they should have a label.
> This label should be descriptive, so if one can assign same label to
> entirely different regulators, then the same chances are that same
> descriptive node will be used.
>
> IOW, if you think such mistake with regulator names can happen, then the
> same can happen with the label...
>
> Anyway, answering the question - "dc-12v-regulator" is still not
> matching exactly the Devicetree spec recommendation, but it's okay for
> me. :)

This seems like an excellent compromise, thanks!

>
>
> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
