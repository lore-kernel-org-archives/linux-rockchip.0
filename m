Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E86BCCF9F8
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 23:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t83zUtMvHlfPpCMQoLUU+LihO6QAmaITVZ79M2cinhg=; b=nhoZH/4YIJ4iAz
	VYxh8mC3IfzQD/f5T6K9to0qxeMpQ1JdKZTfA/QAqpU4Y8IiXQz8YgZBxy3GTtm9//3dImM0Vpv9m
	y9F5tQDx8KykwQOfOta+IawhyK5iU9onObxlXY6wQmiQba2DJvCrvFrjq0burHQ3xdDc7JciV5Y42
	5yg9J2FRAUnq6OCVGqCWQBv8FW0ELfm9PE9kxXJn34dmVQQ2olRSterdmwJEz2EvnrCDpzGbPtiO5
	aJnXECbzPMoNf3oXpPgYiZ8rPC3QHjnf+aftiA8/6oma5fA9VoCNFB5zOAOi4ZWZmHDEcZ4tCx+oS
	fBhUxoHc/eN5qx/l8qdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIFCU-00000004WgB-07x7;
	Sun, 09 Nov 2025 23:52:02 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIFCQ-00000004Wej-1udT;
	Sun, 09 Nov 2025 23:51:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id EE2FB40D4F;
	Mon, 10 Nov 2025 00:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762732313; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=bMO0Xh/gfO71OBjtqH4H2HrKhuVX7nihY7FUTST9A6w=;
	b=p5coiec0jIz8jGLRKlEkXQMVidbjTUU4AcOrE1Hlva3eIznRyivAHM/Cz6b/FlTFBBt9gH
	L9KfxFKgkJTKHYSj53KoRXOI/jYiYk6bHgOdMkSyrssd4v0bXWaSLI6bDGY2lcpPMozRpL
	idOl9E/QefRxTUENpUalR2pGrjggafIhF+lAddGXcvyXQ6MCDE9A91e2heWF4v8vtrzaU1
	fXKCrfXXLubUhuVb9OeRIKIFSP5RlryQNtJn1ltBav2OWQYRii31dD+HvHDXRKnwVruhBj
	mBldwgLd5X7OZbcaQZCpyAbXjL4+d8svf5L2SAY4ZaS1KQbP1bjve58T+0L1Ow==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <aQrKtFT0ldc70gKj@geday>
References: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com>
 <20251103181038.GA1814635@bhelgaas> <aQrKtFT0ldc70gKj@geday>
Date: Mon, 10 Nov 2025 00:51:49 +0100
Cc: "Bjorn Helgaas" <helgaas@kernel.org>, linux-rockchip@lists.infradead.org, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <17220ae9-9e0e-cb0b-63bd-eaf9a6ed6411@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [RFC PATCH 2/2] =?utf-8?q?PCI=3A?=
 =?utf-8?q?_rockchip-host=3A?= drop wait on PERST# toggle
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_155158_720796_ADDA75D4 
X-CRM114-Status: GOOD (  17.93  )
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

On Wednesday, November 05, 2025 04:55 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> I did some more testing, intrigued by why would a delay of more than
> 5 ms after the enablement of the power rails trigger failure in
> initial link-training.
> 
> Something in my intuition kept telling me this was PERST# related,
> and so I followed that rabbit-hole.
> 
> It seems the following change will allow the SSD to work with the
> Rockchip-IP PCIe core without any other changes. So it is purely
> a DT change and we are able to keep the mandatory 100ms delay
> after driving PERST# low, as well as the always-on/boot-on
> properties of the 3v3 power regulator.
> 
> This time everything is within the PCIe spec AFAICT, PERST# indeed
> is an Open Drain signal, and indeed it does requires pull-up resistor
> to maintain the drive after driving it high.
> 
> I'm still testing the overall stability of this, let's hope for the
> best!
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> index aa70776e898a..1c5afc0413bc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> @@ -383,13 +383,14 @@ &pcie_phy {
>  };
>  
>  &pcie0 {
> -	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +	ep-gpios = <&gpio0 RK_PB4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	num-lanes = <4>;
> -	pinctrl-0 = <&pcie_clkreqnb_cpm>;
> +	pinctrl-0 = <&pcie_clkreqnb_cpm>, <&pcie_perst>;
>  	pinctrl-names = "default";
>  	vpcie0v9-supply = <&vcca_0v9>;	/* VCC_0V9_S0 */
>  	vpcie1v8-supply = <&vcca_1v8>;	/* VCC_1V8_S0 */
>  	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	max-link-speed = <2>;

FWIW, we shouldn't be enabling PCIe Gen2 here, because it's been
already disabled for the RK3399 due to unknown errata in the commit
712fa1777207 ("arm64: dts: rockchip: add max-link-speed for rk3399",
2016-12-16).  It's perfectly reasonable to assume the same for the
RK3399Pro, which is basically RK3399 packaged together with RK1808,
AFAIK with no on-package interconnects.

>  	status = "okay";
>  };
>  
> @@ -408,6 +409,10 @@ pcie {
>  		pcie_pwr: pcie-pwr {
>  			rockchip,pins = <4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
>  		};
> +		pcie_perst: pcie-perst {
> +			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
>  	};
>  
>  	pmic {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
