Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2557C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 16:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMFC/AbA+t1GzxBdQ2REEEXv/XE7/c6KsyOWSQrIn7Q=; b=sKOimARqPsU1Nc
	LzcwD1DE/1pHpJzkto7rt10jlZ15N69RQgelWBjvbrNe6hnWYcwPyMqxQ9XgQVRvjqLgooPEC2YXt
	5Kn1wB3mwl0uXE7t9wLlHnPHvdqAYlwznQ/UNZMzA91fbxi7654MsIW7yEownN1HZf8iOYWAH5xm3
	k+31qDYiRtjUtOCjUMYTs5SOQiOFT6FHTK7NIlLe7VCHhymo5Wu6/ff5KOaohTEaUleNmZypwUzOa
	JMD/WT/ek2/x9dcEeqLXSPm/PT+Xxx0z3AnxX9lpqV+Ve1ZfASmc1MOzx4iEGpGHIyuOIFzoUiTv5
	zdHybzHGImbJO7Rg6NtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT2EZ-00000000jC0-2YpO;
	Thu, 25 Jan 2024 16:05:43 +0000
Received: from mgamail.intel.com ([192.55.52.115])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT2EV-00000000j9T-3XUJ;
	Thu, 25 Jan 2024 16:05:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706198739; x=1737734739;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=DNTN/lYZe7yjys99DYPQCerRcHwd8OfuFtEe4wkoNhQ=;
  b=HKLIz3kLgYBlMO1mETfcE44fSvQC1yr9S8W8ehclWWcY49d54dOPSLzX
   E/aXn5lPTFPpPpCs/KBGau/34aYzw4Vb3qSKcelkHvqDy4PsSINjzDFDt
   SMaWJCoE4rESDfRLwNW3WinPwG+0Jau0D5d5ZzdNetxw99dE8U/+3mugS
   ywZrqwecj//knEufDP1iLLlf86tpYz9PURII5chCBPw1BTnMEFyWEjQM/
   3l8sfMuMkQ7nUQKq38P9I5/ZFxUPkZD0XFB0SrONxvOec9np6SdKmnR4C
   tO8G19JiR5DCTp9o4qhXUvTcMzobYfiPFNPazkaWsdB3ZClhwmnrOuJVr
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="401855472"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="401855472"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jan 2024 08:04:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="820834834"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="820834834"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jan 2024 08:03:13 -0800
Received: from kekkonen.localdomain (localhost [127.0.0.1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id 1F56A11FB9B;
	Thu, 25 Jan 2024 18:03:11 +0200 (EET)
Date: Thu, 25 Jan 2024 16:03:11 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hans Verkuil <hverkuil@xs4all.nl>,
	Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: Hugues Fruchet <hugues.fruchet@foss.st.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Marco Felsch <m.felsch@pengutronix.de>,
	Adam Ford <aford173@gmail.com>
Subject: Re: [RESEND PATCH v6 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
Message-ID: <ZbKGPyDkunFgetYG@kekkonen.localdomain>
References: <20240110104642.532011-1-hugues.fruchet@foss.st.com>
 <f7f8344c-7a72-4450-81c7-8bff4569f044@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7f8344c-7a72-4450-81c7-8bff4569f044@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_080539_919729_B3E08044 
X-CRM114-Status: GOOD (  14.26  )
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

Hi Alexandre,

On Wed, Jan 24, 2024 at 01:36:02PM +0100, Alexandre TORGUE wrote:
> > Hugues Fruchet (5):
> >    dt-bindings: media: Document STM32MP25 VDEC & VENC video codecs
> >    media: hantro: add support for STM32MP25 VDEC
> >    media: hantro: add support for STM32MP25 VENC
> >    arm64: dts: st: add video decoder support to stm32mp255
> >    arm64: dts: st: add video encoder support to stm32mp255
> > 
> 
> Sakari, Mauro, do you plan to take patches 1 to 3 on your next branch ?
> I will take DT pacthes in mine but I would like to be sure that dt-binding
> will be applied in a next branch (for the next v6.9 cycle);

This being a codec driver, I presume Hans would pick these.

-- 
Regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
