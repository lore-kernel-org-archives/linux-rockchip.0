Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9200C369A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 08:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFS5WY3yeg3HsWoj9Ihk4mZSKB6hRt/eu2RQjM6gGpg=; b=On7wcDr7PM3ZMd
	aUr5X3Fv/Ycpmzd3KynVu2eHq86ZS4FNYEIDEXyzqZt3siPop4yJ9EmOUXnyBe03OPn+oDEeZJTA4
	LcOgQuCsPiT4zYyCgTl7GvKkxBaFdN87O/lHC3mPTwqHTAu0hFiK7KBGI4EUeigmEWF0lYlagMCnE
	6jBC72RfD9vlIUJwREBwXd2VCDbYnZA/7tRIcmFTwioElyWrpmtqrwsmK8c4MhWrg2f7k6SN2r6Zm
	dM019371b5RT/CR3APLtiiLRTsY14TFE1ADDNtaGHGzQAUb1xALeFryXC1eDHUz+EUK3exGBkQq4u
	i3xtSegO7K0/k+OO/0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2QWc-00000006XC4-256R;
	Wed, 09 Apr 2025 08:11:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2QIL-00000006UGQ-25yQ;
	Wed, 09 Apr 2025 07:56:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 608E668438;
	Wed,  9 Apr 2025 07:56:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11E59C4CEE3;
	Wed,  9 Apr 2025 07:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744185384;
	bh=fRl/2fJxhLh5pxmQTXfimVdKHqwMdfvWC15mYy1K/zA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TM438mU+mHRflGQqwTTahRAHpXKkGwkrdYen5nCjr0gBDC1BbLQoOxi/XLpeEU3uS
	 zcSF7rV4CJoShkNjPIiGrPOsUmn6erPVUPsaI4roWH/E2vKX8n4EHMFXImdkbe8OhM
	 iyk9xnFwFTxxFxOEpySepA39twljtSjOFImZ1OJ57w2+EqGBTs86mrD4TdCGkN2sh8
	 wIiTYliaoUpwuhwBKVvAgXfMmxEsNbsxQ4juItxhJFl5Ei7t8imP9x1aDe+KYtLtBK
	 BumaHD9KrXChC7LHadVfu+4ZiGfm671eesJRp6kU6DxL9/dH394C7dAryY2gcWQoXv
	 zzwL8VTVomCZQ==
Date: Wed, 9 Apr 2025 09:56:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: rockchip,vop: Drop assigned-clocks
Message-ID: <20250409-ludicrous-blazing-chimpanzee-e5dba5@shite>
References: <20250404214030.401629-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250404214030.401629-1-robh@kernel.org>
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

On Fri, Apr 04, 2025 at 04:40:29PM GMT, Rob Herring (Arm) wrote:
> assigned-clock properties are implicitly allowed in any node with
> 'clocks' and don't have to be specified. The max here also appears to be
> wrong as there's a case with 4 entries.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-vop.yaml  | 6 ------
>  1 file changed, 6 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
