Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D96F6FD461E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Feb 2026 05:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkutc03PfnY+spJNiI6MnMOtjugERU//b4mLNKT/1AU=; b=qgTrwV9Edc63K8
	7sWgdMpXm3qyEx6BFR+xsTypK+XPfh0y/rww1PEAApfJ589FSdrusvZLOP3c15YwEAZc8uLQ7vF75
	F/lKoOATgLNbdj6Yxt9vz7gWGUZKLBL4Lk+P8S5PpWbowtRGozXwAxavB5Qd6Bhktox2CN140k8DE
	gNy8R9cA2gwO+3ehPU2n+DBggt8VL5XwtWnRBrYt0KYuhI3nZRYelCWYpYJxJ80qnP2gMYGbGs49Q
	qcUayxbIf5FVqNmzTND2ndHxAtxiIbZLYygLUnLSZSlz5PCj9WQy1iSB6nqiaKvwux0WUZqdlfd4o
	Hc4pr8gafmDn4tyjbFYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvTa9-00000005P5s-3nBD;
	Thu, 26 Feb 2026 05:06:37 +0000
Received: from mail-vk1-xa2d.google.com ([2607:f8b0:4864:20::a2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvTa7-00000005P55-3OQa
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Feb 2026 05:06:36 +0000
Received: by mail-vk1-xa2d.google.com with SMTP id 71dfb90a1353d-56753dc51baso214577e0c.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Feb 2026 21:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772082394; x=1772687194; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OHjA+gD2gl/+zcPzbbJ9jvIxiqgAysEUeuXfqossHNc=;
        b=bUWGdEDd9uj40L50E2E9Ra10XgNtPlIv7/CZcHuVIKeotDSyeZMygqFW/C2x3RVEUg
         Cq2Kpj+spJHVO7x4306fPZ2nBa2TXAZ87ZAsVRscuOMtbUXJdS0DvQ76D5+AH8cwbusX
         UAWlcUnINWOPN9oRM+O7ydrqajn4R4QuyA68JSyaVSznajRyvHOg6qnj/o+OdgSRqz41
         HMaSGRWllx6iy1MfBawhRK90bEEd7pvoE6edzkJufYe5CNDHrvd8dYk9P1Wqc/nUSuzd
         ODgHrglEI7WPoud+NQfXmw7XyfU+CnxaGHBoegpp0vPPJdGCFd2p16uYzvthokVRxESM
         UnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772082394; x=1772687194;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OHjA+gD2gl/+zcPzbbJ9jvIxiqgAysEUeuXfqossHNc=;
        b=hFzdUFPEkHuzzLt1jqele+Thli5ap1rofJy6kISLymT/vB5SbhmBAW3RvpRM1q386P
         yV/tA6fLrTFStwuQgJOJKcfBgH0fYklhl1CfpH5sNlBKiwOtGmX5Zh24cSvZhBeHTWRp
         cdn916ETbvS5IL0+YecSyCHN9kAmP1CRnveG6PcUh0cBBm9TPUwS7ByN89xmPSuhrrmQ
         Y9vpu9E4VVBq5BJLcZg2cz/HcJIZqhlDeDC5D4NB5z+Engs/chiFyzVL4kQsytb7Ep6t
         ++ZLWLdjh0nO4ThKwtQgI7KgeqrvxFRPp8VXDNme13HeFBxG3ZdQATc0QHr6F0NS2CDy
         YBSA==
X-Forwarded-Encrypted: i=1; AJvYcCVA8n95xBa9vjTnJUlPLhxknldIPKQt5I5ATbejlmLwBSs1qtgnjx3KKMY2fQ94Khint+bwCJHZQ7C04t0CLw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3trzqZjl7I+OznJHKBwFethnItcouRY/HS/KwCmxrsAvSWmkI
	jV9aytQA/aa1XJT0dTwlM07J1OEIJ2YImWuHmx0zAjKTzL65GNZJo3/1
X-Gm-Gg: ATEYQzyWSKRYnZChXKXFHzH2L+Lqpo39yGqCDMofWw6HPapBfPCVgVwuz2I/wUTdIlY
	iOhQCJR4xsBG4Ru6c4HkEWLgyPA4UbMu0rSeblhev2hz8i99JB18hR91Hq8rEeXX73FxPAVMIuj
	00E/oCIaqM5GvYUp1lk9cv2F7EOVBOuCVUnq7JS7t2TGwsDNc2QeZIXhw0dxbwUGKJb8wGwX3TM
	ak/cC/EwdI0BtfqVDSDO5J4D8z1rpfh3H6rvHvyV3e+E+Mw07JBTCoS37NhUeH6L+NRIlvoNzX6
	GVmRCFHkv953Gtu937xJwz0pXHbhWoLindB42gRWg8v1wZqMc1Uwu2g9MZAbxcnVQc0Y7mvfEtc
	78a1p04RARv/BgTbBBgUkgn+kvNy+8vdvaIMZb2Q5sO/Aw7Ncx2OyvFbYoVBYpbk1Z0EjRI4IbL
	xyfizYTbxE/A==
X-Received: by 2002:a05:6122:2a55:b0:566:221e:a98e with SMTP id 71dfb90a1353d-568e48f5862mr7505040e0c.18.1772082393912;
        Wed, 25 Feb 2026 21:06:33 -0800 (PST)
Received: from geday ([2804:7f2:800b:f14d::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a920493f9sm1290815e0c.13.2026.02.25.21.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 21:06:32 -0800 (PST)
Date: Thu, 26 Feb 2026 02:06:24 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] PCI: rockchip-host: comment danger of 5.0 GT/s
 speed
Message-ID: <aZ_U0ASjuK2fZi5h@geday>
References: <8db835ffe384db63ee598a203751b298ad1cc267.1772057799.git.geraldogabriel@gmail.com>
 <20260226001229.GA3794668@bhelgaas>
 <aZ-RaBLVfEZA_FxU@geday>
 <e0aa10e5-ec0a-4d0d-6f71-6797286221cc@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0aa10e5-ec0a-4d0d-6f71-6797286221cc@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_210635_874198_D699A0F7 
X-CRM114-Status: GOOD (  14.47  )
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

Hi Dragan, thank you for the review!

On Thu, Feb 26, 2026 at 05:52:58AM +0100, Dragan Simic wrote:
> I agree about removing the effectively unused code block that handles
> the "link_gen == 2" case from pcie-rockchip-host.c, but then please
> remove the PCIE_CLIENT_GEN_SEL_2 define from pcie-rockchip.h and its
> single "link_gen == 2" use from pcie-rockchip.c as well.

Good.

There's also some code that needs to be dropped from the endpoint
driver.

> 
> As part of that additional removal, an early check for "link_gen == 1"
> should be added to function rockchip_pcie_init_port() in pcie-rockchip.c,
> because that will become the only "link_gen" value it supports.

What do you think, should the driver bail out completely if
link_gen != 1 or just let it force 2.5 GT/s speed with a warning?

I tend to go with the latter.

Thanks,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
