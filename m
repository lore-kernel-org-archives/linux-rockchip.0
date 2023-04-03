Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4370EC761AF
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 21:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILd1GaIPUp2BgtlSvta+jxCjENwdScUmvbJYC4wckIo=; b=Ei2xsVpOgmnRyj
	s+xFy0+OctbqCtEnRmt0jTp3ymQinSLso+8yvi6w+Ts6RhSgfQbVB20TaDJB9M1JBb7zUVy9ZRHfY
	JMkluIeNPYgXwYj2c7JHsd+YKyQsptunNpIq+J65XSI4a4LzAZLo2yqpKoyPFvlB+ye+5lfFoLIGd
	CLGx8IJmlTIPjgWudG8wYrnjnBwoo4bjLfzswBPWRE8VWfmGXBqo2FiOoTWANSKIS0FSgu3zkM9C4
	WxG3LsXyydoMnbNZLUI4xcmgUzC5jDiumpL4fmTIqdsUJLuQ95ZGUNHc+x7b//QW7R2bC3u97C4wF
	v68cvCkQ1BhZtdc0OO1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjS9X-00Gzuk-0s;
	Mon, 03 Apr 2023 21:55:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjS9T-00Gzrc-1S;
	Mon, 03 Apr 2023 21:55:48 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pjS8z-00025Z-W2; Mon, 03 Apr 2023 23:55:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Chris Morgan <macroalpha82@gmail.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
Date: Mon, 03 Apr 2023 23:55:17 +0200
Message-ID: <4981873.LvFx2qVVIh@diego>
In-Reply-To: <642b134c.4a0a0220.1d01a.5990@mx.google.com>
References:  <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-3-cristian.ciocaltea@collabora.com>
 <642b134c.4a0a0220.1d01a.5990@mx.google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_145547_487169_BB0DB606 
X-CRM114-Status: GOOD (  17.84  )
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

Am Montag, 3. April 2023, 19:56:26 CEST schrieb Chris Morgan:
> On Mon, Apr 03, 2023 at 01:50:52PM +0300, Cristian Ciocaltea wrote:
> > Add the necessary DT changes for the Rock 5B board to enable support for
> > the PWM controlled heat sink fan.
> 
> Honest question, but should we be adding this to the board file if not
> every device has a PWM fan (they all have the socket for the fan, but
> not the fan)? For example I have a passively cooled case that doesn't
> include a fan.

We also set up the sdmmc host without knowing if the user will plug in
an sd-card ;-) .

So especially in the case where there is a dedicated socket for it,
as you write, we should definitly add it for the board.

By the way, am I correct in thinking that patch 1 and 2 are actually
independent of each other? So I'd just pick patch2 for the Rockchip tree
(as we do have a text-binding) and you can handle the yaml conversion
in a followup or whatever?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
