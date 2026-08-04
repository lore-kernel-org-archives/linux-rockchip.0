Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE2B6C55172
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 06:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTUKSf3bqemAhiuQ/VazwAkS4F3OlquAdh+IFS+1G84=; b=UsJpASOqRbEOn8
	1RkpiPJ5bNnqFfYbf1HqxUHQoqgvk8zYSt5NeqEmLv3TCyiRnITDVlNNJb7XLSb4U4KaiG+C+L8n/
	DOzqGQcYQndEpePsWVBtbeDsO2bi4voIoIscHxinQVtvtB8o4hQNRvVB8reFl4l7fXhI6o2ZTEtBG
	k/SnTsjahzGoznzvOR8Yu93+Ms9Vd3hGm3X2zrhvxOvBa+5mXcIhSfQwr+SZ7zakMutSFSOj1nn2E
	Q1pWisoMfGY9S6OKPP/gSbCjaGmBWHURyYQMff2ZiaW/ENOxBCISFHdd6LsrWGzkzN+wAo7L+cnL1
	k4jwrCf4ZN4SqCHgumxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr93i-00000001ABS-2Uoq;
	Tue, 04 Aug 2026 06:55:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr93h-00000001AAq-29qo;
	Tue, 04 Aug 2026 06:55:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 211F840F64;
	Tue,  4 Aug 2026 06:55:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F37A1F000E9;
	Tue,  4 Aug 2026 06:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785826529;
	bh=wq1FlBG/lmdz66O0zMM3OsUFUL0A2mg6NpdxD4ZZDek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oQKrgxrHMigV6DuOp2o4WRqi5lpTPCF8jZ/FtoRGBEvWrN2slXQDigfeIvpjCVS0N
	 iFvi44VURJvsuMAN3oMNokVPsVm2QyIy1nZLpFwSRjkky/KmRCu1wac7o/AiUTb3SC
	 ju2kPCQ6C3rnMPy7Q+OPA/kczwol0x94IcIXMk3i2jk1vymkyKKbQQ4Q2yxzJ1RmAP
	 idDDD6NkW0nxCeeZ6fGUL+nP8jQDfOjUwNe2MPFxG9wLxwQauYvMpHkiPBbnD2uole
	 nMeD++ByDvmrvLlOh1YWNzj1ZWfhSLlGq5VOGn2b3kyWnwJihrnEUXdDadtQxs8ri5
	 To0ZUN4+6zt7A==
Date: Tue, 4 Aug 2026 08:55:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	Fabio Estevam <festevam@nabladev.com>, linux-rockchip@lists.infradead.org, 
	Jonas Karlman <jonas@kwiboo.se>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Albert Aribaud <albert.u.boot@aribaud.net>, Chukun Pan <amadeus@jmu.edu.cn>, 
	Conor Dooley <conor+dt@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, 
	Jeffy Chen <jeffy.chen@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, Rob Herring <robh@kernel.org>, huang lin <hl@rock-chips.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/6] dt-bindings: arm: rockchip: Add Luckfox Pico Mini
 B
Message-ID: <20260804-precise-mutant-termite-c0c876@quoll>
References: <20260729133609.3465563-1-sjg@chromium.org>
 <20260729133609.3465563-6-sjg@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260729133609.3465563-6-sjg@chromium.org>
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

On Wed, Jul 29, 2026 at 07:35:52AM -0600, Simon Glass wrote:
> Add the compatible for the Luckfox Pico Mini B, a small board using
> the Rockchip RV1103 with 64MB of in-package DDR2 and a 128MB SPI NAND.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
