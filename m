Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4402C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 14:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3Gynmc6F5oA3+MWVZ4lMkHy9rK6G/lKYM12g8/tr6Y=; b=mt3YvZqg2C2nbB
	43WERY481sRgT79v9GH5Qxvg0HUb6uZnO5QS/0u1oo7W1XE8jInYKd0i3Ghe4LwpjUjeCdQopSv5u
	o0NIJyPLP7oQknvqwU3aickaGHSMAg/atGPYaZEFSFAr2axnAS9At95t70nrgTY3WTKkb8+9Tj68a
	0xz2mMdmeQqg60OLJmobzJu3uF4wQ/aCaumu8QD8g4p6gMAnT99D1lS8SAZ5uumcqdaXNbDo5xKSc
	rl3fBztO1jEwbm+johhX2xyPyJbkWnkPqkuhlui2R44UqHk91sisevJqXxNTZ1XLTnxlhDqi/+8Uc
	pG57m/cgRoVzVzA+VMlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQv4-0000000BaRe-05dw;
	Fri, 09 Aug 2024 14:48:42 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQuu-0000000BaQp-3iny;
	Fri, 09 Aug 2024 14:48:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723214903; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iPZRKEGdOtPl2vFf7qI42JcU4h9P4WAjC7y4lhvoajZ5vNx6lGqoBzUSE+lHdxLbdMnK4ZpclZqG2M+I1HaVSuzqHF0Zob+hBxsUaJk11CwPZ7i7IT/LpJpYCvd8jNYS6a8fguh/qeSFogOYfVe9rArcdCqyKEJ0jEDoQ45RRaI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723214903; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=smDZAwH7Xg7hIGHU7tELbbraIzo2Ddg1qiPAtMCx6W8=; 
	b=PH2Q+Jm2PD5bjNScsKp3sCFGWQok544KMw/jvPLOaRg8Frj+YyUchkxvEOWbM4PTXVwpIGgKduOqLRXTWwVpuQufDfIHWZQ6dCjn+bF8a5DGuUbejgzJDQKvaWDkvWwvhR8BcSL+gHhDTM84TgpHyCMdIYWyCsp4raH2fqiDIOQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723214903;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=smDZAwH7Xg7hIGHU7tELbbraIzo2Ddg1qiPAtMCx6W8=;
	b=B+g44/2nnRJT1x8bqIF84etQJoODssmbWraQSIzLAV16/Lm9lD6tS54VUmj97i1s
	48md2uslUKNnlysB3wrDeNrumolpvxkVIcC3EsGcdO9VCWjbEPAmS9AP3aWwXm41G1O
	RWpFMiQUEtxL+4eJ3ViP/8GYJwsC5f5/wEPbJX1Y=
Received: by mx.zohomail.com with SMTPS id 1723214902621403.82223962907415;
	Fri, 9 Aug 2024 07:48:22 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: reset: Add rk3576 reset definitions
Date: Fri, 09 Aug 2024 10:49:42 -0400
Message-ID: <8409208.T7Z3S40VBb@trenzalore>
In-Reply-To: <20240809-linoleum-ogle-ace67939d9a0@spud>
References: <20240809125553.3889-1-detlev.casanova@collabora.com>
 <20240809125553.3889-2-detlev.casanova@collabora.com>
 <20240809-linoleum-ogle-ace67939d9a0@spud>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_074833_005778_A3AA927D 
X-CRM114-Status: GOOD (  13.14  )
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

On Friday, 9 August 2024 10:15:12 EDT Conor Dooley wrote:
> On Fri, Aug 09, 2024 at 08:54:52AM -0400, Detlev Casanova wrote:
> > Add reset ID defines for rk3576.
> > 
> > Compared to the downstream bindings this uses continous gapless
> > reset IDs starting at 1 instead of register offsets as IDs, as
> > introduced in the RK3588 bindings.
> > Thus all numbers are different between upstream and downstream,
> > but names are kept exactly the same.
> > 
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> 
> IMO squash this with the other binding patch.

Yes, I wanted to but the issue is with the subject line: do I use "dt-
bindings: reset+clock: [...]" in the squashed commit ? 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
