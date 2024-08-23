Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2AE4C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 07:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBNzH9Q2LHuHedXeKfzEc8OEGdGdhuV5feeUECYIyFc=; b=EUFYlpIhbOUmc0
	kRfbAKgSZ0KuDgCTimFOc9jr8q9GTEwXvC3/jMPB0ixkwEvRq5gTCW2hqtFLZ9bwKRs/oHwjK7rY1
	XwIC3ACZZbAr8ofyYq5oHtP1JbWbQuRWcAP6g0lm6fhhR+TfOfy2qlUr2MpsRSkSjyII4MQzGUs5M
	itBxEn8sih5nX2zGma29JufX65+T+51NV8UCXhzOgDmW2jbpjdfLSv1+if98aa/KpfACJy0mLgcK0
	O3vduXBqPgkOtaLQZNBdyUOkgwUKrzeUto7AUVxhxcLYBdyNGDz3aaGShv8hKk/p61SC+yQkycLVE
	ufXdn8ke5rdtmbU4LyGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOpt-0000000FfFc-255H;
	Fri, 23 Aug 2024 07:35:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOp7-0000000Ff5H-1g0H;
	Fri, 23 Aug 2024 07:35:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7371661314;
	Fri, 23 Aug 2024 07:35:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C41B5C32786;
	Fri, 23 Aug 2024 07:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724398504;
	bh=xm/Zy8RPb/4qtOGQsXzDj/I3iSozFPibaFGaA1E0fuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z7LgLcZFBStjr9MkjKbCyCmQVX/G2x+oTxqr67hEYzE/1MOhbvSgMfHxYkg9IXITV
	 L992gVPykZ/x3bW6PzeHcGREanTR1gHPQpaBn4oxwiRHB0oHzkA3QDe/6ov5lGU8xD
	 TYyOtMPiJGB1dE0GjTLNbBi8EwUDhLNFF1pE3e5OCgVgqZZM395yqRZxWVlhZFcts7
	 rSwJSfYb47uA/nqnOg9JV01gOOvLNC8jzoxTmFlGl40TxLftMlKGwBtHixJZbC88cp
	 F3tjqXmCiPOpuYWfTIDeGJulvzQuTKFy/41dxPNoapnUqKN0AnyGksk2YcoU3QDQt0
	 VnYW0c9Pb9VXw==
Date: Fri, 23 Aug 2024 09:34:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: soc: rockchip: Add rk3576 syscon
 compatibles
Message-ID: <6o6mzsaldua2wvc6swxs7yz5sy7bkus34xtpojkli6fonhczaw@bxe6f5dwb35u>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
 <20240822195706.920567-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822195706.920567-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_003505_524760_6AA4B78D 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Aug 22, 2024 at 03:53:36PM -0400, Detlev Casanova wrote:
> Add all syscon compatibles for RK3576.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
