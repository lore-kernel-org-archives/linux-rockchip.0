Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 133F8C5AD49
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTlGx1lmj0wygulk0G68qCh9FKyVunqRKoYRUit+iZE=; b=oyMmA0yeha5t3v
	TFVvda3nMPwRcFfcLHTwOEiPvPZGTV1I+NvZI6LXOCQIruFZYyRZ7Fe5y4QHR2D4HFIHZQgloc3jx
	YdZPxFC7stTAox+mf7OY7VHuNPq9ywNzTkWPnAJMloFmuh7BPGzn6n7HBANQrVE6wrHUgC2jisJy5
	zSxOKMRiiRUv3EkN8p7DeNT+LAUSTzK/E82wtYTiinHml7HhB91MqfXjtT4+xcVTUH6hPYlH63MJP
	o9PnO/uuMWj/1NxCvWktZh9GHQW6IsReJpMF0wNmrxGmJ7iexhG/QWKRWINlc/eCqQ7jTFyPxehq7
	XdaH2Ec/d8yHdSDayK7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKZa7-0000000FPVY-3sLA;
	Thu, 29 May 2025 09:29:47 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKZQg-0000000FOZE-1xLE
	for linux-rockchip@lists.infradead.org;
	Thu, 29 May 2025 09:20:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A2EDAA4F56D;
	Thu, 29 May 2025 09:20:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA1C4C4CEE7;
	Thu, 29 May 2025 09:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748510401;
	bh=f7xPyVGmHtPsst3y5iEuJ2peXhmtWO+PJOGzgAzs8mA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vPpfmbtowJn4dWn36lpjzjxfJWaGkz/n7J77uua4Vset8SmpbovOyHpSB6PDrtR0q
	 4UY1hlcD8IYmAh2tKfDbj7dp23k/K3eIEyXzkD5ig0SAok2LwvNpJ7dEncT8kG0VIX
	 EzW++sfWqH+ZwOCiD9jL2yWQRsTFy9f9tV3/MhXBlDO2DA9FVhELWknOIBVk8ICK6u
	 Pc3MPTqiWnOjRwnytnapb9KZjjsr8KV8IKrBQ0cfQlNHym6a4P0hK4P1JOr4h+4Jxa
	 5vUl6maXPzLkjhVkuLdklKUpACwE/ybbNEYOdN7dbHYLM5U2vw7yJ0IIk39cZWX95W
	 lf7XDKGrOMW2A==
Date: Thu, 29 May 2025 11:19:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joseph Kogut <joseph.kogut@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Steve deRosier <derosier@cal-sierra.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
Message-ID: <20250529-impressive-real-monkey-a7818b@kuoka>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com>
 <20250528221823.2974653-2-joseph.kogut@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250528221823.2974653-2-joseph.kogut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_022002_592154_D53644E0 
X-CRM114-Status: GOOD (  11.79  )
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

On Wed, May 28, 2025 at 03:18:21PM GMT, Joseph Kogut wrote:
> Add device tree binding for the Radxa CM5 IO board.
> 
> This board is based on the rk3588s.

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


<form letter>
This is an automated instruction, just in case, because many review
tags are being ignored. If you know the process, just skip it entirely
(please do not feel offended by me posting it here - no bad intentions
intended, no patronizing, I just want to avoid wasted efforts). If you
do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here ().
However, there's no need to repost patches *only* to add the tags. The
upstream maintainer will do that for tags received on the version they
apply.

https://elixir.bootlin.com/linux/v6.15/source/Documentation/process/submitting-patches.rst#L591
</form letter>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
