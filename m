Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C33C25B7A
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 11:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TwoS5Rxox+nqY2GTtEg37VSz5rwUFPSRXrGvbBTzRGs=; b=w+QnB5qEV1jXBm
	I/VlEwVhACN7fM4i5BHBhAIA5au4iSZQ7MxD+rQc+foE6wa0EWLMFqKHuZRA59Zg+ez211X3f9Cm5
	83MqriG2/4M58CZ1Rhhca/sKTaId1vp3X8PVr31H941J5QYs2h5DAZCY6Va0v++faNTeqCqrD8PcO
	GfquGzvNPbHIxRnkKkKlTn3ZfKeqMwd+92Ba6UbPTP4OfrUSWZ4UXEMHUtq2gFE/qOj+WPei7qqOu
	BLPl/Dd6hVfX+uQyuQTUQQLedPo1dgMw/zSduw/waYeaWhC6sGX526Z4jmY8Pey3CT6GhPJkfwYqH
	51MUXAqkjJ0HVg+gIeXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vek-00000007dO6-2Eh2;
	Fri, 17 May 2024 11:21:46 +0000
Received: from mail-pl1-f178.google.com ([209.85.214.178])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7veh-00000007dMs-37z6;
	Fri, 17 May 2024 11:21:45 +0000
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1eb0e08bfd2so4882415ad.1;
        Fri, 17 May 2024 04:21:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715944902; x=1716549702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jn+RIDUkf3/BZVVCviqN56NNCVH5vL0DPPQQRoSbg3g=;
        b=Fc0dubmBhh8RhvXHawbqlBLs3Px9abfeaNrr/NwN3sd0Rjt6oD/cn/F1zxJii6XoAk
         237Vmm9kXSU6fs+KjN9DzX2w5DfcpYszV9ZJZvgFbvoep26mKXXhI8H56l0DabGpXJ1l
         39hmX+t5T40jQun1265nVA0yiXQz7h2sYIptQDqyKsfr/f/ipLwiZ/lAkXnxaXlef8y0
         ohAjdNpRhhZtYYv920luHY1kRL2vSDZKAU4Ioi3iBU+cFeRamX6SR32c7VhWmT9aYhpc
         A3PYO2Q05IWGaaFcfxDFEqOZ4C4WgQNmR6yv9EDix/XXvhO2HrK+CW8iBEjdz7BC3cZe
         2ung==
X-Forwarded-Encrypted: i=1; AJvYcCXyzuVLfAGRfdX8X/iLOuLjZ04n9RlqQe6AOtA/N5IeNywoc8IpNOjVX3k8Kvoo/YeQ6pJ64jO7zz5uE6AB5lqWoH3ImjEC7W6DHA2VQPC+5uSZd6y2TH7/ZqV5Suh9CugJTNVb9AVfPmw3JR4X/7zTIUmMsKAgMZY=
X-Gm-Message-State: AOJu0YzVsdW6XV0hMx5ufMX+LNpfVxviLSuM+CGPouGwCn8To20vVULS
	EhV7SloSks8ZL3ddtUL8iGtJSGA5+IqzXAopkXxYhMgzE4ffwtGf
X-Google-Smtp-Source: AGHT+IFZFxWQm02AYDAYBE9xRx/6Hp6ZxJQsmgya1Nc5RoSrp2j2eI5OpH4MHv2En0GrntatXs4fZQ==
X-Received: by 2002:a17:902:e5c2:b0:1eb:2fb3:f9fd with SMTP id d9443c01a7336-1ef43c0cecbmr273809195ad.14.1715944902340;
        Fri, 17 May 2024 04:21:42 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c2568a3sm154618455ad.300.2024.05.17.04.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 04:21:41 -0700 (PDT)
Date: Fri, 17 May 2024 20:21:39 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	mhi@lists.linux.dev, stable@vger.kernel.org,
	Slark Xiao <slark_xiao@163.com>
Subject: Re: [PATCH] PCI: rockchip: Use GPIOD_OUT_LOW flag while requesting
 ep_gpio
Message-ID: <20240517112139.GT202520@rocinante>
References: <20240416-pci-rockchip-perst-fix-v1-1-4800b1d4d954@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240416-pci-rockchip-perst-fix-v1-1-4800b1d4d954@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_042143_916200_39BA9450 
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

Hello,

> Rockchip platforms use 'GPIO_ACTIVE_HIGH' flag in the devicetree definition
> for ep_gpio. This means, whatever the logical value set by the driver for
> the ep_gpio, physical line will output the same logic level.
> 
> For instance,
> 
> 	gpiod_set_value_cansleep(rockchip->ep_gpio, 0); --> Level low
> 	gpiod_set_value_cansleep(rockchip->ep_gpio, 1); --> Level high
> 
> But while requesting the ep_gpio, GPIOD_OUT_HIGH flag is currently used.
> Now, this also causes the physical line to output 'high' creating trouble
> for endpoint devices during host reboot.
> 
> When host reboot happens, the ep_gpio will initially output 'low' due to
> the GPIO getting reset to its POR value. Then during host controller probe,
> it will output 'high' due to GPIOD_OUT_HIGH flag. Then during
> rockchip_pcie_host_init_port(), it will first output 'low' and then 'high'
> indicating the completion of controller initialization.
> 
> On the endpoint side, each output 'low' of ep_gpio is accounted for PERST#
> assert and 'high' for PERST# deassert. With the above mentioned flow during
> host reboot, endpoint will witness below state changes for PERST#:
> 
> 	(1) PERST# assert - GPIO POR state
> 	(2) PERST# deassert - GPIOD_OUT_HIGH while requesting GPIO
> 	(3) PERST# assert - rockchip_pcie_host_init_port()
> 	(4) PERST# deassert - rockchip_pcie_host_init_port()
> 
> Now the time interval between (2) and (3) is very short as both happen
> during the driver probe(), and this results in a race in the endpoint.
> Because, before completing the PERST# deassertion in (2), endpoint got
> another PERST# assert in (3).
> 
> A proper way to fix this issue is to change the GPIOD_OUT_HIGH flag in (2)
> to GPIOD_OUT_LOW. Because the usual convention is to request the GPIO with
> a state corresponding to its 'initial/default' value and let the driver
> change the state of the GPIO when required.
> 
> As per that, the ep_gpio should be requested with GPIOD_OUT_LOW as it
> corresponds to the POR value of '0' (PERST# assert in the endpoint). Then
> the driver can change the state of the ep_gpio later in
> rockchip_pcie_host_init_port() as per the initialization sequence.
> 
> This fixes the firmware crash issue in Qcom based modems connected to
> Rockpro64 based board.

Applied to controller/rockchip, thank you!

[1/1] PCI: rockchip: Use GPIOD_OUT_LOW flag while requesting ep_gpio
      https://git.kernel.org/pci/pci/c/fa562e9441e3

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
