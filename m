Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9E33C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 17:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+KiojfWvYfWstcEsbnEKstZ9Ey2C9i4XpiV6vWs+dw=; b=R93imv0FnRCwUv
	3z+HCJEIMAL4FJ0dpDP23yK5JT4/8OCgGMMWEjmlna22zJ1ryUVztfFAYEi3iLn2isIzHaHA935sz
	qqv962AGE/2jAbUSa1z+jljStm62BdFCW64rKxXNpH+a0GRAOatNZg8FO2jf2YOwi031ySswCaAjC
	MopVh9t4cUbvUkWm3ui+lc/no5hd5bwfNs/7Z0cRVNowExD52gmNx3QftivvJKQdGX6PLWXkiXDfz
	L4f5O69EEeeRV0Ik/4vVFEO+grSsqNu1pQ6qdlkYuF/I6iKF3QYlcDvKk8OQktzdYfwiNUfIeqGpd
	3xJ91tWc0QazHrbkzWZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZZoT-00000006HDf-0orW;
	Thu, 01 Aug 2024 17:42:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZZoF-00000006HC9-2N56
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Aug 2024 17:42:03 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sZZo9-0000WR-Mm; Thu, 01 Aug 2024 19:41:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Lee Jones <lee@kernel.org>, Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Mark Brown <broonie@kernel.org>, Urja <urja@urja.dev>,
 linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org
Subject: Re: [PATCH v1 1/1] mfd: rk8xx: Fix shutdown handler
Date: Thu, 01 Aug 2024 19:41:44 +0200
Message-ID: <22969419.5W6oEpyPa8@diego>
In-Reply-To: <c4d6da27-3b23-4a96-bad0-17f2392287ef@collabora.com>
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
 <c4d6da27-3b23-4a96-bad0-17f2392287ef@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_104151_652593_12CF1AA1 
X-CRM114-Status: GOOD (  17.14  )
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

Am Donnerstag, 1. August 2024, 17:31:33 CEST schrieb Dmitry Osipenko:
> On 7/30/24 21:05, Sebastian Reichel wrote:
> > +	/*
> > +	 * Currently the Rockchip SPI driver always sleeps when doing SPI
> > +	 * transfers. This is not allowed in the SYS_OFF_MODE_POWER_OFF
> > +	 * handler, so we are using the prepare handler as a workaround.
> > +	 * This should be removed once the Rockchip SPI driver has been
> > +	 * adapted.
> > +	 */
> > +	if (is_spi)
> > +		pwr_off_mode = SYS_OFF_MODE_POWER_OFF_PREPARE;
> 
> This prevents the syscore_shutdown() step from execution. Is it better
> than not powering off?
> 
> I'd rather skip registration of the power-off handlers in a case of SPI :)

Or blasphemous thought, we could live with the warning-splash for a bit.

From Sebastian's log I assume the WARNING comes from the
wait_for_completion() in spi_transfer_wait(), and I guess the transfer
with the poweroff command itself will already have happened then?

So the device is most likely still powered off in that case?
Not sure how much of "bad taste" that thought is though ;-)


Heiko


[0] https://elixir.bootlin.com/linux/v6.10.2/source/drivers/spi/spi.c#L1671




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
