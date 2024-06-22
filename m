Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D3CC41513
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 15:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rH51pY084UN6GFKoJ229tWYVE/hS8VSCTp8DJD/3RQE=; b=puHfJbZ1aP+JA4
	mG301Zk030a7PoUtJMLliyVEmwEeczS2/5nPAYaHQo6MvUImsjoBj8Bm3GyUxAbLHp58ZbIYn35pg
	pxXyoTlpgcMow4febJfQ+ST2YzxkfPzQVXwxv0g+e+SsgE3wjEthhydQ2U/8ZEm4+BHUK3zvLNxh6
	rFUmiMamFGaick/UkaZooNIjedUGjAxAjqnAL5HMhb+FG4Je5ZQqpKfwoJ0I9m+M1hVgeWOJCfvLT
	I050xyIXMoc8n/nLidl2qWVx5XFCz2gsxYtm8mizjpjJEzoxZ39H7Tjve8JqALI1yetaeRrKPO0ut
	I9DWa9gEWjpm0cNtP5Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL2RP-0000000CJG1-1H9N;
	Sat, 22 Jun 2024 15:14:11 +0000
Received: from mail-pg1-f174.google.com ([209.85.215.174])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL2RJ-0000000CJEf-0Unx;
	Sat, 22 Jun 2024 15:14:07 +0000
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7182a634815so848057a12.3;
        Sat, 22 Jun 2024 08:14:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719069244; x=1719674044;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FO5PuN4wq5B0n05Wpt0WfrhR94xtZbfNGgCNETz0nH4=;
        b=r4cIIg7E89bsYK3PJnvORsCnm26BRRMC/XImorVsTZ+4Gajjpga6rz3qkW8bQ8E7if
         WiHBSGo/9TqgHjW2E7Z1l5eTNIN9x+cxD8idtD3lqNgZeEQ8B56GbaqqIoz2yWw6S+cC
         lJgBMsq3N79zjhFfYxuVR+zmPvCp9LA3IETkJojdou4VVuWEa6/OI825YS95kdF/eeMH
         EEKxLSgs5LrOmsosWl+XQNWytQ8NOBW+hGu399Pc+iFpRL7UZBwlwmCIcdCMOzxcc5AQ
         Q1PI40dh9/zYVQZfFkLM3Q9o2Uv7Dz4Vv5QHKfU5g1mInet468Q5RnoxJalW+xExVufJ
         VjqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSH7Lo9G25cLjcngf3wJNNifGzw+DTdMVpJh63ve0sQ+8ArM1Qn5gAMmaTmupU6Se1QAQ14UcN9KWbIA98thzTDQdtfG46geEUr7esWeGUUPynyB4rHaQfxnP3ecrtCejAr+5N4JtSWdN/8/R0sWTnViuSCcOx5Sg=
X-Gm-Message-State: AOJu0YztidUzu1rTxxpPLobtj1dpEqt2pJt3D9osqp7w3vfr26MGqJeO
	ea2XDdfUGzVoXp2q9gZ87CQRYdYwGGdnoVI9AwtT/x/stcMU3oryMlMYdb1vrJM=
X-Google-Smtp-Source: AGHT+IFzdBoJnBk9O8C8z68+YR6Xs1YwPWH28vkjGb0smIvJxb8fWhIPUnkx/43Kk+KYpyLDmtFJvA==
X-Received: by 2002:a05:6a20:2da0:b0:1b6:e885:1bc8 with SMTP id adf61e73a8af0-1bcf7eb5403mr71392637.28.1719069243633;
        Sat, 22 Jun 2024 08:14:03 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7065129633esm3197736b3a.153.2024.06.22.08.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jun 2024 08:14:03 -0700 (PDT)
Date: Sun, 23 Jun 2024 00:14:01 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Use pci_epc_init_notify() directly
Message-ID: <20240622151401.GA379697@rocinante>
References: <20240622132024.2927799-2-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240622132024.2927799-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_081405_193105_C4B3498E 
X-CRM114-Status: GOOD (  10.29  )
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

> Commit 9eba2f70362f ("PCI: dwc: ep: Remove dw_pcie_ep_init_notify()
> wrapper") removed the dw_pcie_ep_init_notify() wrapper, and changed
> the DWC glue drivers to instead use pci_epc_init_notify() directly.
> 
> The endpoint support for the dw-rockchip had not been merged at that
> point in time, so commit 9eba2f70362f ("PCI: dwc: ep: Remove
> dw_pcie_ep_init_notify() wrapper") did not update dw-rockchip.
> 
> Do the same change for dw-rockchip, so that the driver will not try
> to use a function that has now been removed.

Applied to controller/rockchip, thank you!

[1/1] PCI: dw-rockchip: Use pci_epc_init_notify() directly
      https://git.kernel.org/pci/pci/c/246afbe0f6fc

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
