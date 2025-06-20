Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30970C7115C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 17:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isoLc7hf8M0EcZI88i+Yi9pNhJV1CRafjCgH3aL+OaE=; b=OaxDshyl5r86dE
	e5980GBg2r4fedq/vSTNDmlUgTNQ4mXJU96uuDPsXfdrWyMtscLHKwF25nw5v2BJywBSW0MhFK6eI
	Zg7PYayAQnABMEUH0eEYzr+ZLDStJTESQzHq2PtYSiJnUa4vid7rcDsd++mLTviJjxMfPlmezGNYP
	rpt5cIPzRGvJNdj1zfKM4RUX+JM556Qvc9v2P5SgdrdSANL1qkScpB1uYAXewPFlKeucRTCr3m8c1
	NVe8U0KHRahsVUN0lKQg6c/6seXNuXOBamN3PSZcOdNvZCFN2ac6/zYlFZ0ZPk/Tv/c+yysCwEZdI
	tlqcFDMXewA83DrXlFHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSfFW-0000000GCfS-2cBu;
	Fri, 20 Jun 2025 17:09:58 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSeiv-0000000G9GU-1NnC
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Jun 2025 16:36:19 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-6face1d58dcso31337826d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Jun 2025 09:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750437376; x=1751042176; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uJYXWxLY4HLgWwCr48sF3PGs/sRochGTLyGIU3biNNU=;
        b=E4CG5GxiVLgNKnwD2b5kKyw5K2jaoHQRztfBhMQ3zmZN4vaibk+iQk1QQVZOqyvO0W
         NZRX3PilzQu6adcBKp9H2jMbGNDB97YdD9nUM30J88E0jtEF8kapTNjzWVE7oxJDIWde
         ppcgotxgEzimhR2EdbMrl3DLtYM6DDsUoORdci1mAMKY64lxY714o1ApfBJBnS+WHwyC
         SOgKIwIl5JIWHxJVPRM7eIUOznaDaQVDUIu73mZMxPlD5+gCnkbEBaRgqU/06/k1kNOz
         eRZWtV5xjvM09pWMuORmmldAOgncL2RlWGavc1vI9nZePMS+QY2hmPxk3OjgWN/rerq0
         ZQpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750437376; x=1751042176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uJYXWxLY4HLgWwCr48sF3PGs/sRochGTLyGIU3biNNU=;
        b=GNbP2rAFjifXisgagwy9ZqzdWQdLWe4xeC6MM+Ngtq8y2izIanmEQpsIuzW7CgMMck
         NcqJ59Qzq5Y6o7RJJNvjmLnMr06cwv/bjyFeQxOO/27lCJ4ELVSkHcsxMeyzFpuxeTgk
         5Bt2h9V8Ey7IqXvC+84gsYyoPs+NZ4gC/PfVCA7CMn2FkhULHmIA8PsMyPf32o/fniKl
         /dNpKOfuMtHCWpX3fOig7ntdTb+0AZZcuKJSneyZorj4z6yrDlLFANcCa3Jy8lHfYE0t
         EtjF4ewa9JslR7Xg07abhI1WJc0Nghgu2AIenJXtJ3aTLYkPbTmw12Y0S3bQdEldTPRV
         hedQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4mllcWBQXTK+STNAEXtDcVCRd+aoarzV1llrMJh+7Rd+WOMLX4f9U0rQzvNtpd81+ROXYaEx43tewa8OSqA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwFDbBEGP3aB29uz/y1rcbv+cMEvapuuAea+IXeqaGio+Us0ntf
	seT7ZFM2CWeduZsaINMUxXRdPmf51q4z83Puf9dUN33KVz0o5NuIC9G0742wc5j+Vpg=
X-Gm-Gg: ASbGncvTGu1rAdIASxfXAmw0J9vxduAwC2w63cNes7dhAM5Er1iCbvwx2m07PItXOtz
	J2qmtDebV5K84Jw1F0n0nFvSXr4vHzR/+/IzYdOCyKyew6+DPWKQBnSQ3GQd9BQ1rqptIQRncy9
	vjXr3T9U52mUVGSCrjETwtw1PKXpollMbm/jGJAe/CEcjot6O3kfEta0WG9Hk89DPSZ7Wt0vjTn
	6DJzW+Cp7GnvJSUbOZyBzfWfF0CObFP3U4SmWNgFr0cQE+SRwJ21/hoyM45pyLaC62XxyGtee24
	IqpUOk3mJ4HHwxK9SF4ro61g3ZBbx21zZkILvz1BYRf4NkALRtaaJMH7fx6HjpX7xBcsKiEUMUd
	+DhZKHUoxE3JznexalyOZ1VeSjiRbtKjJ9xcSpQ==
X-Google-Smtp-Source: AGHT+IHyontIEkY5vAgGgYhS+U+r5SqIyyHQ9UkviOZGeU6jrV3bzO+5OOnHkugt3y3GJ2IEIkVU5A==
X-Received: by 2002:ad4:5de4:0:b0:6fa:ccb6:602a with SMTP id 6a1803df08f44-6fd0a51b3d7mr63974736d6.20.1750437376130;
        Fri, 20 Jun 2025 09:36:16 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd09596e6bsm13876946d6.100.2025.06.20.09.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 09:36:15 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uSeit-00000000EsP-10Pb;
	Fri, 20 Jun 2025 13:36:15 -0300
Date: Fri, 20 Jun 2025 13:36:15 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250620163615.GC39770@ziepe.ca>
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
 <20250619165928.GA10257@ziepe.ca>
 <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>
 <20250620120509.GA39770@ziepe.ca>
 <d9a1b9ab-b6ab-4364-a1b7-df4debc21bc1@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9a1b9ab-b6ab-4364-a1b7-df4debc21bc1@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_093617_367914_1DAF1B61 
X-CRM114-Status: GOOD (  11.34  )
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

On Fri, Jun 20, 2025 at 03:52:46PM +0200, Benjamin Gaignard wrote:
> > > vsi_iommu_suspend() and vsi_iommu_resume() will also have to take the lock
> > > before calling vsi_iommu_disable() and vsi_iommu_enable().
> > Yes, if they use iommu->domain that seems good
> > 
> > If the above locking is a problem then I'd use the group mutex instead
> > during resume/suspend. The attach functions are already called with
> > the group mutex held.
> 
> Does group mutex is also called when using vsi_iommu_map or vsi_iommu_unmap ?

No

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
