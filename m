Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D246D31A27
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 08:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Thv6V+rAdcReFQLw2NBnBXXpS99x8iS09mtI3nSltgs=; b=kA5GhWB/09lJ15
	KGXVuDBl7GLY2/R+S9D0f4eDmTTJVxiWm/xNK+513L7ns0eDRZsOLFfgUkXEtEnnkN6/Dgz0lpms2
	+OWiGBP93sy1jZOv/U3sjmIH32MRRDgwnyTTJQ7RXbKkB2g9f76R+qWDRb7N46EwDi0JsM9TEdy3O
	kbgORZYTfB8TuBsGDWbb/yc+E23XuexXRVbWWWpc6y/Zlw4PkEaQHQKVZyF4tVnj1tlcV6fiELCRR
	O56hFUQcImnp78R9hPxVaoVLaXCidfxQ4pKXxf9jhXtJA2ped1Ol6epYyvLvMeZGMqjWIp61loX1k
	Kh7ZEpGPqVEeA6yfDzEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwAd-00000008K9a-1Iyv;
	Wed, 14 Jan 2026 08:24:03 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwAZ-00000008K8F-2zTP;
	Wed, 14 Jan 2026 08:24:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768379040; x=1799915040;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=TpSIK25RbvWDNg7QiWIOtxQKPzkkGQzeiPPfyvIi0gk=;
  b=g+LDosqMgXqI7uaIaZhjqLhXC4FdDirifXXYbS2+8Y4qxZ9duevkPIdt
   e0VZXly5X2MAul2toIDmhIimwd9EGyqV0GTG58UiIkBL6umOzNvIA0BYZ
   j8qU6X73nvHRYqnyLJZQC4v8KIzzzONHuisMB4CaexiTnH4XWu/AvghY+
   M7tyV1Kip3u49sH4AHwyZ31se1lEXYh+9iMA3L5tdwUMOrkRKWAOmwCcH
   3IiWfc/3ughwMJsGfZoO5A9AxZAS/efh7ZLLs97RVBpgtBxjz4kKmIPkH
   8Rx5nod5a3pqO+xFenUwzb8oNCnl6H5Uqiba5D9Fqnp9po+RvWaHKRcQH
   A==;
X-CSE-ConnectionGUID: KseNro3xRF6l64WxT55mbA==
X-CSE-MsgGUID: N++AtQT/Sm2/Zmu2FvyhaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="73309097"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="73309097"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:23:58 -0800
X-CSE-ConnectionGUID: g2NXVMXRT7+6Jm3R7rO9aA==
X-CSE-MsgGUID: pmU4TLcgSYmvaqOcW2kQ5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="235333811"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:23:54 -0800
Date: Wed, 14 Jan 2026 10:23:51 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Andi Shyti <andi@smida.it>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Qianfeng Rong <rongqianfeng@vivo.com>, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Khalil Blaiech <kblaiech@nvidia.com>,
	Asmaa Mnebhi <asmaa@nvidia.com>, Qii Wang <qii.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Linus Walleij <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v1 0/7] i2c: busses: Introduce and use HZ_PER_GHZ
Message-ID: <aWdSlzLuU_psG_EV@smile.fi.intel.com>
References: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com>
 <aWdHRszwPfcniL1q@zenone.zhora.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aWdHRszwPfcniL1q@zenone.zhora.eu>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_002359_853131_3E565E63 
X-CRM114-Status: UNSURE (   8.22  )
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

On Wed, Jan 14, 2026 at 08:36:09AM +0100, Andi Shyti wrote:
> > Andy Shevchenko (7):
> >   units: Add HZ_PER_GHZ
> >   i2c: mlxbf: Use HZ_PER_GHZ constant instead of custom one
> >   i2c: mt65xx: Use HZ_PER_GHZ constant instead of plain number
> >   i2c: nomadik: Use HZ_PER_GHZ constant instead of plain number
> >   i2c: rk3x: Use HZ_PER_GHZ constant instead of plain number
> >   i2c: st: Use HZ_PER_GHZ constant instead of plain number
> >   i2c: synquacer: Use HZ_PER_GHZ constant instead of plain number
> 
> merged to i2c/i2c-host.

Thank you!

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
