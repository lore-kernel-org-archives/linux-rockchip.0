Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAFCCC7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 21:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExccT7Nd7YLiSEDphSSax+JmbMCDPR5NFW+X4YdGfl8=; b=IJ2sYTK91wRd56
	tINF4mG/see/bSJNrk3nUw6HZ5y7Qmx3H271pfDYtdpMs5asSEzUOCRbciKIkxjLan2UF5ywA90wq
	GAjDOyy+Yp9fYhVw1YGkmd4fTz/VFiYN1x/57jENtc9hY24zVpajkVqZF+9SEloMlUfQGUxX2y3YZ
	9qwv7mOnusj6CqBeobuLzaPK8By7CqWT9YUMnBV76kVr2VKIyuvzYFoiyX0jCPnvJI4x7nVw8MmcU
	8JH2liJgn/4iMDVDsJM7C3WkIU/gPkbFhDNn7P0eSKyn1JxC4BCPo+BK29xNlV2yep93gDIxY9ALH
	njCzcAsj6znv8FQFfZdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSMjq-0000000EIF8-48Sl;
	Thu, 19 Jun 2025 21:24:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSMdg-0000000EHYc-1Sza;
	Thu, 19 Jun 2025 21:17:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IAC4eGdfZQMdssd9pLtd60tfv9XvxFunRjooWuyybl8=; b=13QisMHs8LZtjbdJeVBFbYQoLn
	tu4vzBrPojME55bTW72u2laJfwgh1ILq+naRtsDwuA886+5NslQobdrin5nAcVC6ghnJSacVHMfqo
	067VtNCFIqEAHvafEn1qhqOrUMM5+UQBeIOOb0CTfakIeahHwVh/A63NQYeQatsqC91YTHX6KobhY
	9x2LDr7kGzM22JD3HnWpnIydZiwntesZahXPBmaU7Z8Idefcw/0XKDxsGp7HG9MTaxJFc7P1zkgT9
	40RLtjOGfV7/5kcqUd7K7BMU4soAqlLapF7F8saal031+CiteFL/+RSerh7QQGn52zGAZaIKh85/y
	s6yohIkg==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSMde-0007fA-95; Thu, 19 Jun 2025 23:17:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Olivier Benjamin <olivier.benjamin@bootlin.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: Fix the PinePhone Pro DTS' panel description
Date: Thu, 19 Jun 2025 23:17:26 +0200
Message-ID: <175036770853.1520003.14215884223488798716.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250619-dtb_fixes-v3-1-9cb02ddd8ce4@bootlin.com>
References: <20250619-dtb_fixes-v3-1-9cb02ddd8ce4@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_141740_385574_A9C65F04 
X-CRM114-Status: GOOD (  12.31  )
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


On Thu, 19 Jun 2025 15:41:24 +0200, Olivier Benjamin wrote:
> Fix a few issues in the panel section of the PinePhone Pro DTS:
>   - add the second part of the Himax HX8394 LCD panel controller
>     compatible
>   - as proposed by Diederik de Haas, reuse the mipi_out and ports
>     definitions from rk3399-base.dtsi instead of redefining them
>   - add a pinctrl for the LCD_RST signal for LCD1, derived from
>     LCD1_RST, which is on GPIO4_D1, as documented on pages 11
>     and 16 of the PinePhone Pro schematic
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix the PinePhone Pro DTS' panel description
      commit: 987087864c88ec8617c311c39390ce578ae15195

Transplanted Diederik's Reviewed-tag and dropped the "DTS'" part from
the subject.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
