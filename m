Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67988CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Aug 2025 15:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkxlFGUyPoOb5V5jxdxFphgTMfQwZ2qxyGgHO9fiAZM=; b=hUq2x44hUfJhQW
	wS2Oq5kILc2MRstoEzHvtibJKdn01vM9FjTWG1iEoRY0peDtIHdkNYDjlh2Gn+u5mqLLHi6Ks0hOc
	lYQqAb5lRG1osxrXgm3RDgVX0th8+qGXUfkmtmVr1iPGt96d3XfpP6c2a9t39vrYvYiZosZCQR8ZL
	wGkQifiKuq51VKxkqwSjSTwM6ZVvP9UhZKvb6hYSTd24NBcaRhbTJm0eQr3Zyv0/4dI6QxpDkVIIj
	5ibz7cF2Vv0r854yapPz6CojmDgfhEa/Us5Hyn6SHYSz/MEUrImlh1petMBOtsGEZcJ7nzJZsZLPf
	+fonXxxKeF1u3TuPUaMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upTmS-0000000327G-3lWj;
	Fri, 22 Aug 2025 15:34:16 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upMPk-00000001qIz-0yCU;
	Fri, 22 Aug 2025 07:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1755848540; x=1787384540;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Y4Ju8Ubc+V678E//72dW9Gb7LL72XIy9O0AWP8HbfuI=;
  b=EisSpCkeE2QnIaiUg93sEmGM6zer5NXr8chbHFnGROUoQ+NbQOwj36rT
   MVWMsxsE6A738V3Gux4l2wkBVKNjRCSZY/tOX7Ob8t6U6yXehnrI5fxIU
   5MnJSK2UReJIjxoh2s53FZmoJSMmOc7IPEcKYBHTDQb4u0mkOty6C5PpG
   MEsTX8OxzzsSSRf41GXaDxNvQgZ0sfsxW3z1cOizOSyyRwCJu2hbZ5Jlr
   VvJC7qVB/nWsSPw6Zxw1GitJj+xgjjofmwQAnPEcOw+zbei+15Gf3smYa
   yJPu+dR97hU5B49ZVzTme1nFb5zhIjyT79GxB5kCDYuhKf3+fpsMJqoBQ
   Q==;
X-CSE-ConnectionGUID: AT1dOoiJQ+2HB9wT2AG0Ug==
X-CSE-MsgGUID: 6sm6YDnRQWOVkCRbNkgK+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="69524330"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; 
   d="scan'208";a="69524330"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Aug 2025 00:42:20 -0700
X-CSE-ConnectionGUID: B2tTkImKSMCALA9i2pukwg==
X-CSE-MsgGUID: MJ+xkVLBRmmCGp8LNMXqhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; 
   d="scan'208";a="173060037"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.245.244.97])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Aug 2025 00:42:17 -0700
Received: from kekkonen.localdomain (localhost [IPv6:::1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id 16336121F7B;
	Fri, 22 Aug 2025 10:42:14 +0300 (EEST)
Date: Fri, 22 Aug 2025 10:42:14 +0300
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Keke Li <keke.li@amlogic.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dan Scally <dan.scally@ideasonboard.com>,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 5/8] media: v4l2-common: Introduce v4l2-params.c
Message-ID: <aKgfVrbGGRuWS24i@kekkonen.localdomain>
References: <20250819-extensible-parameters-validation-v3-0-9dc008348b30@ideasonboard.com>
 <20250819-extensible-parameters-validation-v3-5-9dc008348b30@ideasonboard.com>
 <aKT4vz-XeTgSo125@kekkonen.localdomain>
 <bl4xncjiy3b777xdni7kb22hwxgm5sqrpd2jrctmdi2valtrec@zr2bfen5drx5>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bl4xncjiy3b777xdni7kb22hwxgm5sqrpd2jrctmdi2valtrec@zr2bfen5drx5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_004220_286971_F7CF6A84 
X-CRM114-Status: GOOD (  11.03  )
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

Hi Jacopo,

On Wed, Aug 20, 2025 at 09:11:06AM +0200, Jacopo Mondi wrote:
> Hi Sakari
> 
> On Wed, Aug 20, 2025 at 01:20:47AM +0300, Sakari Ailus wrote:
> > Hi Jacopo,
> >
> > In the subject:
> >
> > s/common/params/
> 
> I actually meant "media: v4l2-core:"

We've usually referred to the more specific part under
drivers/media/v4l2-core if a patch is touching just one of them, e.g.
v4l2-fwnode or v4l2-common.

-- 
Regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
