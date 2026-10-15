Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08C1FCC6B34
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 13:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tfs4rS9GEcCmVOscdGjq9282DaEHzCRDNV6ayaoa8pg=; b=WAXik8IDB0egky
	UltXKPG1qqC2UQ5k5lkWnGLudnxjEPEQxTVLCg/PoFYy/3ww2aDCCVDPZBimTTotaURv3joUlsqIi
	1qydDl2xUpZPhlOABeynqbQc7O30mizTXvVaEzwZej6JiUtEsa8vSRrhGisZlbEQ1k/wO1jRiAX4C
	2y+EHDo/z2co1uPnnLDse2fbcoN2toqbKxoiG/MkDiJAx9gUBrEjfWGM7t8t2GJdvCUsamF4ZuD+Q
	mu1lB8S/EBsawHe6ww0u7yA2gx3c/oY5+hfYeq+02ea+4DLcFcDNvZ/olRwliJtvKMKNpQi9XUrFM
	+SEwalAWIlvkueTlPZmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHLmp-00000000Hs5-2wJv;
	Thu, 15 Oct 2026 13:46:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHLmo-00000000Hra-3TPt;
	Thu, 15 Oct 2026 13:46:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 491A0408C0;
	Thu, 15 Oct 2026 13:46:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B87B31F000C4;
	Thu, 15 Oct 2026 13:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792071982;
	bh=Kx/01Nsq1UY3kmElra+GwWgne6z+msRWvpMdj34qnwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iVz7KgO9Cm2mX6ny5SHc02ay/J/zYG7KOkNB+c1dCyFPSh++xhzNK0dd/gZ8N7Q3F
	 DNpCy3deOCDafeJOyy+94wg8QGz31E0cLl9S8ZBRyZXi/dp2LOXTqNRiQI/uWBlo6e
	 mflihpcygGeZiZpLIgpl616jKl0Ni62cZYg1Ek/1yBEBXZ4iFx6ljLIKbWyWUhV+Y7
	 wiIDv74TdBVF5Zsjam4B6NBNPRhSp0FDySL1e9jmidB9KyT4yywxbSeWqtiL1WJwJD
	 lcf7+cyCKW2RaHbLYA7yJovxTZ34ppYEbsmp3cF1KCbkcF8o7oj3+cDd5scuLAL196
	 skaObiIf7rIOQ==
Date: Thu, 15 Oct 2026 14:46:16 +0100
From: Lee Jones <lee@kernel.org>
To: Yaozhong Li <yaozhonguwl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, mfd@lists.linux.dev,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v3 2/3] mfd: rk8xx: Release the power hold GPIOs
 before powering off
Message-ID: <20261015134616.GA1907748@google.com>
References: <20260929140649.55-1-yaozhonguwl@gmail.com>
 <20260929140649.55-3-yaozhonguwl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929140649.55-3-yaozhonguwl@gmail.com>
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

On Tue, 29 Sep 2026, Yaozhong Li wrote:

> rk808_power_off() writes the PMIC's shutdown bit directly. On boards where
> lines driven by the SoC gate the PMIC's power-off path, a shutdown
> performed this way does not stick: the rails drop and immediately come
> back up, so the board restarts instead of staying off. U-Boot reports the
> result as a power-on reset.
> 
> Take those lines as an optional GPIO array, hold them asserted while the
> system runs and release them - waiting power-hold-delay-ms - before
> writing the shutdown bit. Device trees without the property retain the
> existing behaviour.
> 
> The array is claimed before any child device is registered, so that a
> -EPROBE_DEFER from the GPIO provider does not tear down the regulators,
> RTC and clocks that devm_mfd_add_devices() has already registered.
> 
> On a Firefly-RK3399 the shutdown stuck when such a line went from high to
> low before the shutdown bit was written, and did not when the line was
> never driven.
> 
> Assisted-by: LLM
> Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>

Why is this still an RFC?  That means it should not be applied.

-- 
Lee Jones

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
