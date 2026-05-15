Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DD74CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 19:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuNtmeviA9mv8tebPhxYllsQdFQVPBw471f48aJ9G/g=; b=AR4iYTAMx/89Ol
	cVzI1LuLtOWka2xl5oyJXWBmzIWdgL2x4eRAvdyRlPWhLii7rDNARcGbXK2BJH3MAgb6OTpUXdgo5
	3aAf3yRzPhLm4LUgqA+HeXLqX8ic7XtYL4ErDEa51uP2y/V6S4jCg1KKe28yt+rRcSRQn9ozUKftP
	QBAsrRz6HsIQITzkEL/IgxS+6tGc0E6wp3PnYl4d+IG2Sr8rICUM8Gvn32qMQ+iQEDUk+mzK14aOd
	tyoHGBfxSQ05ixXfpJ0/68/Z9aeIsPOLMU945dGw/XumgUlWtT6klp1ukdkrFwilnhYvwYt16f9EE
	auTE2CoZEczgc8YukAMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNyET-00000009Dfo-33Ug;
	Fri, 15 May 2026 19:30:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNyER-00000009Dek-1YuH
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 19:30:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AF1D643D34;
	Fri, 15 May 2026 19:29:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50E12C2BCB0;
	Fri, 15 May 2026 19:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778873398;
	bh=UUbgqtv7hJT6lsCumGN5AiSxZyffjnc80/gbNf37Bik=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IbLQmYC6yCf5MZT0oIoJxkdVpNonY2pP2RINCQ9Y4/xoke2daGumq2IEYb2JPyY/r
	 zHWjGs82TTtfaYw/VSZpYc981Nyc7T/Bc9bwW57514OQD2ls9BeZobNS+QpK4F3N8+
	 1Ap3TKalIVv6e2kpuNN5/kgA6yMVZ8YuzGmPrDN3qLcabWgZVqMs/5YZt1d2JkBOz+
	 kcWaY2iLZA1cLOrlm2NcbcTcg0j3k43QfOYCYqcpGHRhaqBgyszFKwb8WBu1r3u0Ec
	 FmJ8531kEd3FlFY5jPHO3TgYgvlNcjJvFgMqEvGsJMDFEpAXqc2v1kh3+LPp+2y2xS
	 hEOvnI3PSn+1g==
Date: Fri, 15 May 2026 20:29:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 08/11] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <20260515202948.5b90c2d0@jic23-huawei>
In-Reply-To: <20260515130018.237378-9-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-9-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_122959_441693_C08E6914 
X-CRM114-Status: UNSURE (   6.21  )
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

On Fri, 15 May 2026 08:00:13 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add icm42607 accelerometer sensor for icm42607.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Sashiko raised a few things.  Otherwise I don't have any comments.
https://sashiko.dev/#/patchset/20260515130018.237378-1-macroalpha82%40gmail.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
