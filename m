Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 288F0C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 10:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBcS9BmWbz2aaRlE18IG9gC64hWoNEd1eU9lJ3ok3qM=; b=UhLNCs0C1/FzdO
	rWHJtnBLxozBwQWAd+qX7eUpyxlCtfA0cNllDsZB7ycnXHCULqSiy5KbIw5pT7DI5osLe/rxttzJi
	MzoE8N+VbTEbRbMSqMZh4GoidxMqrS/u6iRrqSJ5NSfN+zZ7o1RcZuHQ0b8v7rhMg5K9T25SZUISv
	3gp+xkWpRe+qZPTOdi5F4rw+8DySEsvYdLWE+szLJ8NUd9mdQtUpL/9FHOJ4CyaKc8pLB44EZDWHC
	XeyUa8BMoNbiSp+o2wrUK8daN3fySCxkp/u3Gw3yHSip2Xo7rC1+GakodowainzXOjQTiJVIcDXwF
	hyI/MX4sYmK/71fCm9jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HlP-007obX-0g;
	Wed, 29 Nov 2023 10:25:51 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HlM-007ob6-2h;
	Wed, 29 Nov 2023 10:25:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1701253548; x=1732789548;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=PAI5mu2vOQLNfBq6uCf/1RnujVA0d7SiwZnOV/K8ThI=;
  b=dWNDJGRRN8O2nNvdAtJQjKdmwROkxF0X0k2KRcW14mdkyA9jUXiTbsSg
   xDXH5SNhK5a/TH/s3t/EUh/cP7hzOUrFxNHZQQYPpN2xQ7jDACv6BSiSq
   +FRadiL173SjQscF2pjXuELk16EIsXmcADEuH6bMU3Ue8MZMwj8slOHtt
   9EeJUOLVcTJOnWWGcXpFBJS8O6DB5HByszXOsMNC4NKgS9w/zJ98k19qc
   mvB4lUqReXcpSgXaVR5iLPMRpbQiQgfGPXuO0Hjf7sqDfVoOmw9RfRZI/
   mm4F2XxOXplXn+bF6SIHUcJSIPl6rupctTkxrSmcLi2joABqFu+W8s/vq
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="121917"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="121917"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Nov 2023 02:25:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="762269751"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="762269751"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga007.jf.intel.com with SMTP; 29 Nov 2023 02:25:38 -0800
Received: by stinkbox (sSMTP sendmail emulation); Wed, 29 Nov 2023 12:25:37 +0200
Date: Wed, 29 Nov 2023 12:25:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Maxime Ripard <mripard@kernel.org>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>,
	linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-doc@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
	linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
Message-ID: <ZWcRoTJ9VgOqZ3ts@intel.com>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
 <87h6l66nth.fsf@intel.com>
 <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
 <ZWXv1Oi_sH0BRWao@intel.com>
 <20231129121259.47746996@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231129121259.47746996@eldfell>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_022548_913948_26134174 
X-CRM114-Status: GOOD (  14.33  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Nov 29, 2023 at 12:12:59PM +0200, Pekka Paalanen wrote:
> On Tue, 28 Nov 2023 15:49:08 +0200
> Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> wrote:
> =

> > Should we perhaps start to use the (arguably hideous)
> >  - void f(struct foo *bar)
> >  + void f(struct foo bar[static 1])
> > syntax to tell the compiler we don't accept NULL pointers?
> > =

> > Hmm. Apparently that has the same problem as using any
> > other kind of array syntax in the prototype. That is,
> > the compiler demands to know the definition of 'struct foo'
> > even though we're passing in effectively a pointer. Sigh.
> =

> =

> __attribute__((nonnull)) ?

I guess that would work, though the syntax is horrible when
you need to flag specific arguments.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
