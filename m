Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52562C54E4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 09:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZY0BoX4fnuT+97ZtYyrXFzn1UQ5MwsZOIRbYDUQMo1I=; b=Tn851naz9rUeuX
	8959TkRXSDY5fcuOmLNNoKsFAfOBV3MaGjYS4h+gyHjdQAuWVfSRScqnwkYuHg39aK6Veax7Tg3H/
	pIwNiZnDZ3C/yNivy3nCkSuI2iTgtAXFsf6LY0Hgl80DYk3bk0dK/fr21hyX3erehEi1+cOiPVB8m
	H75bdzVVwI2a/AP9l5F3OMYY8nx3cnEE0fc/KyLt6WLwu2cmF5T2UJ5A5BVHAeqQqSrTSCsGsi3oo
	TPrUcSho8IJ4GpcrzJVwGmZOLLi3XKAe1D7A2NNn2nrpRbHKLltFRAew0x9BEW/JguFttzt7gROEi
	PJ91hRzQKLkKcE/OmEaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reXiD-0000000HTYW-2DGg;
	Mon, 26 Feb 2024 09:55:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reXhw-0000000HTLO-42Kl;
	Mon, 26 Feb 2024 09:55:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 97DBE60FBE;
	Mon, 26 Feb 2024 09:55:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C86EFC43394;
	Mon, 26 Feb 2024 09:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708941335;
	bh=fMqa43xKI+gryM08fa980kLZLgK0kWJVv6T9a0vdxd4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UA9tMa0ZnLJU4FseNE/PEavyTD/X5o1e2gJF9Wj1PTkCFmjIEnUJ1QAGHSPoKg4Br
	 B/u4kOqQ7D5ZcYtoNICfSB1Z0j0iCHa3Y867eWAIXPpHZrlzXMYLmfA6AYXgU7VGBl
	 MD0glzXU3eS3mLZUYg3le/zr+uqeHQt+8MufptsxuqmkdWZ5GBqDiY5DzLx8fAHCnI
	 yK+L1zb8EolWCfBIYWWWMf9Oab1DY69pnu2R/dXazUEh4bnUtVA3LcVVXlWmVAIxR6
	 kDFr++sFpTaF066ttULv00qCWx5cPlHVEppspsuYKc29heOAqhmXhkD9LZZYpzKv8x
	 edP9uiXcTrWhQ==
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
	linux-sunxi@lists.linux.dev,
	Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: Re: (subset) [PATCH v7 34/36] drm/sun4i: hdmi: Switch to container_of_const
Date: Mon, 26 Feb 2024 10:55:22 +0100
Message-ID: <170894131837.29486.6507796941074207475.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-34-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-34-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_015537_342917_B040096B 
X-CRM114-Status: UNSURE (   7.34  )
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

On Thu, 22 Feb 2024 19:14:20 +0100, Maxime Ripard wrote:
> container_of_const() allows to preserve the pointer constness and is
> thus more flexible than inline functions.
> 
> Let's switch all our instances of container_of() to container_of_const().
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
