Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73226C5474A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 05:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcT+aILv62fDgPYQTDgLYC2ma5b1MfRuB0bkom1b/Pw=; b=zpYcjHVPLGqFMV
	Hn9IZ9gr6GdXDdTZF6bGUUoId+j94bReXBPb3ED4DQpZBErSKmj7ZOP+A1CkJ1iWaB9E8FN1Yt3VJ
	rjFIOjK/aL9kTdJ0MOxLQEOC4tJ7MtM1frjNNGjDSbkTpOj7hrio0gPCNgpRB8UHTg2bvknWWh22e
	SUXgdXOfkQx0EEGO4+SjsYMlanhnQlu0VajSDFT5fpi8u9/NIHhpT4LFKX9KOr8D5uzCub8hS1GVv
	yQqeJxJaSZh5c1DURqKbJMz55+M3TWM+zYGqzJ1PKlG1OpB1wHtFUa4CjYflxC5l+5firtpU7kr/o
	/wgKRrpVHZfJ2TjY1WkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjBhe-0000000E0QM-0KPS;
	Wed, 28 Aug 2024 05:58:46 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjBgV-0000000E0E5-0I5S;
	Wed, 28 Aug 2024 05:57:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 51B38A43335;
	Wed, 28 Aug 2024 05:57:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D645AC4AF0F;
	Wed, 28 Aug 2024 05:57:32 +0000 (UTC)
Date: Wed, 28 Aug 2024 07:57:30 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aurelien Jarno <aurelien@aurel32.net>, Dongjin Kim <tobetter@gmail.com>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: rockchip: Correct vendor for
 Hardkernel ODROID-M1
Message-ID: <eaqsbzsfvfn2cufeax6x2jdwfhejwz2pxxhbcgbt5s3kryy5gg@hi7b74trm5hx>
References: <20240827211825.1419820-1-jonas@kwiboo.se>
 <20240827211825.1419820-2-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827211825.1419820-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_225735_191521_D6871105 
X-CRM114-Status: GOOD (  10.78  )
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

On Tue, Aug 27, 2024 at 09:18:15PM +0000, Jonas Karlman wrote:
> The vendor prefix for Hardkernel ODROID-M1 is incorrectly listed as
> rockchip. Use the proper hardkernel vendor prefix for this board, while
> at it also drop the redundant soc prefix.
> 
> Fixes: 19cc53eb2ce6 ("dt-bindings: rockchip: Add Hardkernel ODROID-M1 board")
> Reviewed-by: Aurelien Jarno <aurelien@aurel32.net>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Would be nice to hear there are no users instead of relying on me to
check it.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
