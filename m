Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BC3606A323
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 14:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PFk95hWP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=CDA+btKW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=podHE5tYFk0utjZs3PLut8W0BXwfLtuVXKOjVxu/2SU=; b=PFk95hWPlGZW03qoWxhP7zriAQ
	vjbeaRTdLBSJz+0BFZ2FEIn0qkOCA3QGkebbLLPzT8ts1jOy39p6qgZkgvaIB/cMNuBq1Fva+9ioR
	Pmw47Hxr/U4lkkq/1pxHhEnV0NLfwBMJIm/rlrunhyjwkPTH6Qh9r0KJp+n2fgzy6GS700gjcjXlY
	P8CDvI4vNPIQ3WfYgN3M4zDgGuNVD6PqHZr2f+Hbr2Jzk+YXv9O6/kqrSugRApjQQ/BvD5KyN7rwn
	SP9xk4uzSKwm7HIME3qT3/9hGrQKNDN6ca3Jp9Q6xHM01bgVc6AVBrHIjFjUZXiz/Qfs7RrJ+7wRd
	Iv/DiY8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTKON-00000006BXx-1w0s;
	Tue, 17 Nov 2026 14:42:39 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTKOK-00000006BWx-0x3L;
	Tue, 17 Nov 2026 14:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794926556; x=1826462556;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=q4W2BYtbGrF9b+Sza6/X9rpK+8tQ7WvHYOd7Ql0pQuI=;
  b=CDA+btKWxaQTRb/tQxMrPzVlH75jUF5eA8x+tddSWn9OU8Z6SlR2NM0n
   aaqYCQAirc8SyZ0StwKgMndhEy80mAbByIE6YyCCqG4944L6UQzY2M/T4
   +EqjQ6kzQz17G6h7pGp4SJ3MFR8jpqwzmQWmOozOQUAUiPOy5eFT6VwJl
   u9udteOA0xN5KpOJmUwtBP4MAmyuhAQXmIh0y73L7iloaAmLMbg3EnUY8
   d6SUiqP5Fed73ZY/o6Hh+YAQeJ5M3PEt2vlbGjUybNL4LRs4miDebSyGF
   r4KP3zc2W/t2r9XfO/G5+Q5oDmZepDBY2O8A9x7Jv7G4Jl33XRHdVbYk6
   Q==;
X-CSE-ConnectionGUID: Nri7q5mfTmW1agLwNsX8DQ==
X-CSE-MsgGUID: w8pqfhqISK6nsKPePi5vYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11969"; a="3600737"
X-IronPort-AV: E=Sophos;i="6.27,218,1787036400"; 
   d="scan'208";a="3600737"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2026 06:42:35 -0800
X-CSE-ConnectionGUID: BX821WPNTgqlq2KMILKrdg==
X-CSE-MsgGUID: atJO8mfxQl62FlzFQ0EonQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,218,1787036400"; 
   d="scan'208";a="9714237"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.236])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2026 06:42:27 -0800
Date: Tue, 17 Nov 2026 16:42:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Erwin Springer <aot.lerwin@gmail.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
	=?iso-8859-1?Q?Andr=E9?= Almeida <andrealmeid@igalia.com>,
	Boris Brezillon <bbrezillon@kernel.org>,
	Christopher Snowhill <chris@kode54.net>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Dharma Balasubiramani <dharma.b@microchip.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	freedreno@lists.freedesktop.org,
	Gustavo Padovan <gustavo.padovan@collabora.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Jianmin Lv <lvjianmin@loongson.cn>, linux-arm-msm@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
	Liviu Dudau <liviu.dudau@arm.com>,
	=?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>,
	Manikandan Muralidharan <manikandan.m@microchip.com>,
	Maxime Ripard <mripard@kernel.org>, Mingcong Bai <jeffbai@aosc.io>,
	nouveau@lists.freedesktop.org, Qianhai Wu <wuqianhai@loongson.cn>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Simon Ser <contact@emersion.fr>,
	wayland-devel@lists.freedesktop.org,
	Xaver Hugl <xaver.hugl@kde.org>, Xi Ruoyao <xry111@xry111.site>
Subject: Re: [PATCH 00/12] drm/atomic: Try to make atomic+async usable, and
 clear up the "async update" helper confusion
Message-ID: <avxnz4Nt1IufM6oM@intel.com>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
 <1b7a7d94-e349-4f3c-b973-c365041c15f2@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b7a7d94-e349-4f3c-b973-c365041c15f2@gmail.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_064236_305397_24FC77DE 
X-CRM114-Status: GOOD (  22.87  )
X-Spam-Score: -4.3 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 16, 2026 at 06:29:38PM +0100, Erwin Springer wrote:
> =

> Am 16.11.2026 um 10:11 schrieb Ville Syrjala:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > The weird uapi semantics of the atomic async flip support make it
> > really hard for drivers to implement. Try to fix that by filtering
> > out the no-op junk from the commit that userspace likes to put there.
> >
> > Also a lot of people are apparently confusing the
> > .atomic_async_{update,check}() hack with async flips. The two
> > are completely orthogonal, so try to clear up that mess by
> > renaming the hack to .atomic_bypass_{update,check}().
> >
> > TODO: atomic+async is in serious need to proper tests, somehow
> >        all that seems to have gotten skipped when the feature
> >        was added :(
> =

> thanks, this fixes the KWin case for me, so my patch is no longer
> needed..
> =

> tested on Raptor Lake-U (Iris Xe) with unmodified KWin 6.8.2 and a
> fullscreen client that requests tearing through wp_tearing_control_v1,
> without my patch. I applied the series to the CachyOS 7.3.4 kernel,
> the only conflicts were the renames in amdgpu and msm.
> =

> Before, none of about 350 frames per run was presented without vsync.
> With the series 3330 of 3336 frames tear over four runs (with and
> without CCS modifiers), and the "async flip not supported" message is
> gone. What is still rejected is the first flip after the modifier or
> format changed, once per run, as intended, and in three of the runs
> one commit that touches the cursor plane, which can't do async flips:
> =

>  =A0 [PLANE:146:cursor A] does not support async flips
> No warnings and no flip_done timeouts in the log.
> =

> If you think it fits, feel free to add:
> =

> Reported-by: Erwin Springer <aot.lerwin@gmail.com>
> Tested-by: Erwin Springer <aot.lerwin@gmail.com>

Thanks. There are quite a few unresolved issues left here
though, so we might want you patch as a short term fix.
I'll have to go read it with some actual thought...

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
