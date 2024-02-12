Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ACAAC4829E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 18:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkIvye/nBQ1bWYR9ZAKi0jv412kwVuRg624j5bVol8I=; b=NNboASxEkdaujm
	pmYvSQDBJpss7k/MJ6hclDowpRDHozJ8BQYHZQo0QWPmHv7qRHDokXlgkJqfLH4KuSUOkmf8b7/qL
	mQ8EcbKIUaV0l5jzY5pcSCuyy4EmcJ79jJ1wGtx7rjqLCikKFJ1L8NtokJm/LIw8HLi+nM51HstFS
	HOJ7txon1E5BFqyn5FX6gJZPjJ2ltBTb06hIWwfIAV7pG6eu3Mo8vkYhJztxGTzht1jVmxUEyasD2
	R6gVuOXBExhjfdhTdlQfiFKB1qg4tteDAV3nGJ3J0y6FtyPkJuAoAjr22srpYAZoehnSIPSQqWJiG
	js1Ef9CE04EJXLHjzy/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbMB-00000006fjC-0OGx;
	Mon, 12 Feb 2024 18:48:43 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbM7-00000006fhP-2yiF;
	Mon, 12 Feb 2024 18:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707763717;
	bh=rmSuvZ9VCPI0UhhTZVLVZILM/1fXstYqxDyzla5LooQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SLjqtGMLqX0g2Ma1SgR6SVodhVloob9ICI8GWWXw9wWdoHXa2KAI9nbRzDWEaIHYY
	 y/yu7NEBjtg5yJFf23dYJ1TYRMmeVrY+OlA7k+Q2ABAujA1P11FAUIkXwUjQ+GQLUk
	 W3+fvx/rJu2Yn9dWlH6DEbYURC+kYfkaWqa/DP3EK2EWz+B70uZM7akFADc5U07jpp
	 O6XCpOuo9WPEtmxi9e/W4QDk8OAiFlosyfr9dUggVlZxYrJd1NuEtcFj1LaFHvNc4f
	 SwLxanuzW07EtFeLj2ZamN6mbkZf06gpEHisckAtStAWbUOPrn6tVyT4F034C8D9Lw
	 s3q+brWNjprqw==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A2F9E3782059;
	Mon, 12 Feb 2024 18:48:37 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 3CE4A106A4BC; Mon, 12 Feb 2024 19:48:37 +0100 (CET)
Date: Mon, 12 Feb 2024 19:48:37 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Johan Jonker <jbx6244@yandex.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Frank Wang <frank.wang@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v1 06/10] arm64: dts: rockchip: add USBDP phys on rk3588
Message-ID: <dsfne22iebd7mvyyskhpw3rkkfhlxpv32afht456vq3u52axyr@kgkxfzm5vn4c>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
 <20240209181831.104687-7-sebastian.reichel@collabora.com>
 <6bc2f825-7e50-488d-a373-a211ac2cc8e1@yandex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bc2f825-7e50-488d-a373-a211ac2cc8e1@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_104839_898233_26C16706 
X-CRM114-Status: GOOD (  14.18  )
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

Hi Johan,

On Sun, Feb 11, 2024 at 08:24:36PM +0100, Johan Jonker wrote:
> > +		u2phy1: usb2-phy@4000 {
> 
>         "usb2phy@[0-9a-f]+$":

Interesting. I would have expected that to pop up in dtbs_check, but
it does not for some reason. I will fix it for all usb2phy instances
in rk3588.

> > +			compatible = "rockchip,rk3588-usb2phy";
> > +			reg = <0x4000 0x10>;
> > +			interrupts = <GIC_SPI 394 IRQ_TYPE_LEVEL_HIGH 0>;
> 
> > +			resets = <&cru SRST_OTGPHY_U3_1>, <&cru SRST_P_USB2PHY_U3_1_GRF0>;
> > +			reset-names = "phy", "apb";
> > +			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
> > +			clock-names = "phyclk";
> > +			clock-output-names = "usb480m_phy1";
> > +			#clock-cells = <0>;
> 
> Align with the (new) documentation
> about property ordering.
>
> > +			status = "disabled";
> > +
> > +			u2phy1_otg: otg-port {
> > +				#phy-cells = <0>;
> > +				status = "disabled";
> > +			};
> > +		};
> > +	};

The above follows everything from [0], which does not specify an
order for the "standard/common  properties". For those this follows
the order of existing usb2phy nodes. Did I miss any other new
Documentation?

[0] https://www.kernel.org/doc/html/next/devicetree/bindings/dts-coding-style.html#order-of-properties-in-device-node

-- Sebastian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
