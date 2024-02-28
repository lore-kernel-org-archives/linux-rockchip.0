Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A8B1C5478C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 15:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBIYmSXj2+5MwWK178PX4jmrQr1C8eSfnpKjwEdFYi4=; b=Edz76EwwIVQmBd
	WrmDCXxdDdV+AiqKpjAOrh3Tc0RMIwR/GXereDcXhrvIfF3zsJFJjNm1VlVonw374OtbJm2xzztSs
	lhDNvn2X27xhD3it/6E59k5vtlOcp2yieiaAwbw+3OkOhIaSqL5b+FdbfIS8US3jekBYvQJlbdksq
	zBF5xEEf+1yydTqNrx00C3PU9yPyq4qm5leYaOjZn81uZmmVfQnBTA+qCdYEIhfRAWRKdKWrsuMD0
	JxPHmiytc3/fGFpJDZhxphIWwidjSRFpSEH9SBSgbL3CbNkTCFpznNjhCSaQpMNV3DvWUn0bNSu6b
	bx0d0y2N4gcX5qQx5dqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM3C-00000009w92-0QFa;
	Wed, 28 Feb 2024 15:40:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM2p-00000009vsz-0QCy;
	Wed, 28 Feb 2024 15:40:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 92F7B61209;
	Wed, 28 Feb 2024 15:40:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAE18C43390;
	Wed, 28 Feb 2024 15:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709134830;
	bh=O03fJy88SAwwnAExh76BlIaO2MQNOOk831uCTyW6lAk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Onus0vDwWiOKzvmQccBQ/B7iRCGG5+HbvgGB4a5v4PnW6UsMSNUKjEcj1r4+WtbM2
	 iEqqNYECIA5mnS4gN7xWpYQ11/54TzmPaetXbO2dBwOGrjM2EJ/pfslVMZZjRYaHXD
	 t+KfDCVfzEFpKimEFkkvh7J5T5Eso38JOClJ5GBDBcgLPoNVsqDokVVH4B/d395pi5
	 cwCsWRHzUuswUbsxJ1/nZOjTjU4e6vnFVhZwKQV2j1s7oyCvQocrVTM00D/DeHZ0pf
	 E48Zz6eSdMv7rVYolvjfKkdZ0Lhnp0EjNQdEApBHm3ubaROIQAO4P2mI7sPQrZKNaH
	 uwCE0dhODbV6g==
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
Subject: Re: (subset) [PATCH v7 03/36] drm/tests: Add helper to create mock plane
Date: Wed, 28 Feb 2024 16:40:16 +0100
Message-ID: <170913481316.384117.4001941914188313587.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-3-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-3-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_074031_259857_6BEFDDC2 
X-CRM114-Status: UNSURE (   9.03  )
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

On Thu, 22 Feb 2024 19:13:49 +0100, Maxime Ripard wrote:
> We're going to need a full-blown, functional, KMS device to test more
> components of the atomic modesetting infrastructure.
> 
> Let's add a new helper to create a dumb, mocked, primary plane. By
> default, it will create a linear XRGB8888 plane, using the default
> helpers.
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
