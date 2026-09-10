Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0042AC79FBF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 16:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUzfWZVViRS/7BHjUwdpLCKp2qbW5wReXPIKM7llCWY=; b=nKhfFx65fWFdCU
	FY14vkBE5RS6ny6FIrb+mTSG75fuPcgSEvQGIHsIuR3n9WWGwbOYlOBAWR2levIgUrUL80WvwQZ8o
	V9qNyXl98MQiZ1Rasor4olGTzTbqU7iyppOeJ02v/BqpR/baMIc8/YL4ve5olVODs8LEoBXk0QgYx
	MLM5H7uYC8WZrawz/vz4aIdwkDnqGyPgorNik3JdhAmh9WWsjn5uDD+ufkvXFamTwJO1QyRMQo3wZ
	L/Y0GX0G05EPVxQAPntbhqBf9lfFlXa/qPvKRSc1iugLH90iD1+82J2pXrdO5AGUOLgqui4HrtKy8
	NDR8v8MiDPA//bwR/Rdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4hbV-0000000EwcH-0PRl;
	Thu, 10 Sep 2026 16:26:25 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4hbR-0000000Ewax-3uyu
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Sep 2026 16:26:24 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49c5a927a1fso9095e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2026 09:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789057580; x=1789662380; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0smL/d6QKu04fRHQtGBAAZuzGVVYkDUilTOApT5q0GE=;
        b=obzX0IVIoqBGdjTMNqsxR6YrVJXp/htVmwVNyHyE7FeTQnN11ZmmggOFrkS4s4GI3y
         /BoMpyH5JkW0eb9r7nURDAgdOziwavFZcjtDAGi8KOMCuUpg0sKChp/qCH0DOhZEPQWl
         fQvwqS9BDIVttEnid0uyfw3hIitJRGZLt7kDmyj5QiFo/sm4wIrfiysFvszY8aTgzWqN
         QDvrWnQH7dW8OKcZt/PTix5j3UVWNX5V6xpNkyWZShCNONNDO6ToDSTZvDTspthEVsPe
         F0YKJu8ujrl+i0tYzRUhjE5oIW50yKXNgyOmSX4tH5n5ed62+FuLealil3FXbdlr5XEw
         T6Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789057580; x=1789662380;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0smL/d6QKu04fRHQtGBAAZuzGVVYkDUilTOApT5q0GE=;
        b=Vvqj9cUZcsF2KAyJua0m9ZwHLcFc5Y1zIdqMKonSwgoIpXkJBoIOEkokzJfIhiHcNG
         rEX7ujtohuTL+734hm1mXPDvyHlgsyU5uWuZ1bzMnoXtbRdUhqpCVdAyHGokrxLO7fje
         xXFQeaz04uxT2pPc08anapgVwbUtUK3QbTWk2MQ2idoI4Ky/3yUHFzPTJ1cUnxTpXjxs
         DVTP1oh6gVaK3Qa9gr6RPRg0ZptV/0zCgI40nGluoBwo/SRMBAELQl3uzK8+jBQEotre
         5atvfwUOigATPuMwA3wpqD94b6uD8KsTS5TUD500wfqZysGopKxmSQNn8fOLPY1NjRxl
         bzoA==
X-Forwarded-Encrypted: i=1; AKwUvBzS1SytieOTKWipc4Blu16M61pD8C0hSeMYDy+cNS5IHrhsFhdEtnPSag/Vv0ruEON/Kkxg+eMtGU7el8pRLw==@lists.infradead.org
X-Gm-Message-State: AFuF++nynXJZ5FUyEUbIL0yr9W7uyumW6MK03pb7JcPHsJ6cvi16BHDB
	Sl8GrvSYVmk+g7OzK+7+MPnkMFauORFnOmMWP14S3m3bQzdE5+ZmS3OV
X-Gm-Gg: AYBFou284EyvZQ+YEQAB7LMTNGOoiBd+2d3bPGyEVbamr58PoQSm3n5eoDG0IFVO94v
	vlfj9Wmg5yQ14qAG+6g26afK6ZCN6J00556xMw+ZYKBjcz47mc+tiL1GHjR+p6jw+nLLSb5IEly
	3XzG8kRgRL4AHzPnsZDFfDAeAZDkbcTrXLXnaqBd5JJbzCYDNiE+9Xg8IFB9f2RGI2vE/yGCntN
	o1uIArXTnJ2nPteUGc+7v4eP9MSJd2dJup9LbIpA8gdl3ZhjDhwO/LBZ7CFhpaRHIw8ZGLLUxfM
	yIlDo635TJ5qpv2bjXiWZDx7iSTlzZ9VfsYiL4qgops2lrTfx9yKjlwc/TIDZP0jIwXm4C1fA/s
	TrNuGeo315n8aba9i1sFhJcr9V0QgyuPjYCll0250vasGi0Rhlqq8LJafev5iZn1Ez2zIxokp4U
	NTX2KlqlSIFslRY8Fcs1FS+gsFnlJcvptSQKxMU9y+O71+3dA52TQUdobPwKRvrbCj69v8Yojbo
	kIZxnuZ6hcTlPbamWOYalhV0fmwTaX4/XSTNLv3N3khAygzobyofoLya6EDmMoU9I71wsPKOsvT
	6O3l
X-Received: by 2002:a05:600c:c494:b0:499:d95a:41f with SMTP id 5b1f17b1804b1-49d010c3969mr322629105e9.0.1789057579609;
        Thu, 10 Sep 2026 09:26:19 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B91460038D48F9767ABDC4A.dsl.pool.telekom.hu. [2001:4c4e:1b91:4600:38d4:8f97:67ab:dc4a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e60946249sm7275965e9.0.2026.09.10.09.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2026 09:26:19 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Heiko Stuebner <heiko@sntech.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
	Alexey Charkov <alchark@flipper.net>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH] drm/connector: Cache out-of-band hotplug events
Date: Thu, 10 Sep 2026 18:25:52 +0200
Message-ID: <20260910162553.6262-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260821-drm-connector-oob-hotplug-cache-v1-1-e92e146fdc7b@collabora.com>
References: <20260821-drm-connector-oob-hotplug-cache-v1-1-e92e146fdc7b@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_092621_991339_E0C69F41 
X-CRM114-Status: GOOD (  10.22  )
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

Hi Sebastian,

On 8/21/26 16:55, Sebastian Reichel wrote:
> When the USB-C state machine finished negotiating DP AltMode before the
> DRM device has been probed, the out-of-band hotplug events fired to
> early and are lost. Without replugging the display or reloading the
> USB-C driver, the DRM driver assumes nothing is plugged.

This is the boot race I reported in [1], and the patch fixes it here.

Orange Pi 5 Plus (RK3588), a Samsung monitor on USB-C DisplayPort Alt
Mode behind fusb302, on drm-misc-next plus the dw-dp and Rockchip USBDP
PHY series.  The same tree also carries my pending vop2 AXI clock patch
and the pending dw-hdmi-qp audio guard; without those two the board
does not survive the boot for reasons unrelated to this patch.

Without the patch (one boot on that tree, two more on my daily kernel)
the DP connector reads "disconnected" from the moment dw-dp binds until
a boot-time service of mine unbinds and rebinds fusb302 some 45-70 s
later; only then does the link come up.

With the patch the display comes up on its own: the same service,
running 40 s after dw-dp bound, finds the connector already "connected"
and does nothing.  No warnings over the session.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus, USB-C DP Alt Mode

[1] https://lore.kernel.org/all/20260811211534.8618-1-royalnet026@gmail.com/

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
