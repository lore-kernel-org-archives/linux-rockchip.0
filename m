Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C9ECEB2CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bkPvhKu29VxnXGLrO2BiHfFyfkGlAuZ1xk+mTgmsq8=; b=BAUCQQ152iruZY
	AlhLwJ4pDbvv9k34IebW8kY4PwTCCIDxR6eaPRbxjWeGwWaWVGIiSyLmYWaZkAgtAaC8EjQPky657
	TtaPnQ6bgDc44phTQQTjhe1GNSSi0aBC4dfHoSN1qOtezFpRGpRYiFLvBx+nCs0k5QY+XKuLPQXdV
	hQFtbjCIpjav9Fsopypm+EcUtU6m2ygdbdWtVv6qNMyoXYC0cElG8nSCZDO/rqqwk/wYH7V75Mfkb
	ZU3S/3lg9KRDL7Vd6Ab8eAgfCUuFJydVSq764QGr54K0u5OzLBsJwJpoMNeRNN+avJFFcA8CPjfFy
	Mm867QB+ubpqQT+01HVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKChl-0000000DebO-1a6k;
	Sat, 15 Nov 2025 09:36:25 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKChi-0000000Deai-44pE;
	Sat, 15 Nov 2025 09:36:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 3E22A40CFC;
	Sat, 15 Nov 2025 10:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763199380; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=UzICdbwM2QoJFmjW7cfRmbb0BC19M1jM3pFg7zouo8c=;
	b=tBZqzkYu0lbdplajSnwSL2r48T/TPSQZF2qdPmJABx0UTAtkqH7vedj4hECQ54IztXtivd
	eYkLF/qcNHRlSEIVapRn14EwaO9eiLzGcybRdYrYtYLu4VPH3adezVlGhdg6/ssDRzw3U6
	vNodMnb6kXXvuN1AAaqz4L5KrJ/3xbE6Y7wl1OrmQArI0tea9aFB4xzhICw0/KdkXUO7ej
	Kb6DuIkFvqtLwgufG6k7q864+albj31iJSoxS96q/O1VWtT02TxqG/zY5JB9ATmNzS/XnQ
	n6APHB2pRTg9VTr/ZXueaTntLzACQ6iw3Y94owyefLKaYTM2xLwh5kHzzUBEIA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com> <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com>
Date: Sat, 15 Nov 2025 10:36:17 +0100
Cc: linux-rockchip@lists.infradead.org, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= drop max-link-speed =?utf-8?q?=3D?= <2> in 
 helios64 PCIe
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_013623_202884_C52B9AC1 
X-CRM114-Status: GOOD (  12.99  )
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

Hello Geraldo,

On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> Shawn Lin from Rockchip strongly discourages attempts to use their
> RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
> failures that may happen. Even if the odds are low, drop from last user
> of this property for the RK3399 platform, helios64.
> 
> Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
> Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> index e7d4a2f9a95e..78a7775c3b22 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> @@ -424,7 +424,6 @@ &pcie_phy {
>  
>  &pcie0 {
>  	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> -	max-link-speed = <2>;
>  	num-lanes = <2>;
>  	pinctrl-names = "default";
>  	status = "okay";

Looking good to me, this rounds up the prevention of issues
coming from buggy PCIe Gen2 on RK3399.

Please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Though, could you, please, add patch 4/3 to this series, which
would remove the redundant parameter "max-link-speed = <1>" from
rk3399-nanopi-r4s.dtsi?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
