Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3294FC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 17:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0Paha83/2dsGi7aAhDbWqr/mHWcIm2/y9cNkiVBrEo=; b=dNhpltQ8F+Lh7w
	EOEcKwL4f4pti91deoTVucSLdh9K39kt8xib30WrGuC3ggvrCvqHI6/Ovho1e3wcSnz39RnScX+Cg
	ekmFVOWQAcCqhjXvFxGEBhA5zz4zVRNo9nDK/ad9wxBB0uzGBRsZKZ3ifPdwMmv/UJKI71Hebd0yZ
	qNWkYLRaCnzSdYT0uB4RDLGNS5yBznoZhymj3042F4RsLruP9iDNfhbb7dyPT9/u3u9x6jck51HM1
	6gERuCDKMJiHgxDX6e9XA/3I8pcWGYdG6TpP7QBGJKvS9KxBHeU3xeFKn67Ni5A7QxODGulbLqg7z
	Y3T5llTveyuaMEcnWSDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvKNB-00000000c5J-4AAL;
	Fri, 12 Apr 2024 17:07:33 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvKN8-00000000c22-06Hm
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Apr 2024 17:07:31 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-434d85cdb05so5147761cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 10:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712941648; x=1713546448; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ICZfIsGcQEVbd3Zt1qoYBnvko2GDh9Nz2dJVHbfGpSA=;
        b=lcZILykbrooRMhWzuEe0Pe0PN2jX4XJP2auKUimJvTQsKYKB3aXfYIFIiePWQgT+lc
         Hwf8vZU1v+IOPE/TJiq/HzK93X6ds4apSYlXW6YI2oHkY9Ktl1kL+qFMF4UiCokWIEDw
         LtmC793CRyFgzqzZXTz6NSfv0T4osXRQblQcKnCW3u9Nb9of7yQHQkBMaEWzaelPKL0D
         IkndGsqz/t/clcm0St45DZta0wPePuRwllf5ji5H57QUK0eGZHtWKvUf1AglUdkqkqII
         lOhmKJfK/fQ5US+qwSQ4sYyKCg9qT8ylWIdj7frPINkXOvoUdO0DDDMEGK3KX7zmuQlu
         1eAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712941648; x=1713546448;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ICZfIsGcQEVbd3Zt1qoYBnvko2GDh9Nz2dJVHbfGpSA=;
        b=oQb25AEEGKOuTlY2b2UjW97qahbKKdMyuUFk66BwrTcXy4QPFKigEEd5Ni/a3iLfyi
         A95Yn2D2SLeeTUuNUIfo+aVkmv3zvfbFKPFhoq9KyWJSJ5G8yxvy1xqvxPwwKn5mC6Tm
         BkZlYplBvwIZyxZA7a3c7Hy1Y0j0wjO1CWiCXlb3eZx97tO3JyNfn3pIJeai7bqcZPH1
         CXw0O2xsKH9rmoEmKiUa/J9dwpCu7VHBkdvd88ukkINFkVHopghtMPTNNNsgogf3661o
         8/b2MK3sBIu9ud2KBObomqhU5cSLFkblcB1bM+ykeqQtYrgN3sYN59UQQuBQkiZV6ESc
         x8kA==
X-Forwarded-Encrypted: i=1; AJvYcCXwsgCGRthFBKDPPr94lvAjURUs5NjTIop0SxavWe3BNQYeDAo83BdgkkSfU5NbbmGy+lG9nuTPwzMRbQemezTQuhH/Ak//hfiP+I08CXQTsrmh
X-Gm-Message-State: AOJu0YwAU4WBK3Kg4x0chvDD814eCO3ege33aMsWrs3n2epfF+Yp/zul
	A9RjgE3YWs8N8E1mhxE8DCdSUYN9UykFSSq3/fu0Qhfnf5lEvK+YZfwo3BNXYLgpN0CsCkuuOzK
	b5SpmN2kmcf3tb7cgK6Ca+/aTW63QrGgwlVOGOg==
X-Google-Smtp-Source: AGHT+IEXzcV5Ah/di4pWjeRuzI8bp8L5qdlySBiHU1tn4/tN30fitecIDCoiEvXNx6whVxsKgO+qRvqVW4OxECf95F8=
X-Received: by 2002:a05:622a:606:b0:434:89af:bd3b with SMTP id
 z6-20020a05622a060600b0043489afbd3bmr3794375qta.40.1712941648259; Fri, 12 Apr
 2024 10:07:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com> <ZhkIhtTCWg6bgl1o@8bytes.org>
In-Reply-To: <ZhkIhtTCWg6bgl1o@8bytes.org>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 12 Apr 2024 13:06:52 -0400
Message-ID: <CA+CK2bCjXGTP7ie=rFtXrmRaWxn_6VmfZb5BXR13z9a3scfETg@mail.gmail.com>
Subject: Re: [PATCH v5 00/11] IOMMU memory observability
To: Joerg Roedel <joro@8bytes.org>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
	rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, 
	tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com, 
	bagasdotme@gmail.com, mkoutny@suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_100730_087965_35EC8D52 
X-CRM114-Status: UNSURE (   9.53  )
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

> Some problems with this:
>
>   1. I get DKIM failures when downloading this patch-set with b4, can
>      you please send them via a mailserver with working DKIM?

I was in the process of migrating from google domains to a different
registrar, but I think now the issue is resolved. I will verify it.

>   2. They don't apply to v6.9-rc3. Please rebase to that version and
>      are-send.

I will.

Thanks,
Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
