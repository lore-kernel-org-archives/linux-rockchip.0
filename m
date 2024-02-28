Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B738DC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 15:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xfIpBL/6StU7wERChz8ut1vDwu4l2S2o+SzkReyF88=; b=l4nI4YT274Dhwy
	J2kQIS4voe33/cduXjIsMtguG23P7MQy2FE5k5Oqx77dLWgBLm/J7lwRAZDhGao7jmalz+xCdTQLl
	WcqrE3tWVMkBfeWTegloRTOqWZ+coJqDh3ykRo4IoIDh2HmOaLxbUVIxKk8aJoq8RtcLCBr+BB0z3
	hRWx2Hiyawqce5VkfMTEjSpwJ0dIxsPhSsouLNOyIWXyTgX9ekIXwcPdhmvMHjFp5gnDC7Sft7vAO
	q1IKUwnhi/+pWSCNoelgOEigr5xuAnxh7I3S/eI0ZYlVy5Z1yYxAcS47bAhP+j9OlfAnSALUg3sIy
	NZ+5v48ui3YlYU3SBchw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM2m-00000009vqu-04ZB;
	Wed, 28 Feb 2024 15:40:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM2i-00000009vpb-3UaP;
	Wed, 28 Feb 2024 15:40:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3C12361209;
	Wed, 28 Feb 2024 15:40:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E2CBC433F1;
	Wed, 28 Feb 2024 15:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709134823;
	bh=hzQVSaBrZkCaB0MO/4h8xfo96VI0B7t/YSfR6AYVxVs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eH+QFfnkihZ1s1J9W0yFVWJmPH1URmdchPKpUzOsB5WpjpDPnQRRH3yikqF1XO67K
	 AqVjII5+5FAJhEifgKvo1SERrFDsZkyWzmSTx799ksK2wTDTjy/B4l+dTL3ETAxiXE
	 GvrrBAKzI2+elBWHjdkdu2/hMPJ0xfuimg2Vq8ioA4lCwWQQmHUtTF8m2Lcxkb0+bL
	 S9Rns/1U3hLwOTLPPFLoUcGIpfZ9JvAfwwzyXL03FrI8jH312yHOUW1t3GFOYGFn5q
	 2+w2yeiy9ZsVYzwyGVnRS4roW/nZMHDi5Bl406bfOLl496dmrero367vQ+P6TEvZU4
	 qqAfWNCpWv51w==
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
Subject: Re: (subset) [PATCH v7 01/36] drm/tests: helpers: Include missing drm_drv header
Date: Wed, 28 Feb 2024 16:40:14 +0100
Message-ID: <170913481315.384117.18098119230444621224.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-1-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-1-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_074024_941914_C359B494 
X-CRM114-Status: UNSURE (   9.15  )
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

On Thu, 22 Feb 2024 19:13:47 +0100, Maxime Ripard wrote:
> We have a few functions declared in our kunit helpers header, some of
> them dereferencing the struct drm_driver.
> 
> However, we don't include the drm_drv.h header file defining that
> structure, leading to compilation errors if we don't include both
> headers.
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
