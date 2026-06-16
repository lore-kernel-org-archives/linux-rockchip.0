Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56995CD98CF
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 08:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chWz9TWHnjyGhx1VdqzyNhQ8ahKFTqW4U8TXtL/GDAQ=; b=Spak0MeBZOAXYb
	uC9166bf8FYRc4V7QvbiyoH2p8gVD4tZ4/QxUwOdnPP4BA2BpYqujEFSjzsODyk18r5f54hB33kaj
	NrOW+/tIB0nl0D2SitK7ogDbpsGE3xOz4pfbmwj2edPE1fD498GaDFFEafD1nIWkOy/XTYdd5G6ey
	vCQyyGf3Sshkg2DoC8tQYIBncrXwxP7L9Bd0ubVNXOK9MCuTzv9jGWQ+KjpGU13lpivIXkvvBo+M6
	LdNxJTCQwFX3e+IGIp5xYPl4Rg9D7liKymtdrzgRRsIkvdSmwSBsq8pZSkUFCYNuxUIBajUFFbvBP
	MbkEWRg6KIMrRWDqPXJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZPYG-0000000FUFT-3arw;
	Tue, 16 Jun 2026 08:53:44 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZPYE-0000000FUF9-3K9d
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 08:53:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781600023; x=1813136023;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4eXl+6BMV54atctUJAn+UMP+d/Cq5vNngv4WweukLZU=;
  b=SIVKJKV6bB8PwYH1RuNpM70GNOSjhI3lY5JpThpIuJtRjjC6lUFDq3xA
   tCf21ooiU+HNfGxC29MxwUSM8jllEtyOYOpKXpRQjgqRwAlQqNrwapn0A
   Yhy4VRQfsJWkgW7SrNe6PyEjTMq0FRDZkXnoXg5hts6BOWytvTy8kdjyt
   ielr4hVFFgLTJNxZ26fWXon/W3Q3H8M6SJHHXr/KvUiEyeJctzWVhTNZ9
   Jg3n7ZAo2omEwOj7mdylWw6K+WYLsvKyUuqPFQyxA3eSn7yMqbGM6nT7L
   zNK6EjFrWHD8j6MiylAG+mOyjWLRjIOYDkhprz+YrsQ1ABGEsi/dqC9j2
   g==;
X-CSE-ConnectionGUID: v6OkMhQQSA609OQJBTvpEw==
X-CSE-MsgGUID: YvJmcIDtSAu/CKXLUnF5Wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82403059"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="82403059"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 01:53:41 -0700
X-CSE-ConnectionGUID: 4ynVvdJ8Rce3uTVbQCrshg==
X-CSE-MsgGUID: DKnibsVeRWWvQYqSwE2Jug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="247775232"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 01:53:38 -0700
Date: Tue, 16 Jun 2026 11:53:35 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V13 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <ajEPD8gdgiuQdZ7Q@ashevche-desk.local>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
 <20260615172554.160910-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260615172554.160910-4-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_015342_844693_E27BD081 
X-CRM114-Status: UNSURE (   8.66  )
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

On Mon, Jun 15, 2026 at 12:25:46PM -0500, Chris Morgan wrote:

> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file, as well as the bits necessary to compile and probe the
> device when used on an i2c bus.

...

> +#ifndef INV_ICM42607_H_
> +#define INV_ICM42607_H_
> +
> +#include <linux/bits.h>
> +#include <linux/iio/iio.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/time.h>
> +#include <linux/types.h>

+ asm/byteorder.h // cpu_to_le16()

...

> +#include <linux/bitfield.h>
> +#include <linux/dev_printk.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +
> +

Single blank line is enough.

> +#include "inv_icm42607.h"

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
