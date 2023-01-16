Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6189CC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 16:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhCaAm/leQ5uWwSan6L9reTxbtZPR/mzGq22ysqnN0g=; b=D8FsRYQiXvnodo
	zRdRLtre8rpvV764PgLSZ2qmaelrlswvO5YQyy4vZu9tUNGdSAX8u9MWdgpQP8RRv9zUhZDkqOHlk
	vSKqwJbUuBgW6DoLPirf9T6kRhR7VT/iWw/cpTNF9gl5HTC9+hi9oZzCPz/pSDCxEDkFe/Dgm3itg
	tMYCsnng9GKV9KGdaDPoYVE739lgbYTEJkhf+oS52ipfaAyJIFZRiy9g/jJz3iYuBI6hQCjXnoMHw
	34r+Q7hvC/yPaAnXY6xlTweiJDSC/h2zwoEV6YwwdfEVwwVnyCV0669kWR8jTyx1fJh8B82mntNpt
	57hIv7Lscg8wApfQo7Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHSHO-00BKqe-4u; Mon, 16 Jan 2023 16:24:14 +0000
Received: from mga14.intel.com ([192.55.52.115])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHSDP-00BIwE-14; Mon, 16 Jan 2023 16:20:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1673886006; x=1705422006;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=3kP3+Z/fGb1HUUCGydhyc9dGWiwyXHQhkXAlft+qAzY=;
  b=EAD+vRY3IIL6peAJ5Jt4gspTfnSGVRZdnf0dgKpzHCmSs5GgNALP7+oQ
   EmWxCyfJNQZxnC4Xyvh3dlGBJlAF59txQZkakB0BsKSihzLwtTt3CC45e
   B5G/8EXUkjITlsqHjww2Uh2zQtFIgFRQTkS7/sUGIVkO7zbsOqQvrFhTL
   Q0nt37UyDfXOLH5fw+NWEmSfRt4jp1v2pqZufcNpYIKMg2y29XWNbPWA0
   CIrA0sTQExHgaGAJDgA4YBJ0Oz54O6z6O2/h6I79IisCVojukWruQCVsp
   /MnSBoe8NMhnfVXLmVGpo1yR2k07Wypra3vekn+O1FnDPHgI7JJoDHa+b
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="324558187"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; 
   d="scan'208";a="324558187"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2023 08:20:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="766952438"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; 
   d="scan'208";a="766952438"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost) ([10.252.13.137])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2023 08:19:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, sam@ravnborg.org,
 daniel@ffwll.ch, airlied@gmail.com
Cc: linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org,
 linux-mips@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 00/22] drm: Remove includes for drm_crtc_helper.h
In-Reply-To: <20230116131235.18917-1-tzimmermann@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230116131235.18917-1-tzimmermann@suse.de>
Date: Mon, 16 Jan 2023 18:19:56 +0200
Message-ID: <87k01me9jn.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_082007_176298_FD667572 
X-CRM114-Status: GOOD (  10.69  )
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

On Mon, 16 Jan 2023, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> A lot of source files include drm_crtc_helper.h for its contained
> include statements. This leads to excessive compile-time dependencies.
>
> Where possible, remove the include statements for drm_crtc_helper.h
> and include the required source files directly. Also remove the
> include statements from drm_crtc_helper.h itself, which doesn't need
> most of them.
>
> I built this patchset on x86-64, aarch64 and arm. Hopefully I found
> all include dependencies.

I think this is the right direction and I support this. Personally I
think it's enough to build test and fix any fallout afterwards.

To that end, I did build test this myself with my config, and it was
fine, though that probably doesn't add much coverage.

FWIW,

Acked-by: Jani Nikula <jani.nikula@intel.com>


-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
