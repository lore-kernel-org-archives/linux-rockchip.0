Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 669F4C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 15:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fJ2gPxHRILxNwoSpu2I4Yy/LdXWQdiWTARBnuZkvzsU=; b=cYSAhNgmLAAfI1apf4aJMRQ5EG
	ORltV4QGIHtxMxDA7JYjfsXnwSvGiPKNSVgFuThXAbYojr/f67cTJCgK8EBh9SKrs4kIG6U2d54Ez
	f4EbCsCuZyD9AVhmkfx8GVV15eEH1jEFiSCBBq6K5Vf17Jr5rbrLscavwE4JZBk6SYIlFZzMRJr0A
	pofVzvJ6CicVF6JDS8A+nIlbHOQAXZ9sv36qrhqEV8SYgfwpXLW/eT09MZ6QqFFsKHOwCMsCc2psG
	oEc78ggYbE5gaNKTwRg07RAl5CVsiJCLzVqRsC5IXuFR+LzMfVGTzpW2HC3pM4dA+LCWstoOC+ZTy
	cG0055qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxTaH-00000002m0I-18vl;
	Thu, 18 Apr 2024 15:21:57 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxTaC-00000002lxm-3jg9;
	Thu, 18 Apr 2024 15:21:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713453710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7fMWbqaFsM/KieslA1BmEyHQ9S+JXnIJSHWI/V0HmwY=;
	b=DTNgL942/Wl+ESKEy5T4jd5tiyNq98yzPLKFVmAjoOiafOhRweIifgH5G5h9BzErnZD4jO
	qXf/GrNGGrBE/rL6WnmDA26kBoQQxcz9IWcgMvyQmhtRuSVMDcl+9z7fezhZ2RnJJ8armz
	vDOAy1VPZMHXCiRmDlv3jdkkcXzTeXgTBkZkU/QxYFbm58SqGCTU3iCZTITn4jbPylEz0J
	ps1WORSL7vBbliWPSTUMo6/17ACwAd6frS+VxQKwQ7vjwnIDjbkqELT9N/p9miqMihCIKz
	8wmIqPalOVcpur0S9uzYCWWUq1pxeJ+MIp4YcmTpiC1btN4TpDkYlgUgAsA2wg==
Date: Thu, 18 Apr 2024 17:21:49 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: correct the model name for
 Radxa ROCK 3A
In-Reply-To: <20240418130120.67663-2-amadeus@jmu.edu.cn>
References: <20240418130120.67663-1-amadeus@jmu.edu.cn>
 <20240418130120.67663-2-amadeus@jmu.edu.cn>
Message-ID: <39e73428856a6fdf698a5efe6311af0f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_082153_155058_7677A572 
X-CRM114-Status: GOOD (  12.11  )
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

On 2024-04-18 15:01, Chukun Pan wrote:
> According to https://radxa.com/products/rock3/3a,
> the name of this board should be "Radxa ROCK 3A".
> Also update compatible to match the model name.
> 
> Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

Looking good to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index c62230308457..e859c075bd46 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -8,8 +8,8 @@
>  #include "rk3568.dtsi"
> 
>  / {
> -	model = "Radxa ROCK3 Model A";
> -	compatible = "radxa,rock3a", "rockchip,rk3568";
> +	model = "Radxa ROCK 3A";
> +	compatible = "radxa,rock-3a", "rockchip,rk3568";
> 
>  	aliases {
>  		ethernet0 = &gmac1;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
