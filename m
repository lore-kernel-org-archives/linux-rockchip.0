Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD808CD4851
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 May 2026 06:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=665MmcAKlFqFGJa5ZPYvR3LK3f+pa2U3BNe29+quDcI=; b=TAjzJK0ScMx7gy
	rvy5ZYMRjX7tKF3kfy8w1Z3G660a7FAcSTNTjMw3GL0+g4+Q3ArWQ6VqOYT8Ac4H6Fq1vBAi3IL5t
	q9EiLPKRjCbNB8yDqkaZPyTZ9B+614Yj9kTC+Is/OKv58LUAGVrfdreeJ2j8tilqhY4j7X6DMuf8e
	GqqkaQWf5EirmQNRp0Pr7sp5Eo4QXW/3mwFqRV1t/HL8/Wa/5S2uzcMV0UE0c93K5CSB09K5mFhNo
	f9XtsZPQCQKvguyU/fYG/Dw/lvFt3S7QxjaaHLWKUKL8eiuUbI8JQKbf525bYcERrJkL45cbm5Tyn
	9mVKiAwCEOANhtsV/jFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNPsD-00000004kf4-2cqx;
	Thu, 14 May 2026 06:48:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNPsB-00000004keX-17di
	for linux-rockchip@lists.infradead.org;
	Thu, 14 May 2026 06:48:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C2DFE406A1;
	Thu, 14 May 2026 06:48:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22412C2BCB7;
	Thu, 14 May 2026 06:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778741322;
	bh=WCHZYIPH+iaGTxC80/OSWRgwos4c3asSFe3qsQ8TwXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uX298jPBDF7o+eqVd9BfP4F2VfmWcnnlGfI9rWhTeqpBuLRxa6KRXL9BDtz1Lmx+E
	 QF67ol5dEtzZJKBgKITXZeatRLdL9NjuOyFYaVauBsFnRCYQozpmXNxS2CaU3F3jgk
	 CFgVeXTKx68/VE5ynNbjORuAiwmzz+yWrUVJdDyHA8TySBylMKhe/KAsaydHsMakIn
	 Ms9vSG1kzrgpkwU/hHDthRxR4fGmBwNkj8sGbHNms2uWGsuLDFL3uhp1DhmN4CyMy+
	 P3E/FAX693Xh3A6h4hcE7vtDgumwPitFt9EXpmPs3AWlYq3vy5LqaQaFsZSxYdnXGB
	 FqUGYY7xP+qHw==
Date: Thu, 14 May 2026 08:48:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 01/11] dt-bindings: iio: imu: icm42600: Add
 mount-matrix to icm42600
Message-ID: <20260514-fractal-falcon-of-domination-4704e2@quoll>
References: <20260512221634.256747-1-macroalpha82@gmail.com>
 <20260512221634.256747-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260512221634.256747-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_234843_326749_FDACB43F 
X-CRM114-Status: UNSURE (   8.54  )
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

On Tue, May 12, 2026 at 05:16:22PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add mount-matrix attribute to schema. This attribute has been supported
> since the first revision of this driver, but was not documented.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
