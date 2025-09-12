Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89082CAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 18:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FqA0EEdTmB+yZ9kwtfVj78hcyNgfsAbG06gBoEnJCs=; b=sWZE9OtmO2pgKO
	KgQJX801E86LTgNqc4vziW/rCYT74t7eQS/7VidLbB1nGPJE+bf43xKHiO/SHUI675K8AT1gEc+Cm
	vLPPWJ97rgrEvY/3dDnjKCfmFqBhg5zkR0xA1HtB/5FbgDXan8sgPFWI35LUV05RegHDxggaALmCx
	OVJCLViklHmmYK2iFeA9pgSIdxa2+8DZnQV5IbOxaAJZ9xLKVa6ic90J7q2SjoGuCfvV40EENUrEu
	u6KFvPEQBlyNJiGvPSperVvLPTpR5KuFRNePG7VoULxpPRsMiPFfOSpYhVQXGQwMTOkl6KS0rIh93
	m+qhZkDAlTsNgQDprlmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux8Z9-0000000B0VI-0WTu;
	Fri, 12 Sep 2025 18:32:11 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux8Z7-0000000B0UR-0gQd
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 18:32:10 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-4b5f3e06ba9so38891391cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1757701927; x=1758306727; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i6r5BnwccM40MN1CW61UawFe6hxRBJLKBNylPutF2lE=;
        b=XFITn3/ondxs5g7OpXxPN5px/Pt5AFv71jvfi2NVQ0nNy0QEAbd/XaM1LXPJGE6WMm
         Tkqr4gEF2mZs8zlnOp3YLSNClTp/6lYY0nz07wvehRHZZb71nLiyacfFkZzoOKGB96WZ
         EkAhlKDuGo6uEYsNSfNR/38hq4Czp1ar4t9Cl3r+4VDXqtG/oyQ+duio8Sqk9R9n6oaV
         48fyRoYnJl1GaS35J4NFhIN1pszb4yYxvQf7odfEKNIryV84eHfQdfNhX93eYEGS818q
         xypPjScW65jdqaRvGd8oLRzXSGqg92fbFTUqOHERbrJt6DXD99tZO3+J+LkB5fCYPBji
         8IBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757701928; x=1758306728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6r5BnwccM40MN1CW61UawFe6hxRBJLKBNylPutF2lE=;
        b=gha/zdZwGbwBnAXTqUeVL0cTHj+mVdE2b/arfrrZ2USlhPNn866P45PLrgtmcatfvJ
         t5tDq2ulEGvMo2Js7AHqo7NSCCOsWNCEECOw9gwalI82sgNATlP5dal6NXkxnzXs9zJl
         2HnVRg4ZXUjEBn+zKXjgqR1cVpfGolQSdpMku/6HqTdc53W/uuairBuKFsDMfhqOKNk+
         s4DzVx9jbJwINbE+c5EJhj5VnDB6VgK5tFtOzUQc+WyH1sKkG1cUI3jk+/Mn+7xNeBxN
         0wZlVoTvEpV2d0X2RU+/lKj5qShG/4KaeHxAHkOAVCsDLsYQ/8Tto6CXXqx99V/iNV3Q
         YIgg==
X-Forwarded-Encrypted: i=1; AJvYcCWjshWq9NydlPntkt1v1bxhiUBZJF57GAl0TawhbT1X557XesgNR7Zzm2FlhnwWsmm2Jk73MGI3+SrWzpgnSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwR1O4Hy2ajolPQaOF4aFdac0vP1iUHe6g3uptqYySx44v+PUuq
	uMQLgIS1dKL13Nde0T2JqhPy/Y2FRv7uTDPa6PfxJldNZ4MWgZ7X84nLlgGj7bkr8CY=
X-Gm-Gg: ASbGnctLptelqxoQA6QY2UzzjXgr+rv7jeHqxrHxzGGuvH8wm2ZgtS7/T660t/+boGI
	Zq5z/tly5hTlLkLFCso+9xSInutbRnL6yP+gS2+0+vZ5THG6JHP7vZyN9Xrhp0GD4kWOFWYygfy
	yv84c8aefFr/8EwABAY8mrEKwlaMPeEk9cN8Goz4UfS5WBo5r+sigVWnvrTwEIUBAf6X8aKgL17
	1KL7eBhdPwuRPgPK2diLOePKzJhk7jy3w28jV6IdgQRY4am9gxO4kqBXiVfetAgEM7JFk6TzA13
	23048CcrCLrtDixlDzYf4SIkfsm0oGdYIuRK047ftunaU+3wKjv/ax6u8EaK5p7kJ97bzNJbAu5
	3+VOFA0bcE78fA+pwNbCxa8ogfvZ6bkz8s6Ukw/N4NCKD5zKqSUBAjvnlecBhHD8TDDdGEHUK/F
	2fFKU=
X-Google-Smtp-Source: AGHT+IHZhwwJ1GAAakUbDyWBchcEmOdwvmn5VpYqCpYR267goBUbd6qsiAamIt0D50PzjBgabwMTEA==
X-Received: by 2002:a05:622a:2c7:b0:4b5:d6db:eea1 with SMTP id d75a77b69052e-4b6348bd37dmr127954271cf.39.1757701927559;
        Fri, 12 Sep 2025 11:32:07 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-820c8ac45a3sm313988985a.5.2025.09.12.11.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 11:32:06 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1ux8Z4-000000047N0-0oCq;
	Fri, 12 Sep 2025 15:32:06 -0300
Date: Fri, 12 Sep 2025 15:32:06 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: =?utf-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
Message-ID: <20250912183206.GH882933@ziepe.ca>
References: <20250911155720.180465-1-benjamin.gaignard@collabora.com>
 <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
 <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_113209_295273_22C4A0C2 
X-CRM114-Status: GOOD (  10.68  )
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

On Fri, Sep 12, 2025 at 01:37:11PM -0400, Nicolas Dufresne wrote:

> To me this rejection isn't about Benjamin's driver, all iommu seems to look
> alike, so anyone else that would have sent new driver would have face the same
> issue.

Yes, many drivers looks approximately alike.. To the extent possible
we should be making more helpers and tools to lift common patterns out
of the drivers. I don't know how much of that applies to rockchip vs
verisilicon though. Obviously I'm tackling the page table stuff.

Much of the other common code is tracking attachments and invalidation
requirements. I'm hopeful the general method Nicolin is working on can
be lifted and shared. Certainly it is better than what is in any of
the three server focused drivers. But I don't know how much this
brings to these simpler drivers.

It seems strange to be talking about merging drivers that don't share
a common IP supplier or register programming model.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
