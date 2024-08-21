Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 596BDC531DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXh+BQjlGWEhzyu+6CTW2adOiTnlk80AvPTliEvcgtU=; b=4ar70LMFX2FscR
	hKrIFIDZnFXHLbuVWuEpKP5Fo+UY75tQmkrNW6b+J/UUQJfb5mytkAFrLpAE3n1256jkTJYyhmZyc
	QjsasX/z6L7QqpIQGdO8R6kGOOQ3ChkDyOYdxfLzYhg7kwBmW10otU8DZVpmXQ/dRSmEoSzZYu1Yy
	xo8m4XTLzxw51M7hBHynCT2CB4L+oyP+9xmeNNAkBqN43rt5Pp8L7dgbfjItHIrCV/4sLCR1SCKq5
	kZqjug+qV08XcZhhfDK6XJG6nG4MZzBn152850NwKJN5ieM93CZKN7+pa1l2FGrjKihijeu5WN5Bg
	sfTuPFcK6b5x3/Ii10Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgguE-000000087NA-0tVO;
	Wed, 21 Aug 2024 08:41:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggtW-000000087C4-1tm5;
	Wed, 21 Aug 2024 08:40:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nAzFxZk6Z3MnLZ9qZa4FevLYbStVgrDaS+fUxKzl+Pg=; b=ynmOhQTsWKukMRa+poiaybHxXi
	5nYIhtZsz+Eyf3EK17a7Tte1UnEtvbUqWDZKFoY0cilZwsTWTOKTaEWByFYaTfoiwFdSHx/mL4BGc
	XOLinGm1yeaFngL/F/e1x4RtigAnn/7b2qFax8EFn7SJyiiZCSSLUFsNLjB9bG3jnNVPUALFtd6Nj
	cLlnl73l0+N8Khu+d+HzXsCIph1qG+DKWq012jgv38QzTuccQ4HrBTVDqL5QOygUZHimYz0ijbAR9
	MWE9kfbFFGFo0+8I2A5Wpz7iz70keBViyvog+frawK39pJ80smj0/vnRZ4xm2LHwOnaLZ2U/jjcSA
	woDfYztw==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sggtU-0004y0-6I; Wed, 21 Aug 2024 10:40:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: phy-rockchip-inno-usb2: Handle failed extcon
 allocation better
Date: Wed, 21 Aug 2024 10:41:07 +0200
Message-ID: <39189616.J2Yia2DhmK@diego>
In-Reply-To: <96200baf794a0c451f3bbc3f5530b8cf0e359dfc.1724225528.git.dsimic@manjaro.org>
References: <cover.1724225528.git.dsimic@manjaro.org>
 <96200baf794a0c451f3bbc3f5530b8cf0e359dfc.1724225528.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_014042_597276_F3A6B45A 
X-CRM114-Status: GOOD (  10.45  )
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

Am Mittwoch, 21. August 2024, 09:37:54 CEST schrieb Dragan Simic:
> Return the actual error code upon failure to allocate extcon device, instead
> of hardcoding -ENOMEM.  Use dev_err_probe() to also log appropriate messages,
> which is fine because the containing function is used in the probe path.
> 
> Helped-by: Heiko Stubner <heiko@sntech.de>

How did I help with this? :-D

Reviewed-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
