Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E4A7C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 15:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2xcF5BuKDy3pnl09d3hXLLYbwKI9+E/aOaa4Fbt6+U=; b=KONULq2T1ftqym
	YMDvVsdqYj7iI02RgE7BUcjcLhs1TdSw3iuGOCUAVGiyxHg7AF+WR4RIqpDtcg5tD8UzIEU5o34eF
	uTLjBA+YgckgoGj67/h838dADK3H0AcL15JElUcVcRwKRQOGVoOBeR4sgG5qylhmWEaOjfe8wuJbI
	zLdLFRbvOpd6sBwfLNsO7pvA5/GeH+N9wa06Oll1trsfUoMrwfDzLgxZKAABcUBZ6owbP/fx/+Zd9
	ZpFOjALLdImqlWeZ1vGszu2elnBr1hChb4DgtrcouqfP9yk8RG5O4jdAuXUA310CuOsQYVG+M30RP
	lt/T2M42yS6vLEiZzsdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL2tm-0000000CMee-1giN;
	Sat, 22 Jun 2024 15:43:30 +0000
Received: from mail-pl1-f176.google.com ([209.85.214.176])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL2tj-0000000CMeB-1TWY
	for linux-rockchip@lists.infradead.org;
	Sat, 22 Jun 2024 15:43:28 +0000
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1f64ecb1766so23042195ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Jun 2024 08:43:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719071006; x=1719675806;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Tr32xZGVVaqv7jAiwzmOcZLqHSUA0J9mSCiEtEoaTQ=;
        b=M4pfsw8CsQd5rJ/ia4y5VxBf4lEXaAPeB45BmZje+LAKCviOixXnQNEVIckHehi9OY
         p1PO0/yj3QEIWTyInBemV5MqM1Ic++Tsc+3CaAw5lK2YVTOKhANEgG/FbaUwWEIfm6Oz
         u9N/rdZanWkxWsu60iyM7ckYKQ7j3WLIP+x3bU+XDd7duN9+JURM2sKYBlWeVjA4Y9Dg
         0Z9Ck6UczHHm1g2d+V3FWZB3R2bRKi4O+4QqDbCgeQE37YRkZSdVWcdoJ66N6CKY4VmQ
         +8+dcNgxZwBmWt+Mn8iq7UMi3PZzssOkMKqdxvAR6wWihPWaIJ3bqiaKShEQaM0hA8US
         qeag==
X-Forwarded-Encrypted: i=1; AJvYcCXUdul+nTHHaVEJfOLopW8q26NKAsuxDfeDBHdKHZ3m/t3NuSTZMMGdOT4BDrJ0FCkPeQv7epG7RVbxGlDkcq0cAdp1JEPbyrdB7Uq5dM3Oi/mS
X-Gm-Message-State: AOJu0Yz1EC3s/ng0I5/CwWFbr0lyUDSJANRrcH9zmuZK+xnKw16Kab8B
	MRAaBavOuMPShzF0vq+qbWfhnLmSUbhFRvmCGseJ+k6kpFDz35nd
X-Google-Smtp-Source: AGHT+IGUXVafMgf2JONHoy51XKuI3VfKD5p9JBYhQqxen0O92HROgW6FcusfSXMkgP0V9Vf4JstoWw==
X-Received: by 2002:a17:903:18d:b0:1fa:2001:d8ff with SMTP id d9443c01a7336-1fa2001dad7mr6104195ad.52.1719071006450;
        Sat, 22 Jun 2024 08:43:26 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb3206a1sm32466645ad.77.2024.06.22.08.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jun 2024 08:43:25 -0700 (PDT)
Date: Sun, 23 Jun 2024 00:43:24 +0900
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
Message-ID: <20240622154324.GA391376@rocinante>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
 <Zm_tGknJe5Ttj9mC@ryzen.lan>
 <20240621193937.GB3008482@rocinante>
 <ZnbUHI5GEMCmaK2V@ryzen.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZnbUHI5GEMCmaK2V@ryzen.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_084327_413109_231609A2 
X-CRM114-Status: GOOD (  14.55  )
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
> Could you possibly include the commit:
> 3d2e425263e2 ("PCI: dwc: ep: Add a generic dw_pcie_ep_linkdown() API to handle Link Down event")
> from the controller/dwc branch in the controller/rockchip as well,
> or rebase the controller/rockchip branch on top of the controller/dwc branch,
> or merge the controller/dwc branch to the controller/rockchip branch?
> 

Done.

> Additionally, since you picked up Mani's series which removes
> dw_pcie_ep_init_notify() on the controller/dwc branch:
> 9eba2f70362f ("PCI: dwc: ep: Remove dw_pcie_ep_init_notify() wrapper")
> 
> You will need to pick up this patch as well:
> https://lore.kernel.org/linux-pci/20240622132024.2927799-2-cassel@kernel.org/T/#u
> Otherwise there will be a build error when merging the controller/dwc
> and the controller/rockchip branch to for-next.
> The patch that I sent out can be picked up to the controller/rockchip right
> now (since the API that Mani is switching to already exists in Linus's tree).

Done.

Hopefully, this settles things for a bit.

> May I ask why all the branches for the different DWC glue drivers are not
> based on the controller/dwc branch?

No worries.

> They are obviously going to be tightly related.

Normally, we prefer to apply things to specific topic branches, but I will
revisit this approach going forward, since changes between Endpoint, DWC
and specific controller drivers are often tightly coupled, as you noted,
which can make things a bit of a mess, unnecessarily.

We are going to do some clean up once Bjorn sends his Pull Request.

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
