Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F8DC6FA82
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 20:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSVm6vBtOzF0AAbOtOUm6K6SFW5LzJrHZIcwo1Dkerw=; b=aNbbWvZsXA4KDN
	7Ozboi+LqvM9sc0G2d/goLUINlT4wge7XNWFoxiGx9cuOkvLDyU6u5fGKmBsnBaLolPvcVZT9fv5x
	qfDB72Uojg/1KQK9mpoIWlkJApVgQJy7gBc+6V9tEuzsJhFKwyt8HSdM6C4olZ4XWrZ7WkmzEBRAU
	nlxMbmLC94oyLo1rJQslcPc1poNMSls8xrAEkWlnMpXHbxW056uU8NvVmiYnK0fu7A7v0KL7Wlz8u
	tyRzhUtTJMhGu9ECknc52LzjKrZRJlMwx1JYleVZaE/RlzXCopQkX74hD5tRiUqPKoD7VL+LFv52a
	uGFpJqnAlpziaIK9w8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocuqC-006klS-9F; Mon, 26 Sep 2022 20:36:36 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocuq0-006kfa-NV; Mon, 26 Sep 2022 20:36:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=JDRp4qDr97IzM04ueqqbM+oSnyDy0BzALtcY4EKIDWo=; b=CQ33+ur/wXAuMpk31a+d91z6f2
	O+rH4wfoBJhnCU1w4k+ofQRQkELKhmDZQZmV9pU93nbHvcVnNmPErmEp5d56WNpFgucZ89a+RzWdV
	zdFxRtR4OMryfGnQRMPPJDF7VVHWEDylxP2hel4zyrh7rgAdu5QCWbPX+LQKAqL9uGQxaWTSRDBJL
	4ioVAutyajsmTNQN+S4ls7x++DCGOAOdYH0Rd/9pT9x6modnLw5M/ySApOc+kTXh/q+Erwjrd7x78
	TYX5+lAWBY6fm9EzN4xYyEbqALZk0UpZ00lg7WYzc9upd5yIxIb0L+f9q/EWyvz83ZG/L3X3j4mYE
	wCG7IJkQ==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocupq-00BDUk-Bw; Mon, 26 Sep 2022 22:36:14 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocupp-0001J1-2k;
	Mon, 26 Sep 2022 22:36:13 +0200
Date: Mon, 26 Sep 2022 22:36:13 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Peter Geis <pgwipeout@gmail.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing rockchip,pipe-grf to
 rk3568 PCIe v3 PHY
Message-ID: <YzINPR0htauYppWQ@aurel32.net>
Mail-Followup-To: Peter Geis <pgwipeout@gmail.com>,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20220926183533.1893371-1-aurelien@aurel32.net>
 <CAMdYzYoR2caD2ecN5vGTiHejoE5AhbyKxSgSeU1+SzU7nNVTwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYoR2caD2ecN5vGTiHejoE5AhbyKxSgSeU1+SzU7nNVTwg@mail.gmail.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_133624_791697_30B21D7B 
X-CRM114-Status: GOOD (  13.91  )
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

On 2022-09-26 14:58, Peter Geis wrote:
> On Mon, Sep 26, 2022 at 2:35 PM Aurelien Jarno <aurelien@aurel32.net> wrote:
> >
> > This commit fixes the error message
> >
> >   rockchip-snps-pcie3-phy fe8c0000.phy: failed to find rockchip,pipe_grf regmap
> 
> The pipe grf only is used on the rk3588 device for this phy.
 
Ok, looking at the code in details, I confirm that. Does it mean the
change should be done at the phy driver level, to only look for
rockchip,pipe-grf on the rk3588 device?

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
