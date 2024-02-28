Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F120C54E49
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 15:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ETZ0dqgaAHZ17PZGIbIjoxDELSi+ZNd4rh9lwLMXNg=; b=kYNOFDESudI9qv
	gQKhZJm12y5GRnKBuolRKeauoFtPpRV/beM4Ums+wS/PYDUVYYT7MUTjTvH6+cmuMdXW5n5iyeP5U
	WG6NIjBfWSlVUsa8dZc5sPcEoQilMTegds1lUx2AeiG7NDWcJwhlEPPpPVBhmGsXy7PAqrzSag8d0
	ENw2kfBpO6KpEwZuoKSwWQ9rw1GylI4+YNdTgeIjC496oVHN3E7QLP9wSsvqK79SBpEZIijWKt31d
	MhD/BS3efSX9pSTvg0ua8qFPcq5TRe26XNgw2R28P1auw//FXteQy6pN//XpdXHh3/jPoaaj6PEHT
	zTGkK8Ygvtn41ZX5UhRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM30-00000009w14-0mJk;
	Wed, 28 Feb 2024 15:40:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM2m-00000009vqg-120p;
	Wed, 28 Feb 2024 15:40:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8D7D3617D7;
	Wed, 28 Feb 2024 15:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B39BCC433C7;
	Wed, 28 Feb 2024 15:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709134827;
	bh=5t9R4GtzeOAZ9GJytBGdPib9VNQ0Jmz73UKo6e5gukI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZD8uj449X4J1gYSLlSKMtjreRQLhQLSwXmf2Z+qXijTg0jaaDkCNBH4anBF2Chr7t
	 y6bRPr2+3MTnaSblTZ0OIl6revijFTXsqtT8PTidiu8kLnRqT8VQgtph70j6v2xRS4
	 FLFbkcz1NyImVF+dOFp3/ZdyUUoZgGaGMT0ElbFD0HXr9NTOmsLcMNhgXS8OKhOcCQ
	 0RFdt48lbP268MuSWMHHcKx1meYic2MspV62WoQCOzWcRWfRWTzO2xClhQhPBmuZWH
	 QHufrU0PyBpBOX+U0AUZ1063db5skQhgWlCLb66XlIA0TM19V4zR9JXcsQeQtHXtGB
	 31scl2+OTAwgQ==
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
	linux-sunxi@lists.linux.dev
Subject: Re: (subset) [PATCH v7 02/36] drm/tests: helpers: Add atomic helpers
Date: Wed, 28 Feb 2024 16:40:15 +0100
Message-ID: <170913481315.384117.12389631392705299799.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-2-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-2-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_074028_380655_8734674D 
X-CRM114-Status: UNSURE (   8.39  )
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

On Thu, 22 Feb 2024 19:13:48 +0100, Maxime Ripard wrote:
> The mock device we were creating was missing any of the driver-wide
> helpers. That was fine before since we weren't testing the atomic state
> path, but we're going to start, so let's use the default
> implementations.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
