Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42FA1C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 21:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsPhJ+0XXIPSPMDSpJy6AyDNAhMdOyjaaTTExTJTsYk=; b=NI+mZ1jbIrAqmc
	rPi+NU8RAxFPdBzVpzI39K1oXZYp+a4mULUdwIcdP3EcopA2HbagVOOIyWdyVXRK0vw3k3wGYZgJC
	+KZDnY9I3FgonnL+VoEyCWixBdmDG2N81y0MkFNMgnwuyTh2cSR5FmgPWmNHRJarhJrVT0/N0P82d
	dUi+f+QARqn94tGwL5xAmAZ81ACa3XAS2eTqCRQz7Pw08HHLW0+XFql36wdGkpScb07IxzIMK6Cmx
	5/huVxPlQLBQWgUvQ2aSVKyM23lmfcT/fG+SWN8Afy40q9uqA4MGuVIHFJD4ookFRlC4ENuyhOGq1
	2M6QNzr7X+QyIUON15gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nekmt-002lyh-1d; Wed, 13 Apr 2022 21:44:31 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nekmg-002ltQ-Sn; Wed, 13 Apr 2022 21:44:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C6E1EB82790;
 Wed, 13 Apr 2022 21:44:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B13EC385A7;
 Wed, 13 Apr 2022 21:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649886255;
 bh=REiyYi+mAYXjrShDQXfJol6vF7Esfj2JO/hO4v7g+W0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EkvpSCsm95a5C0y+uRSD+EzG/PTSs/+RWmwGAbXcsuraTlgp5LKBQ0w2zVRH4JnNu
 s0urlqeS+1AgvyOzbARE29DvfMEPnnUdOxfiHz6npuDhnx0uO+I0kHoIHSnLlqj3aV
 RFYf98RymVZamj3KNvwjJ1DdkDr0FOKj1smDDDYmDQxYay2/2oWN5/MzNfZWAPmYm4
 h2exISzIil0hKsR+ZshZCtGrxW8d1JpSa2mFfUL+tknIfyqSiQIbCTJASSVmSTX5uD
 ycPF/rgVgSYGeOE6rjqQ1KlKyr8/NXAwztiWMx8bJi32zFJXxyMzsPABxawgh0nnBj
 +spT08jahXJgA==
Received: by mail-io1-f45.google.com with SMTP id h63so3399278iof.12;
 Wed, 13 Apr 2022 14:44:15 -0700 (PDT)
X-Gm-Message-State: AOAM533D6FpCAldD6ObT6wNIHmPThySI5nsmZEsKSWD1MgHfMPhymO1m
 zvpvBrJAsE7S0cUZ/34C8jyCokG+VQHACrvDyg==
X-Google-Smtp-Source: ABdhPJy4uYEv5eq5qGfZfRlrdz3pvFGWusEa99bVYRYSjIEyLUJ+2rxHj/odHZIg8lnVBKbLdVtR5AqTxuzbun3IYB4=
X-Received: by 2002:a6b:e60a:0:b0:646:3e9e:172f with SMTP id
 g10-20020a6be60a000000b006463e9e172fmr19128552ioh.1.1649886254463; Wed, 13
 Apr 2022 14:44:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220324133229.24035-1-jbx6244@gmail.com>
 <f7493d93-6c8a-efa9-1f2c-a0003a6d43b2@kernel.org>
 <bf62ad40-6bcf-62ae-f56a-cdc8d17456ec@gmail.com>
 <20220325005130.C45A3C340EC@smtp.kernel.org>
 <bf438af8-5969-73e4-009d-cb7d93095a5e@kernel.org>
 <20220331223759.B8B12C340ED@smtp.kernel.org>
In-Reply-To: <20220331223759.B8B12C340ED@smtp.kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 13 Apr 2022 16:44:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLsE9kGzpHr6bkLmU9xmdxXiq-dWBFFO-W+4Z33iqK8_g@mail.gmail.com>
Message-ID: <CAL_JsqLsE9kGzpHr6bkLmU9xmdxXiq-dWBFFO-W+4Z33iqK8_g@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
To: Stephen Boyd <sboyd@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
 "heiko@sntech.de" <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_144419_268247_0AFA5AA5 
X-CRM114-Status: GOOD (  32.72  )
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

On Thu, Mar 31, 2022 at 5:38 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Krzysztof Kozlowski (2022-03-25 00:31:25)
> > On 25/03/2022 01:51, Stephen Boyd wrote:
> > > Quoting Johan Jonker (2022-03-24 12:51:36)
> > >> Hi Heiko, Krzysztof,
> > >>
> > >> Question for the Rockchip clock maintainer:
> > >> What clock should be used here and other SoCs with several clock parents
> > >> in the tree?
> > >>
> > >> The clock.yaml produces a lot off notifications like:
> > >>
> > >> /arch/arm/boot/dts/rk3036-evb.dtb: clock-controller@20000000: 'clocks'
> > >> is a dependency of 'assigned-clocks'
> > >
> > > 'clocks' is not a dependency of 'assigned-clocks'. The dt-schema should
> > > be fixed to remove that requirement.
> >
> > If the driver does not have any clock inputs ("clocks" property), why
> > does it care about some clock frequencies and parents?
>
> Because it's a clock provider itself. In this case I suspect because
> this is a clock-controller node it was skipping describing some crystal
> input though. Maybe it wants to configure the various PLLs in the
> clock-controller for a particular board. I can imagine some node with
> #clock-cells may want to configure the frequency of the clock outputs or
> configure the clk parents for a certain board/SoC. In that case there
> may not be any clocks property, but we still want to configure things.
>
> >
> > The clocks is the logical dependency of assigned-clocks, because
> > otherwise hardware description is not complete.
>
> Sure, but also #clock-cells indicating that this is a clock-controller
> itself means something. The existing bindings are what they are so
> forcing bindings to be updated to comply with having a 'clocks' property
> doesn't seem very nice.
>
> >
> > What should be here for Rockhip? We had similar cases like this for many
> > drivers, I was fixing some of Exynos as well. In my case usually the
> > root/external clock was missing, so I supplied is as input clock to the
> > clock controller.
> >
>
> Can the schema consider either #clock-cells or clocks? I think that will
> work for most cases. It would also be good to have a comment in the
> schema or more detail around the definition of assigned-clocks in
> bindings/clock/clock-bindings.txt that clocks or #clock-cells are
> required. It would be super cool if assigned-clocks only applied if
> #clock-cells was present, otherwise clocks property applies, but I doubt
> we can do that anymore given how long the binding has been around.

I've just made a schema change to allow this. This will still require
'assigned-clocks' to be explicitly listed in the clock controller
schemas if 'clocks' is not present.

Please don't add to clock-bindings.txt, but improve the schema
instead. I need Samsung's permission to relicense all the
assigned-clocks text though.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
