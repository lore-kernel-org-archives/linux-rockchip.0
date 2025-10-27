Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A13AFCCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 14:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lkaalcAyLJzIJ6mB2VAj6uyGeRVWGNWY3OgD0+WEj4=; b=hG0zZf4G6M2XBS
	WCVUwwSgzqgXHXLY24o/YVZvoYK2q19ikTgjaBz2TPEPvSuFGQRyyim/r1p8sBD6vsYZePNv8PfQr
	43jXmWwSZw/c1+rxcX9cCq0Zj/LJKB6ZhcO4y55knLYfx5V0GXTx3o6M93D9QXDfDWgoTXiiP5Mmh
	HE5KezuhfKJO9wkuUA+e+epPE3WzGe/KtcJxFJU2LxICQgkHoviZAULeWIX6h+zqnWnnGelEkdAkH
	zzCONgjwaBUXLf1SgRx7YutVsCG5UypxZxbufpUv+OAsytsZx4z458iQiovMYHBRXkauiQjhN3UQu
	BJ53hm5TC6A01TbX183w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDO1z-0000000E7rC-3YCP;
	Mon, 27 Oct 2025 14:17:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDO1y-0000000E7qh-2Kpo;
	Mon, 27 Oct 2025 14:17:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9954260294;
	Mon, 27 Oct 2025 14:17:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39330C4CEF1;
	Mon, 27 Oct 2025 14:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761574625;
	bh=CbZdh3yYU7QF3c8grlrTtkhqHqPJ8zTOF3/pbM6JfaY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=cAxgfL+jZZUZ2xqT/6AGPaa3w7wMOYSFEbS5vWy3JJS7osjt5VD8eA8M3VoAlb/lN
	 iZQqDGorVaQWiKDGFJRczq53g88HdVyipFMaLO/UWU9CziK6BXCtzxql8Li4ArX2HQ
	 ZCNftyt8Z3Z39BvGdi8zbTtRWjr4CRqPePgXNXEVjWTO+XIXGZQsw4YntmpurXdMnR
	 GLnbEyK78OfwBerTxsN7xahw2CXMwBOZ3c5BSOoCM3tQXzuCslnoDFdukUlfovlLJJ
	 T0uaY10p3IKslUedfd4yl7tCuUHaO6QTMA7j996VbecuyD/VAtpsQWmc4RbXQW1INP
	 bL6/0iKgzCLuw==
Date: Mon, 27 Oct 2025 14:16:58 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: Add rockchip,rk3506-saradc
 variant
Message-ID: <20251027141658.45be4a6e@jic23-huawei>
In-Reply-To: <20251022-grandma-maybe-2a1cef529cf8@spud>
References: <20251021223107.193453-1-heiko@sntech.de>
	<20251022-grandma-maybe-2a1cef529cf8@spud>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Wed, 22 Oct 2025 18:57:40 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Wed, Oct 22, 2025 at 12:31:07AM +0200, Heiko Stuebner wrote:
> > The SARADC of the RK3506 is similar to the one found in the RK3528
> > in terms of number of channels and the other implementation details.
> > 
> > So add a variant compatible for it, that reflects this fact.
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>  
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> pw-bot: not-applicable

Applied.

thanks!

J

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
