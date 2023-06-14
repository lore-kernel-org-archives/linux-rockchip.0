Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE821EB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 15:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OznibVO/JMc1uw6Kp1k8M7HFGq9OgqHOsFB/wOGSWdY=; b=dxK9/lp15b/QXW
	suRZmP1LM2VnggyzMcd6JwlZl3uZ7WBBiNcXWLcdLCaN1bm53rNwFOaplv1X5CH4VY8QkWFEOsP1n
	PtEcWFoWnJ4MbUV7rb+sDwwpI57NgqpfDBF8XKVVwwHND//Z61wWee99I2rBVvenZ0vWhnvd6uO/s
	xrVrQ2u7HbstyYv1gcWQhEipGxquH81BoayHzZpmG6H/UMwAzY+J7ClGtSnAZ/A9EALBzyiqs8n9w
	Hsj/a1r0umsVTNn7K0VVxMFt3x1xEnV170p0LlslbmnHBIPf3j+FpAm69taAsN3Ox/fX+7HZ6lLSm
	0LMl7EqM079kcST2t1iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SFt-00C2Uf-2G;
	Wed, 14 Jun 2023 15:17:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SFr-00C2TT-1K
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jun 2023 15:17:52 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q9SFp-0001kT-Hr; Wed, 14 Jun 2023 17:17:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vincent Legoll <vincent.legoll@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: rk3588 tsadc
Date: Wed, 14 Jun 2023 17:17:48 +0200
Message-ID: <1845724.3VsfAaAtOV@diego>
In-Reply-To: <20230614151245.zi45j7zxsewagosm@mercury.elektranox.org>
References: <CAEwRq=oddAzJcVBhxJVe9QActLe30cPdnzhGormv6xr8nu6RXg@mail.gmail.com>
 <20230614151245.zi45j7zxsewagosm@mercury.elektranox.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_081751_449172_083B4A5C 
X-CRM114-Status: GOOD (  18.62  )
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

Am Mittwoch, 14. Juni 2023, 17:12:45 CEST schrieb Sebastian Reichel:
> Hello Vincent,
> 
> On Wed, Jun 14, 2023 at 02:56:31PM +0000, Vincent Legoll wrote:
> > when testing the latest collabora rk3588 branch, I see the
> > following kernel message:
> > 
> > rockchip-thermal fec00000.tsadc: Missing rockchip,grf property
> > 
> > Is this something on my end or is the
> > arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > file missing a rockchip,grf line ?
> 
> No, that is fine. The RK3588 is one of the chips where this comment
> applies:
> 
> 	/* The tsadc wont to handle the error in here since some SoCs didn't
> 	 * need this property.
> 	 */
> 	thermal->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
> 	if (IS_ERR(thermal->grf))
> 		dev_warn(dev, "Missing rockchip,grf property\n");
> 
> Maybe we should add 'bool grf_needed' to 'struct rockchip_tsadc_chip'
> and make this mandatory on platforms needing the GRF and not
> requested at all on the other platforms to reduce confusion.

sounds like a good idea, though looking through the instances it looks
like all grf-uses are guarded by a "if (!IS_ERR(grf))" and handle differently
when no GRF link is present.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
