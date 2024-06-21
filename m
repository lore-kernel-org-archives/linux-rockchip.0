Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B365C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 19:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHgvrK7IcATxvYtOXiG0VPR3s3/6XPkGD8ci4D6o0xE=; b=WLnfIcUiXZBVaB
	wsDpH87/e9J9dL2fdORfMR54b7y++Okx1/QGLp5EqFYFIv/J8xE+EhNPV96NZQ5AaWomqZ6Db1duI
	mhOiEL2lCjud2ZJYXltjRofGxWvkBxd+DUNSEYS3js0vCmBgnv26Pz39/1YkEf/QlaQCjNe73Bt8D
	3Bf73pdYDsR2S+LLR43xfTLdOQu4GBnWJM23XgjAkwqucZVsFfFiq6Wu+1StvAL6M/sK7RWNYyVe4
	lIT4hYlvCnB+EIZmB7S0Z3vnW2y5n7Db5YRva5xNHBoNa+OtS7AFDii43E+zTJEnJxabzfnWbFfrJ
	FMc8grEWPkRtWTQ9l/vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKk6p-0000000ANqv-3sZ6;
	Fri, 21 Jun 2024 19:39:43 +0000
Received: from mail-pf1-f169.google.com ([209.85.210.169])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKk6m-0000000ANpr-3a8o
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 19:39:42 +0000
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-70601bcfddcso2234538b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jun 2024 12:39:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718998780; x=1719603580;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qcjCj1d5K3iJ5YuAuheFrJXPu/KrnBD3KZXSkLcbok=;
        b=eWUYItZtsxEyDYquV/YAYuYZM8sXTHkjr4qc1oJctNiAfujNTMSQ69jN+e44OegYvw
         k1t/JLjg6v4fsn65Jmg///GSPweeM9lCocUIMjCLIftaycAx8BIs5O7tBGGE5zr+9omO
         fePSt9F9Ier6pH4Q/AY5CgeO205NNUk+lyxMPbBKdwD5w6ThmMs17d2oUSNHSopNjTwk
         7UtOIy/L+E2N+Z1aVp3tzbnuymOI6znK8WUgdzvjwvz9KAKqhaedZPJm65xie+0Z8EEB
         7LXToILHGLb2j8SKuzjx7VA2wrn9Wj17jo2Xu2RIbb+F7mV8R178FfqJqmGpJ1eEmDzD
         MD7g==
X-Forwarded-Encrypted: i=1; AJvYcCWY094O3yncuka9Dgi2Lgaj59f/zCF1ZMmPh2R4oQSsaXTArBesnCvmrtiYQyvxQj0cHbwxbhMuptBNr6ii5QnTweVIfnlislsde0jS+FIF5RGg
X-Gm-Message-State: AOJu0YxPdIG6a66CHzBsiZfWypESoTKQvuhsuyBCEiIx+OQ7jbJWFAuy
	Fuuw/5L/fUoH/I1OlEQDT8C25QxHINX6UY+tEkcSFDeE29ODb/3p
X-Google-Smtp-Source: AGHT+IEYUbVQCtzTwul6T6G76wz0/njvH+sWwE8HKvA6iwxYKKzfFD1GGcxnU3GSiWtOY/JWO+LNFA==
X-Received: by 2002:a05:6a20:651e:b0:1b4:b4af:6047 with SMTP id adf61e73a8af0-1bcbb55fe74mr8085989637.33.1718998779547;
        Fri, 21 Jun 2024 12:39:39 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70651085891sm1789309b3a.3.2024.06.21.12.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 12:39:39 -0700 (PDT)
Date: Sat, 22 Jun 2024 04:39:37 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 00/13] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <20240621193937.GB3008482@rocinante>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
 <Zm_tGknJe5Ttj9mC@ryzen.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zm_tGknJe5Ttj9mC@ryzen.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_123941_118692_C2D454C5 
X-CRM114-Status: UNSURE (   7.90  )
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

Hello,

[...]
> If there is anything more I can do to get this picked up, please tell me.

Looks good! As such...

Applied to dt-bindings, thank you!

[01/06] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor specific reg-name
        https://git.kernel.org/pci/pci/c/3b287269ab60

[02/06] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor specific interrupt-names
        https://git.kernel.org/pci/pci/c/b96353773d24

[03/06] dt-bindings: PCI: snps,dw-pcie-ep: Add tx_int{a,b,c,d} legacy IRQs
        https://git.kernel.org/pci/pci/c/6f308c017c27

[04/06] dt-bindings: PCI: rockchip-dw-pcie: Prepare for Endpoint mode support
        https://git.kernel.org/pci/pci/c/9b0b9b588c00

[05/06] dt-bindings: PCI: rockchip-dw-pcie: Fix description of legacy IRQ
        https://git.kernel.org/pci/pci/c/5f262f67cbc5

[06/06] dt-bindings: rockchip: Add DesignWare based PCIe Endpoint controller
        https://git.kernel.org/pci/pci/c/ff36edde817e

Applied to controller/rockchip, thank you!

[01/04] PCI: dw-rockchip: Fix weird indentation
        https://git.kernel.org/pci/pci/c/e7e8872191af

[02/04] PCI: dw-rockchip: Add rockchip_pcie_get_ltssm() helper
        https://git.kernel.org/pci/pci/c/cbb2d4ae3fdc

[03/04] PCI: dw-rockchip: Add endpoint mode support
        https://git.kernel.org/pci/pci/c/67fe449bcd85

[04/04] PCI: dw-rockchip: Refactor the driver to prepare for EP mode
        https://git.kernel.org/pci/pci/c/ecdc98a3a912

Applied to endpoint, thank you!

[1/1] misc: pci_endpoint_test: Add support for Rockchip rk3588
      https://git.kernel.org/pci/pci/c/657463e393d1

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
