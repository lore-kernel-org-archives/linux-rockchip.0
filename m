Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0AE1CD4F54
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 07:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjKmzXw58ZdB0NEFmBzMbGXPCfKIk7kfavJfUaCh0ug=; b=F2MnbCSVFUhwuf
	X5DkUsXtSFrmOuVDNAXhF8TEuN4qPaxCLqcUIo16Z5d8WACUe3iwIloeGz3vv9GDSGh1nxXTsdE5A
	FQyfLhFN601ZP9c/fb+7gkFXr3FFRMCULk7mv6LIv3XsMKOrmgBMIE8x3ZxSxSBGazyjvip1TEipP
	Ubg687zyFxZCFF+D3Ydcd161RljRn5PoT9X05Y2msBNqHn+Inp/Li9NLLj1o7IKbXl3z+WjrQwCgQ
	mokF3QZ3NjgCMcTNuIbOREXsWx+TYoqVtnBHqJvMCVuo8V3MA0TFt7e11YmkKFTmSBwQIo2IM1u7f
	FDCThax+FK6JtiDyu6Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTE5d-00000008Vvd-24ui;
	Sat, 30 May 2026 07:26:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTE5a-00000008VvJ-2aUy
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 07:26:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B3ED042DBC;
	Sat, 30 May 2026 07:26:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C1851F00893;
	Sat, 30 May 2026 07:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780125993;
	bh=PqWZMesufGSADxpTqQPlSy22s5kraAgknEeQvWkj2xA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TP1Rll2yVM0TvwuX8sXHW+0nAF5SsZtlGnmJULUJ4Mhyd/6ehbAe1aUJgW7Os7X9/
	 Y8ttun9KqKI1m3elc8lTKji8D1tH42OhTCJXIyLmggiQ+UkgqY1eUkR58sO+se2itt
	 ar5waRqM6WiLdzF1Ka+YKwKZ+JR5Qu8OvSBvxEXQ20YQtwazKtlFPkGZlPSZFi1hqy
	 edBDCTbd4u6R6fongzITMDB/RG2qXJRzVwe5S5gx0HvvNkRlzDgoUZ+8/Xr/to9GHD
	 vSb+yGRgwdFMQgGEVehMzM/oT7Cs5l/ahtIfTZN5FbbvL++tW9eXGplZ5YbGGjyz0t
	 ecN7VJRnpboNw==
Date: Sat, 30 May 2026 09:26:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V9 02/11] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260530-certain-goose-from-neptune-96e8ae@quoll>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
 <20260530031739.109063-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260530031739.109063-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260530_002634_718517_4B2A932B 
X-CRM114-Status: UNSURE (   8.43  )
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

On Fri, May 29, 2026 at 10:17:29PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add devicetree binding for the Invensense ICM42607 and Invensense
> ICM42607P inertial measurement unit. This unit is a combined
> accelerometer, gyroscope, and thermometer available via I2C or SPI.

Implement feedback from v3. Subject is still incorrect.
	
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout, however unlike the icm42600 driver we
> require a interrupt-names property be present.

Why do we require it? Who needs it?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
