Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BD18EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 12:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBnVk4EVaE7DQhXwognd5UqiGi+VH5bnkvLp2/YS0GE=; b=j4oxaG7pchWYoC
	XjCJoXYfRwdWzCQbdXyw9jGoL/YDSh5V2styerO2XncoQ40wPI44Mw5m3C/NEg4S1a2KjFCNIo7d6
	nmUSbBD0YiGFCgi7ys0BbcVw9EZ7r+telbwxmxqLlPfDWrCXDPaQ8T19mhviIY0E1y/ctjirxSEiW
	aIc3Ay387GAZRhmopIOrLggZlAXe60ZOAZIwuAr3IepRRdG5JtxHOnfpHg3xC5pw0550kFOu/5gVG
	p4cbeBe1XqHQ21B/BOvTog6mIAEQrugU/OGeo5GWqVSaBuODSWOyiAkUJyF83E+X0bsHTE8wuxyqx
	kd3XRTq+N2urUHdS6f8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGIM6-00ARUd-05;
	Mon, 03 Jul 2023 12:08:34 +0000
Received: from mail-pl1-f170.google.com ([209.85.214.170])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGIM2-00ARTg-1X;
	Mon, 03 Jul 2023 12:08:32 +0000
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1b7f223994fso34554665ad.3;
        Mon, 03 Jul 2023 05:08:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688386108; x=1690978108;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1RQZiBYkGXoDrkdvY5PoVYRfWP/etmDOBicF5bYDcc=;
        b=Oek2cPXssm8VKE4fnm0zoQz///wrpyaxjtdoYZW1o8leifalcFx4Zp3UukuV5VqI0X
         xJfEMmIWFRESoCeImZVgL+UaqVT5AimvcFsn7CvkefLReXZAsLJHu5mvTw4pUS7HNhf2
         /eMbXN/IqPdqXxkysLFniD6mppNZKjp0n98c2jx2IEMYvY3gq++UiVePw4KbDK/xjACT
         Vnu6hVsKGYNoYZWmkgLk+TYW3Zo0DirUVKQClP2JTedo1TniJ13ZJalpBEs+hmi54CEa
         VQ4oTKipD9WAmKfzvlczzfQSnQBrwI1iLtpRETcLCXycmflAgJ06/saiLIvlcpl8AyrN
         jksw==
X-Gm-Message-State: ABy/qLaY5+FZmTs+srAg1ZM67TJpXnq+WpBeLnI1N1dkBNhXR6NYv1FF
	QLl1Dn0r8OnT7LWYZpa7Iq4=
X-Google-Smtp-Source: APBJJlGOY8iLOJXpaCDww1+jpxC7Nbzk13GTYXUcfYjg94j+viCwrcy8jmCZaDeEU/OOaYir/vO6/g==
X-Received: by 2002:a17:902:d486:b0:1b2:fa8:d9c9 with SMTP id c6-20020a170902d48600b001b20fa8d9c9mr12966827plg.49.1688386107834;
        Mon, 03 Jul 2023 05:08:27 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id s12-20020a170902988c00b00198d7b52eefsm15161441plp.257.2023.07.03.05.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 05:08:27 -0700 (PDT)
Date: Mon, 3 Jul 2023 21:08:25 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	alberto.dassatti@heig-vd.ch, dlemoal@kernel.org,
	Dan Carpenter <dan.carpenter@linaro.org>, stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI
 address
Message-ID: <20230703120825.GA2375438@rocinante>
References: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
 <997819c6-0798-e2f9-b94b-fedfbab7fdd8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <997819c6-0798-e2f9-b94b-fedfbab7fdd8@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_050830_538351_FE5713D3 
X-CRM114-Status: GOOD (  12.20  )
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

> > A 32-bit mask was used on the 64-bit PCI address used for mapping MSIs.
> > This would result in the upper 32 bits being unintentionally zeroed and
> > MSIs getting mapped to incorrect PCI addresses if the address had any
> > of the upper bits set.
> > 
> > Replace 32-bit mask by appropriate 64-bit mask.

[...]
> > +#define PCIE_ADDR_MASK			GENMASK(63, MIN_AXI_ADDR_BITS_PASSED)
> 
> Nit: this probably wants to be GENMASK_ULL(), otherwise it might throw a
> warning if compile-tested for 32-bit.

I can change this to GENMASK_ULL() when I apply the patch.  Unless Rick
wants to send v3 - either way would be fine. :)

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
