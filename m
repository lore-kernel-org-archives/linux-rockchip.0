Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8869C04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 11:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyvGR21kmSy+X3gSSUK5HaWvv64XMhOdf33k0febfts=; b=upjTBUTiCESc2T
	WAcC6lK6ioOuG0WxA4kRjfd9hIahBiRLys4d/qR71fWGjoYgib/5KH6laxD47P8wI13pmy1ynLbP4
	0YHlGQ9SOhns4aTN+Gwm6wcxjoPwZ+Q4LYA0HDn8SawFDoEooCBeYtPCIp0JC1VRkCRH3Kzx9Oet0
	xjRSPkGaOmhwZb9sEzdb674B/RFfUeXGF1vmJCq5ZkLMJkz519G7wpzxW5A4gclfy1zT6S9/hy9Iy
	47Uksy6S30BSmFiALpElUXPRt7rBrkmKnfQaT/pDwlVv5xeX/ZKMCClu9rrbhK459jHEEsBuquMeS
	fbQ9gEuToNHDZd6qAnqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vd6-00000007d5F-0LSh;
	Fri, 17 May 2024 11:20:04 +0000
Received: from mail-pl1-f180.google.com ([209.85.214.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vcz-00000007d46-3WYk;
	Fri, 17 May 2024 11:20:02 +0000
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1ec486198b6so4425265ad.1;
        Fri, 17 May 2024 04:19:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715944795; x=1716549595;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ysN0ROd4aJxVqOS5IX1BKY4ICPkmZb0ZSOUJ47QUlUQ=;
        b=RZcip+mPPOdZ56DsT4jLkl2qev/fY2q000mEwt97SX3G3Sp6X4bMymlJPpnRjwaYAG
         mr29ICF2n+NX639owlYAyhZ0qVj2th+qbGR6ByciRPe5YgJEK7Dun6qH8ve3JF0rm3l6
         0Ycjtzvd8ZktJ/OMbu7Zb310knybgSyHB5sLFhYw8kSchwJjqe/fQNMbaGCmM/0OBxbp
         9BtnOmaxQRrHl84y34MykAXIqT2vDFc8d/5CTXXZX2MI6UWxGQ8Zx38BmC/CHH62lTvM
         Y/BNOcFUgmqJPSli9kxJl6gcZacc5mPansvkwkls8vsSMhq1WGbxgzvma0A6R9I7sDIA
         rk2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUTzC/BAgq+F1I/Ofu/HzDyrc4csjcQlNcsuEhCUylwuZn/SSsejGBD7cDgRugsXoiVh4ON/FTMRwvRUI0usv0cXfU8vZlInT7lEVwxFh0Kf5D2QbFrlW8NHkMFmx0mWnpXOVI90xluPgVxsmxc2RGldgBF/ANH91M=
X-Gm-Message-State: AOJu0YylW16h7tX3Bdu4usQB12Ce+D+lA8M8WYOtp5P3ofaw+qPG0Js9
	vKCQ0/DSEDi7379DR91C9VzKvYCcJ7pdnnY2vKwNkJUYXrYwH7T3
X-Google-Smtp-Source: AGHT+IGur15vntAU/MQOSYbsND3WB1TbI/5fELdfbxBqKI/c+l0TBJn+5Y186ofKzK0svZUAOp7KYA==
X-Received: by 2002:a05:6a20:4313:b0:1af:cbe1:8a50 with SMTP id adf61e73a8af0-1afde0b5bfcmr22050469637.10.1715944795534;
        Fri, 17 May 2024 04:19:55 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2af52b4sm14939490b3a.174.2024.05.17.04.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 04:19:55 -0700 (PDT)
Date: Fri, 17 May 2024 20:19:53 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/2] rockchip rk3399 port initialization fixes
Message-ID: <20240517111953.GS202520@rocinante>
References: <20240413004120.1099089-1-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240413004120.1099089-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_042000_492914_8A826378 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
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

> A couple of patches to have the rockchip rk3399 host controller port
> initialization follow the PCI specifications around PERST# signal timing
> handling.

Applied to controller/rockchip, thank you!

[01/02] PCI: rockchip-host: Fix rockchip_pcie_host_init_port() PERST# handling
        https://git.kernel.org/pci/pci/c/3392b74f3065
[02/02] PCI: rockchip-host: Wait 100ms after reset before starting configuration
        https://git.kernel.org/pci/pci/c/46a610678fef

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
