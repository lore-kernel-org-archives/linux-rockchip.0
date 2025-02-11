Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6833C021A1
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 07:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51jVzfnBId708kpfrvQt3A542CMV5SFZ6TCjLmcC5zc=; b=xJTq8HVkQAR5p3
	odMjYUy6PNJNwQM7kZ9rUMFZIFyd3r82bvONpq406nDOmLKMIkx/S83PMoNfQ/0N4XJ9D8nWMTCWR
	NoD2+knw7qPzm69f04tij0G8obKbJZR4W4sjwThc1pQYr4CIaByUa+OqfVda7HgQB/ptN7xpY7eoq
	sxEK6d0DZXNjoN+c+lJXDbSzZUZ9fJRkvDHKFztTM5koMgM8qiI4wIFjFMABaeb2l9jOgjMbXYQhd
	FOHoeWTExJ+ouPnZZEIszAa3Xsxk2ks8mfRyghALACeMZTayxfomjolxeHuZRUeFhkJ0lcFN0eFtx
	/WllyhR24VCIxMrhg16Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thknp-00000002qVe-2OcN;
	Tue, 11 Feb 2025 07:35:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thkmP-00000002qJd-3ICq;
	Tue, 11 Feb 2025 07:34:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gDOCVF4pPLix8MnV2zo3quoXhkMl5ME+afDBieKTmN4=; b=SeQu8Xkbyz7ak0aKEgFCzXBF3h
	Pon/yuFNDNLiPrbJy2hLzEC+iJRWWqDojD1e2xM7OPvWW3UDVcOLvHr3sqx5l1Qm7KgZp5ok0NV6X
	6E3bVnXS7fiiC9E4t5Oqv8F+BkqNmQJ5FNiZYZ3t/JfmCCl0HTTeNiXeImQ44UUIWFjEnKtRXTLCy
	rH+k1HMfLlQeHUJn8+tg55rF5DmHWuxEBIlmfUPoOkJVwDvYykQlt0HvPWFPxmkCNkqkj/BZ+FrKI
	jKDxIcsUhyzTFi4kfJCLLuewgABahgLYiajWO5Sz98vWP5M2kZ4si2QnMo4D39FvLjNnlWaMokgRG
	WJ7T4WkA==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thkmH-0004ml-L0; Tue, 11 Feb 2025 08:33:53 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: patrick@blueri.se, Jimmy Hon <honyuenkwun@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 kever.yang@rock-chips.com, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: add MNT Reform 2
Date: Tue, 11 Feb 2025 08:33:52 +0100
Message-ID: <3840752.CbtlEUcBR6@diego>
In-Reply-To: <20250211040300.1905-1-honyuenkwun@gmail.com>
References: <Z6p68brg5itgYdO1@windev.fritz.box>
 <20250211040300.1905-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_233401_846845_C0079F30 
X-CRM114-Status: GOOD (  13.06  )
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

Hi Jimmy,

Am Dienstag, 11. Februar 2025, 05:03:00 MEZ schrieb Jimmy Hon:
> The RCORE looks like a carrier board for the Firefly iCore RK3588Q SoM [1].
> So it would be better to restructure the DTS as a dtsi for the SoM and
> a board DTS which includes the SoM dtsi.

thanks a lot for finding that bit of information.

And I do agree that if there is a Firefly module in the middle, that things
should be modelled accordingly.

> That's similar to the structure of the Firefly ITX-RK3558J board which 
> uses the rk3588-firefly-core-3588j.dtsi. [2]
> 
> [1] https://source.mnt.re/reform/mnt-reform-rk3588-som
> [2] https://lore.kernel.org/linux-rockchip/20241216214152.58387-1-shimrrashai@gmail.com/#t


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
