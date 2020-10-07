Return-Path: <SRS0=/cQS=DO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E52C4363C
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Oct 2020 08:39:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72C7220797
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Oct 2020 08:39:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OGL46iBz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 72C7220797
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h0RAsSk8ghAzdnpm52QlDQ3UK/qROX00b9d+zERW2xM=; b=OGL46iBzcHh+Hy9AmS+P3GndL
	0bD9SpXgMlSgcGrWWwQ6rMdvb1vMA56NVr7REHOUfFrV5uLf6Oz8gC1FHvsLpB2LOjdg1R8N+VUce
	7KcJ+2SwDD4xuDAN1xYawx73Ta0Q5+yzukkfjBgeIxA+xEZgJYSL9T6j8mY72CqynqzpeACe4Udeo
	/yZPRafcfH6tuxdsrruvmG6TvTE5gvK70JXUinOGgtJcasxxUG18kTg5e2m6yQKs9wm/3qzBFCWTD
	kLoCE49IaUHn5+UrGYwRxERwAsyWoJJwQ1+L1I121ssRbcF0FxBURdRthjMgHxfuaZ8TsExzJgy3C
	tXNqz/f9A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kQ4yv-0004t3-Ke; Wed, 07 Oct 2020 08:39:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ4yq-0004m5-Rw; Wed, 07 Oct 2020 08:39:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kQ4ye-0004RV-Bl; Wed, 07 Oct 2020 10:39:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Nishanth Menon <nm@ti.com>,
 linux-pm@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 2/4] power: avs: rockchip-io: Move the driver to the
 rockchip specific drivers
Date: Wed, 07 Oct 2020 10:39:11 +0200
Message-ID: <1739403.NJMpfr3yiC@diego>
In-Reply-To: <20201006160516.319830-3-ulf.hansson@linaro.org>
References: <20201006160516.319830-1-ulf.hansson@linaro.org>
 <20201006160516.319830-3-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201007_043924_925672_C1EEFF16 
X-CRM114-Status: GOOD (  12.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Kevin Hilman <khilman@kernel.org>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Niklas Cassel <nks@flawful.org>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 6. Oktober 2020, 18:05:14 CEST schrieb Ulf Hansson:
> The avs drivers are all SoC specific drivers that doesn't share any code.
> Instead they are located in a directory, mostly to keep similar
> functionality together. From a maintenance point of view, it makes better
> sense to collect SoC specific drivers like these, into the SoC specific
> directories.
> 
> Therefore, let's move the rockchip-io driver to the rockchip directory.
> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

Acked-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
