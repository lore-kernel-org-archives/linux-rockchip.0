Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B2AC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 15:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJ1kLMy0j1/wZFpr4LZRL7QYn6/3TXEmpaFgHkIHd8Y=; b=uhtvk5WcgmHmRu
	Px/5qpBESSBLHE0DJQVVC+nRcebO2audRGygcSKDhhnOsRrcgvzFEpVDuVKWsuMpG7x1zcPtO4PlI
	rhRHFX+zkkbK81aEk9Ae5NIgo14XDEWFvs1x+KHkgOTzAe1UcDd35nRH7+MZmQW9MGp3Jc8jSgO8k
	rcwBHbXOy5B2bKhcIZnrutOCXEqNlvPJs1zsmmgLAilNaa9dkHXg+/bH4LFlm+KuYjmHB1j2MfbiO
	7eumm0Ggwx5DveN0F57ILqQRH6a/ma7tgxAmfz63QufBWfu8Lm17nCQPkIk+fhJNPEx6wiQD1xu3/
	Bj29BHE5fH7Xcjrr0/1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDR4J-00FBn7-1y;
	Wed, 13 Dec 2023 15:22:39 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDR4H-00FBlq-0B;
	Wed, 13 Dec 2023 15:22:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id B53FCB81DD4;
	Wed, 13 Dec 2023 15:22:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8C93C433C7;
	Wed, 13 Dec 2023 15:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702480955;
	bh=tf/O8dGetCNcpoy6MZUH2WfyxvXI3zJrSEHCm5FUzJ0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fNrPOmca6s3S/ZPvqGYwmmGm4U8Nux2est+54hkCERW/9/h6pAIACO4u6ENd52nTP
	 EzwruVq8O270QaA6xO+4M1jqR7JOygVP/qryhESjvj3bZC0IsQkf/aOzVantjhURS1
	 IC+VRRLEolr7n6scU0vjCCr1HaKCECn4b6yEwVexHKV8/BU1Q+T5FIlHvT3G3mK7WQ
	 cPbb114J80/xlnGDBNqk9P/hPTkncp3zlbGBxVT7iIfDaYqChaTdnomlhP8DSzq56a
	 682Ysi6huUkV6dFXXafuGxIwf4WFBw5G/b/3U78HTGnz3fJ4Aa5R0GvziJYQl4m6We
	 8OcivlPMheioQ==
From: Maxime Ripard <mripard@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-18-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-18-6538e19d634d@kernel.org>
Subject: Re: (subset) [PATCH v5 18/44] drm/vc4: hdmi: Create destroy state
 implementation
Message-Id: <170248095242.191897.1505855856456253349.b4-ty@kernel.org>
Date: Wed, 13 Dec 2023 16:22:32 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_072237_224266_2DEED29A 
X-CRM114-Status: UNSURE (   8.26  )
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

On Thu, 07 Dec 2023 16:49:41 +0100, Maxime Ripard wrote:
> Even though we were rolling our own custom state for the vc4 HDMI
> controller driver, we were still using the generic helper to destroy
> that state.
> 
> It was mostly working since the underlying state is the first member of
> our state so the pointers are probably equal in all relevant cases, but
> it's still fragile so let's fix this properly.
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
