Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBFF1C25B79
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 08:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1QHHI/7XhDjk5yJSC4jOxMCsIEKDZjehyRBW9BpiyQ=; b=jzZ+LLj+WgB3lR
	JFeRIYriZmh8FjiQ9snh1yeKMgnCmmOEjGeeUpL+US3drktXLOmta+zyQGXRxWDjmPNBuO1Xmf0O0
	fFUtzBTg1OyEa6buu5YkLYnCoDqobSnwIU3YEyhFvUkeV3fTpBYSW0DceXdRGo0XidxklE4a37kTN
	rf7djPAmVf+0CeE73VZF6uzmM8A1tCQlVVvoNa3Lj5Tk5ZMrFF/poMiyOAtOHJ6/eSLYCDemT/wLi
	JvY+AFNfdvPxDIa5Ir64vrlc3AXRo2sJlOnL5N9nUCBXv0fHOD7yQwmdFYa79sabY2ThIYQCpolOV
	kNOCAWcTswAf+pcNEHgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsIV-0000000HUfN-1c0e;
	Tue, 28 May 2024 08:35:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsIS-0000000HUee-17gT;
	Tue, 28 May 2024 08:35:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 90E3761E5B;
	Tue, 28 May 2024 08:35:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBF87C3277B;
	Tue, 28 May 2024 08:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716885301;
	bh=mjrj8Y6U0achW4zr5kCGXAf0WM06rRFoOQ1fH5Q2jWg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dxEuWFtVj51/nmDcan82+Q/GlF29zGoAkcdnUKo6RKHYMkoiPRuZemCy52R+Dplz+
	 jnJxH28JcQmW+EcyZHFlMIKBcAUM9kmC+RBSNtin/dzPRP283vFQZGgV2akVs6/xOJ
	 /jtj4FIPOKrRXse/dnEKIq5DfrPO9sSF8kUBgOAfAt2PtrVuV2+g2Dy9lTIXFn5DK4
	 hzSH4bDeMYEKlRUjVemI8Y+q3/ZgV7teBVWe0WMW6FhatR2cQkHW/5S5RZkM/fwtvj
	 T6rx4zqTa+uo9gCxeAgkDz686lmdMHM/sNxRFS9zOBcGOdK/yXIq9DR/4uneXrj/be
	 IkI9FPpC0i+yQ==
From: Maxime Ripard <mripard@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maxime Ripard <mripard@kernel.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
	Sebastian Wick <sebastian.wick@redhat.com>,
	=?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Sui Jingfeng <sui.jingfeng@linux.dev>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Pekka Paalanen <pekka.paalanen@collabora.com>,
	=?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>,
	Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v15 00/29] drm/connector: Create HDMI Connector infrastructure
Date: Tue, 28 May 2024 10:34:55 +0200
Message-ID: <171688520803.1994316.11229514011452981600.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_013504_377004_22C3963D 
X-CRM114-Status: UNSURE (   9.30  )
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

On Mon, 27 May 2024 15:57:49 +0200, Maxime Ripard wrote:
> Here's a series that creates some extra infrastructure specifically
> targeted at HDMI controllers.
> 
> The idea behind this series came from a recent discussion on IRC during
> which we discussed infoframes generation of i915 vs everything else.
> 
> Infoframes generation code still requires some decent boilerplate, with
> each driver doing some variation of it.
> 
> [...]

Applied to misc/kernel.git (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
