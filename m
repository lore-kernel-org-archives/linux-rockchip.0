Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F829C83F17
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 13:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Do55wnuS6r4U0xIzYpOQjZL4c8ZQWQ+Ur0eaIWmfBms=; b=3EBAn3GfB7bxBv
	vLR+C5y9Nqtw9RTmtVf9GbZCbN+uI+P5yoIG2tdO1A+YTV+ldojVVdYxZu4AAyr360SP+pyERND+p
	uT0eAZYoPG53uzXKtVNvr1bzranYUZ6zhf99W4nNiGXzytMftXpLqUp4EMgHiDt8eihBP6FQkXk6L
	sY+2Fy1JPhBMx2SOggMYteQdITYPMak9zC0w5YvXE6L/afRrSWlaHZVOkoINOi5NhRCMVis2I0JKA
	ZVVlUS5l81GwPiUxlYvcZkl0XmBI4+bpRGqHRXwSugB8Bi0+a2rlWCwSLrQFe9zQ63TGagpbvVHKM
	AJrWZUz6XReoCHijpBqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucl6Z-0000000Cgpb-1uaW;
	Fri, 18 Jul 2025 13:26:27 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucl6X-0000000Cgox-0Z84
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Jul 2025 13:26:26 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-4ab6416496dso25793071cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Jul 2025 06:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1752845184; x=1753449984; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eWsb5uSBhu6bPzZbSom7WozOJmoigRto8Pj5BCIHyeU=;
        b=FTRCOPYsbrlJ/OQIdJBeiobLGqF94WRqrlhC79ECahr2fyJQnSzMSYY8i/OsxNdbzP
         uYZxoARdGS8W92JHay7LxVHcIJeA9zNGv4FVyHWtI/g0ZBMvZ8RqZyf2arT0Q44PX487
         ZUJgUkej5e22dTakq912TkZj+vCjElGYy4VcVeYDPWFqSHkQOJwH1ajKZJ0ZORyBGcuy
         6t+AY6kf72rfCVUShYxOl+kT0GACTS84QZuJmVVi0QyztQ9/De1TRLp8lKq1Tc00uKZH
         bqKsVSZw3AWJ16nAtRXFa2I6nJBDLv18I1DcUZY/j67A/lC7HUxrC1LCSlu6dGRCHh7c
         0jAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752845184; x=1753449984;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWsb5uSBhu6bPzZbSom7WozOJmoigRto8Pj5BCIHyeU=;
        b=MFQRbqJvOaiujPyfdK9wErDPsCOQmrPIzEphNYwEis1js6b4udKCRHCuu8csTy/CQj
         OX5P47VXAg32eMrdDqOHb7MLlDelc70DADZ4RvdCiuQAXgGX84yDu3RDbVc+b11Oegl/
         2W0HQwTz/IjelrRml/uj2uSEr1ypHIKFNAnMZF+HP5lVawuhWJroCD0x8cvEMOcbtHC4
         kiFCLs3bXVK0/kG1FTgXvtgWRdI27UV0fyWOoKJClaex40z8N+/LSOaefquFHRNPG+wX
         B+guGkQxXp2DRbIRRffpjbZul0nUk3+NuTlpGV5S0wLVpDpabVrlaAF5iCoQEBRRJ28m
         ph2g==
X-Forwarded-Encrypted: i=1; AJvYcCXbHSTLTbwP2M7YNjn2OC6CuWCAnw362LBqyOWs3zcEgs/bfppFN+Kb2qBVAaRr/l2w/D5dzmAC48wQ+owjKA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyH46OdwLhelbhxqMmEeOZ1k8QGZ1+sh0IquMMUE8Sj7/MYWwsG
	faTRfjRsnAtiSQeO8QyhVuJr3KKZCwlHzRqdpghwECPuEGAabiDlfuYmlvga1YoYN3s=
X-Gm-Gg: ASbGncsiMKRMTxzvWCaH72raP7CMZ6DIU2Nk00RxVLzFzvZu598ZnXgFku0F3V03PnS
	jmlqQs9T2mkQNrfDKvBDXtoGut30RHyS99KALC6jf9AuP6p2Kzia3pNJBy9uhIAO82oc669Kic2
	5HszmWInHX9AthvYztvIvz9wXMqM78TV5TuUep6ioB73IsYHNeoj+GdPIpI17tPKnnjbCZnsS+u
	MLO6KPdcZ44meIvnt6eUn8+TZzewE5zI+HoN3aE72SPRoKNHtoZZlbYzaoindT/UZ6SpLYiG1Wc
	jB6HJfBToXIssNdR4QaKBJq9t2MDw1inggIvUF7EDx3/R3VZ0i40BsUL8hSVQ1+ZYvCf6wxZmd+
	isa/sbuifyiKn2o7IzVHGaTkKVllZwnNxrEnOyWfg1rL9hRWQs613hCuMa85cT6tbdsWGDWcVtg
	==
X-Google-Smtp-Source: AGHT+IHxe3HazeTMlNhrIdTEfQ3VTjX7wXKy+xR8Lh7PRfCMXJiCHtJEIAJGMTKjnmoXNaUXBSYUhw==
X-Received: by 2002:a05:6214:1d2d:b0:701:9a6:92f1 with SMTP id 6a1803df08f44-704f480de58mr194846736d6.10.1752845183716;
        Fri, 18 Jul 2025 06:26:23 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4abb4980463sm6903981cf.12.2025.07.18.06.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 06:26:23 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1ucl6U-00000009yt2-29EA;
	Fri, 18 Jul 2025 10:26:22 -0300
Date: Fri, 18 Jul 2025 10:26:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Will Deacon <will@kernel.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	joro@8bytes.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250718132622.GC2206214@ziepe.ca>
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
 <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
 <aHozv0NG1OBlAH6c@willie-the-truck>
 <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_062625_244827_DEF00064 
X-CRM114-Status: GOOD (  10.12  )
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

On Fri, Jul 18, 2025 at 01:56:36PM +0100, Robin Murphy wrote:

> All they really have in common is that they're 2-level formats with 32-bit
> PTEs and 10 bits per level (as is tegra-smmu too). The permission encodings
> have some overlap but are not fully equivalent. Crucially, the schemes for
> packing >32-bit PAs into PTEs are incompatibly different, so if you're
> really keen to genericise things to *that* extent, that's what Jason's
> already working on.

Right, I agree with this. The page table code is duplicated
extensively across iommu and the way to fix it is what I'm working on.

It is all the same code, same patterns, same problems, same bugs :)

I think it is best to leave this as is for now.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
