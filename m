Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7711DC27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 18:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BfsrF5hgQo0aNAEBydV8mYYd9F52V2kecL/VMCxCo8=; b=f9pP43rDYDrsyr
	0VjqFSJWMZT8Y7PQ2J7n6uDftqGcajUOng1ntxQM3bbkfzredEQnbGdkRU5kAulVm8FxnzllX8B5b
	21VrFWr6UagxBJmc6NW7Tj95gZfIcxWvi/fdA7/S2QbJ8SjVxdTCGqvKQXUKtReHPMMS52hs8y4LD
	6jcmwW3HVI88DGCv1CueCSzmi3mQHqE/ITFBOYIf4Y3HBJNKt2fajdez+vs4NBFRZWgvOjvbz2id0
	j3ekvLgz6fpkkZ+Gp8KCntSTpd3Ac+Aqj/z9gU4DsP1FLsflpp2SAXDvFZm2GqF4qqK1fTNXY22DJ
	tBlq1Zw0lEbBZV34bH0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIBkw-00000003lzs-1RLT;
	Fri, 14 Jun 2024 18:34:34 +0000
Received: from www522.your-server.de ([195.201.215.122])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIBks-00000003lzJ-2S1Q;
	Fri, 14 Jun 2024 18:34:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=In-Reply-To:References:To:From:Cc:
	Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=QENhb9HFgTzguovvznEeWYIHmMFEH/ZbGTpLCqvvbY0=; b=D1SQpY5Q3iU5y6hS8x3yCA2fCw
	Xefzm8C0+45Bsx/hdgDkRNbsSx/QEswS5UQ34JGXS6GhfYViD98oyeBpeza3esE6hVmq+sMfSpn8T
	MJJI+G8UJ9YF3ttwRvN2GliXh7gTihyr1Teipx7qAcKSLC9+xmPwqQ3M4P902G7Q4kAbEikSprWDp
	e8SrOyC+SUT00xqTD9EEtEC3l5gsMjEhnROTiPfNaL+m4kFPdK9Qw69K0E4pVp5Kbca6f05ZV1gNU
	Yp3CcMz1SO/a4C5cqCgerfhV3SGCbSYwDnIxP5DmaKdXcDjCMjkPzH9zKrlNe0dUYFb8725cOivwN
	3AkQUWVQ==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1sIBkj-000LiY-5F; Fri, 14 Jun 2024 20:34:21 +0200
Received: from [185.213.155.213] (helo=localhost)
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1sIBkh-000GCY-3A;
	Fri, 14 Jun 2024 20:34:20 +0200
Mime-Version: 1.0
Date: Fri, 14 Jun 2024 18:34:19 +0000
Message-Id: <D1ZYFRA8S0KC.3GG78DB9BA5AG@folker-schwesinger.de>
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe
 line
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Chris Ruehl" <chris.ruehl@gtsys.com.hk>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Christopher Obbard" <chris.obbard@collabora.com>, "Doug Anderson"
 <dianders@chromium.org>, "Brian Norris" <briannorris@chromium.org>, "Jensen
 Huang" <jensenhuang@friendlyarm.com>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
From: "Folker Schwesinger" <dev@folker-schwesinger.de>
To: "Alban Browaeys" <alban.browaeys@gmail.com>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Conor Dooley"
 <conor@kernel.org>
X-Mailer: aerc 0.17.0-152-g73bcb4661460
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de> <313d5a24b6cffa1a9160e624bb6855aa7f66589e.camel@gmail.com> <20240411-mushily-pucker-732583c1d340@spud> <2192003.Icojqenx9y@diego> <2427291970ac0962bf56b2455e5cb26e49d42c51.camel@gmail.com>
In-Reply-To: <2427291970ac0962bf56b2455e5cb26e49d42c51.camel@gmail.com>
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27306/Fri Jun 14 10:28:44 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_113431_036258_88500F97 
X-CRM114-Status: GOOD (  22.12  )
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

Hi Alban,

thanks for aggregating all the background information about the issue.

On Tue Jun 11, 2024 at 9:38 PM CEST, Alban Browaeys wrote:
>
> Could you test the enable-strobe property on all the dts that  disabled
> hs400es due to this new default (I lack the hardware to test the
> patches).
> At least arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> and ping the board tester for other boards to test if they require
> "rockchip,enable-strobe-pulldown" for EMMC HS400 write support (read is
> fine even with the new default).
>

I tested some of the boards that include rk3399-rock-pi-4.dtsi (see
below).

> On Tue, 2024-02-27 at 10:11 +0000, Folker Schwesinger wrote:
> > with the following applied, the EMMC related errors are gone. dmesg
> > only
> > shows "Purging ... bytes" during my tests:
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> > index f2279aa6ca9e..ae0fb87e1a8b 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> > @@ -647,8 +647,10 @@ &saradc {
> >  &sdhci {
> >         max-frequency = <150000000>;
> >         bus-width = <8>;
> > -       mmc-hs200-1_8v;
> > +       mmc-hs400-1_8v;
> > +       mmc-hs400-enhanced-strobe;
> >         non-removable;
> > +       rockchip,enable-strobe-pulldown;
> >         status = "okay";
> >  };
> > 
> > For testing I ran dd three times in a row:
> > 
> > dd if=/dev/zero of=./zero.bin bs=1M count=5000
> > 
> > I tested this on both a Rock 4SE board and a Rock Pi 4B+ board with
> > the
> > same results.
>
> Folker, are you confident "Rock 4SE board and Rock Pi 4B+" were fixed
> with above patch?
> Ie the "rockchip,enable-strobe-pulldown;" should be under an
> "rockchip,rk3399-emmc-phy" compaible node, that is &emmc_phy in
> arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi, not sdhci.
>

The above diff was just a quick shot at testing the
"rockchip,enable-strobe-pulldown" property when I first learned about
it. I later realized that the property belongs under the &emmc_phy node
as you suggested. That's what I did in the other patchset I sent a bit
later, which was accepted and applied:

https://lists.infradead.org/pipermail/linux-rockchip/2024-March/045723.html
f720dd9b8b6d8b2160beda789429d5489ce8a099
c1b1f340dd7db11f273e426e110697551c9f501f

So yes, the Rock 4SE, Rock Pi 4B and Rock Pi 4B+ boards all were fixed
with the patch. I regularly have the Rock 4SE and Rock 4B running from
EMMC, always with the patch applied since I sent it.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
