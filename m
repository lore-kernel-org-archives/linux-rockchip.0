Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B54EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 13:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caMOAbY35EZ+ZG0Hu1hXV0SWQFDuzpgZCrBmy2n95wU=; b=R7TyEYs2WMmGDG
	oXo6NzYtoCTAWJdPmurYpGNtGRIknisiwoynyw8qWjywa0evneNlyiK47jvfsdHNmUm8vXdCQkYQy
	X8Sr0LSxy+oE2JmCBV1SuqrQanrDBZVOwDTQYJ5diOSYi+ewiBtYqkTzkG1KREuu1lLI/LcH5U+JZ
	O1XwnDgmEC5HyYET7tWK2d8rVe25IA8SPKRdHI+enc5LBEwBuFsojPyge3gohUOoujGMPLenUM+hp
	rr1sICoRzhhKSrsqGjh49xyHVWug3+Ef3SUhyVeAAMGDCO7GH4TSDfqAiwGQgCy1z48rJ+41WpqhZ
	nAE8r8k2TJS6+nsmRGew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1T4T-00EhVV-0G; Wed, 15 Jun 2022 13:28:33 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1T4H-00EhP1-1C; Wed, 15 Jun 2022 13:28:23 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 5A8301C0BC8; Wed, 15 Jun 2022 15:28:12 +0200 (CEST)
Date: Wed, 15 Jun 2022 15:28:09 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>, Ondrej Jirman <x@xff.cz>,
	Martijn Braam <martijn@brixit.nl>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add PinePhone Pro
 bindings
Message-ID: <20220615132809.GA1429@bug>
References: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
 <20220529031705.278631-2-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220529031705.278631-2-tom@tom-fitzhenry.me.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_062821_258491_4BDAA1DC 
X-CRM114-Status: GOOD (  10.24  )
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

Hi!

> Document board compatible names for Pine64 PinePhonePro.
> 
> https://wiki.pine64.org/wiki/PinePhone_Pro
> 
> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>

It makes sense to get this reviewed early, because Rob's ack is needed here, right?

> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -489,6 +489,11 @@ properties:
>            - const: pine64,pinenote
>            - const: rockchip,rk3566
>  
> +      - description: Pine64 PinePhonePro
> +        items:
> +          - const: pine64-pinephone-pro

This should be pine64,... right?

Best regards,
									Pavel


-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
