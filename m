Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAC2AC44532
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 17:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrmCB2xokGw5Yz9qiJeaDB8sZZD6Z+CJZ6PWxHYqXW0=; b=lkvThqby8/7bzz
	jTuNKqNwmq4meZF7HoStOdqAybNclNDeXrWFP0YgMPaV3gw6mn5Jo/fIA8E3o0U0cq0Pb+UbEIRVj
	ig2nlm6Fciroew+Njfr9L11PXLM89ZFz+uLg2SoeTJq3SQ/AHQv0VoA7+1KufJ4H+T5RqtNGsGmBm
	lwB5n3bX8SASJAwAISate6Ra+PQl4hivlKEwx9/w5DO1yGmn6Z/pH+17aAItUypliugIdRmQZ9O5s
	vZJTqIPYsP/ngLsu36N6ODh+AeENP7/PF2/z3NIloe5YuFlUZWaR+Q09fmfFNN80na8v4GRlmFXfE
	ItqZ5IB+BRyEvg5EDx7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaYZ-0000000CR0H-2C8a;
	Wed, 22 Jul 2026 17:16:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaYX-0000000CQzl-1rZx;
	Wed, 22 Jul 2026 17:16:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DAD60600AB;
	Wed, 22 Jul 2026 17:16:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 442951F000E9;
	Wed, 22 Jul 2026 17:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784740588;
	bh=ikw1+fL6btnWMYc4tslEQEKoB0CU6o+pa5SOHWA46gI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kYXSbZv4mVL0UQWusAhHj0XYr2/hUbIKw5N9P6IfKdCxtg9TDAMtJL673i/SLQsQy
	 yAJa3q4gl5e9gvGBdiZjfBZ9E5Io578KTu53K2WPu8rerzMCFmJIp45O9yz9KO3k4A
	 mBmufbr6HHb84wZAvttFbGoFwI3FJ7xm8jmb44krRBJI5UVID8c3hnWOVw8RJuAr12
	 J0Aj2JwL88XuuGc5YUsr1b6g2VnmVyWDYjkDEP5Siey6yYEgwS8ULNWFyXAvvYkGG5
	 1BJMwchk/g+x8CTeg/bR62Tbcwgt+dtLyxFlTIBMBLWC7R4TF8rPxP+uc1/m0CmdOS
	 p/RGgJRhAhStw==
Date: Wed, 22 Jul 2026 12:16:25 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Brian Masney <bmasney@redhat.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>,
	devicetree@vger.kernel.org, huang lin <hl@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: clock: rockchip: Add RV1106 CRU
 support
Message-ID: <178474058544.1144777.17019195106018644429.robh@kernel.org>
References: <20260714193656.2196447-1-sjg@chromium.org>
 <20260714193656.2196447-2-sjg@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260714193656.2196447-2-sjg@chromium.org>
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


On Tue, 14 Jul 2026 13:36:38 -0600, Simon Glass wrote:
> Add the clock binding header and schema for the Rockchip RV1106 clock
> and reset unit. The clock IDs are numbered continuously from 0, in the
> same way as the RV1103B. The header also covers the MMC drive and
> sample phase clocks, which the CRU provides using control registers in
> the GRF region.
> 
> The RV1103 is a package variant of the RV1106 and uses the same CRU.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> Changes in v2:
> - Renumber the clock IDs to be continuous, starting from 0
> - Provide the MMC phase clocks from the CRU rather than a grf-cru
> - Mention the MMC phase clocks in the rockchip,grf description
> 
>  .../bindings/clock/rockchip,rv1106-cru.yaml   |  60 ++++
>  .../dt-bindings/clock/rockchip,rv1106-cru.h   | 300 ++++++++++++++++++
>  2 files changed, 360 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1106-cru.yaml
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1106-cru.h
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
