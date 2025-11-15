Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3F9DCEB2C7
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UhnqRktIvq9UQVgb2ldICBJkTI0Q6Our3T8XaIWwZk=; b=0zSKsPR22Ad5vj
	IlU7VZjJaWKOGh5kt7hBzVizmQnSdAmjpL9zpE6tJJ8YAMC4OjkcJ1YBbQOIDhd2NIn2iaqHhUb7G
	K3Qh8L07MAmWD0UZfhlJRvMSlktpgiiMxx5lq+VnIGcpWBsF4xj6fGZAB5KSBEI6jANK6GCxOsLGP
	XZte8WzNq+PDeh3sapp+Z5TAk/dXVFEhcdc+jjElvtCd8iv/XAEC9cuB+HXiid1qm++4XzOwTSwdj
	Vs+/HKWBWTvbR5W215CVlcclW0rUja9YuhG7JxT37NCKnheqdOrZmS2JYN1QzdY9+FQIsJnWvUm9k
	d0oMiGe7E+M9AahXJ91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCy7-0000000Dfrs-1EjC;
	Sat, 15 Nov 2025 09:53:19 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCy3-0000000Dfqw-3rXC
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 09:53:17 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-3436cbb723fso2206806a91.2
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 01:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763200395; x=1763805195; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2Vqb7SuC6LdXp/wdF4JsayTM+a28625NUpBifotjx9o=;
        b=abe3YKyu8BUWxKYmY5bZk8WIIfyGT+tCVWuu2qkSsSOOkxqmIWXu9930Of1AS6SBwt
         CYAQuGR4PYOvkNFITCoJsjQQcLXeDx5hTerTec/6QbYsmtX841VNFUde622KQoiEv23I
         VNG9ZVUsCEVajCI7P+uHJ0UjnKcQSyZcEAwzuMxZMuvW+Fsb4KGTH/zbdWDHYlWckthc
         vukv+cCLefyRC2UdQYVS0MastmQRNXIx2+wtEx3tXw+C2a4GJT8DUhAcpprmx4ixmnIE
         qhtH9vs0V5FaELQJnMhPWFMFValFnMAV+x0qZq/jWSHyliAY539spLkgMjZ1ZtDkrF0l
         yoXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763200395; x=1763805195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Vqb7SuC6LdXp/wdF4JsayTM+a28625NUpBifotjx9o=;
        b=OpvBlHT/XaEk/cm5qs8I7xpTCPd1L+jWliV78Tn9tUnuCyWbNI2wFZL9Bsp2vakKuI
         DFnSjzWaYpXfOLF5UTq2XEwy9dKXG6FLAdmMZwAy0k0j6JYsZ5uA0m1UH2dBo4tZOgqa
         Dkql0jcZ38ffhSKX6gGcjnAUd5lTSuqTjb9i5wwbCkerJZPBbAu3y51SlDLnB+DZ1jn/
         LGcgYFurHED1hoWX1k8vhdYU82gas31bdKvwTAmI8J6ukwpPoWTfQFI/wUevFH6PlMio
         o4T0yZeqkgFfMj9/uGSFznY2KGAlhbkb1gCgmkDmDn3BQwIrUXqwmNg0Pp/eUAoMnNUP
         AxpQ==
X-Gm-Message-State: AOJu0Yxisb+J9MfDhdUiSQ312CV4BpDaK8thMSJoMyiye+/AdZozqzIt
	PwTdgg2gKyiWehy/0x4bSN8J63hdj+dwbU7HZaiCzYN44ueBL1KFMzcA
X-Gm-Gg: ASbGncu4pM1jY8MvpvyEaE3eiq+N+Ucs+FkpuMYHIrCKAD7pLDwSwU7IEXmMc2Ob4tK
	rLIk99ivFoBtRjUeFloKcyTq6cPrZGKjBODJb75L+If6wwwLAyNjCX6aHtTavK3Gfg3Dz4taPB1
	X9Wz1Uodc6DpRemgYzv9+kdJ7CGpYltObGj9FbasHGYq+EBQoqtSy6Yyl011jdtfR+qrG2F7swt
	+YcfXDqnc3Sj4v/9hj0m/wiXbwDkw+iTM23SFdHaNSy+ONjxCw+jXzQdeJP5zjo5mH4SPbaTtvC
	SWaYH0Qs7PeIUwc6LXtwVv2kzNaYHSSByFjUF9cQsmj+rCSCzuM9cR6uAIILewtf/cIbTchFDBp
	V99E4kYnEyeBwCfn+5prD7MF6SwZWaWQSn+1t2QqzwEIIC5Ij+sT+ArjxpH5tiw0ePxPxURNTAg
	==
X-Google-Smtp-Source: AGHT+IEYodkeyJHv+xttwJ6T2c5dA0IZP7idIsWFckZLeRS6DJQ3X3PmhrR/pJfn24PkyDvZSHZZRg==
X-Received: by 2002:a05:7022:5f14:b0:119:e55a:9bff with SMTP id a92af1059eb24-11b4120001bmr1447186c88.27.1763200394907;
        Sat, 15 Nov 2025 01:53:14 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b06088625sm20242225c88.8.2025.11.15.01.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:53:14 -0800 (PST)
Date: Sat, 15 Nov 2025 06:53:08 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
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
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: drop max-link-speed = <2> in
 helios64 PCIe
Message-ID: <aRhNhKjneo1Ny0O6@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com>
 <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_015315_981859_435B49BD 
X-CRM114-Status: GOOD (  20.77  )
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

On Sat, Nov 15, 2025 at 10:36:17AM +0100, Dragan Simic wrote:
> Hello Geraldo,
> 
> On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > Shawn Lin from Rockchip strongly discourages attempts to use their
> > RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
> > failures that may happen. Even if the odds are low, drop from last user
> > of this property for the RK3399 platform, helios64.
> > 
> > Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > index e7d4a2f9a95e..78a7775c3b22 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > @@ -424,7 +424,6 @@ &pcie_phy {
> >  
> >  &pcie0 {
> >  	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> > -	max-link-speed = <2>;
> >  	num-lanes = <2>;
> >  	pinctrl-names = "default";
> >  	status = "okay";
> 
> Looking good to me, this rounds up the prevention of issues
> coming from buggy PCIe Gen2 on RK3399.
> 
> Please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
> Though, could you, please, add patch 4/3 to this series, which
> would remove the redundant parameter "max-link-speed = <1>" from
> rk3399-nanopi-r4s.dtsi?
>

Thanks for catch, will certainly be included in v2 after I get a few
more reviews.

Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
