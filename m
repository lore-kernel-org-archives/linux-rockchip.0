Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75B5DC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 13:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRULQelThIsupq4buztc60XhmBzADc7pbamKxBDAtU0=; b=Xj65bndKJ4J/8j
	nPmNiWMA4hvZzV6vSAAoghizn1ZQ2d+6XPpWLNL43sULrm3jxHzK5IJyUAMsWmoArlUKWEQ6ITmsf
	wR3BVud/udMScKf1h4e7cD+o+tm3zRXY3OIv8nXgekclWN1haHwmiF+klimBOqoELKSgGVgRMj4q0
	ZxTg7FKqnpz35qEWVxXjbwC77kt4pLj/O9xM5GI00gyqT6X/NXjzSEbSbDPuioZ0MjS1VuMKfVucr
	dSPWiZiOeyJuVzOulMquOh8BXDvbg4bCrI0sT6CwaqM8nU/2cd4tiM6Ur3KIdpI6dFgTQeClWpsNr
	PvvI+ac6dOC+W95560Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxq6N-00HLpQ-DE; Wed, 23 Nov 2022 13:47:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxq6C-00HLin-RD; Wed, 23 Nov 2022 13:47:38 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxq5x-0008Ig-KZ; Wed, 23 Nov 2022 14:47:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>, Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chukun Pan <amadeus@jmu.edu.cn>, Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [linux-next-v2 2/5] arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC
Date: Wed, 23 Nov 2022 14:47:20 +0100
Message-ID: <14662283.uLZWGnKmhe@phil>
In-Reply-To: <CANAwSgTbTziSY-5=V3_WJG9-SaTY4R0JM4hkohLFE-q1bERcdg@mail.gmail.com>
References: <20221116200150.4657-1-linux.amoon@gmail.com> <3e4e601b-e7f8-e9df-0ec5-4f4b629d9c0c@wolfvision.net> <CANAwSgTbTziSY-5=V3_WJG9-SaTY4R0JM4hkohLFE-q1bERcdg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_054736_904888_186AFEC7 
X-CRM114-Status: GOOD (  16.23  )
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

Hi,

Am Mittwoch, 23. November 2022, 14:00:50 CET schrieb Anand Moon:
> Hi Michael, Heiko
> 
> On Tue, 22 Nov 2022 at 16:48, Michael Riesch
> <michael.riesch@wolfvision.net> wrote:
> >
> > Hi Anand,
> >
> > On 11/16/22 21:01, Anand Moon wrote:
> > > Add support of external clock gmac1_clkin which is used as input clock
> > > to ethernet node.
> >
> > Indeed this operating mode is defined in the schematics, thanks for the fix.
> >
> > >
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> >
> > Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> >
> 
> Actually, I wanted to drop these changes since looking into clk_summary
> gmac1 CLK gets wrongly configured with PLL and the reference count is
> not correct.
> 
> Plz do the patches, I will send the correct changes next version.

as you might've seen, I've applied this patch yesterday.

When doing patches also please always take into account, that devicetree
describes the hardware situation, not what the Linux-kernel does.

But assigned-clock* fixups in a next version are ok to do.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
