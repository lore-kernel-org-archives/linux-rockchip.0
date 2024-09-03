Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58207CD3448
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzwwYogy3uH/4cu9STI2GHtfGlo6xN4EP7LfUQCHY3s=; b=ZECNQ8Vl0oYzap
	GA3c1YsV9lXLBxNSYyxGeJB3Z3OxOnBv3eE+aIOHVN2x4YevRxU4aAINCWpBFoR/3We1eXIBvQLZZ
	8e1oEe7K/BtUQR83lvDT0DzZzBkAZAsmsx5+jDHGaxubfpaWS1SUn5nnsDVsyj4xeyYASOWoY7YAE
	2SHQWBL1DSkOOd1/6XEclsD9V8fQeTeSJNPrnF7BmUEcMcagkzDv2ZF7bJNx2aA/JF/3G5D/bJfih
	zGF3UghEYsem3jR3BUYghXQSsDEvb/tZk1nbaKpvGdXivcMvsc5LJdIN4rBK6ULLtFp4jnGiBS4sY
	GzBiLOFGA0ejA6V8f9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWHo-000000014kL-3Tlg;
	Tue, 03 Sep 2024 16:21:44 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW3i-000000011Cm-3ieY;
	Tue, 03 Sep 2024 16:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725379631; x=1756915631;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jcwL3wXQmF/0n6wIcun46qKYmsnJHtE2TCTE9mp4RGU=;
  b=YKJc6pBt5EZdm4eec8A/uNOJ7QL84jY2wfWC5P4FGnyil/Pan45kqMeH
   6ncxp9QCKp1dzE+17eHYoIMEpW580dWmLnYfrauycW56Rk/EbUBfxrGwS
   aCDOX1dMMSn8k/uATcMgIbFptqXBDeIJbGtc39Aa0OKv/SFerg7pMdHBG
   eGqj5L2PMiJwRE3rlkfIsrx3X0BFyLE/cI7izCKZWwfOUDkT64ivIRyLQ
   Srv8EGKnHQ+RVOLz7fUNQWTNtd37P6drYLbaUydG4RJUftEwk+6LOpByc
   0uo7bUXohxeMlpzd4826cyLHzzScf1/JZYXv8nLIdVpDU9JX+bnhZKJXL
   g==;
X-CSE-ConnectionGUID: SfUR5GQ6TPavsjiW9qqkrw==
X-CSE-MsgGUID: b9/2duTwRhmXZNm7FEiSmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="46516599"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="46516599"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:07:10 -0700
X-CSE-ConnectionGUID: iEc3CUm7QImXojrv9JBSRA==
X-CSE-MsgGUID: ydNiDzDwTJevfd7p22mbwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="69819978"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:07:07 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slW3c-00000004lO5-1FEs;
	Tue, 03 Sep 2024 19:07:04 +0300
Date: Tue, 3 Sep 2024 19:07:04 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 10/12] gpio: rockchip: support new version gpio
Message-ID: <Ztc0KNxleCCroE2C@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-11-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-11-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_090710_996455_93BDA77E 
X-CRM114-Status: UNSURE (   7.66  )
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

On Tue, Sep 03, 2024 at 03:36:47PM +0800, Ye Zhang wrote:
> The next version gpio controller on SoCs like rk3576 which support four

GPIO

> OS operation and four interrupts

operations ?

Also missing period at the end.

...

What does this all mean?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
