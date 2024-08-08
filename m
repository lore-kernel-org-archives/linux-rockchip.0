Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC1D2C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 18:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPxb0zfM1iFmS10xwj+n5zIWTIapcfRGtqz2sB5nPDk=; b=3sniSNDNmlM6w1
	xlcwEgkfTznAclvPxTvcrKsZKh3Zc2CrhGpBeQRRACF2ujT8QKdSX2+kniYXpE+JmbnWvYHgHzWEs
	vutKTWl/7udiLFnr+AM5U53QrdKVA0HhBzz2DBucSyN93CODI0TY92xBUtOoEy4IW5UVfDHmFgbz5
	rle4fufkkEkf0dKz52Hd9fMVCPVWcziIt3suBTsjYh7Nl/FUExQzBj4BA55+WBGZdPizJyeJQ7J2O
	mtSpY4A+xrcMjJxIocia8U9k59e4VkvqlnN0LLrne5cASOUeHGtzzduY4jU0ii8khJocWg1QSMf7t
	mLQZXxQqJtbWqfWtnFsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc7RS-000000099UG-0s1R;
	Thu, 08 Aug 2024 18:00:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc7Qs-000000099PD-04YE;
	Thu, 08 Aug 2024 18:00:15 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sc7Qe-0005Pz-Hv; Thu, 08 Aug 2024 20:00:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Arnd Bergmann <arnd@arndb.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 2/2] pmdomain: rockchip: Add support for rk3576 SoC
Date: Thu, 08 Aug 2024 19:59:59 +0200
Message-ID: <2449940.aKNjEaI27c@diego>
In-Reply-To: <5805279.DvuYhMxLoT@trenzalore>
References: <20240808163451.80750-1-detlev.casanova@collabora.com>
 <17766579.lhrHg4fidi@diego> <5805279.DvuYhMxLoT@trenzalore>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_110014_271706_7881C1F5 
X-CRM114-Status: GOOD (  24.00  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Detlev,

Am Donnerstag, 8. August 2024, 19:53:20 CEST schrieb Detlev Casanova:
> On Thursday, 8 August 2024 12:41:05 EDT Heiko St=FCbner wrote:
> > > @@ -552,7 +575,10 @@ static int rockchip_pd_power(struct
> > > rockchip_pm_domain *pd, bool power_on)> =

> > >  			/* if powering up, leave idle mode */
> > >  			rockchip_pmu_set_idle_request(pd, false);
> > > =

> > > -			rockchip_pmu_restore_qos(pd);
> > > +			if (pd->info->delay_us)
> > > +				udelay(pd->info->delay_us);
> > > +			else
> > > +				rockchip_pmu_restore_qos(pd);
> > =

> > I still want this behaviour change in a separate patch with adequate
> > commit message please.
> > =

> > Going from always handling qos to allowing to just wait a specific time
> > needs explanation and is not part of "just" adding rk3576 support.
> =

> You are right, I didn't takle this issue.
> This is actually a bug, the else is not supposed to be there, it should o=
nly =

> be an added delay for some PDs.
> =

> Unfortunately, I'm not sure why that delay is needed exactly, so I'm will=
ing =

> to remove it for now (only used by nputop and vop, both unsupported) and =
come =

> back to it if needed when VOP/NPU support is added.
> =

> Would that work for this upstream ?

that would work. The whole delay thing is not part of the dt-binding
which would be more critical to get right in the first round.

So as long as your "add rk3576 support" patch really only adds the
rk3576-specific data, but does not change how the shared code
behaves, we should be fine and can find out about that delay later.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
