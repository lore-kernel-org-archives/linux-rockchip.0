Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0A9ECEB2C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 10:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJPylNMMc3HLFKwJZ/E0TJroEJ9Ax/+Y14Nv1hshmEM=; b=JpMmG3upvE79gK
	Ot78s2lrGabw7lIZ8Z+doyOK+xD9zs54U48Lv9Go0GgFb1UpG+N3RNDHewq1c8PC0xjPxc8MSHzEh
	3i/+tgHvUHoouitoMh+q1Wu05Ox8rbKWIvEJ3s3TjDbm11V5hxv6awRKLB+RuXD0cARukF82ydGcV
	0Dtg4FA3VPLcZ5YVh8jFIvN7phLjCawxhQrCk3KPkdyQRdy05e+VwTOCmRRtWfiuzBzzRGVCoJwBY
	sjOIs8heVlMNtsznR82DVBdvlhKOzm/SY6rEIfiJ5NmOEyzwCZdGmTKKRp3Fjhj0koD4qS2AGLbQt
	Ml0qT3PiZgZ88aWZviuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKD99-0000000Dgmo-2p8W;
	Sat, 15 Nov 2025 10:04:43 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKD96-0000000Dgm4-3opJ
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 10:04:42 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-b556284db11so1845834a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 02:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763201080; x=1763805880; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7ZhGFSTWU2Nki77TLqMBxYMwF/Hq7Nj2xup+lQAIdEs=;
        b=O53lxHJ8YZIFfGdbBjfiCWC9JH9v7KGbb9d58POdKxaB+48YyzxI46F1IeBmx0DKyJ
         Ob5JN/jOGFflR9RntfMbg1NZTbiNk8qfbzovXgrc748HIdMKl6S/ATVbg0dVhFI272v+
         +Y+YQKV4Bcx3LzotiTHr6P9EkIFl03DwW2WZcozMLbx45FPJr3Qci97L4BhcgKdiCL0Q
         uuavHPFWYzGtrZqiIk3QaVcwaKQne4x3WZJjjHl4c65My/mX+52ha9ustp34+3WrWORG
         PDpuFdNxFGLHKM7D3HF/2AHI22H7fJGgj2g+W+8dAgkCcvqZ8jQVAtaLvqbMrRjZG8aW
         i8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763201080; x=1763805880;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ZhGFSTWU2Nki77TLqMBxYMwF/Hq7Nj2xup+lQAIdEs=;
        b=Sm0E7bbCVONTmlpNL60vNLAtz3Qu0TkqvUkqNECwrwWo/FSBUUIe1H2JWMK1OvSy07
         WJm0ZIBvPUI70KW90YBs1GLcCvQy8Pwa6p1LKCMqWdUV0dyZArOu4ruSU26nkn/CoqUK
         VNSC3L79hFqDTUPWvgXqZ05XbDpWKWkMlBTOhkLKi29QPMfGab4H76/yCqHiGsIKVScz
         bH6ETDrLcY+KTxr9XXuNWsRVqUrBHhl8hEvrOw7y74ma7yq2G52laVXB8armck8ajjWq
         zVcYK6m4HhvGa4Yexrmh5Rjsg2e9KX8IVVLodBttmeufFfY/WEuUPrAgKlkwGXJ8HIzU
         wW1w==
X-Gm-Message-State: AOJu0YxJLwQJ7N6hPAhoyQP/xNrCB6jFYlKDErUfNSWOhKxvM5zGZ7Kz
	S6X4MrkwA6bZ+M0mOwQEtbjXjcMg6M63UVT7YR2FDVFCzoYaRnjyNtxE
X-Gm-Gg: ASbGnctF5nyvhuaC8NnXbc0uyb9J9bhzDE2GXUSonmCDibbH4XrPm26U8oo0Igxk7yJ
	Cfuk0VAFU/gArRYHg0E6IaiWFQJhvKlsT4Upvjak/S92cMvhNUa76hxuR3UXNg3uGZ3AfYJqz1J
	vFEAcgKGnwfHdAqVXur+OyTGzBXn3sCmqT3y4P9c9lpAy5KfnaGkVVnss+rm5lVULGd3q0yawSM
	6goAwpfr6GXw+6x+zpZncADQalkC9Rn/FdscDAGdz5Q6VJBD/QNLbSyhKSMFQRdpOVnXH3n9DHl
	1BxrILnvVagPqNIWDy8apOHlLtfD04HXkJa3C2QGUNaT4cYNjbqoMVb3s9iDuGEvrmojcF8Obsv
	8WhgNgYbk0h/icxWWCL7F6+XUdha3eQw5UIMsDHQV2rysepHnq95nbBj2bISYxphmc4Rzi7OYzb
	dfaG7J7hMV
X-Google-Smtp-Source: AGHT+IEN9KE2hfp03GE7uhiO9j7fRJeATScAJLPGVWT9cgl5CZeCVAf71AB1h38u4dnqNvb+75Hfxg==
X-Received: by 2002:a05:7300:c3a2:b0:2a4:3593:c7dd with SMTP id 5a478bee46e88-2a4abd4a140mr2291702eec.29.1763201079996;
        Sat, 15 Nov 2025 02:04:39 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49d695821sm23290090eec.0.2025.11.15.02.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 02:04:39 -0800 (PST)
Date: Sat, 15 Nov 2025 07:04:33 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/3] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <aRhQMRjffbeCeArE@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
 <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org>
 <aRhNIcGcQKp2ylqN@geday>
 <85d1543b-ea91-5f0f-59d6-e00fcf720938@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85d1543b-ea91-5f0f-59d6-e00fcf720938@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_020440_966022_A473D8E9 
X-CRM114-Status: GOOD (  14.18  )
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

On Sat, Nov 15, 2025 at 11:01:21AM +0100, Dragan Simic wrote:
> On Saturday, November 15, 2025 10:51 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > On Sat, Nov 15, 2025 at 10:30:49AM +0100, Dragan Simic wrote:
> > > Looking good to me, thanks for this patch!  There's no need
> > > to emit warnings here, because they'd be emitted already in
> > > the rockchip_pcie_parse_dt() function.
> > > 
> > > Please feel free to include
> > > 
> > > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> > >
> > 
> > I disagree, I think the comment stands.
> > 
> > Even if we reduce to one line, ex:
> > 
> > + May cause damage
> 
> Ah, perhaps I wasn't clear enough, so let me clarify a bit.  The
> comment you added is fine, I just referred to no need for emitting
> a warning at that point, because it would be emitted already.

OK, I get it now so I think it's time to send v2 with all that in mind
:)

Thanks,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
