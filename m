Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C8DCED622
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tMcJSnVB8hUwLp/IkUrFYd6rsx/3cLi6iUnpKMYEoQ8=; b=UW/sgxLDOvsLRshZ6rXrJuo+bf
	rgL5LVDwsqMVaJATY2aL9ZaIL34O1TR31O5L5l9sw2aMMxxWpOoysn3eYP6NZGD5gOQs0DpPc/eOD
	NeEm4+4FlX65hqV+rQTzUMUmB2P68Zi8yK16uNXCFSPiBoVsKNZi2N7cy6kp5TxQ0d3yluclG5MtM
	zk3wVkKu+K3OJgkdWGFpQ2OuuLW2qef3177fmdPoS7HZdhzwy5HPdiC+pFM0IUaUZaN4CdVsNxl8G
	4j4BJyz0Cs5cZynLbS0Im8Nwk8tQ7dl8dxPoTPFKYM/rnXukgQlPU43iqPGhmrFZxZfA/f5OfNmRR
	Woz86SbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syRYf-00000008KXN-1Tdy;
	Wed, 09 Oct 2024 07:56:33 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syRMa-00000008I9D-1Slf;
	Wed, 09 Oct 2024 07:44:05 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459842;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qN0le6Ml1NEMJ9YuuK8cymRbMjJcPIqsyuk4IKj9dis=;
	b=Z29yxpvqy2JNGUMzH66OxjfgGXYRI8o5I+1p0En69SxpCsxhnHrSJR5mmYv99GxAf14Vb6
	RyE5YCZWKIgGUZeGId3nYftsO2DaaWBShCyOwprsDyDaZz9CAj9HEdWbaZSGCdzGb3unj+
	N6C8KSvXuLS873TFsqBZN03MBJ5j9eeWFeRCH1dS1GvhkCqKDWPnf+JIbFDpG5DTPfiZsd
	IrLJgAaieh1LZvRAF13MTMzmDNgRkFq91XXS1o38tIZFwz167n9VGoAbbZ4RtzSrJSYWby
	9RpfazxR5mQhxTmawD2elA0HMLTb4iMKaK4d2MrG9CBewtbM863IDjklKbiQrg==
Date: Wed, 09 Oct 2024 09:44:02 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Caesar
 Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 14/14] ARM: dts: rockchip: Fix the realtek audio codec
 on rk3036-kylin
In-Reply-To: <20241008203940.2573684-15-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-15-heiko@sntech.de>
Message-ID: <ed0c03bc87739e8756fea91d1053cb0d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_004404_591337_6ED725A1 
X-CRM114-Status: GOOD (  12.34  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> Both the node name as well as the compatible were not named
> according to the binding expectations, fix that.
> 
> Fixes: 47bf3a5c9e2a ("ARM: dts: rockchip: add the sound setup for
> rk3036-kylin board")
> Cc: Caesar Wang <wxt@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced changes
are obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> index e32c73d32f0a..2f84e2805712 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> @@ -325,8 +325,8 @@ regulator-state-mem {
>  &i2c2 {
>  	status = "okay";
> 
> -	rt5616: rt5616@1b {
> -		compatible = "rt5616";
> +	rt5616: audio-codec@1b {
> +		compatible = "realtek,rt5616";
>  		reg = <0x1b>;
>  		clocks = <&cru SCLK_I2S_OUT>;
>  		clock-names = "mclk";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
