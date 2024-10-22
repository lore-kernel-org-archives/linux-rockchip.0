Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53948D2C559
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 14:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpLinZ4Bk58ace/GLA7IEndTSs0lTVOzAPFxfTJsCyU=; b=yJU+NyKz5dxnxf
	UYEylnflZ/gA0ht4pis7wAHlytnxYPwI8IC00LUi0AbtsT/Eh3xciJFXxvVzlaC3OXpLKfqJXR5HD
	vrNS1om1fNCX71pXlr9Wof/WgdfAH2CSw4OOEk/mphep3ZJ1WIz75U2yR/dYgOgLunUrKKLEVp80a
	u9O+2jbEuGYj+VJtWdOAD/BOQYNH4jbbwas872fQYmMYWU23xmyZrvVV5PYYfjkZiluApcOOok96r
	WApqpVyewZc+D3Je8hIAALCabrYcDh3WB6mxu+d8veDs+9UbXUFiUHV+AYWCnRd3Rq4EKlIyWfLMb
	wgtrCquaUdFVprGRCbiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3FTd-0000000B2aN-0iGi;
	Tue, 22 Oct 2024 14:03:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3FSQ-0000000B2Kr-0l7q
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 14:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KILgDAU3KQRh1VJQTXll/6RZ2AhL2b0eks2LH/S8Yyc=; b=IjahyAcBDsJEBeds0hr1W2FxKK
	yuZH0EUJHkMXrPc7jObTgEQssjE/baHya2HTr7Mprfl09sZr8Veh+ialx14SjHZY+W3aaGmptPPqU
	MdZC+s+I60IbILPXBvVyhlVHBbCI6NMMLj/H80hUFCAEQi/BmmdBBI90coiJbFlkzjWjTltUZ0FWE
	2+wTsCcgAc0JoGumQVQVvjl8EN+5E914T7ChQ1/mHaAfubAwBGaeGp94bRtdF+rdmGJXAUOmpgbiD
	2cPozT2K4P9c4CnWTmmAdZYzVCc/wqeFRpDoGsQuLaigaiIXKoGE/ACsLpWtnFQH+98srP+J8+e2O
	QZsJlzDA==;
Received: from [213.70.40.217] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3FSL-0005a6-Qi; Tue, 22 Oct 2024 16:01:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: analog audio on Orange Pi 5
Date: Tue, 22 Oct 2024 16:01:53 +0200
Message-ID: <4958831.31r3eYUQgx@phil>
In-Reply-To: <172839929050.1375676.6206290291229445428.robh@kernel.org>
References: <20241008031429.2410-1-honyuenkwun@gmail.com>
 <172839929050.1375676.6206290291229445428.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_070158_264894_3D50C58F 
X-CRM114-Status: GOOD (  20.20  )
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

Am Dienstag, 8. Oktober 2024, 16:56:41 CEST schrieb Rob Herring (Arm):
> 
> On Mon, 07 Oct 2024 22:14:29 -0500, Jimmy Hon wrote:
> > Analog audio using es8388 codec via the headset jack and onboard mic
> > 
> > Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 64 +++++++++++++++++++
> >  1 file changed, 64 insertions(+)
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb' for 20241008031429.2410-1-honyuenkwun@gmail.com:
> 
> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 243]], 'phandle': 256} is not of type 'array'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#

the error is predating this patch but should be fixed
nevertheless.

@Jimmy: can you check if the schematics for your board provide
an alternative name for the pin that is "leds-gpio" currently
in the orangepi-5 ?

Or just rename it to something like status_pin or something?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
