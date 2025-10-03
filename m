Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA93CCA471
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Oct 2025 13:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htEel19IpYfupGCm7PSeB0LBCFJuEGrEhiXo87OxGEw=; b=d+pR2cMtOacXK3
	6AxwVcrbx88xnsPf/t9u6isP7ce8d5hnsyqwDgMONJXsleayeyC/qlk1uo9kgWDpBkOQrwNgbUiEb
	6e/Mrzwjb21RPRQTjlPgBQUzAaPOK2FNVNmXdMemw6ZbWSO3RU+G80n4aSo06ZejvkZrYrhtpQ+9T
	bvneRHe0Pch5cY7UiqZ/ZkCHhkwRvuMBZqnx7qNRELLB9vzn+qA7NArkDcFEmGJipx2wIFj/AG2gy
	GNNPES7Qn5Ey3DUjjBa+nPwmyT19BXoxebty79DiG3NLCWIjmAxo16QgbZ1hxq15GVS2GvcIrvI31
	QaXCAF8leeJ9GmdMdDvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4fRY-0000000CKH5-0XoW;
	Fri, 03 Oct 2025 13:03:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4fRW-0000000CKGs-2MLC;
	Fri, 03 Oct 2025 13:03:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EC11962127;
	Fri,  3 Oct 2025 13:03:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21C28C4CEFB;
	Fri,  3 Oct 2025 13:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759496605;
	bh=Gd7Oq5ZU+13w8PNpzBPg8aE98Rba9qJgv1pDoDLal7Q=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=tfbXoc6iH2ebCBIYmywEqOfOL/br7+yO0pTJ1zHz+lzYWI4OM+43mHTAer5bdl6eg
	 343HXDFp8oVnTSn8W9v8ePX8PQuPAVggFPOOjvqRHK8W1/a5+tX5Z99Z8NtRsS0kmz
	 0rPGKsA0kInxjb1wqWndhnavSx5EzOMBYz2157XwoNY11ApGGHNWOfdsI5pxfqT6si
	 bfiokh0TN7SjphfFMa9UP3cx5TsWqeAtHZZuuLnY6j0b5bKV8GnrrMk7LDMbhHnwfj
	 Gr1hossT+lKhqL09Zkl7sCKn3mvSr4Oc1TuqCYPItKtmSstLQM2bhWrZ+ihVaTNDfp
	 2sbvGsJMbhn8g==
Message-ID: <795f1dc6b340cc75c40c957ef8d38b0d@kernel.org>
Date: Fri, 03 Oct 2025 13:03:22 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/9] drm/display: hdmi-state-helpers: warn on
 unsupported InfoFrame types
In-Reply-To: <20250928-limit-infoframes-2-v2-1-6f8f5fd04214@oss.qualcomm.com>
References: <20250928-limit-infoframes-2-v2-1-6f8f5fd04214@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Abhinav
 Kumar" <abhinav.kumar@linux.dev>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "David Airlie" <airlied@gmail.com>, "Dmitry
 Baryshkov" <lumag@kernel.org>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jessica Zhang" <jessica.zhang@oss.qualcomm.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu
 Ying" <victor.liu@nxp.com>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Marijn
 Suijten" <marijn.suijten@somainline.org>, "Maxime Ripard" <mripard@kernel.org>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Rob Clark" <robin.clark@oss.qualcomm.com>, "Robert
 Foss" <rfoss@kernel.org>, "Samuel Holland" <samuel@sholland.org>, "Sandy
 Huang" <hjc@rock-chips.com>, "Sean Paul" <sean@poorly.run>, "Simona Vetter" <simona@ffwll.ch>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
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

On Sun, 28 Sep 2025 11:24:46 +0300, Dmitry Baryshkov wrote:
> In preparation to tightening driver control over generated InfoFrames,
> make sure to warn the user if the driver rejects the InfoFrames on the
> grounds of it being unsupported.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
