Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3BA7F588C4
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Apr 2026 13:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYeBBgVDZX219nWbCg7oLLM5UbD+r3HlRzeHI/C5sD4=; b=U/OK6U6dvgtB1V
	BnxpIBO3eJ7P9JC8qPMPzYWix6OgMZnG4AO7MqVDdARflNLoIoKxi5N4sk/Ye56nwjjwSRJpmJR0z
	X89esc/vm4M4I7efft5IpRM0fj+epskdW2Vi+HQUFTyR6IqWVtmYvbCb/0xJu9gJx09reucMtXEIL
	cDaqy/z3itw3yJFXGbcRUMyo+pC+GEFnycNxZhQ1Ow5hbTvrVyaA4GiDbHnyHy0I+JvHI5b+IW9iu
	WOnldcVjnagpOOftLJp+/9KVfnM6Z1SBgvZs8INDGyd8wUTOD1z/DCw9nzge2xc1TeuWkNUNeONai
	AM2kk1OeWV6NPmd39nTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEovR-000000075Kg-2BM0;
	Mon, 20 Apr 2026 13:44:33 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEovP-000000075KI-0Pyh;
	Mon, 20 Apr 2026 13:44:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1776692659; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mkcwrM2zd34qpqDcVR6YMrm683IYTNFwsnrcnqxXc6QfyMACLBM9776F9ysKorGVEK2v5XKxTUkCdbYJ6JhqCK5ofdRtXhBB7y3/inV66/60tpz48tRUzv0+CT35vpax+hIbjgCWck7D/Ykfy+RzBKYTUeW6pruZk5FLjaYBmSI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1776692659; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1V3GuJpNnFWJCfMVIGdTdAgiX6h8PD58kcy6YMlRmyg=; 
	b=WB27jklrsxoT2MtVUad/IT9wsRm0zzUx4og1biUR0t3/KOxIYvo9noN98ctcKY1s/WbEIkh5GzANyH9DmMvMmL43k2mAQje762NCtJfK8E2wdIG9MmEksSVV2jK7CSFLtuIiNJXFY/6rEuXZ/vS45r9nL8lo/hadSfpD5z485j4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1776692658;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=1V3GuJpNnFWJCfMVIGdTdAgiX6h8PD58kcy6YMlRmyg=;
	b=e0yYgZgAY6nsZsSsAPvVGSdH5P1MJJs7vvPiCsZXWVYhL0E7HOLvx/sKsb+q3sVl
	WgOsEKk9ClrKgrH30latvBAEHpcZ1enwaenfSQnr8RKUtPozJWIb+FrdjyLKRzNrXb/
	AzxJGRCZ3swvSlmNxhyq9Wtin00TR6wgOyfwZUMI=
Received: by mx.zohomail.com with SMTPS id 1776692658154201.29359424090717;
	Mon, 20 Apr 2026 06:44:18 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Lee Jones <lee@kernel.org>, William Breathitt Gray <wbg@kernel.org>,
 Damon Ding <damon.ding@rock-chips.com>
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Alexey Charkov <alchark@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
Subject: Re: [PATCH v4 3/5] pwm: Add rockchip PWMv4 driver
Date: Mon, 20 Apr 2026 15:44:13 +0200
Message-ID: <AP7g6gy2QFms8ov59vex7A@collabora.com>
In-Reply-To: <20260420-rk3576-pwm-v4-3-421738c7bf28@collabora.com>
References: <20260420-rk3576-pwm-v4-0-421738c7bf28@collabora.com>
 <20260420-rk3576-pwm-v4-3-421738c7bf28@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_064431_220848_83FE02D6 
X-CRM114-Status: GOOD (  15.47  )
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

On Monday, 20 April 2026 15:35:21 Central European Summer Time Nicolas Frattaroli wrote:
> The Rockchip RK3576 brings with it a new PWM IP, in downstream code
> referred to as "v4". This new IP is different enough from the previous
> Rockchip IP that I felt it necessary to add a new driver for it, instead
> of shoehorning it in the old one.
> 
> Add this new driver, based on the PWM core's waveform APIs. Its platform
> device is registered by the parent mfpwm driver, from which it also
> receives a little platform data struct, so that mfpwm can guarantee that
> all the platform device drivers spread across different subsystems for
> this specific hardware IP do not interfere with each other.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  MAINTAINERS                            |   2 +
>  drivers/counter/Kconfig                |  11 +
>  drivers/counter/Makefile               |   1 +
>  drivers/counter/rockchip-pwm-capture.c | 307 ++++++++++++++++++++++++++
>  drivers/pwm/Kconfig                    |  11 +
>  drivers/pwm/Makefile                   |   1 +
>  drivers/pwm/pwm-rockchip-v4.c          | 383 +++++++++++++++++++++++++++++++++
>  7 files changed, 716 insertions(+)
> 

Ah jeez, I accidentally squashed the counter driver into this commit.
time to send out a v5, please ignore this.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
