Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77903C83F34
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 14:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afZbEVc1vIX2eI9/w2H6k04l12+RFJ6gmN2U6nKdXwI=; b=VMK0QVExNuDxm6
	A30gWVZ8baYuFRyQoSuZY4wj/tt5zg2bdnZ9/OM9P3PQ6VvWwBsn/WwvUrelGD7UDbYOeX/vB4ZaS
	xkmOxij4CjnM8HPC9GuMZEUHfm2/pAEqXaLG851IPWk5/xJnglLXb9ha9rNk0bS714V5agtF6h68c
	jnKHB431uAAmkn3s9vy5ZgfuicQ/IFPT7gOpMDDDFrCApqDGkGHmgpKQ2DSITSgFOC8zjH1DG5jZ6
	cSJqZB7v8YMBHmGrjYNs9fNhwniCLPus9anSB5q1QW292ZJuaIRGpmWZEghKypJMw8XYwgVUwTaRz
	MFwdbCLSkBE6fu3M0lFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uclt7-0000000CmmO-1mhj;
	Fri, 18 Jul 2025 14:16:37 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uclqe-0000000CmWq-1Tfh
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Jul 2025 14:14:05 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-4ab6e66ea68so27655061cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Jul 2025 07:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1752848043; x=1753452843; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X2kw8wKIFchN7U6f3WRj7akA9iZyWVrco2+eQsNCM5c=;
        b=nSGl2yFgFetw/kkFlBoAcbPLsMdP8P/CcC3pJ1ceN2mrhZI3hJaX3pzNd9NbhSxRRG
         RvIpdPQyzUAVkDldyLhtz5vVGVyz5OV7zGE8lgEYoyO6S32oTbcQf2scLzPcG8mrtrTA
         0dt+97yDQyhwLIQWD1AuqeSbOW8InWsFKWmq1kzLm2Wo/L5/pk44/u/iBd/Q8EZgityW
         92A3MewjZDJq+vhOF3wbh3lf5YzGkKWayNUmkwd/MhmruyaGwiPW1NCRZudUa18pM2/A
         LJC1EwSWRln37FvCkPlJ/4HXLTHhyKY5y+S5Zgk65FTegNs+sgzCV9PpPHZ4g6xsKFKA
         w4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752848043; x=1753452843;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X2kw8wKIFchN7U6f3WRj7akA9iZyWVrco2+eQsNCM5c=;
        b=UIjtxD9xpdfVvrDg2RbQrkPlpGi6WqwsqVS9M8WDYctROzb7XbU2NZmWGL2904mmsc
         aPhpe0fxCHr6gnWzV8JqQZTO9IF0UMAYz1Gc7yxxGAUZPwrQhyjBqXcMtJabSRsVvDM0
         Gu8xEBBbQgIRWXNALGjQJHnVF8yREVabbiGPn9dCTbYl9R7rvkOeQ8NYGj6HhO4POW6C
         WAwShQpLZcVdws0JPiFaR9ToFm3c9opysT2+tPSJ/x9MFQ5BDsN1nROLQxaCyy/PWWAA
         DAJ4Xut2pmN7Ww5RmSYGahN6tPWMd/oj59CS/kAvQ/t6r/3lDJu8p6AXNdxViHXtTz0h
         sXVg==
X-Forwarded-Encrypted: i=1; AJvYcCWhHa1xU1pWI1s5qAAFj/tqlhJ3W6RojzOfNgGTh5yk9OGDR3XekDHxrr1x4zisXg6chyAQhVyi+PPEjERzCw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxX+dBLDtnZEkwP1bOqhwrv9iHuHnR8KfQQyCv5BP0VZmHz6PIJ
	oWEd6XQaKxM51OzpTALd9KXiMJIeghvcxRjQgPEgEnutA3ASqdZ9dKEh5aamITvYH7w=
X-Gm-Gg: ASbGnct8Y+BO5YcERlE1+UInRVB0nF3KFYO6woZcEqdxrSCerJFig1K6mZEwB6i3oSF
	7Ac9Fu810RTsG+EOCaGPzNaZAJDlRFLyQvWQoVayMl6DQfjfHprEhfz1wRkCA0xFNnzaI3sbwEh
	ASLR9/08V8KUhdUO+7dbaJU5Ve7SJAX8/syYQ2boaqEGxltL5QbJ7LWQSY3AiPUJJnNDXyXP+xH
	gTcya+FH15+52FgOtBfm6ai4VobDC2j4xLDfp0Bh4VY2BRWpBHR04ZNBEMbF+eTsJYOKJ1zFI5w
	NZ58M/ESEdcvBo9YePcYGo0wnXZomVBiEXzK32vwhuiMvJHg9GfKwXsVVYOiktLUUrmhFLOcL8a
	Xwyoil8IVEN6j9/vd26ols1U++bRjIwJoZw2KbGxW0DCttUFgH7LWiTjHdad9yxjw78H3psL14g
	==
X-Google-Smtp-Source: AGHT+IFxlNjnByJpGTyiiwdZo9i9Kku+QZgJ0vVJieheNkgXzQ9j9lwkrn0QWQUloNoVgHfjwg2tvg==
X-Received: by 2002:a05:622a:1a10:b0:4ab:95a7:71d5 with SMTP id d75a77b69052e-4aba3e9064amr110581641cf.55.1752848042697;
        Fri, 18 Jul 2025 07:14:02 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4abb49a0046sm7659811cf.25.2025.07.18.07.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 07:14:01 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uclqb-00000009zAp-11e0;
	Fri, 18 Jul 2025 11:14:01 -0300
Date: Fri, 18 Jul 2025 11:14:01 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	joro@8bytes.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250718141401.GD2206214@ziepe.ca>
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
 <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
 <aHozv0NG1OBlAH6c@willie-the-truck>
 <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
 <aHpQXy-bnwW56rCn@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aHpQXy-bnwW56rCn@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_071404_389578_8DCB7513 
X-CRM114-Status: GOOD (  12.83  )
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

On Fri, Jul 18, 2025 at 02:47:11PM +0100, Will Deacon wrote:

> Just because the existing drivers are a mess doesn't mean we should
> proliferate it!

If you want to insist on something here it should be for this driver
to use the new generic page table code I've written.

Otherwise I don't see the point in trying to improve this in some
lesser way.

If this had come in a years time I would probably insist on that, but
right now it isn't merged yet and it will still be a little bit before
people have time to review it.

Perhaps a compromise where Benjamin comes with an iommupt format
header that works for this and we can progress this series and be
ready to swap it out down the road?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
