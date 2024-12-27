Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACB59E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+vlnV2ndXNutvYEPYMZpuI4TG+2JC5VBoW0PznPBxo=; b=W9icdvc6hqtfxN
	mrfK3/+sntg6wejndly8EJNLD0RZ0gYm8f3hl7DspI7wiDbLn4E1NwC7YqTGpEQQNzeB8zKH/APor
	hsk8gE76a/qmPmAV7jLR9TarH0yvatpiB3g20XTGHpcSbdigMRoIkbC66RaLDbW6GP6pjvbbNZH56
	QbbkQFDPwcOBoCSwCfMu6YM13O5UKLtVyhWVBrICmnpYJA1XfqECbX0ucEmiF4ovyytH7632Cbag9
	+zWHG6c97ourbvLrln8xC3f1gYbHFkQHzyD52PcPPr12nPBilBuj1aNzh/ncQXltgaIgXvVkInsvi
	dJDam6LZWIXMKOQZu7wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4yJ-0000000HHXQ-1EJT;
	Fri, 27 Dec 2024 07:41:23 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4yG-0000000HHWd-3g6N
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 07:41:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 493F4A411F9;
	Fri, 27 Dec 2024 07:39:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3BC1C4CED0;
	Fri, 27 Dec 2024 07:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285279;
	bh=Nv1wEvIiSz34otyqL1cWSHe4aEEbKu9lOV86Lojbz1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JAG3nSqUoLjqNqdnrKfDSSydnTG8EftoxKXyJKajCg4/3oyJAdps10ffKnK/izgWw
	 t6zr3PhNesqvalfAs6PjVupgiAkbuKi5d+nLbv7ooTSncslk8kT7QyjiImesdU4zv+
	 ST5Nz+RBgIMuz/KM4ZDZc/hq6dilHh5KjD+d4xP29qtlV45Fw94ezKeNQ8SmeD9Cuh
	 qKzidKcZZaBguXzmvMTf21Uccy9RgXXkcCw+PKKg47MStHy27F29vYl8pUMbh0R99B
	 dNbaZWbsAzdokpKs/xkyEyeNZ+6SDIDFAdJrdhp/Xr2oodw+IHhuVBIBUr50BDZYM4
	 zzn37hUpxxyeA==
Date: Fri, 27 Dec 2024 08:41:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	Jamie Iles <jamie@jamieiles.com>, Guenter Roeck <linux@roeck-us.net>, 
	linux-watchdog@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 07/17] dt-bindings: watchdog: Add rk3562 compatible
Message-ID: <4gotiybq2cjol43c4r25qyobl4bv7ccpxlcn5s4u3brb6g5ndf@663iergbbf5j>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-8-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-8-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_234121_002588_0D4385FD 
X-CRM114-Status: UNSURE (   6.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Dec 24, 2024 at 05:49:10PM +0800, Kever Yang wrote:
> Add rockchip,rk3562-wdt for rk3562.

This we see from the diff. Say something not obvious. Where is the
driver change? Why devices are or are not compatible?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
