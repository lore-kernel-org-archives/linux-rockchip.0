Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78354C52D70
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnRzDyVR0jY6ABfEG8Nl26KRKwigrmAoha/RHM3WzVQ=; b=YxHXXn9hRDwL9R
	HQ08dwdcdSJwqSFhfye8NIInGlzZVjRHY2J7jWvgqA5y8Ib+0T7n4vrCBCDYbEP3kQ1K6ZKR/4rzO
	/+Z8hF/ZkQuFoZ9OZLIDddOxZnEhi4524Wrrp52SFIJ4tnGFmmXgmAZpI0BJxfEPFBuoJr5Ys1+GP
	Z/M5R9cglK64P+ieyUvfNsHSiR8jAS5sD6eJWUFW+BpXWvxMDepMLkqc4bTgQU967ka+gT6dx7U3b
	0gOXX1tU6iHhpG71VKfCWIFn6c9mwCfTG/IDZqBzhtFxKUjVjyMGt/OtKFhmoQmZR9jgzbLAfvTJR
	cX4aWncco0mxigq3jXkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbN8W-00000002Mav-096p;
	Tue, 06 Aug 2024 16:34:12 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbN7x-00000002MVf-03YX;
	Tue, 06 Aug 2024 16:33:38 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1722962010; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nVmjkx2NYYfGexWUTXG6+br7K+/tYNcm2BTNaHP0pmFRRUF6ugYmgQNdE1Z4TgZeOsBp4IWtKiRsYRVcx4LkEdgW5NMOcFdNYbTecmOXjMHwkj1saTbQw/ng9eOW0VYI7I9+0R3Xa0qXjOLqYMnRZAmrgi5gzUp/2gUkgllXlLc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1722962010; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=l/JHjYFYD5hXu+XbGOm+SC68og+CQ6amBp7xMsiP/Lo=; 
	b=CsIS/Zd0X+HOmXOqsWJsKqIQT07/9srdSQNwHL6RoqLJaMD9Y7UgQFJDZlOIfmDqWpuGwgErLkyLoDibyGeJbGBU4/MH4oUSKMRMUfT3DV8t98XX8dQFQcQEUv5AgtcB6RaxxkM77B4O7oCmvoyML5/04OYGhINcMrEJWljfpwI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1722962010;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=l/JHjYFYD5hXu+XbGOm+SC68og+CQ6amBp7xMsiP/Lo=;
	b=AqFJDYCdobJ60Kpe/ZGzSVKMoNEWj3yVbIBcC+9Q5Pm9KxZG5CRvJ6KdXceQzpe0
	oTPRGkOL6pPFlfJdmaHXdCx6ZHWo1MpTI8HyNji7wYzk/OsF9zTgIQ861Gn/BzZk1Gc
	TNyFVoh6ilAbmNIrlRYMu/halSDBLbAqVtm76XCE=
Received: by mx.zohomail.com with SMTPS id 1722962009873809.7480289049981;
	Tue, 6 Aug 2024 09:33:29 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: Add power-domain header for RK3576 SoCs
Date: Tue, 06 Aug 2024 12:34:41 -0400
Message-ID: <3310992.44csPzL39Z@trenzalore>
In-Reply-To: <e04258dc-07c4-45c7-90d4-bc1ed9eb100b@kernel.org>
References: <20240802151647.294307-1-detlev.casanova@collabora.com>
 <20240802151647.294307-3-detlev.casanova@collabora.com>
 <e04258dc-07c4-45c7-90d4-bc1ed9eb100b@kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_093337_136337_50768793 
X-CRM114-Status: GOOD (  18.60  )
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

On Sunday, 4 August 2024 05:56:39 EDT Krzysztof Kozlowski wrote:
> On 02/08/2024 17:14, Detlev Casanova wrote:
> > From: Finley Xiao <finley.xiao@rock-chips.com>
> > 
> > Define power domain IDs as described in the TRM.
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patche
> s.html#i-for-patch-submitters
> > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > [reword]
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >  include/dt-bindings/power/rk3576-power.h | 30 ++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> >  create mode 100644 include/dt-bindings/power/rk3576-power.h
> 
> This is part of bindings.
> 
> > diff --git a/include/dt-bindings/power/rk3576-power.h
> > b/include/dt-bindings/power/rk3576-power.h
> Missing vendor prefix. This should be named after compatible.

Looks like all other rockchip power bindings use the include/dt-bindings/
power/rkXXXX.h format. Should I keep that way ?

> > new file mode 100644
> > index 0000000000000..cb33a32c1aed9
> > --- /dev/null
> > +++ b/include/dt-bindings/power/rk3576-power.h
> > @@ -0,0 +1,30 @@
> > +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> 
> Weird license.
> 
> Best regards,
> Krzysztof





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
