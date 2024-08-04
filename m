Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D6F7C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 06:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2wPrtB0ao1IuVsiYMhmLPB44li4tjUZg9QMLnQHiyY=; b=l4yL2brmZ3ieZ9
	MJU4Cfiea9gbetCowguwBVo/tu2kHYT1xE1Zp9N5eR2RRtxFHUN+dhSVc0H9Ka3jjX1jGy+thfN/7
	wU2SzHuzV3BNvMq+f+G6pS1YxcPXXJ6InY0pzeav3jlT9eFwJJdhPgGy8uzQY08rNMYwW3GzcD0Af
	KRXaQ1Xzpxp8MOXxnUuRZkxvXJZ7c1UxmUw3Xa7UJkuIP2vDPmPA6fh+gcsZvC6e+j+AK7tgSLC0F
	tAfojDr3Ofcy3U3IoS85yUaEqmA4sFen2lgdHf/YtlzS4yYItUkDty2x0t03x7+w4xqXyDfOWdGQ1
	qnHS2fb/FDMQE9yvxewQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saUeR-0000000CkOG-1tpW;
	Sun, 04 Aug 2024 06:23:31 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saUdu-0000000CkJd-3UNp;
	Sun, 04 Aug 2024 06:23:00 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id AC7A541943;
	Sun,  4 Aug 2024 08:22:55 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bfxzql5IWaIV; Sun,  4 Aug 2024 08:22:54 +0200 (CEST)
Date: Sun, 4 Aug 2024 14:22:28 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1722752574; bh=e2KwdmpAEeu/CxUB955zMwv6k2v7QDlGFFwf4VhPBZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BAPOxYD2ErIWPwE9V9eroZvbUZjtUETM32iyvVLYXnNJrLwHODsPUGINv5AT46fzy
	 5hgksWLOaCdHsfYGYpJczmnPTWzptsoQ0KORgHeQ8GUpKMeAaVhD5ootDDjfFtXA++
	 87E6wFBgI1dehnR8fRZokTKmbc3hPnWmu5z3TK3d0ak2tvlkvPWlJeDgl8/Cd4jGw6
	 HtCqVwY/zMfkdgix4TGzg6GgNqM6Pt9IXPb28avNrPQPLT2gLUHz/EiLi9gH/nNt7t
	 cRQ4bGzultoUXW8jfov0BIFWr2l1hxVeJWqB4wO4h+QYbywG80aKtwuQXuRXF17cyf
	 NJiemnfL4FG/w==
From: Yao Zi <ziyao@disroot.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH 0/4] Add initial support for Rockchip RK3528 SoC
Message-ID: <Zq8eJB7zqOvYQvmw@ziyaolaptop.my.domain>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <0c77f99f4af96807a2a8c3028e3c1d4d@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c77f99f4af96807a2a8c3028e3c1d4d@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_232259_328209_7C3A9F96 
X-CRM114-Status: GOOD (  20.62  )
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

On Sun, Aug 04, 2024 at 07:40:43AM +0200, Dragan Simic wrote:
> Hello all,
> 
> On 2024-08-03 14:55, Yao Zi wrote:
> > Rockchip RK3528 is a quad-core ARM Cortex-A53 SoC designed for
> > multimedia application. This series add a basic device tree with CPU,
> > interrupts and UART nodes for it and is able to boot into a kernel with
> > only UART console.
> > 
> > Has been tested on Radxa E20C board[1] with vendor U-boot, successfully
> > booted into initramfs with this log[2].
> 
> I wonder will at least the RK3528 datasheet become available publicly?

I found none for now, and I am not someone from Rockchip, thus don't
know whether they have a plan to make it public, either. But there has
been some devices shipping it already and getting them mainlined will
be a neat thing.

Just FYI, the vendor kernel is available here[1] on the "develop-5.10"
branch.

Best regards,
Yao Zi

[1]: https://github.com/rockchip-linux/kernel

> 
> > [1]: https://docs.radxa.com/en/e/e20c
> > [2]: https://gist.github.com/ziyao233/b74523a1e3e8bf36286a572e008ca319
> > 
> > Yao Zi (4):
> >   dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RK3528
> >   dt-bindings: arm: rockchip: Add Radxa E20C board
> >   arm64: dts: rockchip: Add base DT for rk3528 SoC
> >   arm64: dts: rockchip: Add Radxa e20c board
> > 
> >  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> >  .../bindings/serial/snps-dw-apb-uart.yaml     |   1 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  22 +++
> >  arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 182 ++++++++++++++++++
> >  5 files changed, 211 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > 
> > 
> > base-commit: 94ede2a3e9135764736221c080ac7c0ad993dc2d

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
