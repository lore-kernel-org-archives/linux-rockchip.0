Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8594ECEB2CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1MexBGzQakrzm4Y87/LcP8E8L8j2D+yHlqxBjZRoBg=; b=h6ShmOvFPm+mjT
	atoM44dE9YCyBnI7QWPyVIvKfRQocYkTpETRV3XNh3xACWf8ExdtaMbt99hfQI8BWY6zBsVlPlp4/
	AMmZQRjZjx+cYOhp0gk3zN9QM79fCUiOzraHneu9jCl6gO6Pg6qX46yh/oVL2RwlogD3wAvD9mAhI
	k0CZiXr5HD8zhqRNMw7rrDPXApqn915n9aFMhVxMHXfGRS+DVOVVF0XYETLT4jEH7OTqMbm4mlXza
	gXxBvQ+TfKwQ4BYr8xUHDvwooRVNZJ6IlGgnzAgCi/lw8jkttH8yhxCGFccWtpPZGKo9Cy4eTu3iE
	nClIx83uzvIKWY3Ajxtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCuf-0000000DfJj-2pmT;
	Sat, 15 Nov 2025 09:49:45 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCuc-0000000DfIj-0uUR
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 09:49:44 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-3437af8444cso2863912a91.2
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 01:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763200181; x=1763804981; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wE07oQibqqeqSQy9mXIzB1NU0J0tg0hcvxGPotz1NFE=;
        b=OG5NqslJexqkXHosBHQPsYWOpBrWhVzFJ6Eh+B99sn2gQByBg/IlYO3zXcYA75Uu8u
         wqBCE2DKccizY2sTj+TZAzmIOpidYvO10vg4i83R0dagJbgYST5evPGpEMPl98QCmo0Q
         aajEkRtpyr2nf5Ux+l4yreVZL9vfGuZXCKiPBRvJqpprunnNWrhqywdigTSkBSZeMTc6
         iWG8b7mZ6qOwdfuele4yfNHY1Uf8eDW4MVuZ0XOPEckvVTHbK7Dw8sgct77CTfrytubE
         Zri+KBglqpdxILQmM/w14kQzqHHHTtyr3tTUsks9om+mTeYCaHeE43NM9JZ8HEYluUS4
         BBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763200181; x=1763804981;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wE07oQibqqeqSQy9mXIzB1NU0J0tg0hcvxGPotz1NFE=;
        b=KPA8JUo6U8guf9f+0Auuba6Wel00uP3zxEEjqinYz8u+q8kVIK37Dgyr/6EZjts1OZ
         MThVF6WF0ixyiFLHzM4rr47Bl6/D5ZpRSXg7CKjo7EJhwgp3oy4e9U8x6MGDdqgS9Rx2
         ljZwLW1bjyXrxbioIrZDNWKrlpJV++t1jDQbd2nXpGNsah/MeVMrsN8J9k9aRbsEiLUM
         LL1lIsoCCOxxR70Nyk44gipDlTSuqARycE691BUmceC8ErCvXCOgKNpH4ToOKHgZbtZD
         wEyoo+ONhrL0nNk9WFWZt5DRTXuhx/egh8+V56DZOpGel6vecgUYq/Am0ZVTqCZ7XGj6
         MlFQ==
X-Gm-Message-State: AOJu0YzsXwUYeP7d1DqRtorPgXNogqGS0/8kVd+jqWhk97chElmxXMer
	A5UQuevx1Jq+Zgfe1351VHdZVkA5JLE0KRbLSW92hf+WL/cUYvnHA7qwkkXf/4xM
X-Gm-Gg: ASbGncu01ndohHX39qydviU4Mhq/EjC80n5kuGzPh9BZ3I8gMftGWQuYPPXa4cloP2U
	A73J3I6kXfd4ce3b+nfPtSzdn7b2V22/aWHyKaAsP+jOzS6treMtGjziGUFFdUkJd74EK4lwItH
	2q3PILrObvNnyHwhD2+bTD0JmVrWNYo0J9tzX2Td4mgNv6uZ5kowI+JNzQa3Td9ve+C1lAPYsTN
	TmmDFJQXLQ3eGI9nDCmYeXZ63qW9eqoT+xu9uTaFh/J/hIpLNCyjaWVE/wbegLfXw3PV+eHcIJU
	wQo/Hx38TGQWj3+k1AxbR98CESF2Q9os8ZD908knnpNap7IFFaTyYGbICSU1h3IPOk26MBmic9y
	JC62MBemdl8co07FtcrmNO0DEiIFC+llXJ6UqMZsOoheCYFK5t9fHRTAi4nxtI9Ptb95jOjaP9A
	==
X-Google-Smtp-Source: AGHT+IH17OP8J1VVJXCEJ0MIe3g5xMSq/3p+n5rpNXju3JOpEjrQNJV81hmioCrP4BodIIfRH/nioQ==
X-Received: by 2002:a05:7022:43a6:b0:119:e56b:957b with SMTP id a92af1059eb24-11b40b29d05mr3386170c88.0.1763200181160;
        Sat, 15 Nov 2025 01:49:41 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885c0sm23755473c88.3.2025.11.15.01.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:49:40 -0800 (PST)
Date: Sat, 15 Nov 2025 06:49:33 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/3] PCI: rockchip: warn of danger of 5.0 GT/s speeds
Message-ID: <aRhMrXz_RlL0WErZ@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <d6593ae4f59468f294fdddfef83791e0db100e13.1763197368.git.geraldogabriel@gmail.com>
 <a214ac9a-36d9-6505-64a8-92af2da42cf1@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a214ac9a-36d9-6505-64a8-92af2da42cf1@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_014942_257078_99A29BE7 
X-CRM114-Status: GOOD (  25.72  )
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

On Sat, Nov 15, 2025 at 10:24:49AM +0100, Dragan Simic wrote:
> Hello Geraldo,
> 
> On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > Shawn Lin from Rockchip has reiterated that there may be danger in using
> > their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
> > from the default and at the same time, drive at 2.5 GT/s only, in case
> > the DT max-link-speed property is invalid or inexistent.
> > 
> > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-rockchip.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> > index 0f88da378805..ed67886a6d43 100644
> > --- a/drivers/pci/controller/pcie-rockchip.c
> > +++ b/drivers/pci/controller/pcie-rockchip.c
> > @@ -66,8 +66,12 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> >  	}
> >  
> >  	rockchip->link_gen = of_pci_get_max_link_speed(node);
> > -	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> > -		rockchip->link_gen = 2;
> > +	if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
> > +		rockchip->link_gen = 1;
> > +		dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
> > +	}
> > +	else if (rockchip->link_gen == 2)
> > +		dev_warn(dev, "5.0 GT/s may lead to catastrophic failure\n");
> >  
> >  	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
> >  		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
> 
> Looking good to me, thanks for this patch!  People often declare
> PCIe Gen2 on RK3399-based boards as "works for me", which actually
> happens very often, but such simple evaluations cannot be taken
> as a proof of Gen2 correctness.
> 
> Furthermore, RK3399's internal interconnects limit the effective
> I/O speed of PCIe transfers already, so switching to PCIe Gen1
> actually doesn't result in some large I/O performance penalties.
> 
> With all that in mind, please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Hi Dragan,

I think I'll include a Reported-By: you too, since you were the first to
warn me of unknown errata regarding Rockchip PCIe.

I told you it was a test of mine but I didn't realize the grave danger
implied by Shawn Lin declarations.

Once I realized this could end badly the only way I could retribute was
to send a few corrections :)

Thank you,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
