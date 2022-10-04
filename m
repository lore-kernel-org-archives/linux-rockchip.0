Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99007C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 08:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRAXDfd/+5rki1Yc/B4vFc4mD69ADvtFePP+HEkbdLU=; b=Lho4xw4sFEjrIK
	mFHMv++t5MfSjrJtL154ras9STzGiFPlcjkz40DawyJr5jLQU8J9qqhoH2WnHEabNsLReoFAVR6L4
	YfJudYSzi/ZQ0wNV2EFikjJwE6JX7puVDuV9waKGLmutlNTbO+oYRHVd33RFa8FyywhiEUh318Xa+
	rwu6rqeUTG17DRJe2twIkoKPZ79IOPdJHkX72f8imDSYdou6W4HY0cyFFL6v8TUyUEod+9+drCau8
	Np8r1G24fm/R5xlRP9mRG9xYcZgvkAyFvZ5Auc3xSMnsZh6H6R5pmy7zqu28cxQt12Lvz4SW/J8t3
	vnKFBaf7GseSdg5pikoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofdKC-008wry-6m; Tue, 04 Oct 2022 08:30:48 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofdJy-008woD-Tu
	for linux-rockchip@lists.infradead.org; Tue, 04 Oct 2022 08:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1664872234; x=1696408234;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/nfxLdpiC4/RfgY4eKM8WxFHoE/HVrk9JXVxhD/K2Os=;
  b=XMGouvizoeTT9Z6zbj4MDeUlekpZb4serOEaGmVnkzNO+pAwHYIJuQ+v
   NOkZXV9GGPMk/CmwAQaJ4/1XDbiO8q6v7YovcOC/38AqBt1hnlAjh5CsQ
   39q6Bm1yhJKzDQzL/z5E+mWfao0GY0P/ldE0Z4HibGO0FAINSMoTlpYM5
   4FCZq1GeNb9lrudiQbAIc9WJK9RKeChkahCWo/Xzx05kgjDontB7z7kpu
   GZ0j8ur044Ahmg8N8tG72YAzs1+GaaFCb6SBxx2G706My4Ad6a3zqPIEX
   s9CJJVK0dyyihRcU9ngg1cz0kYuGeKjQefB3qWQzbNvAx83AdNWxis3FJ
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="364755779"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; 
   d="scan'208";a="364755779"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2022 01:30:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="728134367"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; 
   d="scan'208";a="728134367"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2022 01:30:20 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1ofdJi-001yIe-0g;
	Tue, 04 Oct 2022 11:30:18 +0300
Date: Tue, 4 Oct 2022 11:30:17 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Jianqun Xu <jay.xu@rock-chips.com>, heiko@sntech.de, brgl@bgdev.pl,
	robert.moore@intel.com, robh@kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	lenb@kernel.org, rafael@kernel.org
Subject: Re: [PATCH 11/20] gpio/rockchip: add of_node for gpiochip
Message-ID: <YzvvGValqxfIriGL@smile.fi.intel.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
 <20220920103108.23074-12-jay.xu@rock-chips.com>
 <CACRpkdZSCamhBD-M8CkZt6B3N9c2Jo_D3kwgOykj8+VJ_otYGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZSCamhBD-M8CkZt6B3N9c2Jo_D3kwgOykj8+VJ_otYGQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_013044_879778_47E6CC2A 
X-CRM114-Status: GOOD (  13.05  )
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

On Tue, Oct 04, 2022 at 09:14:38AM +0200, Linus Walleij wrote:
> On Tue, Sep 20, 2022 at 12:31 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> > The Rockchip GPIO driver will probe before pinctrl and has no parent dt
> > node, lack of the of_node will cause the driver probe failure.
> >
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> 
> > +#ifdef CONFIG_OF_GPIO
> > +       gc->of_node = of_node_get(bank->dev->of_node);
> > +#endif
> 
> Any introduction of of_node_get() needs to be balanced with a
> corresponding of_node_put().

No, this code should not have been existed in the first place. We don't allow
anymore any of of_node usage in the GPIO drivers. There is an fwnode and parent
and logic to retrieve fwnode from parent in the GPIO library for the most of
the cases.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
