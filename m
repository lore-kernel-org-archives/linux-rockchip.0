Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C49CD6E52
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 May 2026 12:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t06o2ObrMO0pHsO9sZ2iG0FfbLh6cFBRz35F0WoLjyM=; b=AzbI7KaUleU0Q8
	Kp2sxaE05Uzncx02P72FCeQpxRje1eAaUPXZMwoEwc+89iZXCJAdHwCbeDOkElJ18BhuV0UJt2OZH
	sFV0BTE12vsmSHxCfYvrQnaEXqQh9WIBE0codyvRaQUjo/l9EbrlsKZ7wrdq/UufoRugM+hjMvzY9
	bK1VuQQ6MpU56DOo7FEVfDGiJshJDKOSx5Vj3/nLwXwn1GCTmrNJ28q9hZka2Fa+7F/P+pgWTqnGc
	i6h2EzXWleenCFsVaSC2O5xSPEsDjsCC1j6Av+Wen+iOP5Mzk9RexDjsWZI/Sih7KW945Cv4dnff5
	51OP3RLXKKpJmQpNMrrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTf5D-00000009ZaJ-3SfC;
	Sun, 31 May 2026 12:15:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTf5A-00000009ZZx-3vnv
	for linux-rockchip@lists.infradead.org;
	Sun, 31 May 2026 12:15:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6CB6A443AE;
	Sun, 31 May 2026 12:15:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0B441F00893;
	Sun, 31 May 2026 12:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780229755;
	bh=1AJK9NOqujQZojyE5eeCKCC9oPTb+PzLR8+/dxCpOt4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=OUIaHaji5qwFkRwG44KWGSBCMQBXht8IokXSpBV5xwEk/hfveD1H0YJJCr0XJEM0o
	 mNDFx7qcgyUR621Mc5gHDKRVsT7EmvBb8z3r0siZnzu+dbW4bXO8KVHsaDR4MIv5eN
	 /k8/BfNVxl5i2fCBYr1YLbEnjhYnUYtiW0Giq23H0ytzC2tPhbsUZCiMMItg+5qQGO
	 DaJc/UbBuE5ymHDsJQkq27Af38Xl+66jH4q78wAA5oUOPSbeo5Fyk/rswcX2UzHKlG
	 cNVyitzobql3QJoaoNvrSvFgleR8M/2hxHKWfGRCeubkDKtnJIrjQdznsPTPWZ6f+t
	 kNUpQy5yWN+wg==
Date: Sun, 31 May 2026 13:15:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V9 04/11] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260531131543.2abf77e2@jic23-huawei>
In-Reply-To: <20260530031739.109063-5-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
	<20260530031739.109063-5-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260531_051557_025940_A4C0BE3A 
X-CRM114-Status: UNSURE (   9.13  )
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

On Fri, 29 May 2026 22:17:31 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> Add necessary Kconfig and Makefile to allow building of (incomplete)
> driver.
> 
Sashiko suggested power sequencing timing might apply between vdd and vddio.
I took a quick look and didn't spot it on the datasheet. Perhaps they've
figured out how not to have that burden on the platforms using their chips!

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
LGTM

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
