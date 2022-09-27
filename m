Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE39C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 21:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AE7biaD07ze+mFwnbveEj+TdTEvr6OZ10NKEr1CZ7A=; b=UvnrEBunFz5bwi
	i7MVFNxy0lQGXq/0am3K+n0Koe3TP70yTWJ/jEm4IetITofV25GK5stnlqrzNg4fkVQqJkhQvA/5U
	gQCjbJNqPqK6l0LqcAnoAjr0sa/VxUmPlfNIPNAvkTcpBeEyMM4JNEj272clv9aVoWOHVbdmHfWD3
	LSFdzdb2x2Chnd9GeUiqVrtEaz0ff/fW0J/CeFC109nCwGxMPxeHrgUJA8xEfpsu3IF3s6T5u9JEd
	Gh3WWo5XMyoMAjyCQ8Zux358EU9XhUixtrUYZXRK2xcljQepdvwdqR7X4bI0b+8Aj3o+fDGHy0ztr
	M/qcTj0KGC5u80qPwT/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odIEs-00Cjtc-Px; Tue, 27 Sep 2022 21:35:38 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odIEh-00Cjqi-A0; Tue, 27 Sep 2022 21:35:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=PDR3r9o/jLyp7gsKkv7+GSdo7+M7ZkytJP4A8PtoWAI=; b=Lk3LGgTb08No5NRzGqWSR6k1TZ
	zfLt6hiNWyqI5CdfUASMlGoV3yz21/vpX4XjYigMsnjKQ5herGxVQ4DszGgqxspavNfzTfTp6/zDs
	mqgIgmAjVd5H5d2jCK0FO0vZvMe4+i6lmDqBMXeVCQ9wcdNyt3AObpMu5AZJKbm5e2uk6JZSRsIh3
	ODQZ14q/h+frLjtYUNEQ0k+Y6LyU0BRWIYbZP7rJayGD2+4YcvkFB1qmvldo1DL3/QVBFn3s8uAvr
	pl7/XCL6t9y5x3z2ewlQ0I/v+0Agmhdy7GtYbiFQ/8oVi5+HTvf1DwR2kIalbX84drlkogMAGFx7H
	Twa2qkzg==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1odIEG-00C1Wx-4h; Tue, 27 Sep 2022 23:35:00 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1odIEE-000VRP-0Z;
	Tue, 27 Sep 2022 23:34:58 +0200
Date: Tue, 27 Sep 2022 23:34:58 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFT 0/5] crypto: rockchip: add crypto offloader V2
Message-ID: <YzNsgjPFwVEDo4E4@aurel32.net>
Mail-Followup-To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
	davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
References: <20220927080048.3151911-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927080048.3151911-1-clabbe@baylibre.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_143527_367892_181F2712 
X-CRM114-Status: GOOD (  12.44  )
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

On 2022-09-27 08:00, Corentin Labbe wrote:
> Hello
> 
> Rockchip rk3568 and rk3588 have a common crypto offloader IP different
> than rk3228 one.
> I started to work the driver for this IP on a rk3588 based board, but this SoC
> is still not upstream.
> So it is why I send this serie asking for test since I own no rk3568 and
> I need to be sure datasheet is right.

I did a quick test, and it doesn't seem to work. I get:

rk3588-crypto fe380000.crypto: DMA timeout
rk3588-crypto fe380000.crypto: DMA timeout

That's on an ODROID-M1 board, so with the set of patches I sent
yesterday to support it.

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
