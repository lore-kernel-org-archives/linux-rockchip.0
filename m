Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B23BE77170
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 18:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ci+wY9a5xJLujuydjEGY0A6gVhGnolmykovmLP1F4l8=; b=UeYm9239AQERPP
	NCI5bSwemVBqWc9Xc43w+lGiDPwxwH1pD/xABtjPu+4J+PopVi3yy8xyg1iyHCpcmqyO4YQpG0FYX
	QsS5l3g9KnLzhyyNv3ECcj3qrqmyDBwEL5MWbuouyBAHD9BlYILXbGFH+8OS5Hk0nK3WPiAEr1OOH
	e5wk8Q9oaCQodILGobr3PJRcHK9HRN5riZ3AYRE0Mn/ZCS2bzgk7DY8h0rLnR/jPgacCNA9EFb3ak
	cdCx+XtSKrmocPlfB4EJ0+fnhMEXvIAaudHGOUhwAWTyErO4guuTYP+mxJssgW7Mwt0jrcR0KEZ0B
	lxZNWRoa2anwrCb/gUmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJH4n-0000000HAJR-0oQM;
	Thu, 05 Dec 2024 18:59:49 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJH3l-0000000HACl-0x6q;
	Thu, 05 Dec 2024 18:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=7vsekokjirfajj2zq3c5dsl7le.protonmail; t=1733425119; x=1733684319;
	bh=KvD8SgNhV2A1N+le02OtqO9UlfQzw4KsUU1VV8QANVs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=UUhEpFNLZt5XeV4AzqaMBNiVZKq6xP5gHx2JChMQpa+QmXs4gjffKYnMsu04AJ4oG
	 2+3zTGCdIqSOO7bOBI8LEnl/4rjSuesuDsQLRi95ZrohgSNBnY+p0fh5rQKExxzC9O
	 Wu77u5Yp26auxQ+EePdkuECYwPbMTse5VuWlvI5Xs0sVb8IQVw4h4n2XBcfFx9cSOJ
	 oD50A/BFizsS3iZ/ENxCiUkGCvoGim54Rj4D+XStI9nRO9pIyQCUX0cq3hbXin5hTf
	 DoKYNfhO3q4Z6p2gfF3CIx6v1BfKiA6F9mW8GgFCX11cJQT4QXFKd2DL2xv71lSlBE
	 YrPWFzVc0rqPw==
Date: Thu, 05 Dec 2024 18:58:30 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, hjc@rock-chips.com, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:Re: [PATCH v7] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <Kmf2VXiWF77w-brVyLRrswUV3O_7INOquqIpG31ctJB_c9wVFqCY8DeR8rot4jq6Cpz7VeHX7xDl7SXA2JBwXDggAsjKqn__sP9i-be8NI0=@proton.me>
In-Reply-To: <7877dddf.b3b8.19396e1df66.Coremail.andyshrk@163.com>
References: <20241101185545.559090-3-pZ010001011111@proton.me> <9Rp0NJW2QG5qDduowVaialZWN6xTe9KJFciu7Q2LERJZQXsUgFvMGXfcFaNznIEJEBpZeOdZPuL4fxOEFduaSJLuQJ3cIvN-fx2lEzYSBKE=@proton.me> <12938960.VsHLxoZxqI@diego> <7877dddf.b3b8.19396e1df66.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 535e75224ca1d8abbcd2f8c5ed08abda699b6ea5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_105845_848254_CD628263 
X-CRM114-Status: UNSURE (   4.16  )
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

On Thursday, December 5th, 2024 at 1:53 PM, Andy Yan <andyshrk@163.com> wrote:


> I guess it returned because crtc_state->color_mgmt_changed is false when called from
> 
> vop2_crtc_atomic_enable from s2r.
> 

Hi Heiko and Andy,

Yes that was it. Moving the check out of *try_set_gamma
and checking it only in the atomic_flush fixed the issue.

Thanks Andy for pointing that out.

Regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
