Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2897C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 22:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Pv6cJIoYAC66m1qn8kBFeAdRgB6OJGVK8EqXnKxtM8=; b=nEuUQ7+N3odqOu
	ZHi1cOp6SQsKiP506cvrsTwwbGkqkuaNKVJICKWcBZ24gT4FOzD6lM87fNGO9jpfRroAEAP94DthY
	nM3w1PSS6+joz8OQPasKR7yRPgXxGaiY5Mhf4DHnZ9W7mux1p959LA/raCwNZvWZ5tLlqNhBto0EL
	LUTEA6nHEX9o3t9ZpngA5G+4u6fda8W7JbmjmJVGIBaFCJNkH7scyMXzSz3sxbzMleSKpToce29gU
	XOzEVmkCQ8yCLfP3j4o0PtzkhT5yJi3F1v81UBVl7YsV6rlb8b9tVF5rmkuW3e1BDWl4ROfDEo2JI
	Xmx+2D66Jq/yc4zkGv5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na3Qk-003rtg-PV; Thu, 31 Mar 2022 22:38:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na3QY-003rqG-P8; Thu, 31 Mar 2022 22:38:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1BC94B82251;
 Thu, 31 Mar 2022 22:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B12C340ED;
 Thu, 31 Mar 2022 22:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648766279;
 bh=0+cqxY3wgXl1ZxgBlYb2Pw1E+eA45qGlrrGxGV6BP4Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=KVubnGXunMJIF0ThNkEy70N0q5PMBLlBFHZtwDDlcF/LEM30o5NILdXywFFrb8Mfc
 ky7xDb6uCD4Uq5P+YIK0JXy/82QVa7PNArud3iXwsD5Iau9k1s91+EARvK9nB8dHpe
 4vBaeI10JPTgNi+n1jcuDoQHMUkhMO1DNZQG5u/KveYKZBPKI+qcrYKLHXt7clQOH3
 heENiVEo2e3zffwSV2wtufCT5wlmCKwc6wlvxoJs23Fa1vvMgHgyNR1B4RXf8/Z+St
 9/W6lO1dTqMP7gpPu7WhKM5soFhWTd+O3lsNeubAc0SwUOkZnQsP57x/LmzTDPgsww
 ohHY7YDlIt5UA==
MIME-Version: 1.0
In-Reply-To: <bf438af8-5969-73e4-009d-cb7d93095a5e@kernel.org>
References: <20220324133229.24035-1-jbx6244@gmail.com>
 <f7493d93-6c8a-efa9-1f2c-a0003a6d43b2@kernel.org>
 <bf62ad40-6bcf-62ae-f56a-cdc8d17456ec@gmail.com>
 <20220325005130.C45A3C340EC@smtp.kernel.org>
 <bf438af8-5969-73e4-009d-cb7d93095a5e@kernel.org>
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 heiko@sntech.de
Date: Thu, 31 Mar 2022 15:37:57 -0700
User-Agent: alot/0.10
Message-Id: <20220331223759.B8B12C340ED@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_153803_140125_CB1CC18E 
X-CRM114-Status: GOOD (  22.27  )
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

Quoting Krzysztof Kozlowski (2022-03-25 00:31:25)
> On 25/03/2022 01:51, Stephen Boyd wrote:
> > Quoting Johan Jonker (2022-03-24 12:51:36)
> >> Hi Heiko, Krzysztof,
> >>
> >> Question for the Rockchip clock maintainer:
> >> What clock should be used here and other SoCs with several clock parents
> >> in the tree?
> >>
> >> The clock.yaml produces a lot off notifications like:
> >>
> >> /arch/arm/boot/dts/rk3036-evb.dtb: clock-controller@20000000: 'clocks'
> >> is a dependency of 'assigned-clocks'
> > 
> > 'clocks' is not a dependency of 'assigned-clocks'. The dt-schema should
> > be fixed to remove that requirement.
> 
> If the driver does not have any clock inputs ("clocks" property), why
> does it care about some clock frequencies and parents?

Because it's a clock provider itself. In this case I suspect because
this is a clock-controller node it was skipping describing some crystal
input though. Maybe it wants to configure the various PLLs in the
clock-controller for a particular board. I can imagine some node with
#clock-cells may want to configure the frequency of the clock outputs or
configure the clk parents for a certain board/SoC. In that case there
may not be any clocks property, but we still want to configure things.

> 
> The clocks is the logical dependency of assigned-clocks, because
> otherwise hardware description is not complete.

Sure, but also #clock-cells indicating that this is a clock-controller
itself means something. The existing bindings are what they are so
forcing bindings to be updated to comply with having a 'clocks' property
doesn't seem very nice.

> 
> What should be here for Rockhip? We had similar cases like this for many
> drivers, I was fixing some of Exynos as well. In my case usually the
> root/external clock was missing, so I supplied is as input clock to the
> clock controller.
> 

Can the schema consider either #clock-cells or clocks? I think that will
work for most cases. It would also be good to have a comment in the
schema or more detail around the definition of assigned-clocks in
bindings/clock/clock-bindings.txt that clocks or #clock-cells are
required. It would be super cool if assigned-clocks only applied if
#clock-cells was present, otherwise clocks property applies, but I doubt
we can do that anymore given how long the binding has been around.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
