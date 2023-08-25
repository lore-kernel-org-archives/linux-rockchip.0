Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57514C3DA66
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 17:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rH26er857K/VAChY1c+dwdMSUAW7Wh7HS+tjXcVtUoM=; b=UVwVtNdS+COhxE
	eqjGXezHQhzbW6Zp2czeXywDYVI2AAWh+ig3PqtpEG1GYS5f/n/X2uXgodt86yL0Q3T05Z+81UoKA
	qcs0y8eCYVJnQM/6idN5U8pI2dRjfljJlaNaBxwPNh1fUiHe34J01z3HBnmOMWW+emHaYFtVONT0/
	DjqVb3GjPWwdFdvQsXVKjsrPanRBK//BLb+7z2eIGHWtHJDZRY4aPkfc/FFgys5S1/ptmr+Jnvu4V
	Vo7I/i8AGYjGpL1FKj3VM+FKSjWcPScqDxrVv5YLilymcafcBmk1hwzCzloNUN4YZJHJDw301AS3i
	HKhQhLy53Og6hgWg140w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZaxH-005olz-0y;
	Fri, 25 Aug 2023 17:50:43 +0000
Received: from mgamail.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZaxE-005okV-1l;
	Fri, 25 Aug 2023 17:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1692985840; x=1724521840;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=MNxhxZVgxztKuNKuvsL0AzLilS4KbqaTek8IWrU+J20=;
  b=UoRrkXAlXZV8JJJljaTYWx59S4VDJ4gzC39s8KbH80K/RTcwu8bnyfqh
   PPkIRjP70AX17Nw3KNsoMPOGC15BoBBIYOiCV2PkdQgylwx4hn7r9enMc
   rkZn0+z3oG+4xlaNmwG30POH9ehhWYK9Qs+omKO8IMcREeBujLqpos1Qk
   y1hq3N3iUMJM6og2o+4W8h/oKEE1yCbj/lgCpj5edo+PHTluivkxOum/e
   xeI+6O1qSz2yElMAwHpaltjM/axieCCBZeWddmAFtFkWnvTlzNQC/tmHc
   j+GUfxfOqrgcg/3VeIGdZpQ8aBs4BT6pazZiLIrFQeEYu9VwMvRbGQkLD
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="378547676"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; 
   d="scan'208";a="378547676"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2023 10:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="807617356"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; 
   d="scan'208";a="807617356"
Received: from semenova-mobl1.ccr.corp.intel.com (HELO localhost) ([10.252.46.222])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2023 10:50:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Helen Mae Koike Fornazier <helen.koike@collabora.com>
Cc: Vignesh Raman <vignesh.raman@collabora.com>,
 dri-devel@lists.freedesktop.org, emma@anholt.net,
 linux-doc@vger.kernel.org, david.heidelberg@collabora.com,
 linux-amlogic@lists.infradead.org, jbrunet@baylibre.com,
 robdclark@google.com, corbet@lwn.net, khilman@baylibre.com,
 sergi.blanch.torne@collabora.com, gustavo.padovan@collabora.com,
 linux-rockchip@lists.infradead.org, daniels@collabora.com,
 martin.blumenstingl@googlemail.com, robclark@freedesktop.org,
 anholt@google.com, linux-mediatek@lists.infradead.org, mripard@kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 angelogioacchino.delregno@collabora.com, neil.armstrong@linaro.org,
 guilherme.gallo@collabora.com, linux-kernel@vger.kernel.org,
 tzimmermann@suse.de
Subject: Re: [PATCH 2/6] drm: ci: Force  db410c to host mode
In-Reply-To: <29c7-64e8b600-1-6afffd8@162524228>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <29c7-64e8b600-1-6afffd8@162524228>
Date: Fri, 25 Aug 2023 20:50:26 +0300
Message-ID: <87msyf2eql.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_105040_624480_B5618A57 
X-CRM114-Status: UNSURE (   6.18  )
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

On Fri, 25 Aug 2023, "Helen Mae Koike Fornazier" <helen.koike@collabora.com> wrote:
> I'm not sure I get what do you call out-of-tree builds.

Using 'make O=dir' (see make help) to separate source and and output
directories.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
