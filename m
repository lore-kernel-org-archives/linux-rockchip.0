Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F66C5B543
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 18:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nm1O1sxDnC+ADaH07bMZrZzTYessmX5iEROuzuFH/Do=; b=kPszH2RFmq7pov
	lsT7/wJaCXOFTggpW9Vo2Rf5VSrlFiIliK53Xebds/xjDBtDKFNnz52NNTbdfCR4R4+c2XDyZfGpB
	OgBHZPoNi9GB4eSz3vfPL9nYYoR5xhc0C2d0s+YUmy2tGZXZaaPM1PEuevuaRsvQDBevPK90imQsV
	LqxmfocVk1X9Aox8+s7hsKXhMcB3m/c6D0Oc5rhhsmzYp7RY7nZsmP9eLxtqFM/Uk6RR0+xUAlAhr
	XlsTaLr7BCPZCMYc8hpqgxLkg2r2fZQ4YCyZh7uIJC7fTrAqBrn7mvE/cR/IEkzCv9X60ywF7bsgE
	c3wC3W2YbL8HdwvSxvXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL4o4-00000001Xp9-2rVX;
	Fri, 30 May 2025 18:50:16 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL4o1-00000001XoO-3geO
	for linux-rockchip@lists.infradead.org;
	Fri, 30 May 2025 18:50:15 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-234e48b736aso29739445ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 11:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1748631012; x=1749235812; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CX8RVGcjNGfza1J+8Y/TBJXjjM61IDQf7sORQ0CRlUE=;
        b=CuT32xcLmys87DBZaBak/nPBtm1vAKtJl1n0qH7htpRiWvSQ6zcEYbOE6k0MK6DANZ
         75KQQ6N7cStDLiGSBdK7AZszYxaI/eYkSWnFuMC/O7s7Wbzon+aAJB7T/JaszhLg3jKs
         xeLwyKcl0jdU/W8DNtXij0c7roFbfGfxKrb59H7yYCxwSE670oW6KXo9Mi1FrUKKfHgb
         vzEfjIFirAwNky7J4h9gxfuNba7paWShmaxrXemR07qBzfjSZpsH568IC9fieT7SrSTc
         EiwOYHXbEBXz88WNow/JPVpJhxBb8NFIB/+bKD4Jb84zwlJOoeMadv9pKCYa1HhcKctF
         g/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748631012; x=1749235812;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CX8RVGcjNGfza1J+8Y/TBJXjjM61IDQf7sORQ0CRlUE=;
        b=H3OoSASi0lv4oIu4QTak7yq8L8q8HlWlsPGH1gq1FeDUHGAg0bKEenTacR7j5xKiL+
         4iVmp0SOLcoe7HKvyqfAbmjshP69J+bv+Myiv3tHuK7cyB8u9ctiMvylv11Utr7NLJK8
         w3E8lCdr1GNENwKS617pdqj7uMlprz447Te+DoLNW4g0cbM98WAbCmSu8KEYPl/e180W
         5US5irA39uoBpdviB9uKcSHtOr5YindFPEXaER0bxN5gEDO/JDRFdUIPp3sdjstKTxG9
         Jv6hxXkbkdUJvmNHDKJvGKLdeF6f10gN3/X/EOq8/uEHKnghJjrJmTRi6hESXuzce832
         HgYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhSkmnD7zi9i+xIqf8ZK9WnXCMI6FFB1jy7hbFnlCjdTLejhfYzdAXQ5q7QzI71yPpOz4fo4Q/6LnidROAFg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxkFxkuhc4mjMqb5Bryzgj77YU5lnwd4jB/Oo/eA5k2eM5F8Rm
	HOODWjHv6rvLLnM/7A/n6uRV1jhLQ910wPQmHwf5Dg8tV0asXKSENJqH6FS+HG1DW6hp9Vj6PYP
	mO7vFMkdaOccyENoNw72xSR0oMeDOBjTBNfOZ8Lhc4w==
X-Gm-Gg: ASbGncuHUleNcIjmGAf/gflyRp4KXl28h41Kayn2CNopVIwD5Mjmvjy0jzlnSrbidz2
	YAlh+lgCNB823ANnYELtfoXr9jGTwdnjGLNn4O/bB/m3vM8DO3rU8l/ResPTHH4cpxAZvKhP8oO
	5A1mvwyqUP9RCDA4LhZE/3w0u80VIjG0i5d/85KOWgUQ==
X-Google-Smtp-Source: AGHT+IFy6gculqd6TMBrN0rYJWssXVz6+60yi4DzoSheepAu+OoDDguVK86eUKc83jB1uCOQJbumvqYQqLIeYGr+pL0=
X-Received: by 2002:a17:903:1b6c:b0:234:ba37:87b6 with SMTP id
 d9443c01a7336-23528ef7833mr65464395ad.17.1748631012585; Fri, 30 May 2025
 11:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250519-6-10-rocket-v4-0-d6dff6b4c0ae@tomeuvizoso.net>
In-Reply-To: <20250519-6-10-rocket-v4-0-d6dff6b4c0ae@tomeuvizoso.net>
From: Jagan Teki <jagan@edgeble.ai>
Date: Sat, 31 May 2025 00:20:00 +0530
X-Gm-Features: AX0GCFvkNnwtQ--V1GCDW4BcbIzs35k_zL3RhgmHKFDsjekxRIDXrFhtYRu24lI
Message-ID: <CA+VMnFzisyMFzze52RRf6=Gstq29jmukrPSfqXfBWrVw0a7k1Q@mail.gmail.com>
Subject: Re: [PATCH v4 00/10] New DRM accel driver for Rockchip's RKNN NPU
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_115014_166272_DF76B1AD 
X-CRM114-Status: GOOD (  20.51  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 19 May 2025 at 19:14, Tomeu Vizoso <tomeu@tomeuvizoso.net> wrote:
>
> This series adds a new driver for the NPU that Rockchip includes in its
> newer SoCs, developed by them on the NVDLA base.
>
> In its current form, it supports the specific NPU in the RK3588 SoC.
>
> The userspace driver is part of Mesa and an initial draft can be found at:
>
> https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/29698
>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
> Changes in v4:
> - Several fixes to DT bindings.
> - Link to v3: https://lore.kernel.org/r/20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net
>
> Changes in v3:
> - Reference in the device tree only the register blocks that are
>   actually used.
> - Several style and robustness fixes suggested in the mailing list.
> - Added patches from Nicolas Frattaroli that add support to the NPU for
>   the Rock 5B board.
> - Link to v2: https://lore.kernel.org/r/20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net
>
> Changes in v2:
> - Drop patch adding the rk3588 compatible to rockchip-iommu (Sebastian Reichel)
> - Drop patch adding support for multiple power domains to rockchip-iommu (Sebastian Reichel)
> - Link to v1: https://lore.kernel.org/r/20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net
>
> ---
> Nicolas Frattaroli (2):
>       arm64: dts: rockchip: add pd_npu label for RK3588 power domains
>       arm64: dts: rockchip: enable NPU on ROCK 5B
>
> Tomeu Vizoso (8):
>       dt-bindings: npu: rockchip,rknn: Add bindings
>       arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588s
>       arm64: dts: rockchip: Enable the NPU on quartzpro64
>       accel/rocket: Add registers header
>       accel/rocket: Add a new driver for Rockchip's NPU
>       accel/rocket: Add IOCTL for BO creation
>       accel/rocket: Add job submission IOCTL
>       accel/rocket: Add IOCTLs for synchronizing memory accesses

Can this be possible to infer yolov8/10? Do we need to convert PT/ONNX
to any other common format's unlike rknn?

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
