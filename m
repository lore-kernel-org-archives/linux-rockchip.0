Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08965C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 21:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/2KhhO88u7PiGVfN4Xclr3VsKuBY5lzmMVcaoxcgCY=; b=kpPf9/kSaFJLTg
	347K3j50bhqc0s9RG54G3wFc/M7yxE6oLV26PkzzDLHgefJiOUop/xxPOs2UIz/QDUgKwDT8SsTvI
	QZjDBEvz/JqIjGZb/Rltbv+kOnuvy4EJjipVnhlilaOlm5yrFIKNe5Ezh7iBMhgPWb8J2SIeMifWs
	fAyoAQpnQKYh8HbnH0abEKY+QIe5l2W3jSZ12k9ciQG3mu8FrOmBDqiIIQo6i3FWeCtHoMHFdf64Q
	pgEH7mOtvAb6W5WGm3an1v0Xz6ofoTKPPR7o29TsvOVlxJtS2v+XUTJuWp5EMqt97039X4KbM04Wm
	eBnSyUZGPEPnSmntErKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8SRM-009NIZ-1s;
	Wed, 29 Nov 2023 21:49:52 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8SRI-009NGf-14
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 21:49:50 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-423871dc183so1465761cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 13:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701294586; x=1701899386; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cpfJU5sAguyt0/G2iahMIWT2bpNq5anO26/F530wIyY=;
        b=ALyUlOBpBioBuM4ekOXMEvdrsPMRa4RZrFYsrHY7dBvK2DlaeSIWF/AGrpF3+hh5iu
         fotyH7uGT8ue/402UEmk4nMBwUP774TtfTrXbFjvyh27RG9reBFQ+q9h2nT5r2woR5gU
         wI86rFwbWAm9VXNgyJWPKIHwVsq6JWj6pUremE1vy1xOdAaXAFFYjYrYvCgEv6+5T6fq
         Valj0bBjCKzbNd1QuMzCZwBAy/wP2h9GX8DppOEekBBV1ACy1NI7/prjI3ygFcGJgQj4
         WxQGFww12Xra8RdfCAYtVouMtccxOKEeEHN62GQ8XRc5HwZ35VMWW7Abvh6fh0reiumS
         zeJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701294586; x=1701899386;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cpfJU5sAguyt0/G2iahMIWT2bpNq5anO26/F530wIyY=;
        b=O9xh0C1gVk2M+flvh9shFmjlPmzT5FdNfyRyaIKtOJc5kEZfRgpXjad1srnp/Xy4A/
         JrxGi+uuXr7pGXnoUtBSDMisu2gHbfvzbZIJlco+UVdAAOCRsDBDkIHWsXe1HpVvwux9
         qlsFv/g8/O7ahmIpUqAG3K6blyxoFMN+XjcyQrC8cc5v7QrTxX4A/oxBeXBA0jI9oEwJ
         JPPx4hvJgiIRyuXzSolnABOZRA/iocroexCyA+gIVSMaMDkEd4LJ3wBUxGk3MapmJypT
         uZBrLQ6zH6k4lUeA4+cYCiCzPC7r8EtIcDdFMRA3IzIEDKFq00y6Ef+p55PaHzkA+Ohc
         Ddxw==
X-Gm-Message-State: AOJu0YzWw2r2hJxFWwhwnFIkSkcEDm7MPqj8aaAjUVMDWnYCXukg+ySE
	6av3+aEgoTe7wuijroUg8XPF3XREUHrRi274iccXmA==
X-Google-Smtp-Source: AGHT+IHQGnPttzbf2bAdb5gwZpT0Nh8amOSeNRZF+eb1/SrYiR5d7rhV+9FkDuUK6ClQ83baR1dhxHx1LVYRiRyKJoI=
X-Received: by 2002:a05:622a:34c:b0:41e:213d:3c8e with SMTP id
 r12-20020a05622a034c00b0041e213d3c8emr22630747qtw.32.1701294586528; Wed, 29
 Nov 2023 13:49:46 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-5-pasha.tatashin@soleen.com> <ca7a025d-8154-4509-b8ab-2a17e53ccbef@app.fastmail.com>
In-Reply-To: <ca7a025d-8154-4509-b8ab-2a17e53ccbef@app.fastmail.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 29 Nov 2023 16:49:10 -0500
Message-ID: <CA+CK2bB-TMCgpjvuXRigNaaA2Zmj=r3PHTQMaqs5W-9FkE3roQ@mail.gmail.com>
Subject: Re: [PATCH 04/16] iommu/io-pgtable-dart: use page allocation function
 provided by iommu-pages.h
To: Janne Grunau <j@jannau.net>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com, 
	alim.akhtar@samsung.com, Alyssa Rosenzweig <alyssa@rosenzweig.io>, asahi@lists.linux.dev, 
	Lu Baolu <baolu.lu@linux.intel.com>, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, David Woodhouse <dwmw2@infradead.org>, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com, 
	jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com, 
	Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, krzysztof.kozlowski@linaro.org, 
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, linux-mm@kvack.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	lizefan.x@bytedance.com, Hector Martin <marcan@marcan.st>, mhiramat@kernel.org, 
	mst@redhat.com, m.szyprowski@samsung.com, netdev@vger.kernel.org, 
	paulmck@kernel.org, rdunlap@infradead.org, 
	Robin Murphy <robin.murphy@arm.com>, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	Sven Peter <sven@svenpeter.dev>, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, virtualization@lists.linux.dev, 
	wens@csie.org, Will Deacon <will@kernel.org>, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_134948_370635_0A0853AF 
X-CRM114-Status: UNSURE (   4.51  )
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

> Reviewed-by: Janne Grunau <j@jannau.net>

Thank you,
Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
