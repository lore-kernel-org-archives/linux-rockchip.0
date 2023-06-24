Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45B08EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Jun 2023 14:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=193ghiTN02J6zvs2sV/PX+EEGyMNw3JpJppQyQLmnzA=; b=Dh/6LNOYWgz8fV
	Usx6KibLT8DbXQjF+f/JLI6EiYFM/dIz7+V/3rrtTmWNOPg1qy3mnXasGiYa3/T+QPQif3W2w5qe7
	1lQAPfKB+fYn70XNq3w+IcV8WLb/lmEbR5zPWNpRuDFoEl+MKTxmbsGRP4E2cimELvxFDYOjso9mv
	oWq++6vSt25voVhbI1+iLLHSkDy7KeLMQ/jgwbfqbWWHN+qnEZvuVTKoBbDFrY0DpB3jE2mvzdmxr
	sJDLndKvZ6O9B9cT1PDhELofm5BO1MMO8WPnaCQXHkt2eoDnAa6754Ybb1BHPOrxv+IOE2NZSKkst
	eIs5XEIscYS70WdyQK2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qD4Aq-0066V6-34;
	Sat, 24 Jun 2023 14:23:36 +0000
Received: from mail-pf1-f176.google.com ([209.85.210.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qD4Ao-0066U4-1B;
	Sat, 24 Jun 2023 14:23:35 +0000
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6686708c986so1528895b3a.0;
        Sat, 24 Jun 2023 07:23:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687616613; x=1690208613;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l61WbsGIflGvlUxdvoJkBkB8edAun9mmIBPamQIpoWM=;
        b=YGsUKOtFv4km8iyZn1UAatI5z431Q9IGMfGxlfcCy0qTdm3T18GG2IpezK3XU8nJVg
         QsSYCxYCKWC+Rqiy5FU2k8k+xVKnGBUyFbiK+1QHx2d9lOa7irEM4rMcD3/LN2jW6c6w
         xQmehd58fqIPgWTRCNX1mGmDEmA54W+nLTyrE7eHskEhOeGMmoPRbgyOG80lYpGxUm7p
         Xmikh7EWlnWwrRcvno+H8jQud9cgVMUm5zhyOBjXVRx2wxrVP0kNayNzR/BEj0mVtGcl
         dKoO102cVoGQi4szLO6wrhEdDyaZ3NEjS3Ep1NpEFmhVpln8Rq4/Nz/gWDJY/bVK7xeV
         +/RA==
X-Gm-Message-State: AC+VfDwPPNv1It4Sooma0L/1MBqnSzImGZVncCq+3eD7WksuFbAg+ttR
	td/LPfS0mQ/nwQ8Odx60D+PE8lUq3wkAc2vS
X-Google-Smtp-Source: ACHHUZ4/e98bK2UmPfEy4r3yCMJ6M+KXaviUSrYfc5Ra0ti+kRhvfGmLjPU3w2ysu/LA7SWvpPix5Q==
X-Received: by 2002:a05:6a00:22d2:b0:668:7143:50b0 with SMTP id f18-20020a056a0022d200b00668714350b0mr26865595pfj.31.1687616613173;
        Sat, 24 Jun 2023 07:23:33 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id j21-20020aa783d5000000b006580e98326esm1155839pfn.42.2023.06.24.07.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jun 2023 07:23:32 -0700 (PDT)
Date: Sat, 24 Jun 2023 23:23:30 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Miaoqian Lin <linmq006@gmail.com>,
	Vignesh Raghavendra <vigneshr@ti.com>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Toan Le <toan@os.amperecomputing.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	linux-rockchip@lists.infradead.org, Joyce Ooi <joyce.ooi@intel.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Rahul Tanwar <rtanwar@maxlinear.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-arm-msm@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	linux-tegra@vger.kernel.org, kernel@pengutronix.de,
	Manivannan Sadhasivam <mani@kernel.org>,
	Ray Jui <rjui@broadcom.com>, Ryder Lee <ryder.lee@mediatek.com>,
	linux-mediatek@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Scott Branden <sbranden@broadcom.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Tom Joseph <tjoseph@cadence.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Shawn Guo <shawn.guo@linaro.org>,
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Subject: Re: [PATCH 00/15] PCI: Convert to platform remove callback returning
 void
Message-ID: <20230624142330.GC2636347@rocinante>
References: <20230530140742.ebbrxmpieuphbmz3@pengutronix.de>
 <ZHphHkNLO4tEJIm/@bhelgaas>
 <20230606160234.elcvyqlz2j3mggih@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230606160234.elcvyqlz2j3mggih@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230624_072334_403542_2C7D46D6 
X-CRM114-Status: GOOD (  15.10  )
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
> > > These patches wait for application for quite some time now. They apply
> > > just fine to v6.4-rc1 and next/master. Would be great to get them in
> > > during the next merge window and ideally give them some time in next
> > > before.
> > 
> > Thanks, these seem fine to me, and Lorenzo normally takes care of
> > drivers/pci/controller/.  Lorenzo, if it's easier to have me apply
> > them, that's fine, too, just let me know.
> > 
> > The only tweaks I would make would be:
> > 
> >   PCI: j721e: Convert to platform remove callback returning void
> >   PCI: dwc: Convert to platform remove callback returning void
> 
> If it's easier for you (or Lorenzo) I can resend with these tweaks.
> Otherwise if these are adapted when applying them, that's fine for me,
> too. Just tell me if I should do anything here.

I took the entire series and tweaked the subject lines as Bjorn requested.

Thank you!

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
