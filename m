Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9976BCCFA04
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 03:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqlSj9JwptmJrix8wvmQhcqbFhdhhHOciq3GWW1jmWg=; b=iietj3DIGspr/t
	kSrS9+iz+1ZE0IbLtEjfPXodwV3CBsldLqVN7ocpReE23GTNnYRLgNqhwC4XGJ26Hcdo0mv6LdcYV
	DmgODQ7fLvWg5YgJMD5KSclx4w5u/3Pp14hhmj5g/fOWINVSyHCvMfq4MAfvIrwo5kAT8s/HsSf6s
	U543Dg3o53RgmFDT+s+EDMYMNszvgOA5aZJrUw2m+aPt9ba72ch1lohK2fNjNWMoNsMwobf6qrBme
	br9Mjv7JjzQiJ9hU2ywH2WqpfkppRGJVdy0REwsMF/lG74XNLI/KwlihFXN9HUDBAPR6tFWMEsND0
	XswRs7l83OAm7BKMvfvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGUcj-0000000CycS-3aFZ;
	Wed, 05 Nov 2025 03:55:53 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGUcg-0000000Cybc-1doH
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 03:55:52 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7c531b42dbeso3977584a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Nov 2025 19:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762314947; x=1762919747; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wv7IaACCUzIWH4jmcnmsJlWAx3z3kfU+CsmKqPSjqn0=;
        b=h9h3Z5Sl89b3le6Rlbc0qVgriaLZffJbAW7/FeHb2W8DoJM7LRWEVxXbyIzCH2b2rC
         rzF5UgtCAhNHR3bYPPR8iefqAwznNS4MrK6vInk521HsdK9gscEgwK/RQgl0Dg0mtYv2
         P453C612DWX3S1LslRoHQEE1q1J90o1eFpOOkVNi6ZwP/Bn/t3kO8ZpRLV4+i0MV01it
         K5vUTJuBEAG/isB81zx4hutgNi7bAb6FaKUT+EdUnsASP8bMrfao0n3j0Wpd3/pL/N2F
         WgkJTSkTsMopcsITyRXLffF+y7rm50jqron+wKOu9rtcz2ycl0Rf4lQdrps0BWzsj9hU
         z7BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762314947; x=1762919747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wv7IaACCUzIWH4jmcnmsJlWAx3z3kfU+CsmKqPSjqn0=;
        b=cXrSePvg1RS9GsJwlfUOXFP+ILNP+Rfdvx1FZCgEUSiU8LtJyj5eF0/vMRogozE491
         FShxGx5HlUFomXxh8hBjDnmigUPA+ymHBrAvbiE6g5sV49qEnXaqHwlDsTde5Ypf7vz/
         NMs+lCUNjxxvM6Ds2WQ22ik3nDY8o9RC5UGDG5RL2yp1CPpPrt+GN/njHkQFsFMcT85N
         8cty4KsCWIxNFljRI6BLk3Yjx7U9qEtbuzXPAdjOnqKply1hUSjzj+VbV2eakbaoPoZ+
         3/8XvNL/S9qIlsAa/3gRWUhKh97cE71qSZ4vDpM85yT95GqigZQ9DcTVAoVGzBVuCTSo
         YKrg==
X-Gm-Message-State: AOJu0Yy3Dtu1V545H5ZEKyP7gjaq2+9u1LwmINeG5tfhJ70woIXiYp44
	KAg38JhbkW3dVlOWVHJmjOWHzTH7koH90dA+Zt3NI0oyJAqCuwNfaNhG
X-Gm-Gg: ASbGncvWChKS0EmmU+lM9hzIQK82nxoupLVmE9JChsBAXzGCJhgSh9JRhftsG1uW/X3
	0v3uuCezQytE9dJcnj+SRONz0wW35wIzN2Z/g+3EJg0y4on9A+3eWAf1SS5zvTdGYXjZg0eoacu
	Aml096wzc78dgHu6QMFlCWlFx6nYVWkp7+YVvaKTOU1fRYxFmCCDkW/K8QvLebDEXDf3lUoIXeT
	/uCga8MJXENlaoLRIV5vhqmbQQhwt8VmIME9ZqFYJBwTp6QTA6/Lx2EyO2nUC0+/dVTUdIwbBb+
	noVmkJFftw5RYACcd1Mh95w9ud2MKLIvdtK1gNVUmqW7TLEWB4wf5wJpg5c7He+BWdW9hILiiUY
	pmASjSWRpTTTGeg3sM3MG2kfmYg6BUkW4e6tlQVBHOqVHUSf8l41BI8mRKxfrs+Q=
X-Google-Smtp-Source: AGHT+IGWD1WRog8lycQihpGXGLWzNtQQjp25qDmoblZFd4CJMmxeCSVNZEnsc+5uJPofTa4YPXd5Fg==
X-Received: by 2002:a05:6830:91a:b0:7af:1d61:1055 with SMTP id 46e09a7af769-7c6d13e115amr1105444a34.21.1762314946928;
        Tue, 04 Nov 2025 19:55:46 -0800 (PST)
Received: from geday ([2804:7f2:800b:2c34::dead:c001])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c6c246fb2fsm1599542a34.13.2025.11.04.19.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 19:55:45 -0800 (PST)
Date: Wed, 5 Nov 2025 00:55:32 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
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
Subject: Re: [RFC PATCH 2/2] PCI: rockchip-host: drop wait on PERST# toggle
Message-ID: <aQrKtFT0ldc70gKj@geday>
References: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com>
 <20251103181038.GA1814635@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251103181038.GA1814635@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_195551_242281_1CCB1027 
X-CRM114-Status: GOOD (  24.35  )
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

On Mon, Nov 03, 2025 at 12:10:38PM -0600, Bjorn Helgaas wrote:
> On Mon, Nov 03, 2025 at 03:27:25AM -0300, Geraldo Nascimento wrote:
> > With this change PCIe will complete link-training with a known quirky
> > device - Samsung OEM PM981a SSD. This is completely against the PCIe
> > spec and yet it works as long as the power regulator for 3v3 PCIe
> > power is not defined as always-on or boot-on.
> 
> What is against the spec?  In what way is this SSD "known quirky"?  Is
> there a published erratum for it?
> 
> Removing this delay might make this SSD work, but if this delay is
> required per PCIe spec, how can we be confident that other devices
> will still work?
> 
> Reports of devices that still work is not really enough to move this
> from the "hack that makes one device work" column to the "safe and
> effective for all devices" column.
> 
> It's easy to see how *lack* of a delay can break something, but much
> harder to imagine how *removing* a delay can make something work.
> Devices must be able to tolerate pretty much arbitrary delays.

Hi Bjorn!

I did some more testing, intrigued by why would a delay of more than
5 ms after the enablement of the power rails trigger failure in
initial link-training.

Something in my intuition kept telling me this was PERST# related,
and so I followed that rabbit-hole.

It seems the following change will allow the SSD to work with the
Rockchip-IP PCIe core without any other changes. So it is purely
a DT change and we are able to keep the mandatory 100ms delay
after driving PERST# low, as well as the always-on/boot-on
properties of the 3v3 power regulator.

This time everything is within the PCIe spec AFAICT, PERST# indeed
is an Open Drain signal, and indeed it does requires pull-up resistor
to maintain the drive after driving it high.

I'm still testing the overall stability of this, let's hope for the
best!

Thanks,
Geraldo Nascimento

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index aa70776e898a..1c5afc0413bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -383,13 +383,14 @@ &pcie_phy {
 };
 
 &pcie0 {
-	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	ep-gpios = <&gpio0 RK_PB4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	num-lanes = <4>;
-	pinctrl-0 = <&pcie_clkreqnb_cpm>;
+	pinctrl-0 = <&pcie_clkreqnb_cpm>, <&pcie_perst>;
 	pinctrl-names = "default";
 	vpcie0v9-supply = <&vcca_0v9>;	/* VCC_0V9_S0 */
 	vpcie1v8-supply = <&vcca_1v8>;	/* VCC_1V8_S0 */
 	vpcie3v3-supply = <&vcc3v3_pcie>;
+	max-link-speed = <2>;
 	status = "okay";
 };
 
@@ -408,6 +409,10 @@ pcie {
 		pcie_pwr: pcie-pwr {
 			rockchip,pins = <4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
+		pcie_perst: pcie-perst {
+			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
 	};
 
 	pmic {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
