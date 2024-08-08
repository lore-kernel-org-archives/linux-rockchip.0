Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83E00C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vm+CdWd8+mhNSy8aG9TUJBmunE7YIZ3Gj/Bi5lGHsDo=; b=RmtnR2F/Ba4zSz
	7lHqcRgY0akND5QAB8tC2g1rMl6JYMrM0NvAPqoeFK8z+RPk8juriYsycTcy+NlC8RC0nN9QkB9Ek
	VjQpLCBVCjpA53WMBklQS4BN7N4pAnA6cq+Kg6WA9x+ugZB5/SMuqKGpNEnIaosg2Wr4SeTZAtxTs
	2HDhF0rgvF/uLEtYxiwR07yvKYh7qjeBXAfWpPJaJ57h7dt31Bk8SEKGagLVlotbGx7Vn7AYjih82
	UzFqeeU0KFbDx3ILOP79DVV83uF1URoXyweO2tMZ0Tw7RYsfnuUx7ULKFmYv5OQsyHJvtxSIcAJuf
	vQ9d5hWtogjXK48B0HtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Hx-00000008zYw-2J9M;
	Thu, 08 Aug 2024 16:46:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6HN-00000008zTs-1ixX;
	Thu, 08 Aug 2024 16:46:22 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sc6HF-0004jv-7w; Thu, 08 Aug 2024 18:46:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: Add power-domain header for RK3576 SoCs
Date: Thu, 08 Aug 2024 18:46:12 +0200
Message-ID: <3030655.BQQF58Tnoo@diego>
In-Reply-To: <0c66dbf97fc5a5adc3831b1ed01e1188@manjaro.org>
References: <20240802151647.294307-1-detlev.casanova@collabora.com>
 <10908017.3WhfQktd6Z@diego> <0c66dbf97fc5a5adc3831b1ed01e1188@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094621_470332_F44000A9 
X-CRM114-Status: GOOD (  23.83  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 8. August 2024, 18:43:42 CEST schrieb Dragan Simic:
> Hello Heiko,
> =

> On 2024-08-08 09:54, Heiko St=FCbner wrote:
> > Am Dienstag, 6. August 2024, 18:34:41 CEST schrieb Detlev Casanova:
> >> On Sunday, 4 August 2024 05:56:39 EDT Krzysztof Kozlowski wrote:
> >> > On 02/08/2024 17:14, Detlev Casanova wrote:
> >> > > From: Finley Xiao <finley.xiao@rock-chips.com>
> >> > >
> >> > > Define power domain IDs as described in the TRM.
> >> >
> >> > Please use subject prefixes matching the subsystem. You can get them=
 for
> >> > example with `git log --oneline -- DIRECTORY_OR_FILE` on the directo=
ry
> >> > your patch is touching. For bindings, the preferred subjects are
> >> > explained here:
> >> > https://www.kernel.org/doc/html/latest/devicetree/bindings/submittin=
g-patche
> >> > s.html#i-for-patch-submitters
> >> > > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> >> > > [reword]
> >> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> >> > > ---
> >> > >
> >> > >  include/dt-bindings/power/rk3576-power.h | 30 +++++++++++++++++++=
+++++
> >> > >  1 file changed, 30 insertions(+)
> >> > >  create mode 100644 include/dt-bindings/power/rk3576-power.h
> >> >
> >> > This is part of bindings.
> >> >
> >> > > diff --git a/include/dt-bindings/power/rk3576-power.h
> >> > > b/include/dt-bindings/power/rk3576-power.h
> >> > Missing vendor prefix. This should be named after compatible.
> >> =

> >> Looks like all other rockchip power bindings use the =

> >> include/dt-bindings/
> >> power/rkXXXX.h format. Should I keep that way ?
> > =

> > there is also rockchip,rv1126-power.h , so please follow Krzysztof's
> > suggestion. Older header namings need to stay the same of course
> > but that shouldn't keep us from updating naming schemes to better
> > work in new additions.
> =

> Actually, why don't we rename the old headers to follow the new naming =

> rules?
> Is there something preventing us from doing that, which I'm missing?

yes, the headers are _part_ of the actual devicetree-binding.
So you have out of tree users in the BSDs or whereever else.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
