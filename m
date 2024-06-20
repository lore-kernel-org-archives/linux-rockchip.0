Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B5D7C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 18:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jr847QfAO9IjAu2WBpoc6hMsRlUVWw/fljRsIZbTicE=; b=tYLdgrxk8NlMD9
	SyEpwjtelhdtQ1xhNmeib+P0U0ZZ3a8GXnu/b87ccIqopta1AcGb4s1eHB9h5qx9ZqwtUxoQE94S5
	S94OnJSkM/aQVZVNOd8B4//d3Fq02jRVx768FDL95kd728bpvhGsnr61ZYuMxJ4dzN+IPcYi4KA5t
	l5oU3mSR1WqiO+PMDz7rkhdifr2HlRUatY1yHCriitGT04EY4mwHWhGhaKBz9xyIPnwVvSNxKHhdw
	i3LnZWoirqBJCzoY/oIiSxhJjvoPhRynuaFqfVbb+HnWUEe6vqTcFrLtWep8vlkvsHJcebsOfKGPg
	dkoVRMwcgPgtCj+A/u/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKMkC-00000006LAh-0Imz;
	Thu, 20 Jun 2024 18:42:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKMk9-00000006LAD-0fSk;
	Thu, 20 Jun 2024 18:42:46 +0000
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKMk6-0000XY-Qs; Thu, 20 Jun 2024 20:42:42 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Kropatsch <seb-dev@mail.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Improve LEDs on NanoPi R6C/R6S
Date: Thu, 20 Jun 2024 20:42:42 +0200
Message-ID: <2564239.kdYZ1jHi8b@diego>
In-Reply-To: <20240612205056.397204-4-seb-dev@mail.de>
References: <20240612205056.397204-1-seb-dev@mail.de>
 <20240612205056.397204-4-seb-dev@mail.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_114245_232499_33B108FA 
X-CRM114-Status: GOOD (  20.37  )
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

Am Mittwoch, 12. Juni 2024, 22:48:12 CEST schrieb Sebastian Kropatsch:
> Move led-3 node into NanoPi R6C/R6S's source files since they have
> different functionalities on each board: On the R6S this LED is used
> to signal LAN2 link up, while on the R6C this LED does not have a
> pre-defined purpose.
> 
> In addition to that:
>     - Remove deprecated label property
>     - Add color and function properties
>     - Add linux,default-trigger to trigger on Ethernet link

Again, please don't group unrelated changes together into one patch.
It makes things hard to read and hard to follow the changes.

> 
> Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
> ---
> 
> DT validation doesn't like the 'linux,default-trigger = "stmmac-0:01:link"'
> properties, since "*:link" is not a valid value according to
> [Documentation/devicetree/bindings/leds/common.yaml]. These LEDs do
> have the specific purpose to show if an Ethernet link is up though.
> There is one LED for each Ethernet port and they are labeled WAN and
> LAN.
> Using the 'linux,default-trigger' like this does work perfectly fine
> with this solution. I could not find another way to achieve this. Please
> let me know if there is a better way.
> Maybe it would also be valid to add an entry to the DT bindings file to
> allow "*:link" as a value for 'linux,default-trigger'?

correct. If needed, things should be added to binding.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
