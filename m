Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DAA1CD3424
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 May 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGm5URrHs/3TtyYxDfJ/kyorw0zRaEntdIv52EzaVCU=; b=AcRqtun+bNH+SC
	egViMqlE1pJSkSoQU1a6HwwPj9gqqvmtVHrN5B2zE37kCyTmLE0ALy9mZMATw68d9q3SqTn7rbuoc
	KJFFUJwlMI6IXxixqI9lX4/VcyxMxxqKKBBDSpXAEtZETWQn1uOVV5lvjbZRWP9WNyy8JeR5OLEE1
	BanSTZmUWB49bG3jySZgF/hu66GdNNprdQXUU6zYtjeblBwukcebVsIRRbXOZZJC9za4YLDUc5VB2
	jEmvLx1pZM8G4P5wwnJnn73i2ACWHzojd5As1/uTk/UCT/z0Xkgw/EoYgUShqDKW5TyDTVCDovv/R
	nDFAOivaJ4d6MfyMFjZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJVmC-0000000Awxc-05Jp;
	Sun, 03 May 2026 12:18:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJVm9-0000000Awx9-4049
	for linux-rockchip@lists.infradead.org;
	Sun, 03 May 2026 12:18:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 001CD40A83;
	Sun,  3 May 2026 12:18:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44E41C2BCB4;
	Sun,  3 May 2026 12:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777810700;
	bh=28GAAFJ421w0XWMH4drfFPlHwieGcI6o85CEVhBum7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aSCiTw2+hJswJvWiLC8GOMQaGNbSdxX0t3dkiPKrb7E8PYcXoihpBSOhKGHe2E+rq
	 UNMDfun8KGnkix0oVacwpi7n2n/+l9WckABOludkyMSOJ3HPCzleRNYfzNZS8fswIA
	 1suSwrJCcaAX0koHgWa6dlHuNXsH+joS3us06kLe7oVLdEtRGvmBWxbB+DbkHt2Xt/
	 xGjf4pXz5EC5i0LctI7Ci02d7U8NMvwld3FQtSXmgP+HaAxwOy/blciTw3dOlmhOan
	 G6gXnQtcnN6fckToN/F1GfYmqhJHZBNhokX+bmOZ/V5x7ZmvYUj+Gy0HKS4rtLqb1G
	 YY2Xh8aKyGynQ==
Date: Sun, 3 May 2026 14:18:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 01/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260503-convivial-aquatic-yak-d2dbeb@quoll>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
 <20260501221152.194251-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260501221152.194251-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_051822_030573_9430C41A 
X-CRM114-Status: UNSURE (   9.23  )
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

On Fri, May 01, 2026 at 05:11:40PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add devicetree binding for the Invensense ICM42607 and Invensense
> ICM42607P inertial measurement unit. This unit is a combined
> accelerometer, gyroscope, and thermometer available via I2C or SPI.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout. Additionally, add mount-matrix
> attribute to schema.

Why adding it? Is it something new? Is it applicable to other variants?
If not, why it is allowed for them?

Do not say WHAT you did, say why you did it.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
