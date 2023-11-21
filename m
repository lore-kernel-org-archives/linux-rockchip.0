Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4011EC61D88
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Nov 2023 08:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bt3OGq/uLjJ2YsmWcvCSmVYMeZzIU3Tt1nlwffLnuI=; b=El0d7vXlLtjLEN
	Yb7iBgHiTzxiL9RLXt2F8gcus2qBvNMY1Mcp32M4VFQ/40ZFKaSk96Pq6gQxKFC95n8n0FDY2QUHC
	CUz8tgx7JtZPvrbaRvIDeHXdfFvauFu8am35vxGBCX1Alnf/mN5qQsm8etppPO6jdZnxiIpAhdjt3
	LZ+27x9plO0jOXKKJAwfiNDJahip4O5i9AXhj7oUL/flWwJFZ5iAnzV6V2Z0f67QHM9KiTwhOyTyn
	+KgCeFnUwLvCMusqyoehWxIIPFm+eXBzdK2DpYjNAJhFMuDBhTkN2zjh8hNoA0XET+1SslF7ZduI6
	+v60L5QJbDMweQc5I9uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5Maa-00G3p5-2H;
	Tue, 21 Nov 2023 08:58:36 +0000
Received: from mgamail.intel.com ([134.134.136.31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5MaW-00G3mn-3C;
	Tue, 21 Nov 2023 08:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1700557111; x=1732093111;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=htt+X8f+FjchoXwuJTnW2vNFwbgd57Lg5mit0MjBw8w=;
  b=dPxal1Du0rnvFmc9rxdGCPCdoEdiIg9WIcSEye/QnHVIOTCIX2rYSSrx
   9RdQCmlHFcG6fT1b64siZpX8YArD+kWvnV64Fg0GqALQLnwhMDifWn9BI
   sVe3L9TAiqHXYWdtIzJIsFC4X8PNF7UT9cCFfj5HuPln8CYG8hfs0eJul
   HOlaBv5Wn4cs/NbL4y8Ya2anp17SIexd3C9OOVJYiddpX9vhoJjbw0xEg
   ZnAfDhL2XwMdqeRX6C7Adfg/VxN4jR4n9ykSNu9Q4+ovFOQld7p7VYsnX
   Nn8iQ4K1Fc8gyhmnuDBLyREbB6BnW9E8XuynewmSf3oq2tqKTZDgkvR97
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="456132999"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; 
   d="scan'208";a="456132999"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2023 00:58:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="890195495"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; 
   d="scan'208";a="890195495"
Received: from cdeakx-mobl.amr.corp.intel.com (HELO localhost) ([10.252.58.54])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2023 00:58:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Heiner Kallweit <hkallweit1@gmail.com>, Wolfram Sang <wsa@kernel.org>,
 intel-gfx@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, Yongqin
 Liu <yongqin.liu@linaro.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Sumit Semwal
 <sumit.semwal@linaro.org>, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Xinwei Kong
 <kong.kongxinwei@hisilicon.com>, linux-sunxi@lists.linux.dev, Jonas
 Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jocelyn Falempe <jfalempe@redhat.com>, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, John
 Stultz <jstultz@google.com>, Heiner Kallweit <hkallweit1@gmail.com>,
 freedreno@lists.freedesktop.org, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>
Subject: Re: [Intel-gfx] [PATCH v4 00/20] remove I2C_CLASS_DDC support
In-Reply-To: <20231120214624.9378-1-hkallweit1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231120214624.9378-1-hkallweit1@gmail.com>
Date: Tue, 21 Nov 2023 10:58:20 +0200
Message-ID: <87h6lfo53n.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_005833_088040_3377D754 
X-CRM114-Status: UNSURE (   5.12  )
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

On Mon, 20 Nov 2023, Heiner Kallweit <hkallweit1@gmail.com> wrote:
> v4:
> - more ack and review tags

Please do not send new versions just to record the acks and
reviews. They should be added while applying the patches.

Thanks,
Jani.

-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
