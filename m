Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E9BEC10F04
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 17:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmNPeOzsjzFPgh7TtvhpkD96Z9xA6ehPHB+Nd0lI3NY=; b=OdAa5cZI2cA5u1
	e8sdRd5bX3hICFxl1t780Kj8xWBgaugajQw/mFddIrl9rukIwQND78QNmghekzzS9xRf9hedHTtNe
	M+J+qRuDaNfL5DwOJY1qvY2FOCDOhH/EjxtfvQbQlCeUS6G22iA2TlbIaCsZ0SYyxZm6MO71UMk9h
	JQVFgP7KENmfwQfZDr+zCHhmbLPW10v960pPP9obhbBkPXEdn3e0d8cE2Lgb0qzlWbuDcg3y/Y/fu
	lYrJegpEI6HnSmY4uRT05I8rlupnNWYQMtn/vjobcayBdoLiUk4VW2bv5C5fFggEyAGsB3RjXyDXV
	IHqlImBa9V7bRgu0x8fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r97GE-00EKEa-2U;
	Fri, 01 Dec 2023 17:25:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r97GC-00EKE3-1j;
	Fri, 01 Dec 2023 17:25:05 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r97G9-0001Y5-V4; Fri, 01 Dec 2023 18:25:01 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rk3588 gpio aliases to soc dtsi
Date: Fri, 01 Dec 2023 18:25:01 +0100
Message-ID: <6477626.MSiuQNM8U4@diego>
In-Reply-To: <9053330.WAzO9JGhZe@bagend>
References: <20231201165810.334212-1-heiko@sntech.de>
 <20231201165810.334212-4-heiko@sntech.de> <9053330.WAzO9JGhZe@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_092504_579978_44F18F7E 
X-CRM114-Status: GOOD (  12.45  )
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

Am Freitag, 1. Dezember 2023, 18:23:27 CET schrieb Diederik de Haas:
> On Friday, 1 December 2023 17:58:09 CET Heiko Stuebner wrote:
> > So instead of having each board repeating their list of gpio aliases move
> > them to the soc dtsi
> 
> Nit:
> To prevent each board repeating their list of gpio aliases, define them in the 
> soc dtsi
> 
> Patch 1 did in fact *move* items, but patch 2-4 only added them to the soc 
> dtsi, which I assume is to prevent them being added to each board.

ah yes, the magic of doing similar things in bulk, thanks for catching that :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
