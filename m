Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82B60C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 11:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1dvU+bCiNIGTWFhsGC85g8VmPkE+w2FgxGG1WUlLXc=; b=fCrqrORLoTWg0k
	/r5/nY5Fkx1HjKV1v0nUC14HtP/zwvLkHOOUjZ6TlCoMLeamomj6Xe4CTnbnePzXM8eTstsip4vy7
	rrEIBqVTvSmF3iiToKE2eEysXe2WTj9xQ+3zOiMG4O5GxIc5BAtIYXjpAMiCpkmNvgyIHIGAFYD/1
	n14krZ4+ehaaQmOCl6SsCcTUzPk314/vs8YB0zu/wP2S/YOx4aQeJuVKoJwDeDmxm6IEiyJOPm2dN
	0gn966P8GB8KW7RB12gl0E4uEy6XiHVAMt+mjGkkYFCd/p5j3tOb1Y5+tWgIgYjm+TejeiYL1HTlY
	RzIa1yueaqvE8mNFBBTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxSIQ-000UPG-4R; Wed, 15 Dec 2021 11:18:06 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxS4y-000Ndv-Rw; Wed, 15 Dec 2021 11:04:14 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="219886344"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="219886344"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 03:04:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="465553346"
Received: from adalyx-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.7.70])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 03:04:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, Thomas
 Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v2 3/5] drm/dp: Move DisplayPort helpers into separate
 helper module
In-Reply-To: <20211215104318.18866-4-tzimmermann@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211215104318.18866-1-tzimmermann@suse.de>
 <20211215104318.18866-4-tzimmermann@suse.de>
Date: Wed, 15 Dec 2021 13:04:00 +0200
Message-ID: <87pmpy3za7.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_030412_975141_BF879EB8 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 15 Dec 2021, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> 	* move DP helper code into dp/ (Jani)

I suggested adding the subdirectory, but I'm going to bikeshed the name,
which I didn't suggest.

$ find drivers/gpu/drm -mindepth 1 -maxdepth 1 -type d | wc -l
68

Assuming we move more of the drm modules to subdirectories, how are they
going to stand out from drivers?

I suggested drm_dp, which I understand results in tautology, but hey,
all the filenames under drm/ also have drm_*.[ch]. And I find that very
useful for git greps and other code archeology. With just the dp name,
you'd have to know and list all the drm subdirectories when looking up
stuff that's part of drm but not drivers.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
