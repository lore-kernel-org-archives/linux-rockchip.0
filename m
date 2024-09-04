Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 227C7CD4F23
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 19:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sIneu/oQZGb4k1jiwBHXW829/ZGj4PnvcV6PllMrq9U=; b=V54qbpF00A95J6
	lnE+naEpUMwYfNuwXKj5PltmBVDNqyf9L3nQ5js5oxD7AagrSgjsncpuk1n0VNcHh5KfNXAmIzWqi
	KCx/as+/0coLBUVuDTeyeJPIUTz30kChwzNvzIrZgWmkyuGlPT2TwoYUUEmY4HbzrYoJLTuOVER4H
	ovGNhx+lRuRTh76ub0n1UewFMvCoFP+Xr1aT6hcwq8BdRnnXTH+fc2FZYlO0Szfm77meegXZGM5E/
	ygiLNUY5fLu/I/RyaOxZbMcZhGR8KdRg2OiOTOIyfrtYw71vyPzsxFi5njJilWgJzgVfF9cc+SEPM
	Xp5GXwKHOzQsZkl9w+VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvOd-00000005l5F-22ND;
	Wed, 04 Sep 2024 19:10:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvLi-00000005k6P-18uL;
	Wed, 04 Sep 2024 19:07:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qDbDeffccdTvMnyEUAukdNKpihI+nsZJmqSh07WNyx4=; b=GzCZHVpunDdUNYrijWEx+6ZSxE
	Rxfean/2o5KOhQ/IKmSJX7Yn4uDb8fIRr48TDbNg+/WzqZd3Yh1Omq2UDE4j5qWyaTrwKpekhxqZ2
	+d3TCD5Iw+/PNGnyKFzY7hYXfH61CBzFKQKkqD0iSRTfc2zAhyHsF2OivpDjLaMlQTW4sx/UJe53z
	ZFCnJQrETQN4BuE3Phxfdpz1Jlj/pmqIsVbYOafTTYluSrE2iNO48QZ6pzHoGaxiTd7KosewxA652
	J6CNCvFfitTuWm2vDtNAzOJcoCtAH5G74HPaXQQ34cyvy3+kNGYKFRMLH/S5PIYHDEpyrS8r9h9EU
	P9t8WCrA==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slvLW-0002Po-Qk; Wed, 04 Sep 2024 21:07:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing tshut props to tsadc on quartz64-b
Date: Wed,  4 Sep 2024 21:06:58 +0200
Message-ID: <172547678275.2721598.9166695984529942192.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240831112949.60091-1-didi.debian@cknow.org>
References: <20240831112949.60091-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_120726_333985_7BC0E406 
X-CRM114-Status: GOOD (  11.33  )
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

On Sat, 31 Aug 2024 13:29:23 +0200, Diederik de Haas wrote:
> Add the missing TSADC properties `rockchip,hw-tshut-mode` and
> `rockchip,hw-tshut-polarity` to the Pine64 Quartz64 Model B.
> 
> This fixes the following warnings:
> 
>   rockchip-thermal fe710000.tsadc: Missing tshut mode property, using default (gpio)
>   rockchip-thermal fe710000.tsadc: Missing tshut-polarity property, using default (low)
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add missing tshut props to tsadc on quartz64-b
      commit: 93f5fb809b8336143a6668c38dba1f4c7ffe5cab

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
