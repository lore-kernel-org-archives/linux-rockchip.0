Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12A4DCD4F49
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 04:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxB+aI2+hhQPQNjYmtuzqpefJgg0HnEDZtMmUJRJBuY=; b=bGlPX7QPRVFTST
	djCftB2sNiokuS5yVbgDwKZIshNVNPn8PAl8liqB3wIrI2hQftwWFpliPdAos6KX+ELm+B+nCQzmC
	1ESR3B6wHpuk16Et9ANSKtAQUdOOElPQEg9UG/MhTQqRXAI9NaqQGo2X9Kjtk9V955Z5A17eCkYtd
	7ZE5PNxujN/H65Ngg6jf9ASF3oaDty+zBrG6nslc78vOdHZ/XPyHxVnRxXti8Y4tuBk7Z7ZjFPzNQ
	iEXyCtoSarqPagAJmacfP9HSYqFZWXFs4W/yWprkh4BdGIDKlBb0dMStPa6999Fu8lsp3hZXDs+YV
	ELO8f/fDrt/mWNpH1VyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJldG-0000000BYdv-2o0N;
	Fri, 14 Nov 2025 04:41:58 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJldE-0000000BYdD-1KDB
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 04:41:57 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-b99bfb451e5so991644a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 20:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763095315; x=1763700115; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jYITvpqCiW1DtaQqw+zoQjW9fGy8Lts1f9UcjxkD50s=;
        b=T4Hodm4G9H5tf2P9nbHyQn84CiRvvM72h7Xlzupwyxra8Pg78BaLCEICLWZMFepT/1
         4S25zkwYNThN/0r4ECL8j0F4gxK82uojBn+wLpHybdKqRP7m1rR6phPuIPkflnOpHgNT
         nP0vAMpldO2PVGamAd5BaEJlJ2+FUl97oCwXHLQ0YvjsoBFAe/iEWFYw2Mv2YvDI/q3U
         oKJQfBNPAVDbV53VA0DB10TO0cGhhxFN1InFGo9pyvhMjpwBYBpBsKVhall7Pq6U9hic
         1VPEu9VHczJv7mWN5cCRBphBqyZPIMTcjIMSRMlyUJDop00c4COl9XW3+oYv0tNb5Z9Y
         jqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763095315; x=1763700115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jYITvpqCiW1DtaQqw+zoQjW9fGy8Lts1f9UcjxkD50s=;
        b=gpeMwnEndzyuaJYSEyyXDWxGp0w4WURg1ibCUOMrCJ6uHc0OQQn1aCXjXwDCNv9c3C
         agrfj72V0uCi6P67iUyUpj8iEdqu5Tpn4CpfCy/YxBw3DGvaXZjLW8RYyhQZGKPQ/r7g
         J4UqRbe2ykAoxwqQQrQf8OSMZuGhWF+yiiqSLnz56hlkAQckQ9RZ2t8kETkuEl+515p5
         jStCmkN7Lhn10OypESni3CkvFLMxPlEjQsWy1oZOacqUEcntG9HA5wcHCusvHxhznIYb
         3e+vjPYZkxfkv+Mp0HBMVWf70ZFvzViXeBYdREvaVUrzrtmwWCkJPPTz+V32U2AwFbEr
         YKWA==
X-Forwarded-Encrypted: i=1; AJvYcCW+/H+LmwDZjQjyeg+6Akqxy8VyRwQEVGsdfw0aa9ykFUWkjSCEYsR01EUGiWgw7iMEt5is1aTtC+ZnU8xyxA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRC/5xrM9awyOVrYetM1wzbjGpkWbC6+lqmS3PdMXBq2sJf/Dh
	qxOqYtYt5n3EyLSdDZC38GuPijmQNAdCH9pGQROUkFSgm5zlTMEck53p
X-Gm-Gg: ASbGncsaGTV+uhAjtuz+iD0XsbWK2ZXx2Zp9phQJhiwEbLhd2e6GvKmtGoIRKX3LUzI
	7/4EUyUGzUhQg3SZ43Beq0XobuajiVlq2lDu76zHWDN6cowgzKlUr9LDMOD9YUKpFEGcp0zY6ap
	wycqC90RTahYc6lKFPwSeAe5wTUaUADkcP6B6f8vnCbtnmFhMxMyErZCUPI+oOcJEBdQRaLlkgg
	t7MLu6uP2n0GDsU/R+FPFJ6+xp29WIMzIpvhkZqR+Yn/p/MXB3lgNZFQ3u+kqOz6ylyFG2UILiP
	Hi6t9F+q0Xn+qYS2IFbaAFBG3HooPrNHYhZyDcmgx4+sEUefwJd8kEdVTdoDKBGsRQJaGoeiMAQ
	tn0eDr8V6ZcB45l1IVbRnEeTLjudOm1vJURySx+7IZWW2JzD4veJZlq24yXVo5n2dGcRJ2Vj2gX
	q85ecrj4mb
X-Google-Smtp-Source: AGHT+IEYHLOamGM5/rhDQ8pIrx2agy7W4DgZWwY06i1uk7cuxizAxZJhIaEBAx3eQH7DJBOHIqA7NQ==
X-Received: by 2002:a05:7022:5f09:b0:119:e56b:989c with SMTP id a92af1059eb24-11b40f82b10mr512024c88.3.1763095314813;
        Thu, 13 Nov 2025 20:41:54 -0800 (PST)
Received: from geday ([2804:7f2:8082:36cd::1])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885cdsm5676123c88.6.2025.11.13.20.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 20:41:53 -0800 (PST)
Date: Fri, 14 Nov 2025 01:41:46 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: =?utf-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci <linux-pci@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip <linux-rockchip@lists.infradead.org>,
	Simon Glass <sjg@chromium.org>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Kever Yang <kever.yang@rock-chips.com>,
	Tom Rini <trini@konsulko.com>, u-boot@lists.denx.de
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aRazCssWVdAOmy7D@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
 <aRQ_R90S8T82th45@geday>
 <aRUvr0UggTYkkCZ_@geday>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aRUvr0UggTYkkCZ_@geday>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_204156_346927_3BEBD842 
X-CRM114-Status: GOOD (  15.63  )
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

On Wed, Nov 12, 2025 at 10:09:15PM -0300, Geraldo Nascimento wrote:
> Hi Ye, Shawn,
> 
> Here's more contained workaround without resorting to clearing DDR to
> INPUT for every GPIO:
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index ee1822ca01db..1d89131ec6ac 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -315,7 +315,8 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>  			    PCIE_CLIENT_CONFIG);
>  
>  	msleep(PCIE_T_PVPERL_MS);
> -	gpiod_set_value_cansleep(rockchip->perst_gpio, 1);
> +	gpiod_direction_input(rockchip->perst_gpio);
> +	gpiod_direction_output(rockchip->perst_gpio, 1);
>  
>  	msleep(PCIE_RESET_CONFIG_WAIT_MS);
>  
> This results in working PCIe for me, pass initial link training.

Sorry for the inconvenience of more mail, but I'm providing as much
detail as I can.

This hack has been confirmed to work in U-boot also.

diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index 19f9e58a640..5702b607ee6 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -329,8 +329,10 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	writel(PCIE_CLIENT_LINK_TRAIN_ENABLE,
 	       priv->apb_base + PCIE_CLIENT_CONFIG);
 
-	if (dm_gpio_is_valid(&priv->ep_gpio))
-		dm_gpio_set_value(&priv->ep_gpio, 1);
+	if (dm_gpio_is_valid(&priv->ep_gpio)) {
+		dm_gpio_set_dir_flags(&priv->ep_gpio, (priv->ep_gpio.flags & ~GPIOD_IS_OUT) | GPIOD_IS_IN);
+		dm_gpio_set_dir_flags(&priv->ep_gpio, (priv->ep_gpio.flags & ~GPIOD_IS_IN) | GPIOD_IS_OUT | GPIOD_IS_OUT_ACTIVE);
+	}
 
 	ret = readl_poll_sleep_timeout
 			(priv->apb_base + PCIE_CLIENT_BASIC_STATUS1,

So my report suggests this is not specific to Linux and because same
workaround works in U-boot simplified driver model I suggest you check
from your side.

Previously PCIe link training timeout, not working. Now I'm very happy
with working PCIe in Linux and U-boot.

Thanks,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
