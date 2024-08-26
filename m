Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 263B6C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 18:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpSi49trbAWPqsjYZTDDC0mE6bOF8INBkMmBiOGNCvk=; b=IrvYSO4drMEci1
	0oLaFdw5I+X0Vb11evpjgBp/yoPzYSaQ7mbQ2QRCcMqEZURV3WPaaCY+8tXh8zTBBcp0W4TF2OuGP
	lHpUXU0bvLwJpbykeSxtucMenDImdJnJk2dsIgC/ARaWnUYdpPfdfknpjB5H0nHmpgYUGUdk+CKoa
	b9LtCP92hYB3RqntEB/fy7lQvISjqEHkdYQfa81SFPhslzmedPtUiL3Etqiu98jYK16HsGe7DIDQV
	cLRHL51IIEN0b0lNRVmuNVdhNlYefPI1JypKZiQQlM30ERm3JzNqIO6zlgSCbD5lufQQFu+YE3GAi
	oJ1oNdd3iTcqNZ/IfykQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sieSj-00000008MMY-3BdL;
	Mon, 26 Aug 2024 18:29:09 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sieSg-00000008MLk-257p;
	Mon, 26 Aug 2024 18:29:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724696896; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=C6THzlhv9WAt7UFlgrShq2UZuL6caw7uhlDNqAdIte4dzK7HOZshr2PLGC3Ec99ZcYj+01+awrsAU7zjr132iE9jSN00Pxoo7P7YMmYVpXwdfww/jjCduWCuSLrTOc4oYbjaczppGRxK/GBgHq1ZZpliTRy4ogmL3A6wv9B02Ws=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724696896; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=AtqnBqpa9UzhLTndpZmzFs2sALtGroOJRRcTDXcxiaM=; 
	b=W7YBsWqkfx6gpAWMPvZdrbntbjcqweW/WyJ60FVRMUWwZQD2w9NLoFdcINgjgX6G4aTGFx+S+yk2sUU7juorYzLQwF+UWwdyNAMSGcA2iEb9LzVD9g5HO6fH8AAf05ru4L+mYdeSBmQL8OgGtNDJNdHkIL+/U1UihTE46QVJPlA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724696896;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=AtqnBqpa9UzhLTndpZmzFs2sALtGroOJRRcTDXcxiaM=;
	b=htD3buhABCdWbrTH+l3rKvCJU+ZLGqYQ6EpT0KVU9bvPTvIXBceWDFtWg4XsWV7W
	P76OhTJJ2O+Z3h54GG9Vxw4BoGL80kf8w2YNjK8z2Pd5p7wnz4D6LiufP3SGwjAHcX3
	6/uVY3XcPyH5V420WdKEhlvtnr1/m/Bp9bxgZUcg=
Received: by mx.zohomail.com with SMTPS id 17246968937020.26691709516398987;
	Mon, 26 Aug 2024 11:28:13 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: airlied@gmail.com, alchark@gmail.com, amadeus@jmu.edu.cn,
 andi.shyti@kernel.org, andyshrk@163.com, broonie@kernel.org,
 cl@rock-chips.com, conor+dt@kernel.org, daniel@ffwll.ch,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 dsimic@manjaro.org, efectn@protonmail.com, finley.xiao@rock-chips.com,
 gregkh@linuxfoundation.org, heiko@sntech.de, honyuenkwun@gmail.com,
 jagan@edgeble.ai, jamie@jamieiles.com, jic23@kernel.org,
 jirislaby@kernel.org, jonas@kwiboo.se, jszhang@kernel.org,
 kernel@collabora.com, krzk+dt@kernel.org, lars@metafoo.de, lee@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux@roeck-us.net,
 maarten.lankhorst@linux.intel.com, macromorgan@hotmail.com, megi@xff.cz,
 michael.riesch@wolfvision.net, mripard@kernel.org, robh@kernel.org,
 tim@feathertop.org, tzimmermann@suse.de, ulf.hansson@linaro.org,
 wim@linux-watchdog.org
Subject: Re: [PATCH v2 11/12] arm64: dts: rockchip: Add rk3576 SoC base DT
Date: Mon, 26 Aug 2024 14:28:09 -0400
Message-ID: <22403959.EfDdHjke4D@bootstrap>
In-Reply-To: <20240825140824.200453-1-amadeus@jmu.edu.cn>
References: <23624422.6Emhk5qWAg@trenzalore> <20240825140824.200453-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_112906_587175_190C597F 
X-CRM114-Status: GOOD (  13.81  )
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

On Sunday, 25 August 2024 10:08:24 EDT Chukun Pan wrote:
> Hi,
> 
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> > ...
> > +		opp-1416000000 {
> > +			opp-hz = /bits/ 64 <1416000000>;
> > +			opp-microvolt = <725000 725000 950000>;
> > +			opp-microvolt-L1 = <712500 712500 950000>;
> > +			opp-microvolt-L2 = <700000 700000 950000>;
> > +			opp-microvolt-L3 = <700000 700000 950000>;
> > +			opp-microvolt-L4 = <700000 700000 950000>;
> > +			opp-microvolt-L5 = <700000 700000 950000>;
> > +			clock-latency-ns = <40000>;
> > +		};
> > ...
> 
> I'm curious if these frequencies work properly. On the bsp kernel,
> 'opp-microvolt-L<name>' is used by the PVTM driver, I don't know
> if it works on the upstream kernel. Sorry but have you tested it
> with mhz (https://github.com/wtarreau/mhz)?

Running mhz gives me:
# ./mhz
count=566627 us50=19994 us250=99977 diff=79983 cpu_MHz=1416.869

Which seems to correspond to the set opp-hz value. As mentionned by Alexey, 
the opp-microvolt-L.* values are not used by the driver.

I also have not tested any cpufreq settings/driver on this board yet. I can 
remove the opp-microvolt-L.* for now.

Detlev.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
