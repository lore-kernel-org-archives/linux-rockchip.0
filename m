Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D777C67861
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 14:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dK5FFyD9rN6aPfkwnG9XI8ARAECkgcGu2NRSFbqozw=; b=IAkxAZvK3tNRfS
	jkKu4KcAMR8JQcn3Bg+g8kDdStknPaTnKuyb2qPnZr5QGUUexioQgFduOECmkgKmxfliBPcfVFpvv
	EWxxInmW2rKh+hb2yrSmlQPO4xozaIDe+FYg4xm2yYQv5DnwY6L/R5ITLgo6TP7Vf/6+nOpCBh3ZG
	6Blgj7I6IDIhdeSvJLpbTuvrcqu2MFZ3G/WV2Anm/7trxWnUwiTDhjIC647Bl7UznfX+ypsNdious
	QzID9fgyFmS+o72rwUlpjwhbxH/PaXoJJD7IIBU4cwhxjSXEM2gTlYlR6pfylOhyakR/GrwjY87ra
	ZnmUeG3oZkK6ntb87ucA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsktB-00000007Zql-3HrI;
	Fri, 05 Apr 2024 14:49:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjjg-00000007Fzi-1k8W;
	Fri, 05 Apr 2024 13:36:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=JfzJ8dFNpc+CDghii6YSpfFNaWsdhY3VZxC7E3oluGM=; b=ksa/y8m7+M5No5dKmYqjXKvAUz
	12glxIviNbEuIfdnWSktqolEYR8n4Xue9qQ6roGr69+yAdYSdAHrr02t9lgn05ZiLTENHDzIw2ZUf
	xOYOxbC34w3JDsHq4RjiSPdrx2pfqgW/7REGXKYwkvfmZQ/B6RY3wJFBykRHKTUC3PjJrjB6+lImB
	YKO/lHUWqhiRzkqsvul4eZ4vXiVl2BTgfSu1S1PVYKMlcfLHq469y3pwzR6JyvwKI7jWLLnaDZVMC
	fd5QCwmpVlJmnoTdp5VVVIrUXI/8sbAGMY4O0M1HKY6BAl23P+bicC6xS5kqKaYMkhdmX3rIma8SK
	YjyfH/AQ==;
Received: from vps0.lunn.ch ([156.67.10.101])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjjd-00000005e3X-0B8h;
	Fri, 05 Apr 2024 13:36:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=JfzJ8dFNpc+CDghii6YSpfFNaWsdhY3VZxC7E3oluGM=; b=mLVC42jHqinbZk1IrCD0lN6bAx
	XQ5i7nPhII+j3ww2YGuJgYQ7Hpk+OOVp9LDeuABPxxEzSAka6DNz8NGGEzFVvfhlBjIMuI2AmOIVg
	+w7kZCRu+WA2fKNTfBQvuP2P+7mx8k1zqkWH7HxOTsC24E3hAFv2cS8neKbsw71pmrbQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rsjjU-00CJ3D-Tv; Fri, 05 Apr 2024 15:35:52 +0200
Date: Fri, 5 Apr 2024 15:35:52 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Protonic MECSBC device-tree
Message-ID: <1a0de7b4-f0f7-4080-ae48-f5ffa9e76be3@lunn.ch>
References: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
 <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
 <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
 <Zg_NwfxLhzdCjN87@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zg_NwfxLhzdCjN87@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_143601_336604_9494FE21 
X-CRM114-Status: GOOD (  17.16  )
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

> Do you have a pointer why setting the delays in the phy is preferred
> over setting them in the network driver? In the end this requires us
> to have the correct phy driver whereas setting them in the network
> driver would just work for any phy driver?

One reason is that nearly every other board does it in the PHY. This
is something i've been trying to standardize on for years.

Another point is that when doing it in the MAC, most MAC drivers get
it wrong. RGMII needs 2ns delays on the clock lines. That delay can be
provided by the board, making the clock lines longer. Or the MAC or
the PHY can add the delays. phy-mode in DT tells you about what the
board requires. Your board does not have extra long clock lines, so
you need rgmii-id. If the MAC decides to implement the delay, it
should modify the value passed to the PHY to be rgmii, to indicate it
has added the delays, and the PHY should not. This is what many MAC
drivers get wrong, they don't do the masking. By standardizing on the
PHY doing the delay, we avoid this, keeping the MAC driver simple, and
probably bug free in this respect.

There is admittedly some historical confusion here. The design is not
the best. If would of been much better if the design would have both
phy-mode and mac-mode.

As for using genphy, yes it might work, but there is no real
guarantee. It is always best you drive the hardware using the driver
specific to it. Consider genphy as a fallback which might be good
enough that you can ssh into the board and install the correct
module. You should not really be using it in production.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
