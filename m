Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEB8EC28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 23:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ey5tltLgVyt26482If5mC9Nbv3mbw11VEzWb73fDW/g=; b=voUYWgX1dShiYH
	X5HXOarrBHbSy0kT0qWbGT8IzbbQ2jx8T9uwSNHAnVJg5w1NCntHk4cTlpNdHpsfRPuHk2Xr61+Dc
	DBZ0ya4eNXlrFLcXW9JSP4KvG2jC4Tl96JOI5yEslCdlMNaQkmNuM1DBUqcN4CL0cIrTwAkmSBdrU
	4kiB5WCrXVq9NkNUK9GnEc+ez82NYD1QW4Ck+bwvwKzp+XCrKCQ5zidFQqK4CYBPQHFWrq/52dtqW
	07RTnCHGMOOPj/Q4yltoDUdV3B1S2QsI34P0xjmRycIqWwhalp+2jtH3vI6Kz60tB3aFnTi5X+KRB
	RwCgh4rsS2j3UkXq7OdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQH5Z-00G6CX-LM; Mon, 22 Aug 2022 23:44:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQH5G-00G62k-SP; Mon, 22 Aug 2022 23:43:58 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQH5A-00013b-GV; Tue, 23 Aug 2022 01:43:48 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <foss+kernel@0leil.net>, Ulf Hansson <ulf.hansson@linaro.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [RFC PATCH 0/1] Making Rockchip IO domains dependency from other devices explicit
Date: Tue, 23 Aug 2022 01:43:46 +0200
Message-ID: <2696616.PYKUYFuaPT@diego>
In-Reply-To: <CACRpkdZXTtar73-HP8_wcAsCYw7JOgPwkXZt-_3s0GdoggBABw@mail.gmail.com>
References: <20220802095252.2486591-1-foss+kernel@0leil.net> <CACRpkdZXTtar73-HP8_wcAsCYw7JOgPwkXZt-_3s0GdoggBABw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_164356_780276_79CF2FAE 
X-CRM114-Status: GOOD (  28.70  )
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

Hi Linus,

Am Montag, 22. August 2022, 10:38:11 CEST schrieb Linus Walleij:
> On Tue, Aug 2, 2022 at 11:53 AM Quentin Schulz <foss+kernel@0leil.net> wrote:
> 
> > Some background on IO domains on Rockchip:
> >
> > On some Rockchip SoCs, some SoC pins are split in what are called IO
> > domains.
> >
> > An IO domain is supplied power externally, by regulators from a PMIC for
> > example. This external power supply is then used by the IO domain as
> > "supply" for the IO pins if they are outputs.
> >
> > Each IO domain can configure which voltage the IO pins will be operating
> > on (1.8V or 3.3V).
> >
> > There already exists an IO domain driver for Rockchip SoCs[1]. This
> > driver allows to explicit the relationship between the external power
> > supplies and IO domains[2]. This makes sure the regulators are enabled
> > by the Linux kernel so the IO domains are supplied with power and
> > correctly configured as per the supplied voltage.
> > This driver is a regulator consumer and does not offer any other
> > interface for device dependency.
> 
> What makes me confused about the patch is the relationship, if any,
> between this "IO domain" and generic power domains (genpd) that has
> been worked on for ~10 years.
> 
> I am worried that we are reinventing the world.

In a nutshell, the Rockchip io-domains handle the voltages of specific
pin-groups. I.e. mostly it is just switching between 1.8V and 3.3V .

The voltage itself is always set in a (i2c-)regulator but there is a
separate step necessary to tell the soc this information.

3.3 -> 1.8: set regulator to 1.8, tell io-domain "we're at 1.8 now"
1.8 -> 3.3: tell io-domain "3.3", set regulator to 3.3.

There is supposedly a soc-health-issue if you set the regulator to 3.3
while the io-domain thinks it's at 1.8 .


So the io-domain driver right now, just attaches to the regulator, catches
the voltage-change events and sets the io-domain setting accordingly.


What Quentin is trying to solve is a probe-dependency issue that can
happen when stuff is built into the kernel, the regulator has probed
the regulator using driver has probed, but the io.domain driver hasn't,
as that also only attached to the regulator as described above.

Heiko


> While my intuitive feeling is that genpd power domains are only on-chip
> and not considering off-chip pins, I am not so sure that it warrants
> its own abstraction and want to know whether this can be retrofit into
> genpd rather than inventing this?
> 
> Documentation/devicetree/bindings/power/power-domain.yaml
> include/linux/pm_domain.h
> 
> Yours,
> Linus Walleij
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
