Return-Path: <SRS0=Uz4W=PX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25DC3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Nov 2021 21:45:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E422261213
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Nov 2021 21:45:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E422261213
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJr3OtZSKIIlSVY5dp1LSsYlvFpl08wm4FkxOl1+RDo=; b=o6ks3LrbW+ZUq0
	RGQe4WXeslUZFztua3btRzHL9JSxZf1ZwbLLmm0PH1G9PTM6q5IVGJNKYf/FIMUpFMfB5FWJcBTUX
	3sta6eNorriMQQDsuv1cA28tPcM/sMmxC6TmlTXp76IhvZD7am6TYurCEE9Nn8ARzD4rx2KuFeV3T
	E3oGPcln8fOtBF8VcbQvSt0hRutN6TXhyCYlpvuzFDGbxTXLTNVdbshbKDcqtTvWhRKu2v/Tq5gdj
	2zS/EbOh5jRn+p5THHNDO4JfPCdaORytDw6fJ0b1xc9cnI5DY1V5r5Vy/1bSr2FWH9bvvH/9Y358D
	iWncJlBt1J0HJ6t2Rt7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mikY1-00A1ZW-Fj; Thu, 04 Nov 2021 21:45:25 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mikXy-00A1Yf-Ms
 for linux-rockchip@lists.infradead.org; Thu, 04 Nov 2021 21:45:24 +0000
Received: by mail-pl1-x636.google.com with SMTP id y1so9490469plk.10
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Nov 2021 14:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JWx9ct2MbjImA6H/WvO058+827HmSCDeJJGYWZ5NWKI=;
 b=B0nLjg/Un1RR8JO88l4pjO/r40QMXp2NKWLOT8gleROTy83KBOS+lF4w9BC+N5Ioq0
 M8bgTpM76+k0f6GHJDCplbtrZ8g8sQxnoKAkzpFVhEiz4SpSE8yvyy+bPNe9HOBo3xzV
 /Wz2WuZ1KL/kBkyWJd7mLDWnE9FE4GQyRtI4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JWx9ct2MbjImA6H/WvO058+827HmSCDeJJGYWZ5NWKI=;
 b=OpHSP+Z7ciBReZsSUtCNK/I1wjrGDXGuBYf0rW7qPzW3i4mfYFsBM26gcsLjsCZkts
 AfzTPRfrTP3vo26P5AgDPwJ66ZivoL0658GPH/xAhRDengL2SyvaaOg8IRUsLWKHHC7v
 F2RVaGhdjl2pUjIFSV+1OMM9z9dvuy1LrlCqAoHZ0EA1Db/kKT1Yvr43C2xUuR0JGWxT
 qdvgxwBxzaF/slUFUHQ0079UvX36dgwV1TvFJecB4N/NWafqPZMhSrzuv4lnWTd7RrZe
 MqaNYd88bCNGUuj8gz+dfz3mV1s+JpJd+zSB9ednmOxSH2nyXsdMhpphIM25dnUzsvrG
 uJ/Q==
X-Gm-Message-State: AOAM5322yDj60MDOK5JAAHBSsDScq5bsqO9Je6goEDqHJequWcl+d3dU
 4xY7NGev8IjlRtP0vZCQCk+1RHqjRqwfjQ==
X-Google-Smtp-Source: ABdhPJxqHMDw5YqGMlZwg7dpWo0+rcl7UStC/9wzlqsDbweCwI/3ZPYSoXpZo8EXmcankBbq9Sl1aA==
X-Received: by 2002:a17:90b:1c06:: with SMTP id
 oc6mr24886431pjb.126.1636062321332; 
 Thu, 04 Nov 2021 14:45:21 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:49a7:f0ba:24b0:bc39])
 by smtp.gmail.com with ESMTPSA id e7sm4473408pgk.90.2021.11.04.14.45.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 14:45:20 -0700 (PDT)
Date: Thu, 4 Nov 2021 14:45:18 -0700
From: Brian Norris <briannorris@chromium.org>
To: kernel test robot <lkp@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, kbuild-all@lists.01.org,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org,
 "Kristian H . Kristensen" <hoegsberg@google.com>
Subject: Re: [PATCH 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YYRUbhWH1MlDvSsR@google.com>
References: <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <202111041849.GKXf3qid-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202111041849.GKXf3qid-lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211104_144522_785456_B5E487BA 
X-CRM114-Status: GOOD (  15.55  )
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

On Thu, Nov 04, 2021 at 06:47:34PM +0800, kernel test robot wrote:
> Hi Brian,

Hi robot!

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

I'm not sure how to do that in a v2 patch -- one doesn't normally credit
"Reported-by" for every testing/review improvement on an in-development
patch series.

> All errors (new ones prefixed by >>):
> 
>    or1k-linux-ld: drivers/gpu/drm/drm_input_helper.o: in function `drm_input_disconnect':
> >> drm_input_helper.c:(.text+0x48): undefined reference to `input_close_device'

I've cooked a local change to separate the CONFIG_INPUT dependencies
under another Kconfig symbol which optionally builds this stuff into the
drm helper module, only when CONFIG_INPUT is present. That should fix
the build issues while still leaving DRM_KMS_HELPER workable with or
without CONFIG_INPUT.

I'll wait to see if there's any other feedback before spinning though.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
