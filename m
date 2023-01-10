Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2845FC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLjskHhqdeCcfVkbEMu6NTo+shkUW7ySraHL/2cIgYo=; b=QR4VNYMSrTX+3m
	xFHROYBDXFubC6bEaFW2DS8T8b3rx/arT/EU1tCxCST2EA8tntUPWYFnvz2Mdw/mOSyd5zwPRzkWg
	Dr07Wcpw4xAq5hthis3uc+R1EG8ZlRBAnvY0K5UZ35KLZLtL6m/UgMyocwwg4WRAsjzzS4Lzegqlu
	Gd4e7ugNMJu+HNZVZx2mIfuxtX/mTiB16mt+9VGXgkNJLtcyIdRj58Vmd5gAlAMl8wHJWYU6RLQTr
	GPBl80BrJqF/BGQFuOg4sZu/L8O63YIvfidD5NxMcxsriYS6zy8T0H58NwhwlrRkeDXfMqugQAniC
	V1tssN8FpCmeu+A14M5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEij-0073V5-Q9; Tue, 10 Jan 2023 13:31:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEih-0073UA-23
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:31:16 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFEic-0004av-BD; Tue, 10 Jan 2023 14:31:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com, Shengfei Xu <xsf@rock-chips.com>, Damon Ding <damon.ding@rock-chips.com>, Steven Liu <steven.liu@rock-chips.com>, Jon Lin <jon.lin@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv8 2/7] arm64: dts: rockchip: Add rk3588 pinctrl data
Date: Tue, 10 Jan 2023 14:31:08 +0100
Message-ID: <3079565.88bMQJbFj6@diego>
In-Reply-To: <20230109155801.51642-3-sebastian.reichel@collabora.com>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_053115_124214_D7678A6F 
X-CRM114-Status: GOOD (  11.36  )
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

Hi Sebastian,

Am Montag, 9. Januar 2023, 16:57:56 CET schrieb Sebastian Reichel:
> From: Jianqun Xu <jay.xu@rock-chips.com>
> 
> This adds the pin controller data for rk3588 and rk3588s.
> 
> Signed-off-by: Shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> [port from vendor tree merging all fixes]
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

From: Jianqun Xu <jay.xu@rock-chips.com>
...
Co-Developed-by: Shengfei Xu <xsf@rock-chips.com>
Signed-off-by: Shengfei Xu <xsf@rock-chips.com>
Co-Developed-by: Damon Ding <damon.ding@rock-chips.com>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Co-Developed-by: Steven Liu <steven.liu@rock-chips.com>
Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
Co-Developed-by: Jon Lin <jon.lin@rock-chips.com>
Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Co-Developed-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
[port from vendor tree merging all fixes]
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


is how it looks now, please shout if you think otherwise :-)


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
