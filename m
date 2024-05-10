Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 731E9C25B5F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 May 2024 15:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyV1q+HQ2nsFAGY36Ax6xxJ51kgXcpHZK7Kx4GCbd4U=; b=MOGwRuqxaiD04T
	5ymAzfBnDDgKd08lizsNDUtR/6je0oyx2srBUrPs4YuZdPksYtY1OxYWlfJN5LpQH7Vf9ErSYB35Q
	tJhpfRdFf1z5a/Vb4yseTBali89VLQ/O9jU6Oo+HcevqzTfY/slE1nyUhRetjGwOcw4qed2llhaSa
	4QjiZxIU2Kh+lXLADEvc5ZmqvMRt2a3m4e9Orm8h44Ixmt5/pgHSPTjuxBKzLl1HGJ8/CcNNCktP3
	2kyXE9VL/Sul/b8uliAcJG1BGQ8RB9xW2Yvxhiib33/THeukOswGwDrbsi9L/ZrcQpuP83vsFYrn1
	mnHQ2yDS1LmTKD0x4nVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5RpD-00000005eRJ-1cs6;
	Fri, 10 May 2024 15:06:19 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5RpA-00000005ePu-2aye
	for linux-rockchip@lists.infradead.org;
	Fri, 10 May 2024 15:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1715353576; x=1746889576;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=CXDcdUm+eyJsZfLXxHCGcniGzdrK5T6k16E5ckZ3gVw=;
  b=ANiClC6UUTmB3ygo3jJzYNGkN+49WBG0mXdPfJumdUewVZejfbD2g8BC
   76lKZpT3/TpfP2LD2HS7IJxRIjekroNg7R14nRWr7R6qpNBuvbQCP6cYu
   yDQOtcdqaSkP5pxgrg/0CBetZvWzQcoSRMRrZeg9CjMcDxDhcrRFrFXhy
   IKDh7xw8koKhG7z1ofn23iQppn+55DW56MosyVaXdDor7/9C8YGqdO90T
   Rh6v6lAv/Ll3jmNWql0ZGLio+5px/h/zswU0GbmbIuMmBCED0VDc+ctx6
   Sg1HZx1swM3YoS+N2Y3BsCpqJ6Xb2yu145x1P9jnUVvDVUVScZhCZmkIa
   w==;
X-CSE-ConnectionGUID: Vg/HEGBxTuyGyPMfPD7OdQ==
X-CSE-MsgGUID: aVRFyuw+QQOumsGYWuK5sg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11465504"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; 
   d="scan'208";a="11465504"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2024 08:06:14 -0700
X-CSE-ConnectionGUID: k+ktbkYoRAu6iUMkqzeu+g==
X-CSE-MsgGUID: Q1f6jHyaQ9a9ZPs/EZ2JtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; 
   d="scan'208";a="34516794"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2024 08:06:07 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1s5Rox-000000068cr-1lcA;
	Fri, 10 May 2024 18:06:03 +0300
Date: Fri, 10 May 2024 18:06:03 +0300
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
	jani.nikula@intel.com, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RESEND v7 0/8] Add V4L2 M2M Driver for E5010 JPEG Encoder
Message-ID: <Zj4327rHvNGF8H-Q@smile.fi.intel.com>
References: <20240510082603.1263256-1-devarsht@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240510082603.1263256-1-devarsht@ti.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240510_080616_731712_B0E261FB 
X-CRM114-Status: GOOD (  10.57  )
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

On Fri, May 10, 2024 at 01:56:03PM +0530, Devarsh Thakkar wrote:
> Resending this V7 series to have proper linking of patches in the series
> with cover-letter while doing git send-email.
> 
> Original cover letter: 
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

Nice, now it's chained!

But all my comments to the previous mails are still applicable here.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
