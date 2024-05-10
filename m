Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6891C25B5F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 May 2024 14:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kvvihy0HiCAT00aSiD89MKhlmbJOyMK+nsrk01WdR0=; b=Lp6s9E37ctjy8o
	I+IKCuOw/yuV5/zc0LJmNTuZ2Oal6IMBfxq2X07DNBT7UP1j072IwqmzPEJfsDF4W2zycMSm6/8e2
	8Q/O7f7w97NjOlChHvMBRjjO5AHLNnXQtNzRydH9owNEfKxixo/knmrHp22e5ez+uvyOm0gWJLJ+M
	2keevhoXoRZEZFMPJgWwgVY2nFKtSTgnYUTV7H5zgOCfHk6SvFYARcXWbQg+lXUStwZ62zJxI3GHZ
	hjYVuD4MEASZl1cYdMArCDxmf9cFSVdcCUEd89CNiPfcpWskS4HGSk5Z8PzNt3vcEl2JA3owCvApp
	jl1ojaleeKMkv7wrA6Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5Rel-00000005cpX-49HP;
	Fri, 10 May 2024 14:55:31 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5Reh-00000005cmr-2XMF
	for linux-rockchip@lists.infradead.org;
	Fri, 10 May 2024 14:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1715352928; x=1746888928;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bpcTd66QCrqPbkU8DpdDZoGNAxlz51z4EqF2NnOZKrc=;
  b=hL921q9QrNlVxbAOXlFJxACg7AGrNUIXBbVIxKKkRFbn3RxSdDQVbaZO
   2PD9HW6F6TOfsOb5CXds9PHu1USTfqkzULZRSFIzpMGs0j85bqXvPF/Ys
   pDnVJtVzBkkNbcDelgxR+ILikkwnHfE1NiReKXMSP5lKs6qCQ9/8Qb6jc
   oTyqM+bVsBGM/ZuLBqeIWKhpvkqrkVkW11X1FuNWcxBBFUU3NTjJm4uK1
   OIu7tV3DBACWOcWPeUTqi+9luh1ZIXfiuMqzVhPd4vmGRDV2PHfVJ5t17
   7YaZa32H+GKUWO1WV8OpHfi/UyNQ9lwTB4XYzKmjZ6MrYZDHE1xfe98F6
   A==;
X-CSE-ConnectionGUID: aLha0EcwTvyGGGxR3tih1g==
X-CSE-MsgGUID: OGn9wq1cTZePkpwXqrj4uQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15170025"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; 
   d="scan'208";a="15170025"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2024 07:55:21 -0700
X-CSE-ConnectionGUID: s50Lh8JFRIGHTT0f+bQ46Q==
X-CSE-MsgGUID: 1fYDxZKuRv+WCeOt5FRj5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; 
   d="scan'208";a="34078575"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2024 07:55:13 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1s5ReP-000000068S4-2BgO;
	Fri, 10 May 2024 17:55:09 +0300
Date: Fri, 10 May 2024 17:55:09 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Devarsh Thakkar <devarsht@ti.com>
Cc: mchehab@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, hverkuil-cisco@xs4all.nl,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, benjamin.gaignard@collabora.com,
	sebastian.fricke@collabora.com, laurent.pinchart@ideasonboard.com,
	praneeth@ti.com, nm@ti.com, vigneshr@ti.com, a-bhatia1@ti.com,
	j-luthra@ti.com, b-brnich@ti.com, detheridge@ti.com,
	p-mantena@ti.com, vijayp@ti.com, andrzej.p@collabora.com,
	nicolas@ndufresne.ca, akpm@linux-foundation.org,
	gregkh@linuxfoundation.org, adobriyan@gmail.com,
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
	jani.nikula@intel.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 0/8] [PATCH v7 0/8] Add V4L2 M2M Driver for E5010 JPEG
 Encoder
Message-ID: <Zj41TZllCRvEdYsW@smile.fi.intel.com>
References: <20240509183849.4060521-1-devarsht@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240509183849.4060521-1-devarsht@ti.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240510_075527_714037_26518E45 
X-CRM114-Status: UNSURE (   9.65  )
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

On Fri, May 10, 2024 at 12:08:49AM +0530, Devarsh Thakkar wrote:
> This adds support for V4L2 M2M based driver for E5010 JPEG Encoder
> which is a stateful JPEG encoder from Imagination technologies
> and is present in TI AM62A SoC.
> 
> While adding support for it, following additional framework changes were
> made:
>  - Moved reference quantization and huffman tables provided in
>    ITU-T-REC-T.81 to v4l2-jpeg.c as suggested in mailing list [1].
>  - Add macros to round to closest integer (either higher or lower) while
>    rounding in order of 2.

You have a problem with your emails. Either you missed --thread when preparing
the series, or something wrong with your email setup / email servers you are
using.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
