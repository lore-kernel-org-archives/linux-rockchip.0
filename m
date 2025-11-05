Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00609CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 09:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvtpjxDscuCXHkpGWO0T2RzP+9MBzMb0v+yc5S+zZso=; b=uiZBPkOQ7zKw2y
	VhpYJhuEp8pE9Fm4N/uLTh2CFBKD0r9l3BvQ8cnEDr0+uVd0pGxarjJjBM7Y757U8jaRJNsLvhux/
	PQja12r2EBdoSBgjskR2Ce6KVIPCYdG11U23TQ8aFYF7rgGkmAkYdpGPuHPhbia8PxASmsMMKGSnb
	3jrGwZmaobpeRa6VawhEIY6suoSa2DVIVkTJfndEyhLvyUKORAOPlnfhCf32s0ihiNWs93H2uMCNO
	BfmEmR+qAxv5a10STKk7fdCjSMKugXfIWqOP9B2wKoG+45EB6O7A2sgvL7myn+K5sj+AFpTs9sjU3
	BpAAY+m3N9p39hEdwMVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGZUy-0000000DLwq-3OJx;
	Wed, 05 Nov 2025 09:08:12 +0000
Received: from out-177.mta1.migadu.com ([95.215.58.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGZUw-0000000DLsC-12GW
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 09:08:12 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762333619;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=20X0FggjNIZtK2wTcA0T98MzwYS7d/pU6xJcudRoIkA=;
	b=aQkDEf0o1hZDlA0jt/SAK7d1jIzuk83Wctvw7Khhjx221G75fVkjY6y1QChQga2p0H/gx7
	jb80JscYaEXymno4WJMr7sszvCliTv/kGLD5aPpkUxXzuRqF+LkkqfxPFih1rr28zE2J5F
	Nj4j+BNbr3lDj3fzWXfFiSEnTYem1pnhUR9c9vbgezDW3NOmMRyx8jOQBlK+rwIJRQ5dn4
	cPCszNjP4TFptEs6ceoB1Ye5Vpg52GLT54a2vP6c7ydi7ZQ3/JmqQEDGRhGO6hyULD+3U+
	nFWJc2Q+h1lvn//Uu3Vn7Ypoy5RnrjIoRappU70Tf1Txx5KyWKhpEUk1DdPkTw==
Date: Wed, 05 Nov 2025 10:06:53 +0100
Message-Id: <DE0N4LA8MOJD.236O12UZ3I3C4@cknow-tech.com>
Cc: <linux-rockchip@lists.infradead.org>, "Shawn Lin"
 <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>,
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan
 Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn
 Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>,
 <linux-pci@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Johan Jonker" <jbx6244@gmail.com>
Subject: Re: [RFC PATCH 2/2] PCI: rockchip-host: drop wait on PERST# toggle
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>, "Bjorn Helgaas"
 <helgaas@kernel.org>
References: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com> <20251103181038.GA1814635@bhelgaas> <aQrKtFT0ldc70gKj@geday>
In-Reply-To: <aQrKtFT0ldc70gKj@geday>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_010810_870759_2F6A0602 
X-CRM114-Status: GOOD (  18.80  )
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

On Wed Nov 5, 2025 at 4:55 AM CET, Geraldo Nascimento wrote:
> On Mon, Nov 03, 2025 at 12:10:38PM -0600, Bjorn Helgaas wrote:
>> On Mon, Nov 03, 2025 at 03:27:25AM -0300, Geraldo Nascimento wrote:
>> > With this change PCIe will complete link-training with a known quirky
>> > device - Samsung OEM PM981a SSD. This is completely against the PCIe
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

I have a Samsung PM981 (without the 'a') and AFAICT it works fine.
I had noticed that the PERST# (pinctrl) was missing, but 'ep-gpios'
was/is new to me and I hadn't had time to research that properly yet.
Good to see you already found it yourself :-)

Cheers,
  Diederik

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
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
