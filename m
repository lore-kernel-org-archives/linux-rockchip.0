Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DE3C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 13:01:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E12DB239FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 13:01:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E12DB239FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YYQ32Lw4S7nxW5CFWlpyP1BVNp6K8W2XF7z1jfAvIhA=; b=RzRcOm8W78JzHMAKGngKBy+PR
	T1RevG2kmWnqhNloiLAsetLjyKAMhF25WKrzGCKCGKD+swtmZrFmJbhdeDu2R0biTRpSOoibQDZpX
	4d6o515wGqGyv/lceoThQzcx/vN9RX50OMTrJPBBntG0NBbHg9IpQYhO88WVHK1iYxcXbMblXPVDL
	e/wLb1P/2YHmW+G8lFuDb7PGimbvUfLO6LKHW4Hte/yxBr1BRKh/csV/4Tyk8gl0vSfPLCWKEJ9Aj
	khdHgjJ7D3xioZN84HPR0vYTM06iUGVnCETuf2FK+EN7CFYpWXhB/PrySCPh0dlijzcAhwdz6NShA
	ic+NF+Akg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2Zax-0004Fn-PJ; Thu, 21 Jan 2021 13:01:51 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Zav-0004F2-Ep
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 13:01:50 +0000
IronPort-SDR: GHKBUdkcU/NfYgnvSCWgDiH8sc+nB6Dybz/00uQ3ooBGywF9Ak++XiVjPTDhDOz1HdiKf3sohf
 azadamPEX8Ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="166361194"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="166361194"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 05:01:24 -0800
IronPort-SDR: 1eUyjMpjjryq+aukYze5uL3uJ5Kay2XMhajOfVuAbdlz7kCnKPmu/ExS5hHpgm0T7kobS4P/mu
 +Qyn6KoQSRDQ==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="347904719"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 05:01:21 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id EF5E72067A; Thu, 21 Jan 2021 15:01:18 +0200 (EET)
Date: Thu, 21 Jan 2021 15:01:18 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v7 1/5] media: rkisp1: uapi: change hist_bins array type
 from __u16 to __u32
Message-ID: <20210121130118.GC6234@paasikivi.fi.intel.com>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
 <20210120164446.1220-2-dafna.hirschfeld@collabora.com>
 <20210120213207.GN11878@paasikivi.fi.intel.com>
 <12823703-5a32-f08a-5b4d-3a5ead231b33@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12823703-5a32-f08a-5b4d-3a5ead231b33@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_080149_662959_66F7668C 
X-CRM114-Status: GOOD (  20.28  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: mchehab@kernel.org, heiko@sntech.de, heiko.stuebner@theobroma-systems.com,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On Thu, Jan 21, 2021 at 01:48:58PM +0100, Dafna Hirschfeld wrote:
> 
> 
> Am 20.01.21 um 22:32 schrieb Sakari Ailus:
> > Hi Dafna,
> > 
> > Thanks for the update.
> > 
> > On Wed, Jan 20, 2021 at 05:44:42PM +0100, Dafna Hirschfeld wrote:
> > > Each entry in the array is a 20 bits value composed of 16
> > > bits unsigned integer and 4 bits fractional part. So the
> > > type should change to __u32.
> > > In addition add a documentation of how the measurements
> > > are done.
> > 
> > The commit message lines wrap at 74, under 60 is not much.
> > 
> > > 
> > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > 
> > Should there be a Fixes: line? The patch is changing UAPI...
> > 
> > The file has been recently introduced. Should it go to fixes or to a stable
> > kernel, too?
> 
> The file was in the staging directory and will be first destaged in the coming 5.11,
> so I don't think this is necessary.

You still probably want to avoid making the uAPI change after 5.11, so
the fixes branch would be the right target I presume.

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
