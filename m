Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB806C83030
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jul 2025 18:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROrecHw1+DcCKlz79T/A8ZTnhyEj2uwluX8EdD3KnXo=; b=aEUYthd2Vd/K1p
	4QzFgvBb323vG4MfVxuTOgSdzjUMonz9BxMf9H/lUZMtGl7iGk0IZiXMh9EiawuT1Fbf3nHIVXgnp
	rDFrP1CtUxSQmV/XqB+JFATPHWdC7CwazCSl1Xcbnat7dP1APZ4xeod33duSdXeM3XwXutMCLTu7D
	LmOQTRoF0C3Uq/I6/BeXM4hgoaPh+Y/nMm7Mxemm4I4CMyg+DW3PX6yeVS4NRojZXbpNLuwCwXMQp
	1mazBKOMMaMrmmK6mgwssoaP24MzYgVGKo6Hkc5o2fyiZeaq80YAOE1XXF5yXN1D1xqr71+xIUHLB
	T/WwoVKcBgdHQh+0EQRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY7mS-0000000GrTs-0fmX;
	Sat, 05 Jul 2025 18:38:32 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY7mP-0000000GrT2-37sk
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Jul 2025 18:38:31 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-7d38ddc198eso235619085a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Jul 2025 11:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1751740708; x=1752345508; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WIHdEgEb4h7ncGmlqKNUeHDxe1TLcrT5/vC0Zduw6NY=;
        b=VnBWAYlipN3Jc4b71hyzHUvCpKPFIbrOeRBpyVAOI706eyEKmPaeX15QBc7eWkxGSx
         hlJBeYAVulaG59ughn+u+XUiMKVqsdxnEemfLcDqBO+tKGs8VrkfvV7qW1zLQYRhzqLe
         R+MdUBhpTcsbksxCP4EbIaH4oxTkzbZMm+hzT7gju1JELbyjB79lLGl0qdQzKQivbK4n
         8wtBL1Exc5YrlKaiW1uub+9U4lLhlqk6WZ/fOO4h46SB1wm/WesIwcnBfo5WqtTg/gUn
         A5Lg6TOrggR4+fs5pJRiU80BvxUR1HRb6NHC4LtiJmS0nuINNalaTjROtIn52hSpjsXV
         p9WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751740708; x=1752345508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WIHdEgEb4h7ncGmlqKNUeHDxe1TLcrT5/vC0Zduw6NY=;
        b=r90lQV0OoWQHCzO2IpIBrtkb6kLxxcjbwDOgMJUiiErMT68/uinpVO1WS6iewPQalE
         Y9WgLgEHZ0H6ZRU4waffMz57DgUa2LKBAF/LX/6O25MEH/iP1Qzg1aQ4LTvCox0kIoth
         TPvpMMYl0KJJftMgDOp3HwbMOlTGErATa4+TTQVM5ca+rpI13ziGQ4oOG37Y2Dqwaou6
         TjARCIa4iy03i5/15NppkdPHAsdMfHfq6kj5sqQAJd+aLBKuKamwm7Bp8oriBJXL7SFN
         jksjhtGfL7QVHpv5IMogz1RK5A8vDw4TvWpAErTy09378WG0jTiISQowZOiccB7XfgyF
         rdug==
X-Forwarded-Encrypted: i=1; AJvYcCVyp4iDgx/oMkmS4QH37JXKv2X3Gcnn3eDNXy1yEVnBTz1eXClOppPTUtt7MbueYs607lzJwSe+AcngzrN0gg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwC2/lbEVTPp3qzApCCO2FiHX5kH6ZQbz9L4qKZ23CwxNRRto1G
	rkEBQCboEoWwMHwX7yTrMpQmM1jexPfqnf7uxrshond+rTb7vRNZmm+ldyjPZ3UjVHA4ulJUHN3
	ZPDUY
X-Gm-Gg: ASbGncs/TjFLb57DMYgE7SyCr2uM39OfwiOJENJzcsn2Sb5O9f+/Pl1yds6FreZrfmh
	mKiCWLuJdNneta9KxIwYLJ7ar2RnR9L5txeife46NkPabKtYlrPbYGCsR1oVp0cg0qEpiGgtNF9
	AAcE+OU3CNadsIiZEHjfm4lpwtHTg1qNxa5JwvpUFNLVNF/6M7blYhLFz1OZwn3VwFdSkzG8hnn
	aV+al4VSCIFWLNpv65vQOaXf2PYx56R8fwnhhhBGQaOgBVfrepcuYIG+GT3D/DilTuXc8ycJJt0
	0QhK4RJr4zznr1VuX89utcDwNWZna98hiZOeeDYxzAtYROYb2kJjGT4kUBUYFlT8jV1w1qU/730
	RQWpewRHJz9lWGHal1dO0Yro0pBh9HhGEnor8Zs/6h4xD2Y7r
X-Google-Smtp-Source: AGHT+IHGynn880Btao0rr5ATgmcaLhy8fafgWIOLP+yaNkVftZqqbIrm82pa3BfiHgQu8aK3kR04IA==
X-Received: by 2002:a05:620a:40c9:b0:7d3:f0a3:d8cc with SMTP id af79cd13be357-7d5df169b32mr814175485a.45.1751740708064;
        Sat, 05 Jul 2025 11:38:28 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d5dbe7baedsm345886685a.57.2025.07.05.11.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jul 2025 11:38:27 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uY7mM-000000068pv-2jB7;
	Sat, 05 Jul 2025 15:38:26 -0300
Date: Sat, 5 Jul 2025 15:38:26 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250705183826.GN904431@ziepe.ca>
References: <20250623153931.158765-1-benjamin.gaignard@collabora.com>
 <20250623153931.158765-4-benjamin.gaignard@collabora.com>
 <20250704175425.GM904431@ziepe.ca>
 <62cead85-2d50-45f1-8020-7aea77f6833b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62cead85-2d50-45f1-8020-7aea77f6833b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_113829_930795_95FBA595 
X-CRM114-Status: UNSURE (   7.65  )
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

On Sat, Jul 05, 2025 at 12:04:05PM +0200, Benjamin Gaignard wrote:

> I would like to avoid that but maybe a static spinlock can solve that problem ?

I think you can't really (technically) store an iommu pointer in a
domain and not prevent it from being used by other iommus.

Can't the spinlock be in the domain?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
