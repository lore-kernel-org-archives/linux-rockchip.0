Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E892EB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 15:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pj43KY0yQawm0X2g2Pq17LJxH2uVCI5MrJl7d+cTyXs=; b=sGE5pSt4BNbrbi
	QUayE87sXpmDfowgT3JUm+Q1/ehkqYChT6BCKf/1MLoWVzSPtiRKGNFHopd2mHXBBYNQu/6B7A8lZ
	o6pJy+USRCyv6vBpmOPlcGeyAYM25NFZGaTHvZTa2F6zPQPSplzEFfEt7n8+mgw+QX7Oy+Mk4Gf3s
	Lv7BkIKF7pQvLpIJanPeL3VAMkZ1A9fZSBJbiSWzjWbFBqV688/jry/m3BgrhTL9TWzJZo4rkl0lg
	sLhajAwmKFn3XMDiW4nleVC8HR2Mfvun3AXAlYC9OynbLfJlnKuAHxJC8tgAzCZJjrfOdlhP3DEUL
	Ain0Cx7y/McmYm2B+XKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SEH-00C28x-1E;
	Wed, 14 Jun 2023 15:16:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SEB-00C27r-2G
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jun 2023 15:16:12 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q9SE5-0001jV-TS; Wed, 14 Jun 2023 17:16:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-rockchip@lists.infradead.org, Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: rk3588 tsadc
Date: Wed, 14 Jun 2023 17:16:01 +0200
Message-ID: <2669725.k3LOHGUjKi@diego>
In-Reply-To: <CAEwRq=oddAzJcVBhxJVe9QActLe30cPdnzhGormv6xr8nu6RXg@mail.gmail.com>
References: <CAEwRq=oddAzJcVBhxJVe9QActLe30cPdnzhGormv6xr8nu6RXg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_081607_737757_4B1E47BB 
X-CRM114-Status: GOOD (  13.61  )
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

Hi,

Am Mittwoch, 14. Juni 2023, 16:56:31 CEST schrieb Vincent Legoll:
> when testing the latest collabora rk3588 branch, I see the
> following kernel message:
> 
> rockchip-thermal fec00000.tsadc: Missing rockchip,grf property
> 
> Is this something on my end or is the
> arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> file missing a rockchip,grf line ?

In the thermal adc, the GRF is optional, so not required.

The code for the rk3588 defines a tsadc register RK3588_GRF0_TSADC_TRM
that is used to define the way to shutdown in an over-temp case.

Though right now the code doesn't use it.


So on a technical side, there is nothing going wrong right now ;-) .
Though I guess the message could get an improvement to say something
like "Missing optional rockchip,grf property" ... adding the optional in.

And of course someone could still add the grf prop to the rk3588 dt
for future use of the existing defines.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
