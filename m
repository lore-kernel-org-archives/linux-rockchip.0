Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD0CCCD19A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 16:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qo2VKozttj3bqorMsi4ZwgDqLreIrWwEXQAWF2oMaZ0=; b=ttndbgvN19W7Lk
	5+Vh6D7OTRVEr3ZeG0si/l4p/3BNbHx9V9SwdT7eGbbgTO5af8kBmzpf1NtlJKZhfsmEitgb2HtU6
	EMBTyC4SXQS2OxHVuOs3bA71ovveTZERF+v65mADN6Z+saFx2PO7yCfouuACwam7XpNJz0JqhMqks
	I7R3vYZmXVsDRONasrAwNVweRFytEaut/xbfmL57hGccoJ5tI8qw9HIoTYO7HH3On7PnlRXtwCoGp
	dKkGXmmsyPFGz5f+tMlp0C3JP4dFl35quG5zHWaBguJbtmxXvBALhse5icTK3+hdCQEnmTJuSFimn
	WdC2zq0ltrpKLuyXWaOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Qjm-00000005PPQ-3qlZ;
	Thu, 16 Oct 2025 16:21:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Qjj-00000005PMF-2Tps
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Oct 2025 16:21:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760631714;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CA7cuB52W2mQEAqgkUGyrUbyJm9rGb31mdD8XpbhOA0=;
	b=jKQ1KzHLW7x5eJssBRa3OEWCBVYbmtAX1s2XnDbyTgg4MSHOSTBBHvLD1gGQVnmRze56hx
	N7pDgI9aHNvMPv1/heH4o2BsjyaARqYF5eG/JXUQq9DIKBWt0OwdpT3bBOpe052/b+C1Hj
	ZbkVUbahAb6szSr/U/9GzT03kWwb2pU=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-50-P8hMg2DDPMuro98I1aq2VQ-1; Thu, 16 Oct 2025 12:21:51 -0400
X-MC-Unique: P8hMg2DDPMuro98I1aq2VQ-1
X-Mimecast-MFC-AGG-ID: P8hMg2DDPMuro98I1aq2VQ_1760631711
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88e35354330so439721985a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Oct 2025 09:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760631711; x=1761236511;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CA7cuB52W2mQEAqgkUGyrUbyJm9rGb31mdD8XpbhOA0=;
        b=eWR84s0ZuVGlTaFFf3UMVZw3Utbvu6bAoXVO+xnMAbMR3IEO4UY6KHTXu2eS/DW7vA
         n/PxFfZyGHCKKdTaajzBtAusrKEISxY5y0lpvFwnGaXIBcr0N+/F0sQCZyHpNW3CE8nh
         FxS3rxQ549+6uWTkjNk8aWejcOUuUMsUsqBnY/UDTVrSE68Ocv434PK8shaXvFDi+pcT
         CsmH/PdOu0F1xFO314aenpatjKlOQetpjDIXw2bFevNtnhjsAtz9+TPom7wob7c4k6Nx
         pYGvhUGAuBOWIm4bI+TfrGUAPczczqt6cYWZrcBs7clawjOSkKuUNcI6TNB7BR4ir94g
         Kmng==
X-Forwarded-Encrypted: i=1; AJvYcCWE5ezE9Tm/nWHBC0+zDpSw109F+nc6pRLSFcr55JZvkU01arBtMOKyIjDw8btKgryBlN4EozIf/iE4LIFPSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwFkobw0gGvDUch5BxmV2sylWgXKkr99Nw4SIeZgN0aE/UggEn9
	8Sbb0VX90hYb+l61UObJBXq+kn6lD1UDM2pc828srHDg7ZeYyn7hi83GaFO7FaQP3zO0xhK+7QW
	U+IdVpmwO5rim+QLQf6CqlSdu5R1A7l4x70f/fxo/1wWTy1JMSYiLOjAKhmLX4mf3818Ifw9sTg
	==
X-Gm-Gg: ASbGncupzFC656vF3CGHn5Oq02gG0Fr9qn6sZUZTFBdtCHrX1AMmbCx6SoYgF/OgznM
	UgwW0tTTFMmYW/xClJbRjULfdkouPTNL4kqtdGqByKe7Ij264lfE+6hHTCQO+K0WJsWnzyRVG1m
	XpoMc+qc5YkW6Jtv5ROg1LUS5HDHE/CrC/raPIV3FojDi91RAiSERFtwWKHpnFFin3ha3AXGaUZ
	tYot0OMZnhdfeRMrStFqREe0jYXQLCJ3jQcKgHn7RImP24kWT1RHxZKyl1ZEe4AarhaLwH5bL8L
	KYye0d3fcG6ilJeMW3+sxiXXTRMaYDX6FurAe629WHjV6ecunfP0+dfF6GzpxcRVU/2+iHAT4sZ
	AO8ypsqRcyKtI7CpSZGfNhCdLTub9eUJbrxAjQ45qoeHFjK70udEsA1PjuUYngRkwQg==
X-Received: by 2002:a05:622a:1a9f:b0:4b5:ea1f:77ec with SMTP id d75a77b69052e-4e89d091468mr10559601cf.0.1760631711011;
        Thu, 16 Oct 2025 09:21:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4xG1metr/rpLguKpcRm9DUmy+rwmLo2vG6JrUEiGqV+HAheQWldgSDUdPw7Kfed4P6HKKmw==
X-Received: by 2002:a05:622a:1a9f:b0:4b5:ea1f:77ec with SMTP id d75a77b69052e-4e89d091468mr10559121cf.0.1760631710594;
        Thu, 16 Oct 2025 09:21:50 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e885a8e10esm36941801cf.11.2025.10.16.09.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 09:21:49 -0700 (PDT)
Date: Thu, 16 Oct 2025 12:21:47 -0400
From: Brian Masney <bmasney@redhat.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/9] phy: convert from clk round_rate() to
 determine_rate()
Message-ID: <aPEbm5qK8-hkV3w_@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: M9wSKCexlZjhVkYrFn25sSjxTXOl3ws9VQWpo519IIU_1760631711
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_092155_692834_14008379 
X-CRM114-Status: GOOD (  11.13  )
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

Hi Vinod,

On Sun, Aug 10, 2025 at 06:45:28PM -0400, Brian Masney wrote:
> The round_rate() clk ops is deprecated in the clk framework in favor
> of the determine_rate() clk ops, so let's go ahead and convert the
> drivers in the phy subsystem using the Coccinelle semantic patch
> posted below. I did a few minor cosmetic cleanups of the code in a
> few cases.

I'm hoping to get this series merged so that we can remove the round_rate()
clk op from the clk core. The clk maintainer (Stephen) mentioned this work
in his last pull to Linus.

https://lore.kernel.org/linux-clk/20251007051720.11386-1-sboyd@kernel.org/

Thanks,

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
