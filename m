Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D165C7115B
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 17:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdsXs/n0rHu7PrF8RBgfo3QT+VERjpoYLV76n0p4+qc=; b=IAICIG8Gb8lL6E
	uwxx6xleueIgcemrltnA8C6W0EtKij0vPS3RHlELI4Q7i2R30oc/4BmK68gG4+MxlenSfETuSTbXb
	R8rdklCge16V6Z5Mf4D1qRvoG08orgM8ONfULnBz03OXcKmTgkf6icZdlh6mjHy4lrn3e0+t2Tq1Z
	R9W5YWad2Ght9K8o99pfhVcVmYSK468pZ9ekc6UJXiogModS+bOlOVIRtKBYgmfRfSzps40bgYLsI
	P3sOoPqx6uC2KOav4iyccQMdYrHIanxRCvuZA/NXfL+2o5NUl4jSH7oHxogH9/KAGhxhz8tlNuUEx
	zMpP3kcujzSR2f+rOhjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZqt-00000007zQF-1OTH;
	Tue, 17 Jun 2025 17:12:03 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRYhc-00000007oY4-13Qj
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 15:58:25 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-7d0a0bcd3f3so660378085a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 08:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750175903; x=1750780703; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5QVoUfdHdJ48HnCFe+0ux01ldLUN4WiVyX0euOzInBM=;
        b=dEDddIjctkbRZTvztrAgzbTCzYStEoOP/m6vD6nEIgkQl3CsMFNfB6pdW/itWcDR0H
         7JxX3mfyLdC9WBHz/sjYrP1COnzzMeJ18Ry2VBYaKxprEZbr/22c2eO+4rfUPBqbU5o6
         uy33U5fW59SfCUleGmopiubw3WFy+5RgdvRuX9nB1MIs1p8UkmutHqS6pqcingGnPPI1
         Aj/03ibQsxWKFcSBhSiW98UcICmQ/erPg311hM+cCHGyVS05omTKImtRTOATWxyQVxzB
         R/BKpmhxPKX1U2csxUoMQlUsh/NupR7RtBkI43ntSWfwPdCbSmxV3DteAWOVYhVXhXH1
         TTfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750175903; x=1750780703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QVoUfdHdJ48HnCFe+0ux01ldLUN4WiVyX0euOzInBM=;
        b=p76vybHcXIgI+RdQH2RlZOgeo+6BApuQit4C5e+AVpn2kR8kH6F77w4Z3avlornxuT
         6dGvUqnC+PIt3z578gtnPvykXwd+hdD26PGnrnRugqD/h3LMGJzI8yBHNXqPziI/9+N1
         aD5rw56Kw2f8HYxZ/Bp/itTQC35Ew72NVARhRDUSF9GhIK/wYmFNyw45yqE8LiBxoB90
         GKGJEzmpyEwyWLt+WvV+RE7XK/mTqDRhuyMLtmmfVixGphGnvFT+ZHdEjVgITBmJ7+c0
         +ufY/qAQg4MK9DN8sDraAJP85uYg4AhCTq9+NbeNVmqeevHkKJfV/Zj4oHNephqawpVs
         EuUg==
X-Forwarded-Encrypted: i=1; AJvYcCXeVLlR59v2OAaYHIlF5wueiTIpCrRdAAAKrhGDO1wWq/KMRRgj6zn5dPC8Zh57JEe+aE1X9DPpJV8TGtBhDA==@lists.infradead.org
X-Gm-Message-State: AOJu0YytOSs5oYK/EapaPirsQ9pQTD8eQowpeDLxTr+QfDmXoWDHGf/T
	n8TvjHw75t25SM485UWHtMwMCKZ5m53ushPRTTZn2Z8xcMu36/8S3BTqjTj1usAfV1E=
X-Gm-Gg: ASbGncsbjpT/3CPrn8WRzHSfhKNOXG1lNddcqpZvPezuAKPTUFHEqzGSLwxFwu0O8WY
	Pqvof6C9Hhay3SG2h58k0If1U9WiY3WhVB7CxxLsVPZGASmYwXtGUnHvI7ZZj46hjm5/+GvFVNt
	/c6aYw8HCevfohuXHHCyRbryl2mBDwq/cTTOJghkfNHzOJg8BFBGWhK+5/Ym8oBOcWnjLgX1keG
	gFNd4GHYov7hkgTHkBbRrE1B/EJTQLM/rmkr6eEgiqvkNTOBMaZSK496tNN537HCoX4v3jSkcqy
	4/YpxCrTetBQ1irla+1m2Wd2Obu0mwKUCpHRqhIiDnUeb2GQb1GrKkyCbQ2dWdS2kE36Gszkoiq
	uQx/MCWoZUBBEACQGrO0cqWsSbJ/U0R3HnYM+IA==
X-Google-Smtp-Source: AGHT+IGQBUFbF+tPc3zGviUG0wR17BWPg+rb3PkSRtQpO74uvfm4fcaKBtbG84+832ByxCugbO/j+w==
X-Received: by 2002:a05:620a:44c5:b0:7d3:d14a:38aa with SMTP id af79cd13be357-7d3e07649b8mr472642785a.16.1750175903195;
        Tue, 17 Jun 2025 08:58:23 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3b8e0535csm664773285a.41.2025.06.17.08.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 08:58:22 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uRYha-00000006Wgi-0qrY;
	Tue, 17 Jun 2025 12:58:22 -0300
Date: Tue, 17 Jun 2025 12:58:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 5/5] media: verisilicon: Flush IOMMU before decoding a
 frame
Message-ID: <20250617155822.GE1376515@ziepe.ca>
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-6-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250616145607.116639-6-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_085824_305133_6C2C9BA5 
X-CRM114-Status: GOOD (  10.78  )
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

On Mon, Jun 16, 2025 at 04:55:53PM +0200, Benjamin Gaignard wrote:
> Flush the IOMMU mapping before decoding a frame to ensure that all memory
> translations are properly applied.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

This is a really big red flag.

iommu translations are supposed to be controlled by the iommu driver
and should be flushed as part of the iommu map/unmap flows. It should
never be necessary to do something like this.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
