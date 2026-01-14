Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CF89D3901A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 20:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXjxDR9xoo3LoQezrKt6cK6+yKOLBLdmunv+PGfcPjc=; b=cpfLlOeSgbtlq9
	WulZ+5HoNP+sWG22My3vJh5OmSR6+LtQ5NLbJ5g4D8JMD15k933S8pqlSNnmVMckW4LZkLtQjv7Qu
	uZQLDkcrGw3404qnY5MybNNJj1YNslPIEmu6S0XiktttUwPDUvBFMo1qqkQNnyof6X6ITtBhWllrc
	+qk7vl1MszClgFp8lwGkTQn56LIdvy/tDqyP1vTDXyKFgFoJpWJY5jKnlwqUJbEcw1+jr4WxaaxdX
	QHhnOyoMI2NdWFGgK/gmym3sLtPFnhY3+kiSDZuwXGpHHMvNRLmmsVi8jnRVUUGW5Zyzs8eT4f/qo
	uEC4fuAz2EkbNmObc4mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg7qA-0000000AgqU-4Agv;
	Wed, 14 Jan 2026 20:51:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg7q7-0000000Agp8-01ko;
	Wed, 14 Jan 2026 20:51:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 51D3543A5D;
	Wed, 14 Jan 2026 20:51:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 182EAC4CEF7;
	Wed, 14 Jan 2026 20:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768423896;
	bh=dwL47rYgTdWjH2R9TONSAhn5UmSu6UH5MGZCn6Mj7KM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pZ+BRXKTkbWWaLyq4wWKeIIyjyEvlnSYP1AyEi0okhBLvkruc56wx94x5hQ/dL++t
	 J+F3kX2fQdga3hsjc3ddvDYmVgce6C//rbGgAOZt0A5B2cC4cbgdm+vzBuBx9k5qfT
	 xORbUo5FFff8Dh2ZavSCYzkllYCEyj85N/mY3QIF+wZ+scQHH/V/RuBaxkchGTTXz6
	 OlIpeP6UVrLQJ5FCf0gGZe9UXrUYRJSGtksUuzPOSgje0DFx40WD9rjMHZ3g3s/INJ
	 dB0CXdoigNscXM8Fv5DNbhSWsxEoDiKAl/iw7uRM2sPC1THyKQJKIda0ODI6jx+j3m
	 v0oj0sP3vdzkg==
Date: Wed, 14 Jan 2026 14:51:35 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: thierry.reding@gmail.com, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, neil.armstrong@linaro.org,
	dri-devel@lists.freedesktop.org, sam@ravnborg.org,
	dianders@chromium.org, linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de, jesszhan0024@gmail.com
Subject: Re: [PATCH 1/4] dt-bindings: display: panel: Move FriendlyElec
 HD702E to eDP
Message-ID: <176842389446.3188655.18330903813710913313.robh@kernel.org>
References: <cover.1767111804.git.robin.murphy@arm.com>
 <80a68e706e869aadbdea228b207a5df52bbfd7b2.1767111807.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80a68e706e869aadbdea228b207a5df52bbfd7b2.1767111807.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_125139_232623_A1783254 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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


On Tue, 30 Dec 2025 17:20:31 +0000, Robin Murphy wrote:
> The "E" alludes to the fact that FriendlyElec's HD702E is actually an
> eDP panel - move its compatible to the appropriate binding doc.
> 
> Cc: <devicetree@vger.kernel.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../devicetree/bindings/display/panel/panel-edp-legacy.yaml     | 2 ++
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
