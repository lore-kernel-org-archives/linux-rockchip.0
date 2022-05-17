Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CB09C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 09:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bADQlVgzXvUXREwGjwrhGo9p0cy9N9rsbmXmOwqt7w4=; b=DZVwfA135ubBfI
	ZJqzrH54fPJXcfQjR8IThmMrfPukw7fkwRo40oVNGyq8iVL+zUP6ePzCIePzohiAq7ch46osu48f4
	ahLDDs5NuRVD3audOs+KrtDlnQ+MPR+5sxGdvbBLvo5m58YysozJ06GAgvMfrTB/U/U6a15yP8zyG
	Q6seLtnk74bphcTGhP5Wh/J134wZ6/7fNgvjnYFxsT9m6H3dJD2Zbtw6GwY3R1IpgXnuPDw2K/xtk
	vHG0JsJecW3Ft/zxTa9xdQI9jbBzfORXy8I7DKp+UbfrlFbw/82MO3ax+HaEyBcGrg0yOB/2bda3f
	xQGoTO9GkdsdIlYh7yWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqtEe-00Cg0j-D3; Tue, 17 May 2022 09:11:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqtER-00Cfwb-W2; Tue, 17 May 2022 09:11:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nqtEK-0000za-Qh; Tue, 17 May 2022 11:11:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>,
 robh+dt@kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 krzk+dt@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Date: Tue, 17 May 2022 11:10:59 +0200
Message-ID: <8064279.T7Z3S40VBb@diego>
In-Reply-To: <c397bff2-b4c0-3f85-e5b9-22f03bc80a2b@linaro.org>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
 <6824319.LvFx2qVVIh@phil> <c397bff2-b4c0-3f85-e5b9-22f03bc80a2b@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_021108_065741_1768D7D7 
X-CRM114-Status: GOOD (  15.12  )
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

Am Dienstag, 17. Mai 2022, 11:02:06 CEST schrieb Krzysztof Kozlowski:
> On 14/05/2022 00:26, Heiko Stuebner wrote:
> > Hi Rob, Krzysztof,
> > 
> > Am Mittwoch, 11. Mai 2022, 10:21:07 CEST schrieb Sascha Hauer:
> >> The VOP2 driver relies on reg-names properties, but these are not
> >> documented. Add the missing documentation, make reg-names mandatory
> >> and increase minItems to 2 as always both register spaces are needed.
> >>
> >> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > does this look ok now?
> 
> Neither Rob nor me was Cced on original email, so I don't have it in my
> mailbox... I would expect that scripts/get_maintainers.pl is a known tool.

Rob wrote in the past that he's working off of the devicetree-patchwork,
and has reviewed the binding yesterday [0].

But you're right, including all the maintainers get_maintainers.pl suggests
would be better in the future.


[0] https://lore.kernel.org/r/20220516151226.GA2653888-robh@kernel.org



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
