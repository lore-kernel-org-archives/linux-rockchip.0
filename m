Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C496BC54E65
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 12:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvedUL0QfbwMjgSwkylnXE6nzAEQ3NOgSI4GNtVIqeg=; b=rZXUJC1WUgcn6T
	sk4XB6CitaYiAjdt3UudkxJjEv7V8FEX1ZEckOQbc/JyPKnRO8pgWhvyhNxm3rhOVVvXtsC5XLS8T
	JQ45UyEGZ6lmvu1kKQNasEyxqj7Wge6JWPXg91zLNxPdAGPrZB3wLVzsG018yR5oZ0jJauJeVZ33P
	chy5ctlssZYTSR9Pd5q14RM4w0jkNfCG0phOhhTwFSpt5JRhyNcFSr4ZsSy9dMQelZLR3JJMFiFg0
	KBxg8zHMKkJkbUBipmyx2g/70+tRtlr2V6mhIQwdEub+O0F60KWZAsGlXLY0lsZWa8ZlI5yrRoHRX
	HO42sFZRQ/gbtguZZmLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI4su-00000000yg7-3WA0;
	Thu, 22 May 2025 12:18:52 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI4qp-00000000yOO-3qxf;
	Thu, 22 May 2025 12:16:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 183E1A4DFD3;
	Thu, 22 May 2025 12:16:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 876FEC4CEE4;
	Thu, 22 May 2025 12:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747916202;
	bh=janGegacipRDwPFRgry5bht/UiVsUU8rf1hprM7kBWA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JmU/gxR74WvXbSu+bOhy1qYNicRMEwtrvSuhMzYVKoRQnLi0Rozhh2dm9jiM1Yxzk
	 QWdD/d6klPn+xdjglaqvz73pTLsoJ/EipbUbYwAG9kwZhpzYFkI5SSzuFuRazec1hA
	 gIzZDHLb/yuxCB+wXFo8gUc3Pu8YGBu48jThkKMn1xfg1SMhmnhz5h9CvWB54OnVvy
	 E3DDvskbZX40AA3rTnNT4Xe7b5YyC3VLpbfypvUhTQT/zngu8S/mWjfYHpZT+4hdo9
	 PtMQ04s9OOHwcOUOD6sAVFxrEiDm6hPnqonbGPu97N5RiChSfYQlZ3bofxQ8+YSzTW
	 SlPz9RdvPZBmQ==
Date: Thu, 22 May 2025 07:16:40 -0500
From: Rob Herring <robh@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] dt-bindings: display: rockchip: Convert
 cdn-dp-rockchip.txt to yaml
Message-ID: <20250522121640.GA2192083-robh@kernel.org>
References: <20250520024718.142-1-kernel@airkyi.com>
 <20250520024718.142-3-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250520024718.142-3-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_051644_020094_04E02971 
X-CRM114-Status: GOOD (  15.12  )
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

On Tue, May 20, 2025 at 10:47:18AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Convert cdn-dp-rockchip.txt to yaml.
> 
> Add new "port@1" property which represents the CDN DP output to keep
> the same style as the other display interfaces.
> 
> This patch also changes the constraints for "phys" and "extcon". For
> the original binding, only one phy and the corresponding extcon can
> be specified. In the new binding, one or two phys can be specified.
> Since the RK3399 has two DP-USB PHYs, specifying one allows output
> via the corresponding PHY, while specifying two lets the driver
> choose one PHY for output. This rule also applies to extcon, which
> provides the cable state for the corresponding PHY.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---

Fixed up the typos and applied, thanks.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
