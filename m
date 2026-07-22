Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BABCC44539
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 11:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agtJeJHHnFLTZx0uHCGgfyLGHLDuxumH5kJDx4HYYtI=; b=kcthSC666WJcUB
	MTYmcQ2hVz/Rh4N1Jvbj8UXCRjHaAm9mSoCZfdnZTIPbtQTJ/ry/AkKOFuu6nyNlnBu5cQ7vbFYBL
	I74YQUJPZ7xuBa0zBLa6ZKHHRaXOJPauVXaorlfPd10IKAXBCpFsBK5lzDFCVoF1c/0JzQ3e8V+k5
	sHMchQc78KXnYeovgFsSm8WWJPRI4pzmaFx/baor2hKO1CWJSqJxmE7IfMqaC+WlcmrXqw8Guc3/w
	YJsysHNzWe3x+yp/ZKh+ieJKwyazDKrRXayChmoJyDlDxo8jXoitTmrJfi/0pI10pxvA+j9KolIr+
	+ghAcusJUWIMl5UkR13Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVSy-0000000BgFa-3mol;
	Wed, 22 Jul 2026 11:50:24 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVSw-0000000BgEZ-0MDz
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 11:50:23 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2cce6a0c9c3so114726465ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 04:50:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784721020; cv=none;
        d=google.com; s=arc-20260327;
        b=KOdM4dgy5KraJrWU+IVGGpHpv7IJQ+n0rq6LFbRm10+9Bp3/t0BC6uwU0aLg2hhccw
         D2Kdo5lcXiQ4bxjVbmRTUuWhdnURqJGY7k9ht0vyPdDDOd8MVMVuk3YCrff4BMqxT462
         ku46lsUEssLwPD/NuClEd3k3DkpRbFuCmjqHKm3vIDU5XkA//m/7H6oJzPbipoFr4TqY
         CkyFGagnoNNPqN9W7QXTyENs5T9phj/kEffKqEuW5xelgNrodf1iJe9zR9ZeFF5IjFej
         ok2mVk9NaaHw3jgRHrrt3OqNGXfs4+WrFwBPyvBk3spoPwIe2/4rRxn/W5xamTknOrT1
         zpag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ftngr6uIQGGwpB63XFYD2rUJOFykaHdNqhOYri/BMvc=;
        fh=+8o5WWRtws4p/N/PYRIkNQyd4/vvDl5eHNVpWO0DPt0=;
        b=GsTwTpB+A5hQV1lVbhE6i7ENWWtccBkXusmj2oFbuaq18/OSONmFgTeYesuCFh+Nh3
         8IV4dV4ZDr2aDKwpKUd7U/5rxAdjOs9c2++/Fs2UzEaEegPttU2Ui2PS5k2MPB6+LLSJ
         dPcRzk0Uw9HMDOEKZ74n1JQDzKTGOXD2xzgZavgWt5l1fbTXhGYRkjOfSRV5YlKTmT5Y
         GNTlRviD9FWZlML/mwKS5ZU27kAHqUWz1ErIrIlDrug1MikmbLeYOrRsZezAWcNkudf6
         Zd6NIAHHa1bP7w5bIXHHCw+bw+lZ6uUVTrycyApauknb9/IT5kWXvwl/5CqsUSi6vcpS
         cYcQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784721020; x=1785325820; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ftngr6uIQGGwpB63XFYD2rUJOFykaHdNqhOYri/BMvc=;
        b=Hmllt2oVfnif3SaxJI9y7xaWTA2yQjT3qOQDB7bUqSAG1OyqxWLqYShRsvB0l3aV+X
         yNoLadI+xRHbp91WNsRbd+7o1s2bmBnstPtC+36MIZB8CNIYcwRXqQ83zMHVxxS/G6oZ
         FW5Dc83aG42pxYin0KBqB+J4rEe0jpkUHWFJwhg5RH5b5u+Igq/O1cv0u0Pvn+GgqJZX
         uQKp8UseN42jDPKN7lEhHPfUtPMSbwQHE+iwUuDYtp1VtnhLRR6VWcNB9m3cpeBYPqBV
         a/SqcgMv53ZHYYsJkYSspJjoWe2rJkPAgy1dAIv3hc6pclJmD7WT0KPnsaiHeAjO2EkR
         3N8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784721020; x=1785325820;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Ftngr6uIQGGwpB63XFYD2rUJOFykaHdNqhOYri/BMvc=;
        b=E2nlqxYhiTfRwpuXIlvQ/CYbefFBpsNiSAUCeXKWDcBNElFS12Jqm8kQwWva7I7CHG
         Z857aav6Pe+VPCGQxLEgt6HqwjudjH9mkyoykQ0o4icKemURZSy2UNVlaYPybK9pcWZL
         qLEH4Mxfy/gfU6bTyfprrPmjWDUWbLkGDn/xL9e2WGeOQBbGBgFtorpfmbcb7NzWD3KZ
         YGKjJQmOA2d1/Z4CpDYqbW+eQyHuEPHT3AQjUhsXHAjbJPlwgmWNlN6NESftzW6LB9J+
         ZTaoxIpBgKg+tADwxyGLDxMHjkbJtEmsC2DgcnEUpuT+ldhP/Tq/7RFPTbl6n86tgene
         hhiw==
X-Forwarded-Encrypted: i=1; AHgh+RpSlbrFl44Iv6JgQsowPgkeFRNmTZz/xLDX4dkIm3FUurL7tSc3fy5vDh4dOE/u3B1RQo1X7vg12k9B49ylNg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzcvFHWwVbJ0NYObxXFazasr8laPhNj3Ra8L6HTeQqNHXEYj5fZ
	7csZt8iIPqqoPxPZ50UmZnFmywOJEhGPrHpec+VG7pR2hx87/wmTzSA9a+0UllQG0jCwmVmLXQ5
	5OieBW5UjtJsw8mig0bVCdrNjsiPeR8Q=
X-Gm-Gg: AR+sD11QRDQG3vGLHT0IT/Q2IzDleHlDzpZonCryLACXentZiZ6QJFxWh13GIRSMBWf
	QcS9McoBK1bb05eKtZVe0QmfqXdwlVCtbdJSzd8d61o4zjR9OJqHU+Ik6/zOYHT0bBbPvAeCnjB
	ieAFziqrtigW8d2M92nhziNjN2N2/CII9PuTrjz8mflM2+d1c4EYQTu3+buL6CZAFgmfh7VwzhO
	6t5gX3nYP1hiB4W3FfjS7g08ygpIJWO2Og0N5gBVQw4Ljhz+2uvRqsWcUQidmZJ4v/LjxCX66Ea
	ctdxol+SibcCRVpr
X-Received: by 2002:a17:903:3c6d:b0:2cf:9c35:82d9 with SMTP id
 d9443c01a7336-2cf9c358a44mr8759895ad.10.1784721020533; Wed, 22 Jul 2026
 04:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260622005613.21870-1-phucduc.bui@gmail.com> <CAABR9nG6BL+-urEg0qDzJHYmowm7O=du_0T4+K2ogdrcD30CXA@mail.gmail.com>
 <CAABR9nF8GebpxX0ry-MMLCfsyPJ6EUpkEtYdASAep2jX+d5gnw@mail.gmail.com> <xrl5n7J2R2GNQC1ABA20Mw@collabora.com>
In-Reply-To: <xrl5n7J2R2GNQC1ABA20Mw@collabora.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Wed, 22 Jul 2026 18:50:08 +0700
X-Gm-Features: AUfX_mzEis5-yMHxueiT7BVXSfRPH7RVBNtfS-uZsE6HjdS-QePUSBci-Ql7jW4
Message-ID: <CAABR9nEbm2UdqdE6hCrW0RJOqp26=A8CPPSfCTxDHy7=zx_jFw@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: rockchip_sai: Hand over hclk control
 exclusively to Runtime PM
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_045022_142987_17479287 
X-CRM114-Status: GOOD (  21.86  )
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

Hi Nicolas,

Thanks for confirming and for the detailed feedback.

> > Regarding the case where PM configuration is not enabled, with the old
> > source code, I suspect there is an unbalanced clk_disable_unprepare()
> > call on hclk when the driver is unbound after a successful probe under
> > CONFIG_PM=n.
>
> If "old source code" refers to what's currently in the tree with the
> devm_clk_get_enabled, then yes. There's the manual resume function
> call which isn't balanced.
>
> I think your follow-up patch does make sense in light of that.
>

> > I noticed that Nicolas tested and ACKed the use of devm_clk_get_enabled(),
> > so I'm not sure whether that testing included the CONFIG_PM=n configuration.
>
> Nope, I basically never build with PM/RPM disabled.
>

> > > You are right, pm_runtime_get_noresume() doesn't set RPM_ACTIVE. I
> > > think we need to add
> > > pm_runtime_set_active() before pm_runtime_enable(). Otherwise, with CONFIG_PM,
> > > the pm_runtime_put() at the end of probe() might skip the suspend,
> > > since the core still considers
> > > the device suspended .
>
> Agreed, this needs fixing. That is an odd behaviour of the PM API.
>

I'll update the commit message accordingly and include the runtime PM state fix
in the next revision.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
