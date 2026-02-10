Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09F8BEA8138
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 15:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuMiVXm5ndIcB1PHgm57XTkNNON5V/Z04/G2AVc3CVU=; b=ST4xF2Qyl2b76a
	0qol1Gcd4s9RBEbBk5g8Y3mylDMlaAlb8dxfrBvh119q7jksKK6zzwg4jM2faFL7pKqg7r3567m0H
	syOh5x6yAfhM9cqUW45V1aCpDP8jQauUBGS0DPNXcLxEyA+hzMQ4RaNIFZd5CMebUGY9r/XgO2pG8
	W55U2/Hu/ywCHDCvNH1q/BjELMv+MbWgjjkVCj+9ieeYJY9A+UcaidWZkeXC+DvMb6CD7PV/kWzQi
	r7KNGGL12gnNMgGFWpC8Cb5uw/gZXC+vVz2/V7ZmFUQv2cRfr18D7IHtGZwEXq8Hf1jYvrpEOH82t
	wVBOMilVUBNrUYT11pGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpq2G-0000000H9gj-11NN;
	Tue, 10 Feb 2026 15:52:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpq2E-0000000H9fj-25pz;
	Tue, 10 Feb 2026 15:52:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 83C9760137;
	Tue, 10 Feb 2026 15:52:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACB61C116C6;
	Tue, 10 Feb 2026 15:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770738737;
	bh=RQCwNCcBeQU5tvcCgLx7gzzyD5u89C/R0Ffzky3epSg=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=L59I9SaTtdMvZlOhb5jGb3izQPshIAAA5N0NwrHQ9OHzFRKT2N2aTHa6mubs/+8fT
	 Fd8ClyLKa2PSEiACbqV/S/q35ydzv8P72f6fDEDz7fmEgXd9mNOlAV4RUKfXafs2Pi
	 W3f7efLT91mlI5d8Z2t8uaGyffr+UL9jMyEDKDFRyB2IdVElXspukJmAsg/0p211AK
	 nczKveQhsTZSu7CzRB0lD0yApoKULmjqz0i3Cb+5+0RCtBPgq3lLfFmhAnDXrLoWAV
	 HNBBL+Dh6OWzv8FeSN+ajGyLHIu+c5etcJmxfpXoV80OQf4OewLWzMvnVySHkLp9IR
	 +14wAkevYkQfA==
Message-ID: <6650ab0f95871398568f6f2c3d2f3e56@kernel.org>
Date: Tue, 10 Feb 2026 15:52:14 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v7 19/22] drm/tests: hdmi: Add tests for HDMI helper's
 mode_valid
In-Reply-To: <20260121-color-format-v7-19-ef790dae780c@collabora.com>
References: <20260121-color-format-v7-19-ef790dae780c@collabora.com>
Cc: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Alex
 Deucher" <alexander.deucher@amd.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, =?utf-8?b?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, "David
 Airlie" <airlied@gmail.com>, "Dmitry Baryshkov" <lumag@kernel.org>, "Harry
 Wentland" <harry.wentland@amd.com>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jani
 Nikula" <jani.nikula@linux.intel.com>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Jonathan Corbet" <corbet@lwn.net>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Leo
 Li" <sunpeng.li@amd.com>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime
 Ripard" <mripard@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Robert Foss" <rfoss@kernel.org>, "Rodrigo
 Siqueira" <siqueira@igalia.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>, "Sandy
 Huang" <hjc@rock-chips.com>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Simona
 Vetter" <simona@ffwll.ch>, "Thomas Zimmermann" <tzimmermann@suse.de>, "Tvrtko
 Ursulin" <tursulin@ursulin.net>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 21 Jan 2026 15:45:26 +0100, Nicolas Frattaroli wrote:
> Add some KUnit tests to verify that the HDMI state helper's mode_valid
> implementation does not improperly reject chroma subsampled modes on the
> basis of their clock rate not being satisfiable in RGB.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
