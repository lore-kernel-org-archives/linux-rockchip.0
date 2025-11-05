Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11D1ECCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 21:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCW7732n/T2JPSOkCqv3BRzRYIcLgmOS4WxXnul9pJ4=; b=kU0cDILsMhlvEs
	O18wLw2wZfgTRMRJOQokNDSyUUTPI340VOU14o7qs9oxCIg/Dt8bIK6CyQnVf6bOjq8w7s9/gkOka
	iitNwSr5X5yr6e9yG9eFkeib2tlRUFhwP3DCSUKWgSUD4/fuo6iv10+gZravo2JzrVUJczr0aUTBV
	mwpvoDaUL19efY+43cr76V2XFVAHA18I1nJ1BzBzTnJyXhzjW50g0tvf3m0VAvLvbLz5Vo8s6beNh
	/8tBFZWgklBESTOY2nw5lWI0HQNv0f4WkcqJxFlAFEj21y1SkktBkubTdOGCjjVhSodv0ELna9gC0
	XX+ZkkdZiEFk5O2h9D/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkxN-0000000EVgv-0CSb;
	Wed, 05 Nov 2025 21:22:17 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkxJ-0000000EVfd-41JQ
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 21:22:15 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-3c9c379af8aso252691fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 13:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762377733; x=1762982533; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0/FBmebtO0Vkrgh/mrFAUBv/BWvq5VVY9yGcMnDDP8s=;
        b=hTtVrYIPqEaeuDSwvXh7Xbhf9531fmC/TK2ewjO+pzn5Nu/99/PSvZMEUvg9ichsBH
         WWoyXsyx2MPl3Fo1Uf/svKj4JdErxwoZy8T7k32Lvl28NyESC/BP1g/Z16g0BR8mCOpf
         nRWnt5WMWRqBpv71znbSJevvf7O9r4gGX9Cb2FFU3BTc5hlWcPudBGWd8Fbxkd98Z43C
         DPrho4s9xDoUGYcprkXOuAct9CxAI54wbjx//XnQf1G/VPoLnjSqKMsrP6X2KDK6y7K7
         shtid73ltAjCxrGMUVDAZZRZFExSTh2dbE4H80IK5PW4gcZdLdNMt3wwcT0OksiVTiAg
         EWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762377733; x=1762982533;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/FBmebtO0Vkrgh/mrFAUBv/BWvq5VVY9yGcMnDDP8s=;
        b=Stg/C5sLwuSsax6OWHwJJoBy+aryxCC333O6E0W+7xf+EFG8uZRt7NOTAaYct9Haa5
         nH/shJeoH2Sdz1iQE2EjH6O4jJiLa7dye+NQuVILr9W6LR8RGCOWO7gADwcu57RBswei
         6eSDnblYrEnLSdsNzj018leYyzQ3mMJYjxHPGMWaEHAeX07pi62FhPMbyyMjjNca4cX7
         Fi6sxJo0gdGf0KeexVhd2qvfh4KDWN/39uJnLerSr0RyL3P86qGDNbgRRRKBVlt+ogdh
         2atKw6zHwZpyJr5BNrAM4jS8S+Vz05UB0or1FDnDE6Tf1SgHy/v4qZ+l4Up0Iyd0z5Mg
         MiEg==
X-Forwarded-Encrypted: i=1; AJvYcCUEWLB0WUpQM54nqKqEEBkFx8tsG0Vp1j3DvgSAC4cBVN8Cci32qOuV4pS0pI48wbKOf/xON1GJ70XWA0gkTQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwczlMf/MF+26FqMLy/3OL6OgzQWCHhhxej/gtVjbDecCP+8m9L
	0Zi2osyNqh03KAv9fhH/seaO7mZCNgrUJyhMnPZXkWfDJAifRvcWMNVI
X-Gm-Gg: ASbGnctzoMYFmkhPqvJAan0RvsZYvKbyvkOKDtfSoTIsChCQii3tIFdmsHLBd5QQb8A
	+PvWTfJUDCVnnFd8Xqqavau7HsCk5YoL0yIpSVnYVcunDcq0H8xn09InOBccq6zPZERgGYqeEy7
	J+L+0arg/KLpFzCZK++g0Cg4QUVZN+I1szeyS8uKA7nQHXmZ3JSYxz6FNeq1dOGcQl+tfnnaBmQ
	SgFCLaugZTTu2T+xH+YJ/44ogsXP91Kw/8XwMFLFoN39+X/lUMVw1Cuf3K3JrllHS8IWQDFnOUA
	kmhoSCRH+OBuvQWaQFrAZaD7ye3xFwORQO8oHpWu7Iz9COPFOkOLVuBObG0qvbNtl5XF9kyzsR9
	qmJ87CWxk5BGsQ9xS3Z8X8P+o5FM/qSngap9ks8godubMstygj7fWxzVAPH34p2oqs2sep3CLtI
	Y75cHKWVZo
X-Google-Smtp-Source: AGHT+IH6bmLILBlZkClZJKGGVOQMJ8uDofSrhNGHs3xLSaav5plph/1k0YKtCJFMX/UFHGhYB7B7Sg==
X-Received: by 2002:a05:6870:1484:b0:3d2:e6a7:e938 with SMTP id 586e51a60fabf-3e2e3d8c98amr572130fac.15.1762377732693;
        Wed, 05 Nov 2025 13:22:12 -0800 (PST)
Received: from geday ([2804:7f2:800b:2ebb::dead:c001])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e30847fe83sm153392fac.6.2025.11.05.13.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 13:22:12 -0800 (PST)
Date: Wed, 5 Nov 2025 18:22:00 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Diederik de Haas <diederik@cknow-tech.com>
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
Message-ID: <aQu_-JDy7qqeviUm@geday>
References: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com>
 <20251103181038.GA1814635@bhelgaas>
 <aQrKtFT0ldc70gKj@geday>
 <DE0N4LA8MOJD.236O12UZ3I3C4@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DE0N4LA8MOJD.236O12UZ3I3C4@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_132214_025599_BB2090A3 
X-CRM114-Status: GOOD (  13.25  )
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

On Wed, Nov 05, 2025 at 10:06:53AM +0100, Diederik de Haas wrote:
> I have a Samsung PM981 (without the 'a') and AFAICT it works fine.
> I had noticed that the PERST# (pinctrl) was missing, but 'ep-gpios'
> was/is new to me and I hadn't had time to research that properly yet.
> Good to see you already found it yourself :-)
> 
> Cheers,
>   Diederik

Hello Diederik,

Thanks for the heads up!

Would you mind testing the following DT change to make sure your PM981
continues to work fine?

Thank you,
Geraldo Nascimento

---

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index aa70776e898a..b3d19dce539f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -383,7 +383,7 @@ &pcie_phy {
 };
 
 &pcie0 {
-	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	ep-gpios = <&gpio0 RK_PB4 (GPIO_ACTIVE_HIGH | GPIO_SINGLE_ENDED)>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
