Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 298E7C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 15:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KZSna4E7r7pLPTgJdsCKEpBmGXFe8DNWxc2uCiuNW4=; b=hLCh6cAJvVAoaA
	LQL9l0ipa68T8FN2ycNFNrcTNqgq01irwUvqodDEFQ+jIrGBrJSxvbB1j++EmYXZ1Mo++K5IRwoPS
	7bCGSph41XPYJmmG/RKcExlAZHGtrdltnNbc1rcItkUqsyXAARslE3mq04yiP/JCA5Xj6XeuHBjXB
	EIeQ3zbF6Nwtw+w5hh+Y7bgfiof2+LtnxWBwDXqucnRpCdCUiHaU4DAWPLsYv6G3nr85nt+o5aLZO
	bf4xwszsJWAnjDfwkkFWNJenRaZE0RwHm8xy9z98sTzkfuLvjdcK9HkxEWQY+2gLWm03Eh7H9gzvu
	ESHtKdv2J40sDKAcsrVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM3s-00000009wVx-1dXE;
	Wed, 28 Feb 2024 15:41:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM2v-00000009vwz-0mCo;
	Wed, 28 Feb 2024 15:40:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 84282618DC;
	Wed, 28 Feb 2024 15:40:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFE28C43394;
	Wed, 28 Feb 2024 15:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709134836;
	bh=EdBXZWWZuhFQ2tBqeSWmQW8C9/3C6rfZGCgEINTeNPs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nyAvpgawbjRhXN3/idGsieliKuBer1VZ4n5wUriSTJKwJKF5v4z6qteLWf9kwTt7S
	 S3pjYTZZFoTyyx8U4OocIU5RbG8rpPhLwp3kEOnjggislmg9b8efSUJGaV0sOUmQUE
	 hBYeEokykF1BjV5uWDsOYwM9UK0Ke1Mgr5TLXBeHwIgm37Wu+My+P/jWWcAOe/wlUx
	 LkmgGkwW1txkgcjGcVCJEfNpUE3OPIr2DdJYtcCpIJY/fGzXsA+yKhGJurXVk6g/fk
	 umk/ws+Zn43pmDM6KDbw6GKW8eof6L/aeqfuY/wwWb4TKxYekwi3QzvBappQ2F+nMR
	 Nxkvw138GytBg==
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
Subject: Re: (subset) [PATCH v7 05/36] drm/tests: connector: Add tests for drmm_connector_init
Date: Wed, 28 Feb 2024 16:40:18 +0100
Message-ID: <170913481316.384117.11464006515273994691.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-5-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-5-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_074037_647313_87C464D1 
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

On Thu, 22 Feb 2024 19:13:51 +0100, Maxime Ripard wrote:
> drmm_connector_init is the preferred function to initialize a
> drm_connector structure. Let's add a bunch of unit tests for it.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
