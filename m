Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4274AC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 19:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBjmMbETEbcboijggkWkqHRYT/RoW1OPMm7V9sTtaRI=; b=u5JnjZ9VRvXfix
	SqXWNRGUgjA6a7Zpq0KC+mBY0xmjsCYOrmq8kYEeC4pRkbE3/R0HBYcmgLHxOd9H3hjXsd7d1pUfs
	ZSjTvYv594i5TT2ndvtezTBGRZHDT+GlG2UlhGZ9VmfuBZ63Hc5kqMEObo9Y6egxgyG3PNdYqiv0h
	OizOzlpvJb6wnciKe8W2WD3KOKFEA+19eScT5fYpgfLyXFJ35cCgMH6c9WPSZtsIWSB4VZqrzwoWM
	Vdk31HeWIwoJ3JHajM0Oo1pMtjz3SdudA8C9WO1CqD3PZwS20hxZES3l5TM6iYHl53Etq94jujMlG
	KacXQO3jZzAq7i/l+fxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrk5q-0000000CZm5-2DZZ;
	Tue, 02 Apr 2024 19:46:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrk5n-0000000CZlQ-1JBT;
	Tue, 02 Apr 2024 19:46:48 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rrk5j-0000Tb-F5; Tue, 02 Apr 2024 21:46:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rockchip: grf: Add missing type to 'pcie-phy' node
Date: Tue, 02 Apr 2024 21:46:42 +0200
Message-ID: <4654968.CvnuH1ECHv@diego>
In-Reply-To: <20240401204959.1698106-1-robh@kernel.org>
References: <20240401204959.1698106-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_124647_386758_6F644179 
X-CRM114-Status: GOOD (  10.07  )
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

Am Montag, 1. April 2024, 22:49:58 CEST schrieb Rob Herring:
> 'pcie-phy' is missing any type. Add 'type: object' to indicate it's a
> node.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Do you want to apply that directly to the dt-tree?


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
