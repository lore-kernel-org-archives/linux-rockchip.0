Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 732CAC001CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 18:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPddcJhhT09l5exPJZtp0d5D625ELDQ2mfsi8orHd8Y=; b=U1cfdgC2YPvdJ0
	Ei/N8NwpUcr7RVX31T6FZRGbX8TXtIznhPOV6HQ+VopR0oNrpWKyd6P0hGFrjiaBe2RQxobyZpI2m
	OFH/39Z3AVfELP6o2prpkvyH/nmwdhj1u7n7+2jh2Ssnb2yUZl8J4BSK6IBzPEFn3wyUV8Ne7zF9f
	0P6+/bp5MQf9+FVsF+XrY35ZDy0LPuwm2ZmYUK6FNpsewz4hR/b3t7ervj4QC6yx058teyW6Jeh/4
	dlEpfC1PlbGOPAU/7mZTHFWsCBe0HwchDl5KtpEAPrMQMKOI86mQchaX/8GbHs7qpcyTooziKrZG2
	evic6pJCG4bmTI95oUBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzBw-0000000Dgx3-2aKB;
	Thu, 11 Apr 2024 18:30:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzBs-0000000DgtM-3byv
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Apr 2024 18:30:30 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzBk-0001so-RH; Thu, 11 Apr 2024 20:30:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/4] User Requested Fixes for Anbernic RGxx3
Date: Thu, 11 Apr 2024 20:29:52 +0200
Message-Id: <171286007456.1886699.5340406203472105907.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_113028_948559_FDC379AE 
X-CRM114-Status: GOOD (  10.36  )
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

On Mon, 25 Mar 2024 09:37:25 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Users have requested fixes for Anbernic devices to help with some
> intermittent WiFi issues by adding additional properties to the
> SDMMC2 node and by making the sdmmc aliases consistent across the
> device lineup. They have also requested that the model name be
> represented consistently with both the manufacturer name and model
> name.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: rgxx3: Add additional properties for WiFi
      commit: 6bc8e01c7284ea1f56c6506f38c2ba9474db497a
[2/4] arm64: dts: rockchip: rgxx3: Add optional node for chasis-type
      commit: 8db673210ae24ed44acf15642f4abd6d4b4cae52
[4/4] arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices
      commit: b41b83b701056421bdc494c8e1488d38f2990c3d

Dropped the sdmmc alias patch.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
