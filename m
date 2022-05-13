Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8571DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 08:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Jhk4b6VBO5bYhazMFo/iA89GrW5FqwsdZAyaUe1E5A=; b=tIVGbABtS/c/cN
	Io3h1mf88gmqD0DKvTpEdzy3QKPNAc71ZAQQZlaO0XXipRoxtJc5b+MVqenU1YUIHcvR2JFTfIXxr
	UNOY5Eq/9pMsE1CvNycVn57NIYCFjn9haIPH8o20YnD1XsQaCGs6fQu2lR1Cg2I6Um4K0QoNS18qw
	31MO0/pWKxsEPJ3jUIdGDibPrmp8vSFphA2QyxyiKc7jDEaEPMzvrBf5XQr7fmHiTNno5xxnlW7q2
	WRZqcLGJo/3+u6Vc24Jg5anqEMaMpCdo3PR4NNE+pClD18HQVMEitX1I9ajcc3nk4oxCgxxY3aYPX
	F1bJEhA0EExcE+hEh2LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npR8F-00FDaz-Bj; Fri, 13 May 2022 08:58:43 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npR84-00FDYc-24
 for linux-rockchip@lists.infradead.org; Fri, 13 May 2022 08:58:33 +0000
Received: by mail-oi1-x22f.google.com with SMTP id j12so9430559oie.1
 for <linux-rockchip@lists.infradead.org>; Fri, 13 May 2022 01:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NpSINpDETSbqQ8kuCYB8/3th0pcSa+77c/avszgXaYU=;
 b=oVgumAXJ+VQc7CQO3qYv73vAoQnhh0vFgw3BxSBiCr2EYIifreB+9BrI6ZNmnhIKBx
 92Uc0Gpwu1ET19ShHNwi4x3AsOWl3s7NSQILJ0J+IdAnhwortPYFAoDGWIRmg+5GxQHw
 2xxGUqcIotThN96zCVpp7grCwO6X/NIohPfQZEYmiX21UMcniP4hAHvp/fEubjP1cfh/
 cEEmCGT4ja2naAQGleImvN0huyjfCQlzr2P1MYg8bRfn95MALtdvPMIOB+AJGoqCgL/5
 Rd6mUvUB7QhIyHuZHfBebJqxyN7wksjrjF02Ah/+0OZQWJlSi1wyYqvQqtHkJ//4fAdb
 lFwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NpSINpDETSbqQ8kuCYB8/3th0pcSa+77c/avszgXaYU=;
 b=40IashJEM1jApK4e8qR6y47IbKkWHmBrcxhAwjBtL1Ke2MsHwOVO/Xvlv5qzBdqH6+
 y0xzpPyElTT6uL9pvS58TScU29/PItMtUvSK7O+nMPIWEuIkne70Rw+3z2U8nru1lgjL
 c6J0LwrP0isKkDi8M74/ALiO0Ngp+rTfsh+w8JpZTQ+aZzJaOBu689WgoFw6zjmWC84W
 tnBLDhshgDK+JD53+x3AYKy7d6Fc2dKZ2Anr5c1z4EWc90G+Tjv7qUv+XufffsIsBRpk
 HOArpz6I86l6L6h9nAlwqRBx8TOQqIxum8OrJ0P9yAJF41F5EBEQNSOc+YJupKgm9q3c
 nOng==
X-Gm-Message-State: AOAM530cac/cRPDIy9GK9GPtVeuWvRdDa0Rhjbmkt8LixXvRUhM0kfn7
 xoE4jNDRKWv57H3zn30R53y2TwRwgJO//zTZ0Z8mcw==
X-Google-Smtp-Source: ABdhPJwiCK0EUi1xGHK6lBz/6ilajF8YcQlrhGJneXXIEE1Iymq3Olk69LvLfn6/mYieWW2CC7eBLTUy7riubBnnF+U=
X-Received: by 2002:a05:6808:114d:b0:328:aaa2:10c9 with SMTP id
 u13-20020a056808114d00b00328aaa210c9mr1828896oiu.217.1652432307735; Fri, 13
 May 2022 01:58:27 -0700 (PDT)
MIME-Version: 1.0
References: <1698297.NAKyZzlH2u@archbook> <YnOEwuuyO2/h7c1G@e120937-lin>
 <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
 <6587375.6lpfYT6tjA@archbook> <Yn0a9nSD7Yu6aOkt@bogus>
In-Reply-To: <Yn0a9nSD7Yu6aOkt@bogus>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Fri, 13 May 2022 10:58:17 +0200
Message-ID: <CAN5uoS8KXJZS52eys-ko0e_UpQCwiTvg42h-hJ3=ZAbvit99Qg@mail.gmail.com>
Subject: Re: [BUG] New arm scmi check in linux-next causing rk3568 not to boot
 due to firmware bug
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Cristian Marussi <cristian.marussi@arm.com>,
 linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
 Liang Chen <cl@rock-chips.com>, linux-kernel@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_015832_124936_1232C691 
X-CRM114-Status: GOOD (  28.12  )
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

Hello all,

On Thu, 12 May 2022 at 16:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, May 12, 2022 at 01:11:22PM +0200, Nicolas Frattaroli wrote:
> > Hello,
> >
> > sorry for the late reply, completely missed that there was a question
> > for me in this mail.
> >
> > On Donnerstag, 5. Mai 2022 11:40:09 CEST Etienne Carriere wrote:
> > > Hello Nicolas, Cristian,
> > > [...]
> > >
> > > Indeed the firmware implementation is wrong in TF-A.
> > > And also in OP-TEE by the way:
> > > https://github.com/OP-TEE/optee_os/blob/3.17.0/core/drivers/scmi-msg/base.c#L163-L166
> > >
> > > @Nicoals, do you want to send a patch to TF-A, or do you want me to do it?
> >
> > I have no experience with TF-A, so I'd prefer if you could do it.
> >
> > In good news, Rockchip has confirmed they're preparing to release RK356x
> > TF-A sources, so I'll be able to port the patch over to their sources once
> > they are released, if they don't already apply it themselves.
> >
>
> So, there is no way to get a blob release with the patch applied ?
> We know it is a bug in TF-A and if Rockchip is using that codebase, it
> will be the same bug there too causing this issue. Waiting until the
> code is released and the proper TF-A port is done may not be acceptable
> for many developers. So someone from the rockchip doing these tf-a blob
> release must get involved here, understand the situation and get the fixed.
>
> We can workaround, but I want to hear that it will be fixed instead of
> getting ignored until proper port is available.
>
> Etienne, are you not the author for the related TF-A code ? How can we
> get that fixed in the TF-A code base. If you are not, then I will try to
> get my repo login credentials sorted so that I can only push TF-A change.

Yes, I'm the author of the code.
I have created a gerrit change in TF-A to fix the issue:
https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/15196

OP-TEE implementation also embeds the same scmi-msg drivers and have
the same issue.
I should be fixed by P-R: https://github.com/OP-TEE/optee_os/pull/5334
I will ask TF-A if this specific change can hit TF-A release v2.7 tag,
if posisble.

Feedbacks are welcome on these 2 forums.

Regards,
etienne


>
> --
> Regards,
> Sudeep

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
