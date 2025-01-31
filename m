Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65F6CC0218F
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jan 2025 18:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFItNlPzP4aOI5oQjeDsabYloHBS5ppse30dsMZnbIw=; b=P5lRcTJfbz0PoE
	2E7PYZza3NnhnyKicko/BufbY3aBUmgVLdf7FtgM8lCHpREaxKaC4iB42AOv3r2J6GHTyJK3qIDql
	q0nlql2I8dN1HTTwNo6S+d5ZAFPBhzepAjnZ+hHmjD7e0P9DI4wUvYgf896U8jWuQYmhvD+fTVQAE
	yAxgfQVmfr92V6KLeO6pWBjerzHWQjlFEd3ijWAoH79kE8MTQefR2xgrJzfhLGFLOGGnJWLTmKTXV
	315NZ6SkDSQ4zOLMqTJH2c/YCh/cweYME9my0SbdUPAOtYeIFNz/hlynsHjps1gY7tgEsLtRUO5+c
	iB4PBGLKPHTVxdpE8KOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdvjI-0000000BCbp-0GI9;
	Fri, 31 Jan 2025 18:27:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdvhy-0000000BCTM-0VX3;
	Fri, 31 Jan 2025 18:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DeK+E3UWXmeeQSfCZOJZEGlV6yQ1IUdoPqkRbHcneDM=; b=p8X2cw2ns3zjZjtrsxUeo9nQoD
	83vokCjh7SElQcKs8UCOP/eQWs6bqwKgDNqvb6yVijFxP70eFHRLeGvaA0SRW8WQaoU6Joaj0pOy8
	o5SirEuImqSVObFtolyc7TPjxMJFiIkn6E0dzdIe8pKrfcQBE2+dur7dLm1JQ+hDgjD6CKuoQCDvK
	PdChZXnjMfKgHMUJAWg26EPJPmIUC+8Y+QNqHtj/ripyneN78T1L4X/rXUFl7s8tkjLISRaY+ouVM
	C5nfn//sOeNx9KXt1htxesH8IzwE6LrKxZB/PKRAkrdvwI9oZLl3FieQ/nyrkOZ4bVuIQALNxt+ko
	h0znrdaQ==;
Received: from [86.39.10.178] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tdvhq-0001qj-9l; Fri, 31 Jan 2025 19:25:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, sebastian.reichel@collabora.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dse@thaumatec.com
Subject: Re: [PATCH v5 0/2] MIPI DSI phy for rk3588
Date: Fri, 31 Jan 2025 19:25:28 +0100
Message-ID: <2498993.ElGaqSPkdT@phil>
In-Reply-To: <20241203164934.1500616-1-heiko@sntech.de>
References: <20241203164934.1500616-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_102538_181202_E1584BDD 
X-CRM114-Status: GOOD (  13.87  )
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

Hi phy-maintainers,

Am Dienstag, 3. Dezember 2024, 17:49:30 MEZ schrieb Heiko Stuebner:
> This adds the phy driver need for DSI output on rk3588.
> 
> The phy itself is used for both DSI output and CSI input, though the
> CSI part for the whole chain needs a lot more work, so is left out for
> now and only the DSI part implemented.
> 
> This allows the rk3588 with its current VOP support to drive a DSI display
> using the DSI2 controller driver I'll submit in a next step.
> 
> Only generic phy interfaces are used, so the DSI part is pretty straight
> forward.

a tiny little ping :-)

Is this still in a queue, or did it fall through the cracks during xmas?

Thanks a lot
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
