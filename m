Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14D09E7718F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 12:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdxV5wKqQSp5lTf8IFJRGKd+3XpfI9tROx/uNJyVFuY=; b=w4XS7UByO4Y9aX
	R4eDa43Lva+dFMxVpaCkvYEsxkMYnptDkXgN34JhoXPtCLa9i5JAiaAho+gR6ki2ZILWcRCUvaUCJ
	2LFXNSUg25BYDzY/scpyQt/DNDLa45HibhHEPTcUOOoskYoZtx/GtEcjzpgwgRA2s3fiOMFNGD7+G
	4/EzmsONoULf2g3PgeOr0UxjASoiCnQADRv/NByuQ2GTpyamY3n+sIGZmF6wmYdDHNx3Vgyd2FXTF
	dckPHbi/LifHJVBRiV0YeDBlkF/U9bM2uIVxMziOl3YjHl/MaOskNmUuQ2Dork7bHGRl6BUIYzH08
	4DH01Vwg6La3C3K4Q1vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEzl-00000005BmO-4Ayx;
	Mon, 30 Dec 2024 12:35:41 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEyr-00000005BbO-1VWj
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Dec 2024 12:34:46 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-3004028c714so103895321fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2024 04:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562084; x=1736166884; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YjXNF8u6gFmP3bof4Qnz0c0Cqvunc1cPgbGWTZ/EO4s=;
        b=A4dofS8NBQWmzqBqfys0G9I8MmB4opmha9pP6qleN3I0c8Cb2RgIdBpu2hKqXxY/az
         hBl4LN8YVuoCc0HZNYH64RxVxasJU77vn0UFBdqmeXLiss2WHtQzPPfOv4rVcc2b5DDR
         qbDgK+7eVbdzHuN/Fx3eUvi9s7QBpckSr9rdRa7glQbha1rJbnyHGk41QZSK40zIksvx
         0cZ3t/SjbtNXUUgM/B+cZFI23IMu9cvo3lteCs0De6/ohkH4NXZrn/UXGci70vrk89ie
         CfnWVdKypIKF7BrB/C9gn3q885B0W9Di8xJC+O6Gqr97/+qUGRv1ciHiXpQhAfk+UxJB
         JYWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562084; x=1736166884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YjXNF8u6gFmP3bof4Qnz0c0Cqvunc1cPgbGWTZ/EO4s=;
        b=RhIdIVqRh70CekTzq/mXVcOhALOocLrN8QA6KqHdZCfbqc1mbkPZl0sSxgAYWvGGNN
         jhhUKcBMhWtOKJ4i0/nvmd7S/LYwJC9zIRfn76CYMZDNfUGfgw1utMFc2K/3pVjwqiez
         ToBCH4r0l2jrtY2mzZkGgKDDDAs6sd8+ZmBMAWlME1wr1OFNPDx+RHrYjSudLZRx5ylJ
         x2I6r3WcuqJnFofSoTwzEv21a6Y+Q9u4wQSBI5ocMoMQtS5nwVmolShRksDCrwZA8Sf5
         i48fO/1qWmcz8THvuch8GuIXvBpPxXQLDop63EFcLkCIuiljn5GXnmPJN5DNkn/Hvyu2
         zpuw==
X-Forwarded-Encrypted: i=1; AJvYcCWjuPPBfgP9s/4Ukc8R7Q3QLO7Bh9rd9o/uxaWJlamqKdGCy4vMT88MUf8FxLKlWcA8PKG+Fj/ugYzumuNSjA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnCTwEnYumbCyfUi6/8PF555ZvdlL9LzuHDTYJZjX6+chs04GN
	3dWzEluMT79T2P24xV7wkPTaw7+TGZrMg9xO12HdGRjJV08a4a6IlPz7R9SWsFw=
X-Gm-Gg: ASbGnctK7yMom8QfMfrPHrgktzc7bg1qnfvo4K+oIo4pfoGawvUw1jz1PETf2O5NbST
	RrWP3YKzYBZAMvmQvpvQEf7f5vmxq2slmvcZ55NCz7AohO2wK/zXB/jCiEchW2D+g7j2DNECL64
	QMnuCbOwH7AsKCCbP3tfDsGKjI0gJXrgVSpf5nW27a0SgA3dzayu8qS01CkfnM05jKWeQHbhJPn
	Fe6TuuHjFEEjDmOVGK8UrMxHYzBE0Uyf2LXET9YcVnX7Djvjhb9SkZnuJ7hJjqP5GWZnjeFRVNw
	Uen5vRFl/Md0tHSW53ZZIvZf8VqYX0E1wdP4
X-Google-Smtp-Source: AGHT+IGALgVEuR6VwAjmraqK3t5VKz84isdY66XsU2c6gkzu6ybhJpLRqnsbX8hjceGwE1pfjHVNsQ==
X-Received: by 2002:a2e:a69f:0:b0:300:377d:2c36 with SMTP id 38308e7fff4ca-30468630934mr83167351fa.40.1735562082309;
        Mon, 30 Dec 2024 04:34:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad9bbdesm34304741fa.44.2024.12.30.04.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:34:41 -0800 (PST)
Date: Mon, 30 Dec 2024 14:34:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 06/17] phy: phy-rockchip-samsung-hdptx: Add the
 '_MASK' suffix to all registers
Message-ID: <3dgfsscqpvlqzajjeav6oneeyae2tpc46av7hadgon5uwqibg5@ubziqwztp62m>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-7-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-7-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_043445_397789_29682480 
X-CRM114-Status: UNSURE (   8.41  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Dec 26, 2024 at 02:33:02PM +0800, Damon Ding wrote:
> Adding the '_MASK' suffix to all registers ensures consistency in the
> naming convention for register macros throughout the file.

Nit: usually it would be "Add the '_MASK' suffix [...] in order to
ensure consistency [...]".

> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
