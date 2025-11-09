Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ECEFCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 23:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trUfbZ1+hCc2ekJgJuHF1iqY41owKXO06PWyvZ+V7Jg=; b=C1LaNGct5Djh8/
	CF0ru8rdDyM7vchvEdsiiqqS0tN9SsDaJbIa0Mu3Ni5UaiopgiwHG1DrWy0Dd4LuHGaTs92TeZP0d
	nxzintrYLO1f8mijJMjdvmVevnlLNqdjDMzBd2yaCKDbvblw5iCLYasgCIm2ZwL5ZQ9M6sMoQQBRo
	rJLfFhwG9iR6joCIxxO7VjPOfe07KNawJWD0A1rKD4bler7tlFjveYNqtuv5KDigeg5b6OHFpLb9y
	h9xYRp4Fu/okds2PQGTpmanu80cKx9svCBq6uoF4gpU1wAuQv82+jdAjazPO2fGR++cE33Bfw0LNX
	Ox9aFi2rPrbDqltNFcqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIFIM-00000004Wxl-3rjB;
	Sun, 09 Nov 2025 23:58:06 +0000
Received: from mail-vs1-xe2d.google.com ([2607:f8b0:4864:20::e2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIFIK-00000004Wx2-1lHZ
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 23:58:05 +0000
Received: by mail-vs1-xe2d.google.com with SMTP id ada2fe7eead31-5dbcd54d2d8so2217619137.2
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Nov 2025 15:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762732682; x=1763337482; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ciGXNa1z8OLW1upm7VDcuKg7m+mkewvk1om1QMnHPzA=;
        b=iqaiPT/cQSeiUSU/dHCoHKistj07Hg3iPBvg1nrJwlLFPeAmxV3F6Y7of5Rc5uOjRZ
         iIebhizJhmgrmGpIrAULkXYjiGRBCzroW/+r6sopATG2IbwhnDKS1vpnXik9lYHcSwzx
         +7ppqiSWg4ThGMY9FdVuc+j3HNUEcPn08n8mFKFoimI4S4GuHRs9V1Cz5AyH01WIZi2+
         o/7NC+xeQQRVXM/bNL2qPRkhxW/aRywrTYsyNqB9TwcnOWwfJ8zHd9FbneD20wKBWm3V
         TBR73YcTWR3pRfBkDHQMGw8cdN8ejjzOBq6DsXuHWqidkJ+noMQBMSfFW8ZN7cBpJEyk
         YYgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762732682; x=1763337482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ciGXNa1z8OLW1upm7VDcuKg7m+mkewvk1om1QMnHPzA=;
        b=E4ZgSbhLVFPRR9fjJcyV/+NQPK9hRIRyvEhxxBzYmW0HS4bVF3P4OMMyoSt9MUf8OZ
         0rtRhFj9X1e7DNTNErlXQWpz90XpE2ts4Te0F60thrZj3XNYUCr4yV6cM9Uz4wutBwU/
         u5W1FVMNwN1m2itwIOT92IhOGvT7qen5520tsXgcXRy5lq/Nwcjk5RFQmEvJMfBVdK4T
         CVL9J+xqLMS/bAJBtW+lpS9nfbsNML9xjL/MF8XMvC+tRbUDVyCbiz5MLfq8IkR6EPoT
         NdtwUK5aFCaEjAOupimN5coJJc0mUIX4yvYQEdf5Ixqq6naJqkMkBge7SLfENKtlBVBP
         5Z1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUff1i0o1fYYyLks8A8u0q6P4QjDOT7UVJV0bkgXx4G4pLK98g7hLLeCEJqgmsNtODD6wbNiIV//AEH1h7doQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvKN0bqEdO5t/xf0SDKAjv2ZYeXV4PibCHWxwIxlK0NiZiksi5
	g2efKEe/po8YbyOYoWiQmTWnyQFT3V/FFcfDl4ZshrZyaEi0u8LtfpbJ
X-Gm-Gg: ASbGncu4BBGJOV8Ssoz9Gzn2h1y6IZSAU9MxtOzjhFUdLog1ofz7Q0y0ZR8FYm5lw87
	RCBrob6FtFAfvKCF5GYXpy6LLzy81B4TsTWjTiewUKTqhZy3CzCVp9uGcNgE/YujxEomLJ94voM
	gJrtI+ZQ8jTSeRXO4YNbmXGvX4BtawoJXt+jSoCpipXFYohtkNgg/rjjbrd3Z3hd4B5MKT4IBcl
	8MGt2Bwir3xsCVfxdmJfCKt/1h5M6Z08vatTRHRBPdvh0gQ825MjXcfMvz6766t+Vhr/oobpgTi
	zeMXnf9/qzAYDCtjhLb8rJnbdN+4zZyKk8uTCZMd+yUOMa7RYzxG9V05vrssIudGc3/AmZqq9nD
	BA3201a79Su7wYYY536LJZaFvpBuCOP1bvX25QUwqfEZE5wPYEOF2IRn1BJRouVai5O8go5+a4/
	8cu9yrLhRB
X-Google-Smtp-Source: AGHT+IHkEshzMykihoxZN8xwmOnrJz2pDDGH7SWMAzmcaEUtc/A4N6Xa3uJOm+m//4yVDMfdlbkPlw==
X-Received: by 2002:a05:6102:3049:b0:5db:f031:84c4 with SMTP id ada2fe7eead31-5ddc475a644mr2405338137.28.1762732682621;
        Sun, 09 Nov 2025 15:58:02 -0800 (PST)
Received: from geday ([2804:7f2:800b:6140::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-559958320aasm6388204e0c.20.2025.11.09.15.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 15:58:00 -0800 (PST)
Date: Sun, 9 Nov 2025 20:57:52 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH 2/2] PCI: rockchip-host: drop wait on PERST# toggle
Message-ID: <aREqgL8JVYUcKO7R@geday>
References: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com>
 <20251103181038.GA1814635@bhelgaas>
 <aQrKtFT0ldc70gKj@geday>
 <17220ae9-9e0e-cb0b-63bd-eaf9a6ed6411@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <17220ae9-9e0e-cb0b-63bd-eaf9a6ed6411@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_155804_486452_B8A7DC4F 
X-CRM114-Status: GOOD (  26.89  )
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

On Mon, Nov 10, 2025 at 12:51:49AM +0100, Dragan Simic wrote:
> Hello Geraldo,
> 
> On Wednesday, November 05, 2025 04:55 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > I did some more testing, intrigued by why would a delay of more than
> > 5 ms after the enablement of the power rails trigger failure in
> > initial link-training.
> > 
> > Something in my intuition kept telling me this was PERST# related,
> > and so I followed that rabbit-hole.
> > 
> > It seems the following change will allow the SSD to work with the
> > Rockchip-IP PCIe core without any other changes. So it is purely
> > a DT change and we are able to keep the mandatory 100ms delay
> > after driving PERST# low, as well as the always-on/boot-on
> > properties of the 3v3 power regulator.
> > 
> > This time everything is within the PCIe spec AFAICT, PERST# indeed
> > is an Open Drain signal, and indeed it does requires pull-up resistor
> > to maintain the drive after driving it high.
> > 
> > I'm still testing the overall stability of this, let's hope for the
> > best!
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > index aa70776e898a..1c5afc0413bc 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > @@ -383,13 +383,14 @@ &pcie_phy {
> >  };
> >  
> >  &pcie0 {
> > -	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> > +	ep-gpios = <&gpio0 RK_PB4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> >  	num-lanes = <4>;
> > -	pinctrl-0 = <&pcie_clkreqnb_cpm>;
> > +	pinctrl-0 = <&pcie_clkreqnb_cpm>, <&pcie_perst>;
> >  	pinctrl-names = "default";
> >  	vpcie0v9-supply = <&vcca_0v9>;	/* VCC_0V9_S0 */
> >  	vpcie1v8-supply = <&vcca_1v8>;	/* VCC_1V8_S0 */
> >  	vpcie3v3-supply = <&vcc3v3_pcie>;
> > +	max-link-speed = <2>;
> 
> FWIW, we shouldn't be enabling PCIe Gen2 here, because it's been
> already disabled for the RK3399 due to unknown errata in the commit
> 712fa1777207 ("arm64: dts: rockchip: add max-link-speed for rk3399",
> 2016-12-16).  It's perfectly reasonable to assume the same for the
> RK3399Pro, which is basically RK3399 packaged together with RK1808,
> AFAIK with no on-package interconnects.

Hi Dragan!

Thanks for the catch, you are correct. But in this case it was just
for my tests and it crept in in the git diff. I wasn't really proposing
to make that change.

Thanks,
Geraldo Nascimento


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
