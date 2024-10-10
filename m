Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 990F0D24451
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 20:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEIgPypv2p0063Bnh8UYAUMdWaagVVFUCmByApEWXyw=; b=SS2CzUN6k2dlr6
	MMJF8Kn7qVjJmGMnIWSLigQKDOaHDLBnTAf7UAqdPBU1tmwCevHFakZqbACutGE2hg6NkOjJGmgy4
	B8wkNS4/cKLV5ECEtJmydAhsXUAXrLCnRDh1Dzcic3L+cY6QrbtZEjoeJ3nHkKcLzwz6qQCOuDCrg
	jWveLQpMUESbW2Ln6+2YUUiZEvtvnSjD9XbiNnJOn5bMNtWhFk85ARErcIb+NVpb/MIoPz8ocD9fT
	8S8Sw2FZffhVolD/7PbzC1KZ3npK5zv1mRm+jBOxCJTkUnsUnaf2bPYcwt7tectDcuOei0Dy+YOJj
	7YOFYG79qq7eTG11VAqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syzyd-0000000EJ0c-2Wnr;
	Thu, 10 Oct 2024 20:41:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syziA-0000000EG4i-1SEb;
	Thu, 10 Oct 2024 20:24:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EZCATSrTvloVjbkKMEbSDOTA4ZTCzNep57DiW3EoUj0=; b=AOUaztwu1VEPoPcFH3OF+obr4I
	3rkGPKWH+65SmtkocxtLd28D+UvXgrz3qssJf5si5mqGBrjU5SoUm5suDb7jZzZh9Ou7eAWX3IAVj
	gO6Q8Hze4QhYOfqXxnDcUEIi7ALpwm+oBt+/0QMgLtrXTJtCQ857F4nBr+25PMiUIZUw8PwVd0HGO
	WNBLuNC+Eu7UzMEdfHmbDnt8WMZTl6jlSx6goVonxi8OO/HhTi/h+a9xstLmG/y8LXljrhY71B3SK
	AJY7txpv+tDIW1CH3k9SQhMohB7/XQa2G9KyxTlXcAGjT81g+ATDPNN0cDdT2KM0lUDeuGtXvSypu
	wyyzlRfw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syzi6-0000k3-G9; Thu, 10 Oct 2024 22:24:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add dtsi file for RK3399S SoC variant
Date: Thu, 10 Oct 2024 22:24:33 +0200
Message-ID: <46729153.fMDQidcC6G@diego>
In-Reply-To: <59c524a9a12465c21e01b779b42749fae148c41d.1728482151.git.dsimic@manjaro.org>
References: <59c524a9a12465c21e01b779b42749fae148c41d.1728482151.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_132438_442074_983EF247 
X-CRM114-Status: GOOD (  12.51  )
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

Hi Dragan,

Am Mittwoch, 9. Oktober 2024, 16:06:00 CEST schrieb Dragan Simic:
> The way the introduced RK3399S SoC variant dtsi file (rk3399s.dtsi) is named
> diverges from the way the two already present RK3399 SoC variant dtsi files
> (rk3399-op1.dtsi and rk3399-t.dtsi) are named, but that simply follows the
> commonly used and/or the official RK3399 SoC variant names.

This is my only gripe with this ;-) .

I.e. looking through simple google, the rk3399t also seems to be written
without "-" most of the time.

Though for me it would make the most sense to just go with "rk3399-s"
here for some sort of clear style between -s -t and -op1


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
