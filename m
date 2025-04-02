Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7244DC28B20
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Apr 2025 07:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/fLFLmJihaYQWjBAEXIvF9P2gYb6nlo4w5zWVmS+QQ=; b=OVVEfz9Tel0Zox
	YG5UV+m4i15xtwFRAD/v8SxZJ+z8uerYNE5tdVneT6AO6Tp3Og1JB2MGgoZWZL6NOZ3Ododb8nPUb
	y7Be6/jK9CJrha08lGpVY5yrwyCt2EcnKohPp5qdiDJ4kPfMSZIcn3f9EWVKnEp6BLr9HsuCwDGe8
	BLgrlCJKWty/+gzCzuh0UkmbJ+swpCz8kbBLjfd84yMuutZ3/y3cwRRJ9rU+9+arV8DKfPm8H1Bxj
	Yc8DHyPg298n15u8uUeU/yjmfMfg7HJ5qRFkL8jvL+MkskwS5TMPPKycf+mBkYxI7Y4FDaD/dUUbT
	pNQafRvwszhyW4u8b6Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzsw6-00000005RqB-46cs;
	Wed, 02 Apr 2025 07:54:58 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzsvW-00000005Rk1-1zKK
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Apr 2025 07:54:23 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-22403cbb47fso133248255ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Apr 2025 00:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743580462; x=1744185262; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WCENuk9PQu4krAXVW7qdLepJ1A4XFH9uwEadY8jcBM4=;
        b=YuWSE8g0aCkAfqc8+JN7DDYDoi/crvP1Ri1XonXkkGTBHxEc5FNX0YfjJyJoUFhI9o
         PTGyKfPObmCZWLIuORpo/gFQPXpKDANxlSpGv+yjnlevN7NyaxEY8GfIRuZN7r5AuyHD
         mbLKnkzpqiB6j+JfawzUGPwDZWDHq1JYQ+gDZ0lKDaBGDbXnzUTYxWViKLlzE+IxQhLV
         qT0Nfy3frCWG4j+fL2tG1ZdQkLA6Eda1J6iWKD68x8k69L5FV1waFweF9Bdt13pnS9Ag
         68Ji7SohewRkRXv7ANBuw03OdH310OIuMNKb5TNU1LhEsoH7uVlyY0zWu00pJJbkGdDa
         Qlrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743580462; x=1744185262;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WCENuk9PQu4krAXVW7qdLepJ1A4XFH9uwEadY8jcBM4=;
        b=U/Yrh912qMGRCivtMUjUxEcn0yUa8w7ztEiXIQ9cDr7G1K1Hggsf4Net2Z9aNq+3P8
         3gNXbRy25pqoK2AGbBiPAgNjunk3yYxqIg50A0UUDn8F7qlTu2lf7ZJ+JNGfO5WeaSM5
         vsoO/f3QKA8gniG6Mz7Lfhcknwnk6X0kI+V1mCKCJf3WJXNgLs+avmS5pUg3Zum1RO3S
         hWUquuihlD4299re3YtUj/mmB4R3tIbZJL7Qi0vBe6SkpIz63Itb0XW9BM9fUQ+iMOZa
         uLMQqmCOal8Gpzt9fg5Mtspx5ScErhKrj2KHMt62SuR7ONT4q9uToR2aacuj/eLquiEG
         xrtw==
X-Forwarded-Encrypted: i=1; AJvYcCV0JJRppGFV47/hDGqDjRdTy//EILZ/1AHB0bJ+EAngne62EDYBZE86Y8pM80z+IDtvJgY1y29cg8u4WDDYpA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDDZ3XyCAtBp74GG3PmSwwTgQWFutiEY2omWxVqG3MIiSFfJ2J
	SFTU4k+4UwtqacfDULYu6gphEbjtZ78yyWxxBA+9xF+Jric+TkdT02VwpnmqHw==
X-Gm-Gg: ASbGncsMh+GtvX7yTIHTN7NLVUuf5IlBWiy1lxvblKQuKBbB5i0aguXHPc/EJub0fwI
	Ac+s3aEhNyRys7lwzWCPuNddSjHXpozVKUlftxfzfGagTOKwL/TXZ4mb5oefCnE2QxBMO5UN3J9
	LOVIf58qyHuYXVq9LfuaWPVpwsrltDi1U4c7QUY3ba6lxkC6Y5bres33vvamwWHjDMt4rKUnQh6
	LRPtsTrDDdtGN3XAsUmkS3JM8MzUBbtejZkciVfIY3WsUvSyFBjS8ze5PjE1sdfIlpXK0DCzsNm
	+oQKsBnazt3LIo7ahwou49BOx5e6dvn2rPuFFCnvRQIf9V3mrhun8aQJ
X-Google-Smtp-Source: AGHT+IGge72TZJH1J2vvYo6DD9BNpDIh2f4O+A+Z8qHrboOP7InJqdVuoFxRjCNjgzZYii4VjHrbsw==
X-Received: by 2002:a17:903:2acc:b0:220:fb23:48df with SMTP id d9443c01a7336-2292f9d682emr277347625ad.36.1743580461725;
        Wed, 02 Apr 2025 00:54:21 -0700 (PDT)
Received: from thinkpad ([120.56.205.103])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1ce127sm101967895ad.108.2025.04.02.00.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 00:54:21 -0700 (PDT)
Date: Wed, 2 Apr 2025 13:24:15 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jensen Huang <jensenhuang@friendlyarm.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Anand Moon <linux.amoon@gmail.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip: Fix order of rockchip_pci_core_rsts
Message-ID: <lbar6fn3uhqeyg7apvggor7a4lqy22ozkid47quumuvfv7gz36@bny3kfhxvrq2>
References: <20250328105822.3946767-1-jensenhuang@friendlyarm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250328105822.3946767-1-jensenhuang@friendlyarm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_005422_514754_EB1E8FF3 
X-CRM114-Status: GOOD (  11.64  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBNYXIgMjgsIDIwMjUgYXQgMDY6NTg6MjJQTSArMDgwMCwgSmVuc2VuIEh1YW5nIHdy
b3RlOgo+IFRoZSBvcmRlciBvZiByb2NrY2hpcF9wY2lfY29yZV9yc3RzIGZvbGxvd3MgdGhlIHBy
ZXZpb3VzIGNvbW1lbnRzIHN1Z2dlc3RpbmcKPiB0byBhdm9pZCByZW9yZGVyaW5nLiBIb3dldmVy
LCByZXNldF9jb250cm9sX2J1bGtfZGVhc3NlcnQoKSBhcHBsaWVzIHJlc2V0cyBpbgo+IHJldmVy
c2UsIHdoaWNoIG1heSBsZWFkIHRvIHRoZSBsaW5rIGRvd25ncmFkaW5nIHRvIDIuNSBHVC9zLgo+
IAoKT29wcyEgSSBmYWlsZWQgdG8gc3BvdCBpdC4uLgoKPiBUaGlzIHBhdGNoIHJlc3RvcmVzIHRo
ZSBkZWFzc2VydCBvcmRlciBhbmQgY29tbWVudHMgZm9yIGNvcmVfcnN0cywgaW50cm9kdWNlZCBp
bgo+IGNvbW1pdCA1OGM2OTkwYzVlZTcgKCJQQ0k6IHJvY2tjaGlwOiBJbXByb3ZlIHRoZSBkZWFz
c2VydCBzZXF1ZW5jZSBvZiBmb3VyIHJlc2V0IHBpbnMiKS4KPiAKPiBUZXN0ZWQgb24gTmFub1BD
LVQ0IHdpdGggU2Ftc3VuZyA5NzAgUHJvLgo+CgpUaGFua3MgZm9yIHRoZSBmaXguCgo+IEZpeGVz
OiAxODcxNTkzMWE1YzAgKCJQQ0k6IHJvY2tjaGlwOiBTaW1wbGlmeSByZXNldCBjb250cm9sIGhh
bmRsaW5nIGJ5IHVzaW5nIHJlc2V0X2NvbnRyb2xfYnVsayooKSBmdW5jdGlvbiIpCj4gU2lnbmVk
LW9mZi1ieTogSmVuc2VuIEh1YW5nIDxqZW5zZW5odWFuZ0BmcmllbmRseWFybS5jb20+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGlu
YXJvLm9yZz4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
