Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1628EC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 18:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EoX0xVAXUlXgVBmLbUBjaiR822yPr+YgA498ez8H/I=; b=T/Ebp5Y4P4Zr/L
	NSkMk0SbDJgIydaAKykaMh+erufvbOKNZB6XweeI3tE8zSFqkki4AGRQMu94AIuwW85cPJZSSVfoH
	8n1fVKZEvMsjKjHalmWroOoroTmF211yuSU7iwgc9ERR+cD++bnlFkIH08TqXABeNRtPt+60gTXxy
	AAw3MuaHA4FXvlgFQBC19RU5zU0CyBtEAcIOV9CYinsoOk1X9wsOxHm8mU1YkICCc6RmtDUvz9Vom
	oGk/Iz2qRGJTcUPKh2qs28IhpWJnlXe47GA+hXvTNl1dTGWntK99MAFmxS1uCls+GQ7EvpSGvBJsn
	sWSwfEQ1pBaccVZrN8Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7J7p-00000002VhS-3uJf;
	Wed, 15 May 2024 18:13:13 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7J7m-00000002Ver-0AN0;
	Wed, 15 May 2024 18:13:12 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-572d83e3c7eso2391296a12.3;
        Wed, 15 May 2024 11:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715796787; x=1716401587; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pch3Ih7LaL+PpkBrCQxVPogM1fubUEsmwW5xj0Btblo=;
        b=LHDdUCG7gODCv2yTi1S9V6zqXUxmW/hP40mErVX8tnxXfPAtZ4A6xBtBNyOjy06722
         64HPUXnskKQ+L6cqWZp8uk0vYj6MusEznbYSSeFahfF1pMbFaoQH59te7PPLN3lpj9W9
         1IqRGf8ZjU4j6IrzAtyDVhcrJJhydSy9uNRc4e9cJN0g0W+pfjQVNdsuRzvcySalFK0/
         0wMiZd4gw5YZy4yFpn84a+wF7D2T1e9qYh1fMBsH5ZU7eDZ5AMmK8rG0klx43QNvxYEF
         nUzEgehMHr756X7yMU+DsCuBs5nlYlEgZvJ/tprfE6RzjVLFej3D9xWcacH1TdcUHu3t
         V30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715796788; x=1716401588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pch3Ih7LaL+PpkBrCQxVPogM1fubUEsmwW5xj0Btblo=;
        b=nfduoZJ277ufKfCo+OfDUEvCn6qXCBATN5ekH0wYVQWzsBQXaFU6esszvDTtKcyu6J
         DFBENRL+Qf3C/Xi553uaavcBgQDQknoEtYsk9VleDV1nqGUTck4qtuHXbL93wE1qAef0
         3n3fLHIERGA1EL3m/7bDTqqzLXw2AZzm9z8Vxog9/3kVn5mfTQ6aMjjsicFQiAI/hgg3
         qxwqpIb7jEq8BYRjb+sXn81QozWjo67A55uFhBVdQ1YiyGRhEiVETcuAXa5W3BLlK7Kp
         n46Zf5UfTgiDHIxNngGYb6cX3jbsmbyZ3bYbDiumz79EdXO+iYQZb3shfFqZ1lyCBoI2
         HqBw==
X-Forwarded-Encrypted: i=1; AJvYcCURCl9UC/rtzROGjbGFPw5esdUl7L08ajO+eds2TAn+uj+Y8oSZJiaMitP5doaGn4TjbQk7d7ut4k0MEHFCISAzQVm8T+ZL4FAhxhXfoRsZdOHhCnvglwtqhAPs8J2sXhQfvxQMh7q7Yq88+oxroxbhsf+Q2msia7A=
X-Gm-Message-State: AOJu0Yxt0p4WY3Kf782rCjqOvkIt+5SIIPk7UYSM3fwe1Clyzrvpsl/r
	jOcGcNxCP3PtZ+eajD3xcyXkwYwJSUaBnY93ntzIKXzxED/OjAIG
X-Google-Smtp-Source: AGHT+IHgPNyYK5FYIjTE7nmsJggKHf4atXCrV0muQ+BI4PZ2Ak2naECuuuyZfglhJRj+gtpVN5yqIQ==
X-Received: by 2002:a50:d710:0:b0:572:1589:eb98 with SMTP id 4fb4d7f45d1cf-5734d5b9098mr11072869a12.12.1715796787300;
        Wed, 15 May 2024 11:13:07 -0700 (PDT)
Received: from yohan.gigerstyle.selfhost.ch (84-72-24-4.dclient.hispeed.ch. [84.72.24.4])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-574ffe6d3f6sm321658a12.0.2024.05.15.11.13.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 11:13:07 -0700 (PDT)
Received: from mgi.gigerstyle.ch (mgi.gigerstyle.ch [192.168.0.5])
	by yohan.gigerstyle.selfhost.ch (Postfix) with ESMTPSA id 6087A58E;
	Wed, 15 May 2024 20:13:06 +0200 (CEST)
Date: Wed, 15 May 2024 20:12:58 +0200
From: Marc Giger <gigerstyle@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Jianfeng Liu
 <liujianfeng1994@gmail.com>, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 sfr@canb.auug.org.au, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove startup-delay-us from
 vcc3v3_pcie2x1l0 on rock-5b
Message-ID: <20240515201258.090f754f@mgi.gigerstyle.ch>
In-Reply-To: <273slx5qkz6ja5qlfjgcaukuzifzsxkdabsld3qodvxaekbzet@ipir56a6afj3>
References: <20240401081302.942742-1-liujianfeng1994@gmail.com>
	<432000a6-1de9-4452-beb7-6954677e34c8@rock-chips.com>
	<273slx5qkz6ja5qlfjgcaukuzifzsxkdabsld3qodvxaekbzet@ipir56a6afj3>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_111310_137191_1CD19402 
X-CRM114-Status: GOOD (  41.45  )
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

Hi,

On Fri, 12 Apr 2024 18:09:13 +0200
Sebastian Reichel <sebastian.reichel@collabora.com> wrote:

> Hi,
> 
> On Wed, Apr 10, 2024 at 02:30:16PM +0800, Shawn Lin wrote:
> > Hi Jianfeng,
> > 
> > On 2024/4/1 16:13, Jianfeng Liu wrote:
> > > Property startup-delay-us is copied from vendor dts and it will
> > > make kernel not detect pcie wifi device. If I run command:
> > > "echo 1 > /sys/bus/pci/rescan", pcie wifi device is detected, but
> > > my wifi device RTL8822CE failed to load driver. Another device
> > > RTL8723BE can load driver but no wifi signal is detected.
> > > 
> > > Removing this property will fix issues above.
> > > 
> > > Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> > 
> > startup-delay-us just make sure the power rail is stable before
> > any action is taken to start the link, preventing the device from
> > unable to work stably. So it shouldn't be the root cause I think.
> > 
> > Could you help try this patch to checkout if it works for you?
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > index d684214..df30127 100644
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -167,7 +167,7 @@ static int rockchip_pcie_start_link(struct
> > dw_pcie *pci) struct rockchip_pcie *rockchip =
> > to_rockchip_pcie(pci);
> > 
> >         /* Reset device */
> > -       gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> > +       //gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> 
> Is this removal actually needed?
> 
> > 
> >         rockchip_pcie_enable_ltssm(rockchip);
> > 
> > @@ -180,7 +180,7 @@ static int rockchip_pcie_start_link(struct
> > dw_pcie *pci)
> >          * We need more extra time as before, rather than setting
> > just
> >          * 100us as we don't know how long should the device need
> > to reset. */
> > -       msleep(100);
> > +       msleep(300);
> >         gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
> > 
> >         return 0;
> > @@ -311,6 +311,8 @@ static int rockchip_pcie_probe(struct
> > platform_device *pdev)
> >         if (ret)
> >                 return ret;
> > 
> > +       gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> 
> I suppose it makes sense to use GPIOD_OUT_LOW in
> rockchip_pcie_resource_get(), so that the GPIO is requested low from
> the start instead of being high for a very short amount of time.
> 

I see the very same issue as the original reporter on a Orange Pi 5
(rk3588s) and a Orange Pi 5 plus (rk3588). In my case the onboard
ethernet interfaces and/or the nvme drive are randomly not
initialized properly. This is with Linux 6.8.9. Funny enough it seemed
to work all the time on 6.8.4 without any issued (having the bifurcation
patches applied).

After applying the following patch (with the incorporated suggestions
from Sebastian) everything seems to work on the Opi5 plus but on the
Opi5 the nvme drive still wan't to properly initialize.

In dmesg the only difference in repect to pcie/nvme I can see is that on
a working system the following to lines are shown whereby they are
missing when the nvme was not initialized properly:

nvme nvme0: Shutdown timeout set to 10 seconds
nvme nvme0: 8/0/0 default/read/poll queues



---
debian-linux.orig/drivers/pci/controller/dwc/pcie-dw-rockchip.c
2024-05-02 14:35:35.000000000 +0000 +++
debian-linux/drivers/pci/controller/dwc/pcie-dw-rockchip.c
2024-05-14 19:25:18.519434456 +0000 @@ -180,7 +180,7 @@
 	 * We need more extra time as before, rather than setting just
 	 * 100us as we don't know how long should the device need to
reset. */
-	msleep(100);
+	msleep(300);
 	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
 
 	return 0;
@@ -240,7 +240,7 @@
 		return PTR_ERR(rockchip->apb_base);
 
 	rockchip->rst_gpio = devm_gpiod_get_optional(&pdev->dev,
"reset",
-						     GPIOD_OUT_HIGH);
+						     GPIOD_OUT_LOW);
 	if (IS_ERR(rockchip->rst_gpio))
 		return PTR_ERR(rockchip->rst_gpio);
 
@@ -311,6 +311,8 @@
 	if (ret)
 		return ret;
 
+	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
+
 	/* DON'T MOVE ME: must be enable before PHY init */
 	rockchip->vpcie3v3 = devm_regulator_get_optional(dev,
"vpcie3v3"); if (IS_ERR(rockchip->vpcie3v3)) {


Thanks,

Marc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
