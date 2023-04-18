Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 842C4C77B71
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 10:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/iqwG8ETo6CeFSx5Rym2z/AcxRY4jVs8hFGIwhX+2g=; b=L8X71+wlr2hZ9z
	gNBrugZmo351UIt7j23uh2TDK8dngpGgAYASggl1nTfKqsh6Jfn7xT5xBiorUjqMCYug7XF0QTtM5
	C6blwufy5YwqA9CBaMXl3/BazBwByaNjwltoQmRv8jhkpF6ihBUa90bD+Qf5CY3suFrbNDcSQFI6F
	E9n4MkCJgSKlkUZMEmNF6X7muBIBGzv44a2sZtmI2/KKLstRKOuoaRBxXM5NIt0jppPo+KZ2vkleB
	NY762zCDAcP9qMEqNmAc5NCofdwUbwRL0G4HKCKyv39UZsLRRlpETJPuTDxovIq0EzKFJD5PUgnnR
	D8Ak2YxYYyWDBoYdcT3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poiY9-001eel-2h;
	Tue, 18 Apr 2023 10:27:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poiY1-001eZb-2B;
	Tue, 18 Apr 2023 10:26:54 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poiXh-0002Nw-GJ; Tue, 18 Apr 2023 12:26:33 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject:  Re: [PATCH 1/3] dt-bindings: timer: rockchip: Drop superfluous rk3288
 compatible
Date: Tue, 18 Apr 2023 12:26:32 +0200
Message-ID: <2436573.fIoEIV5pvu@diego>
In-Reply-To: <20230418095344.274025-2-cristian.ciocaltea@collabora.com>
References:  <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
 <20230418095344.274025-2-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_032653_711656_E15C421F 
X-CRM114-Status: GOOD (  12.13  )
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

Am Dienstag, 18. April 2023, 11:53:42 CEST schrieb Cristian Ciocaltea:
> The compatible string for Rockchip RK3288 is provided in both the 'enum'
> and the subsequent 'const' item. Drop the unnecessary entry from the
> enum.

And the actual rk3288-timer case is handled in the separate
	- const: rockchip,rk3288-timer
at the top of the list too.

> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
