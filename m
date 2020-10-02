Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14201C4363D
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 20:20:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B184206FA
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 20:20:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="PumKqZtX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B184206FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DoaYzhlgftGZmdIhrqWxSMRr3Yse9iTzGv9yRRqizUQ=; b=PumKqZtXF9hv8maH8ZlWxsyG2
	VslHg2ddk/SEtudt2r8sHkvimhwZSwM5CfDYBW6XgB8H/4YEkAIge1Sq/cD1gZmpxRvJ1vFS3yNm2
	OofvPNuCN6RWSPNzvFtI87OT84luj0oSIUB2TpRRBMIZkbgsIwe72q8tYE15+jlcb8DhF+b9hV5tz
	HXNx/wHqAKVtyDtBx6PVI0DxRyRfQcH+R8udIGT+YqJtbyQzaaIIAKCfrENwLOi7F2qfS9y6a328/
	VKeSUzdZTODi9Q24ZAj6+1xKgNBUZ3ZpJNIsCMHy1CXHd/tK3HuPf1f8rNYjY8+NkVyk6VvdSpRdr
	XSypyqEKA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kORXW-0006Ho-Dy; Fri, 02 Oct 2020 20:20:26 +0000
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kORXR-0006H9-U3; Fri, 02 Oct 2020 20:20:23 +0000
Received: by mail-lf1-f67.google.com with SMTP id y17so3360462lfa.8;
 Fri, 02 Oct 2020 13:20:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qJ6aNftWa1v7397jKEHYw9TXz4/8gDVk4MVnuv4fW5Q=;
 b=h1oi2AeYizVdYuJMYIHMfDNQ/eUIhUoL3vZvkpMnrSYhcOV6TdvBVGH5mmrLsyDwIw
 Y/MdBlqbQgPtF8/p3ytsPRkZ5nsQTd7alL6JPE9Lc5GY2hMKY+1SPHEvY30XywVhjpQp
 Czi1QWEDUZKHLWIKPl/O5MLLSJnPkwmxvB6bwZVsQ6U/CHt72HEQZAbybsujfnbj+xkJ
 xzUrtbMyJ5wFIp8SPeyHSvjKwELYvcPQTq+SgiW3Cw6Axs+BRE9obOxf0zf0oiV4UWeR
 i880/z/LgBv96zKkMC6MSz6EzCwSOF9GQOoWf9PqssJZeS+3VS7lQMXPt+eozat46gUY
 GibA==
X-Gm-Message-State: AOAM531Dscv517hxdAcsjkk63MGJKtQRmHTt8SNsW+PnKZNKelKfET4f
 W6JhNeQiC1x4oTKd5NEKWR4=
X-Google-Smtp-Source: ABdhPJwW9j/QlJs5CxMK7I1dTeETRw6pQtaqmgEwQ1+5+sjCc3o4QWsYU6O4Vcf+/p1sYu7rGQpcKQ==
X-Received: by 2002:ac2:5685:: with SMTP id 5mr1556729lfr.161.1601670020253;
 Fri, 02 Oct 2020 13:20:20 -0700 (PDT)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id m10sm506351ljg.138.2020.10.02.13.20.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 13:20:19 -0700 (PDT)
Date: Fri, 2 Oct 2020 22:20:17 +0200
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <20201002202017.GA95575@rocinante>
References: <20201001220244.1271878-1-kw@linux.com>
 <CAL_JsqJn3uhHgnWeStyADCntJFbG4WpgFW1MAcYR9W3m4o2P=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJn3uhHgnWeStyADCntJFbG4WpgFW1MAcYR9W3m4o2P=g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_162021_998246_74AA909D 
X-CRM114-Status: GOOD (  13.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rob,

[...]
> What about vmd which I mentioned? I also found iproc and brcmstb are
> ECAM (well, same shifts, but indirect addressing).
[...]

I wanted to cover these (and some others I also found) in a separate
patch, especially since some of the drivers don't explicitly claim to
support ECAM - but I will include these changes in the v4. 
 
> > +/
> > + * Enhanced Configuration Access Mechanism (ECAM)
> > + *
> > + * N.B. This is a non-standard platform-specific ECAM bus shift value.  For
> > + * standard values defined in the PCI Express Base Specification see
> > + * include/linux/pci-ecam.h.
> > + */
> > +#define XGENE_PCIE_ECAM_BUS_SHIFT      16
> 
> Isn't this just CAM? Though perhaps CAM on PCIe is not standard...
> 
> For CAM, there's also tegra, ftpci100, mvebu, and versatile. I think
> I'd drop CAM from this patch and do all of those in a separate patch.

Will do.

Bjorn was also not convinced about referring to things as "CAM" since
the specification (the one I quoted in the patch) does not name it as
such, and rather refers to it as Type 1 access of the PCI bus
configuration space.

Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
