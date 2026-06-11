Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81ED8CD98D6
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wVm/u1iRA7HCGEsQixjJ0BhBFqr39PL3kzeYwZ2vjc=; b=HSORHy8TQSVFJD
	gT5IaOxEKhvxxnBjArPXgsi9XW2rMC0HwGti2KO0LlYQeGQr1VdW46pbPoDzb05M+/Wl6OsM5qDgu
	hdMVPFJpG5FLaBb1pqD6d6NeYd1BpgiD26GeEsmG8KuZnot6p9ZQ/REHc3A6LOBZ3sX2T+lm6B3yg
	7hBgfozSkpRrwh9lyDIRqLLLIDSzJWrHj49AR9FMnREsgYzfdT07T9YwDprT3RfqnpqATKRRUn0T2
	BzOY/ekzfLg4RzLZQbwWqfIyAJwtR+sL++Ng6i7QuVZwhQWk+ge7Ezs2BM9Irt3mmm3XUZaHFGJt4
	5/KrVdRExJBIhYHs8d6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd8Y-00000009GpT-3TlJ;
	Thu, 11 Jun 2026 10:59:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd8X-00000009GpK-2Eor
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 10:59:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9DB7C60212;
	Thu, 11 Jun 2026 10:59:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07F5D1F00893;
	Thu, 11 Jun 2026 10:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781175588;
	bh=mwc9Bper1UY3wwxKaGEuMDkCvCSrvItL4irShhMuQTg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=KN9qenmsuPwMXwQfUUz3bpy75Su8+LsxupaoigatkiJaj/S8yBaj0EAscJUrgknNp
	 gAPDITk26Fp+DqbxFhGGPQwcrx29gCas7KyWKg3W304WTbk2YRPRB/khx2IiRSBbqN
	 v2NRDFSRFHgPZ0/KD0BDBB16RameHh+ugeIPRbefmMTANPkBSTi/oUVhWIPrrVfXXO
	 Ji50kZLC8UCd3t2Ug9fRCSxlF69+Q26mzWEgckFhE42fH5wxXyjuH2hYnPklV9O3U+
	 FyxZmoXChu9WilhqwnC90BMi+7sr+eQ316z800ETMxogtMFQmKa8dz+eYp9m5ofg6h
	 pkMmLQ0HhlJGw==
Date: Thu, 11 Jun 2026 11:59:38 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 0/9] Add Invensense ICM42607
Message-ID: <20260611115938.27712b66@jic23-huawei>
In-Reply-To: <20260610175455.19006-1-macroalpha82@gmail.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Wed, 10 Jun 2026 12:54:44 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the ICM42607 IMU. This sensor shares the same
> functionality but a different register layout with the existing
> ICM42600.
> 
> This driver should work with the ICM42607 and ICM42607P over both I2C
> and SPI, however only the ICM42607P over I2C could be tested.
Hi Chris,

Just a quick reminder to check if there is useful feedback at:
https://sashiko.dev/#/patchset/20260610175455.19006-1-macroalpha82%40gmail.com

I didn't look into most of the but the last one about no avail mask bits
being set for gyro channels was easy to verify as correct and suggests
a testing gap.

Jonathan


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
