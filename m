Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36C58C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 11:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/pXIZ1VZKXsdUemUk/lcCBuxt7bH2Y0tgX78jvFaXU=; b=EUql3ntwaUQih3
	//g531IomzKBbNMq7beVOpJNensfSW3PX12gN6lhdQwu0QqTmgjm0n0gxfUYIJYoKHXYObPAw+bB0
	37A1DMUlqinB8kz0Hl7/WZHTJQEvVKV0jykkp+yDifPMn8V6vqzhEFYZVR7ODVhSMPODUueMCMyDy
	PmaicpBxms+0oeLNVc+FwXMP6uwXXCuxvKCGEXSWP0iYXXo2LTGsvWuUWJ5w/XlyD7/1iMhUQQhcf
	igfOLuHhyramR0Ywr+4M6/rYv288XYR8B4rGwa4pQFkdluAqNi9iVtP3K1lTOK/UYdMMmITx0ug+a
	aKl33Zz4C+fk65Ubx0sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHku9-00HQUx-EM; Wed, 09 Feb 2022 11:12:57 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHku6-00HQUL-Jp; Wed, 09 Feb 2022 11:12:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644405174; x=1675941174;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uZij4IDv+vUY5n09X0g+EIbDNmB2ib4d4JtdcfO9h7Q=;
 b=jSo3a7SGUqMPSG4DdoX969Vm3BGlyynvSmM7bnVoAJjXLmRGZ0t1F5ji
 EsAwdPvwxsbzwgWfNac+2LfD8bz9pyUa9IATQdCZL0BLuEFdGV0itO/N7
 i3nx9xCtPUpVW7RRUcv0aX2Ct2GfexbHgzHQRrjm+otUD+l6UAZ9rc5vD
 PalMkCCUKdlX6TH3q0ntwMR2VtpKs65t2jZmztD/JcmqctLqMzokhw6/Z
 +smK97DBIzmqiEd5j2uHBM3ed0i2/iaTiO6mIzA2oferh1GCYwy/e/CCe
 MZfv8ZZrfcSlw8bIQXOcJAx4M9xwiFKc5YhR2YtYSz2V55bTqtJtYdIWW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249387897"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="249387897"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 03:12:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="541049566"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 03:12:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, David Airlie <airlied@linux.ie>
Cc: devicetree@vger.kernel.org, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Peter Geis <pgwipeout@gmail.com>, Sandy
 Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Michael Riesch
 <michael.riesch@wolfvision.net>, kernel@pengutronix.de, Andy Yan
 <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 01/23] drm/encoder: Add of_graph port to struct
 drm_encoder
In-Reply-To: <20220209100736.GV18637@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-2-s.hauer@pengutronix.de>
 <20220209100736.GV18637@pengutronix.de>
Date: Wed, 09 Feb 2022 13:12:45 +0200
Message-ID: <87fsospa36.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_031254_698349_9F0D3161 
X-CRM114-Status: GOOD (  22.76  )
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

On Wed, 09 Feb 2022, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> David, Daniel,
>
> I'll need a word from you regarding this patch. It's needed in patch
> 22/23 in this series.
> vop2_crtc_atomic_enable() needs to control the mux which routes the
> display output to the different encoders. Which encoder is used is
> described in the of_graph port, so I need a way to identify the encoder
> in the device tree.

I think the question is how useful is this going to be in general. IMO
we should not be adding members that are useful in a single driver only.

For example i915 wraps encoders with:

	struct intel_encoder {
		struct drm_encoder base;

		/* i915 specific stuff here*/
	};

So that we can add stuff of our own there. Of course, it does mean a
bunch of overhead for the first time you need to do it. But adding
driver specific stuff to struct drm_encoder adds overhead for everyone.

All that said, *I* don't know how useful the port member would be in
drivers that use device tree. Maybe it's worth it.

BR,
Jani.

>
> Sascha
>
> On Wed, Feb 09, 2022 at 10:53:28AM +0100, Sascha Hauer wrote:
>> Add a device node to drm_encoder which corresponds with the port node
>> in the DT description of the encoder. This allows drivers to find the
>> of_graph link between a crtc and an encoder.
>> 
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>  include/drm/drm_encoder.h | 2 ++
>>  1 file changed, 2 insertions(+)
>> 
>> diff --git a/include/drm/drm_encoder.h b/include/drm/drm_encoder.h
>> index 6e91a0280f31..3acd054b1eb3 100644
>> --- a/include/drm/drm_encoder.h
>> +++ b/include/drm/drm_encoder.h
>> @@ -99,6 +99,8 @@ struct drm_encoder {
>>  	struct drm_device *dev;
>>  	struct list_head head;
>>  
>> +	struct device_node *port;
>> +
>>  	struct drm_mode_object base;
>>  	char *name;
>>  	/**
>> -- 
>> 2.30.2
>> 
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
