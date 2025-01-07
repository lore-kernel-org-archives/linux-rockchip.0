Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E14E77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 12:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JOKRRe1/GInAcKOx4gWw1RBAKWp7d2FNWdZSIIp9ec=; b=IUvUOA1ARHREGC
	ihRmN+Rsaa2mgKODhMM129GsZwyOXzQa+eG5tjynIPDKLl/r4SE47+xruskjWrmjPps5vO95oDPlD
	zrrqKfAPqQFYdIXfiYu5GrpwpcGDR2XUhdp6+BIGR7fKzyaIhiBMdkM01kSGiIF0juyOkE+MXB4bG
	W8rTvx4oydOqLJ67nnakOLgXm0fn32+nVDTNa/zPTQxSWz6Ot11xFsjAkmo7YJNgHnHnObC6hGw15
	Om1m18tdPy1HEgS9VFQaSeRLcuVCOx3fY6StzMY72hsNHVvviMNz2RXsnT+h3s4rV9LplCXUBhDpb
	Lxz6zq/BzURxrMqm5p6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrdw-0000000BqwB-45CD;
	Thu, 09 Jan 2025 12:28:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrci-0000000BqnC-2DUe;
	Thu, 09 Jan 2025 12:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1736278291; bh=d3pREvs7LhLX8BNJ2qTqolnU1R4+qY6PVTnmctgTA6c=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=MyPgZVKKPDLRR906LGRw1S2GTco8eaS5ykJW9/71Gb5mSEnrs8oQP8ltwtqyODdDw
	 7xHgVG8W6JmtCVh/k5o+YX3tBTiFNOOvfMsjeRkAh6mYbP4zRKDJGvUzfJvXNDcKzG
	 vGli+Hva0xr++b9694J2VImzvmy9MFqJbllRU7+8=
Date: Tue, 7 Jan 2025 20:31:31 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: orangepi-5-plus: Enable USB 3.0
 ports
Message-ID: <bx4xir4kfhui4d2xb357hnohhpqvgcne5a36qb4ahxyggrxkxo@7f7vyharp4yz>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Chen-Yu Tsai <wens@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20241220161240.109253-1-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241220161240.109253-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_042653_018165_BF39DE06 
X-CRM114-Status: GOOD (  16.78  )
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

Hello Chen-Yu,

On Sat, Dec 21, 2024 at 12:12:40AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The Orange Pi 5 Plus has its first USB 3.0 interface on the SoC wired
> directly to the USB type C port next to the MASKROM button, and the
> second interface wired to a USB 3.0 hub which in turn is connected to
> the USB 3.0 host ports on the board, as well as the USB 2.0 connection
> on the M.2 E-key slot.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> 
> ---
> Changes since v1:
> - Dropped source current to 1.4A
> - Dropped sink current to 10mA, since it doesn't actually sink current
> - Added try-power-role
> - Added newline before endpoint device nodes in USB connector node
> ---
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index 9f5a38b290bf..000d353645a9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -218,6 +218,18 @@ vcc5v0_sys: regulator-vcc5v0-sys {
>  		regulator-max-microvolt = <5000000>;
>  	};
>  
> +	vbus5v0_typec: vbus-typec-regulator {

I think the new policy is to prefix with 'regulator-' so eg.:

	vbus5v0_typec: regulator-vbus5v0-typec

With that:

Reviewed-by: Ondrej Jirman <megi@xff.cz>

thank you,
	o.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
