Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D103C4167D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 14:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4NUVjBAuyXSv42iJY6zfmtQHLGHSPZstZJR7nKnvTk=; b=yR57kq0Q9/Jhkt
	ZuVcB0L1Q04ezuPqrtWj4um741/u4eWL25ZCGZ4JJiAAS6G9jVWvdMdEL8yZzbpRTVn99n4bFpD2x
	MjC5N6cI481q+27PI/mhTj6UbAOMKf6igkukJ5mfn/gyaeXccq/KqkGEVs6/dR/y1NHbPUpfAtwX+
	bLHxqjG/WWqdi0nlgiohnOJtLWlssRfg2Sp1jzNLrm5ZjiTLyw+JaK2+NkV7T1RFxYyZpcVk07YUa
	nrvgITeaZJg6E9/c20jEucZ1W7ttaKDrKrdP20AZGED9AnRewqAmtbFcTd2NsmsnVd5E/BT69YIqQ
	N8RLakbIF2zrG/xw+sHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqN5-00HTv4-Sx; Wed, 23 Nov 2022 14:05:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqMt-00HTqx-Ta; Wed, 23 Nov 2022 14:04:53 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxqMm-0008Pl-K2; Wed, 23 Nov 2022 15:04:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Chris Morgan <macromorgan@hotmail.com>, Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, Da Xue <da.xue@libretech.co>, dsx724 <da@lessconfused.com>, Jagan Teki <jagan@amarulasolutions.com>, Suniel Mahesh <sunil@amarulasolutions.com>, Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: increase spi-max-frequency of nor flash for roc-rk3399-pc
Date: Wed, 23 Nov 2022 15:04:43 +0100
Message-ID: <4981984.iIbC2pHGDl@phil>
In-Reply-To: <20221123094827.250657-2-abbaraju.manojsai@amarulasolutions.com>
References: <20221123094827.250657-1-abbaraju.manojsai@amarulasolutions.com> <20221123094827.250657-2-abbaraju.manojsai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_060451_981952_C0A4808A 
X-CRM114-Status: GOOD (  20.07  )
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

Hi Manoj,

Am Mittwoch, 23. November 2022, 10:48:27 CET schrieb Manoj Sai:
> Increase the spi-max-frequency of nor flash from 10Mhz to 30Mhz,this improves the
> flash raw write speed by 0.9 MB/s to 1.6MB/s and the time taken to write is
> get reduced from 36 seconds to 20 seconds.
> 
> Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
> Signed-off-by: Da Xue <da.xue@libretech.co>
> Signed-off-by: dsx724 <da@lessconfused.com>

who are these other people? :-)

I.e. it looks like you're the author of the patch,
and so it should only have your Signed-off-by line.

If Da Xue and dsx724 have tested / reviewed the change, they
should respond individually to the posted patch with
either a "Reviewed-by: ..." or "Tested-by: ..." line.


Thanks
Heiko

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index 2f4b1b2e3ac7..8fd808a0df85 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -735,7 +735,7 @@ &spi1 {
>  	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		spi-max-frequency = <10000000>;
> +		spi-max-frequency = <30000000>;
>  	};
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
