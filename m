Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6366C3DA64
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 15:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6p3B1OmQH6Wl+UC0mdhBda2OQgMHIef5IPRPFEHA3uk=; b=NIFjZoCYgLjYFb
	2PeGlQ7YOcMJu61AzlaKyL3rRGb+L3Hf19VRdODHFozgj8MUk3JsbtaHGt19qTarFeZRozaFURWc9
	V4abGoAWuo6+lvwbUVYts27YoErBi7H0355VY+fDY6t++VCcj/00ibKLONA15rvlXdb9Z/sFOLlxB
	75LacRoVQLkrxQn9ZaRqBHPpTmL26y9QkTefyibAIdQcsqDJcVrHQeZIo01CA8Q48tW1/rsSLHLM2
	D3+SVDObv6jy0DlvAGgHmXsHidtdtp9chA1m75/EOZvCH/frgLogpxn6lgqpKd3UwgXC/gRO5tWK7
	nVFm1hg6K1GcQJWjbzeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbLtB-000000028wz-1hpA;
	Tue, 06 Aug 2024 15:14:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbLsd-000000028p0-0Kbh;
	Tue, 06 Aug 2024 15:13:44 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sbLsT-0005t0-N2; Tue, 06 Aug 2024 17:13:33 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, zhangqing <zhangqing@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Finley Xiao <finley.xiao@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v2 3/3] clk: rockchip: Add clock controller for the RK3576
Date: Tue, 06 Aug 2024 17:13:30 +0200
Message-ID: <1936032.MyG8hOvIyE@diego>
In-Reply-To: <2335430.ElGaqSPkdT@trenzalore>
References: <20240802214053.433493-1-detlev.casanova@collabora.com>
 <a9a9219d-325c-4afa-b40c-b261ff95263c@rock-chips.com>
 <2335430.ElGaqSPkdT@trenzalore>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_081343_148631_7A693559 
X-CRM114-Status: GOOD (  16.99  )
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

Hi Detlev,

Am Dienstag, 6. August 2024, 16:15:41 CEST schrieb Detlev Casanova:
> The suggestion from Heiko was that those reset should be managed by the 
> subsystems that use them, because they are on a different offset and therefore 
> seem to be on a different core.
> 
> But I think I will include them here like you suggested because:
>  - That's actually how it is done for rk3588 (which is quite close th rk3576),
>  - According to you and the TRM, those resets are on the same core, just with 
> big offsets.
> 
> Having the same structure for both SoC makes sense for maintening them.

Just without the big offsets between areas please.
Similar to how rk3588 does it already.

And yep most likely they are in the same block. Just that huge block of
space for the cru somehow suggested some algamation of multiple ones,
but looking up the rk3588, you're right that it really seems to be one block.

I did request the rk3576 TRM from Rockchip - hopefully they'll follow up
with that at some point ;-) .


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
