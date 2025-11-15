Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 987B8CEB2C7
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1b6H4Hv1aYGrscke2iksazlr87uzNtP1xfNdQtkJ3Y=; b=koflbIqqJ/wL1s
	LAVsYgiX/zXhvle+zV0kQ2ddEh8CuJ+T0W1Huk4IwC6/j/1qXmyS+aMXOMlRHWd/oSqV33NPWJwri
	UqvmKk1GKQy9FcCyTKpeuOu7kPyVDHmAcPL2NF7c68a7h6soG8fo02sRU/jswdlx+oJ6XeNfofaLF
	DxVZOHvbP9iemhaHwu159npwLhpt3/ESJYJaammPRhL9jSmuO0L+1YHPMhn0YUGyJKUq7rWeERLdn
	6BdbpXQPU6eWoAQKCi7xKydP8Q5Ixbu3IzQYhBc8XRs+rvTb19xPQyos6wGO2vi2ml2mQ0hIhiIMg
	DpAuSdXGb8Ps2AAN1row==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCwW-0000000DfTV-0MXP;
	Sat, 15 Nov 2025 09:51:40 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCwT-0000000DfSm-0kge
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 09:51:38 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2981f9ce15cso33446085ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 01:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763200296; x=1763805096; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7yRRIzPGF37+ZW/9QuVq1mSuHX636hF32XUa+RdwYXc=;
        b=jiyGkYypF95th3o8rKWb3Dx8xdBr0FTz8yjWRoigduQJYtSKN5aJ67uBe2eXFIsa3J
         WP0U51E9tcMkh42Z84TZ9A2ORW1y6XOZOmT4AEKpuFACbRauL/sLvQ5EAQI+LtQuCVI9
         /NwYRld96pgbXAD3eNxbvtQsMTirG4JHAGJtqsO0oBWCvTwqmcu0i/iaxWTqT7SJ1edy
         +NDLAzBpIBD06hVQTAOp6LDTk9stUBGsxRzrCnQNZoibhDjQsQ0u+VSIOK+jEH13UCdB
         r2kdn2sQzZh+sGu0LIc1oxfVdS9WqEDFA+USx8jJUXLLAOQ3bpFYRurbupKBsZyYXE2c
         Flfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763200296; x=1763805096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7yRRIzPGF37+ZW/9QuVq1mSuHX636hF32XUa+RdwYXc=;
        b=d2BfMhd+nwzCV6jT13Hli2EH0r0vp9FD+SL42KoPSmTsc766S2eoFG3sG0FLfkb7kr
         ztZbAqaXh6KcZDjbNHgK93y7gjnv79ovKfhuR+REtWJh3jcfj6VgjNKWEIdFgH71kUGb
         R6BLh/IRjxOfxSJnGqBrsj9Z+SNdMTx7/6eHcR2ztv4c2OLgP2SACefpxJYNd/fpXIIb
         EFiNzaLDLx1qk4BwK2QJX9t6B8UNc/UJIrF613kKZzTRc2CzTx1QmcIhd+OoO6Kju7g1
         7aysC7fshobBFlEnZmSvT95RxiEoZDHdqRJBhBoHrU0Sb7p7fr3V7WkEBXM+SWI/5kzP
         ESZg==
X-Gm-Message-State: AOJu0YxCZVS18Fg9L1EhkkvjgNw8E2+K+KrLjT2+3Sq947Vpvsjiz7Wn
	TvUcgL833o8Zr0Yj08mHtN+CL2asCgPlHuQoizFPaNPqiTECCX/vkB35
X-Gm-Gg: ASbGncvguYcvex/rKzkE8gy7Ei1g8B1nZtTjnKy77JpEH+Tw0Ca0OsmJBqhkJnK4PYo
	TP1G0hMlYg3AVxVD9nzhAWYpEwHvemgqy493RGzm4jwhbhyL1rTJT67bx+VjqgaGWyVn+R9weCW
	uVckLgnkjUDGnlC+U4T6sPH6QcXg4RJqwakvYevWToG+pPeEu7T1a5HoV5MiQ2oPOoGl+jLhQfe
	mN3SBodzBeuZh+ZI0E87w4mMtV6QYd/ItY5ps7iQTzgXaB33amaJWxpBpEUVp8qU39Jpm6UGWJC
	Sd6gtSakg8q10BpE41eTnWPLdgHR1ALqtni5kAU7V8luyhFmF6ScgsUVsG9AoL8Scv/8GhBZbHq
	mP6V+7WoQnuty/qgnu4udsO8eWxmag+PdvSYry0huqOsi5xarVfV9TrRFWFT0Vl8H+R+bkCai2g
	==
X-Google-Smtp-Source: AGHT+IHDzihlPaHj5ciPC1avrMW/DUXWk3g/TfMMzpdbx9pWLRPYDr6Bl34n8EK+fex8PZCS0cSmgg==
X-Received: by 2002:a05:701b:2803:b0:119:e569:fbad with SMTP id a92af1059eb24-11b411fd316mr1430818c88.28.1763200296250;
        Sat, 15 Nov 2025 01:51:36 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49db102f5sm16211340eec.4.2025.11.15.01.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:51:35 -0800 (PST)
Date: Sat, 15 Nov 2025 06:51:29 -0300
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
Subject: Re: [PATCH 2/3] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <aRhNIcGcQKp2ylqN@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
 <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_015137_240625_53EAAE56 
X-CRM114-Status: GOOD (  20.10  )
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

On Sat, Nov 15, 2025 at 10:30:49AM +0100, Dragan Simic wrote:
> Hello Geraldo,
> 
> On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > According to Rockchip sources, there is grave danger in enabling 5.0
> > GT/s speed for this core. Add a comment documenting that danger and
> > discouraging end-users from forcing higher speed through DT changes.
> > 
> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-rockchip-host.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> > index ee1822ca01db..7e6ff76466b7 100644
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -332,6 +332,11 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
> >  		/*
> >  		 * Enable retrain for gen2. This should be configured only after
> >  		 * gen1 finished.
> > +		 *
> > +		 * According to Rockchip this path is dangerous and may lead to
> > +		 * catastrophic failure. Even if the odds are small, users are
> > +		 * still discouraged to engage the corresponding DT option.
> > +		 *
> >  		 */
> >  		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
> >  		status &= ~PCI_EXP_LNKCTL2_TLS;
> 
> Looking good to me, thanks for this patch!  There's no need
> to emit warnings here, because they'd be emitted already in
> the rockchip_pcie_parse_dt() function.
> 
> Please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
>

I disagree, I think the comment stands.

Even if we reduce to one line, ex:

+ May cause damage

Regards,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
