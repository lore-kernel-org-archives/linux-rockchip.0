Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7402DD2504E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 08:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SH+vobwBU6A5hyzjUvCTr1IV1ucxZGXmmdrCPAzez0k=; b=Augn2N4XIRuKMr
	+EOFiVgWH5OgNSwWokdT6o2eRQe9DNJelzDXKo0/3tJeRk3CXpzyAJOsP+92ZQoj8I8iD5y2d3nYS
	1I4MoygrO7kNQlUIAOLTwCQifKq1YkVnXVE9oChdkbH24Jiz1pIPJLKnsxfGNAqfTyPoh4zTOxRvT
	/drEuHAR0X4Erp9zkPbGlY+paKyCgVuFBDqw+MVh3beE9JRPz1w6W2hpCDCkcmToXiybsiMnYtgUL
	qqqi4gmzFwT409ZTEwWPVqI1wcnc5E1gAfYydgvwZ9K2yFR+eLG1UTkG/Dtyml+gHULIsWXmMFzNA
	NqKL9yAEe4UakdXAKKuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDCq-00000004ynn-1aU0;
	Mon, 12 Jan 2026 08:23:20 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDCn-00000004ymo-2erD
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 08:23:19 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-598f8136a24so6575644e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 00:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1768206195; x=1768810995; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUxvknvL2YWQXQwD+7waJKw0gxMOdm8B3byZUil/7ag=;
        b=HQ8LXHJDKR4WE9w20qWGFtpN6FaRRDhfdBg9gVwUjZQjCxsOJlHU7L9qvkUsWZUMAl
         4n2ieScdl+PWx8hFXafTOOUYshbzmXVA0fGkfHffblnUQGMrtysGDEEvSS9kGcE9wrBH
         8cp0ETAm5MuCJlAlSm8ORfFf7XG6x8OWscYLCc7gAIaztrWgv9DvIsJMXhmwJY9FoD4s
         Rrzvr5L8u2OgfLq3F3j8BOoSISunE3Z42EiBMCOIhEjMDL5p8D5NEWo83F/V/MfY22sR
         eHbbr8tz+fn7rwU1Vkq8p2CqUOYNadT5+lQSv8g4Qun6fgDgvGS9t55Dk4CTBsdgdBXc
         q7oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768206195; x=1768810995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OUxvknvL2YWQXQwD+7waJKw0gxMOdm8B3byZUil/7ag=;
        b=cMAMHA7LJoIMblE5IHr6rS3pZVLBES6Yp5ukB542iz56pW/zg5453/AA4+SUuH6wmm
         pwnIzb8QKYXU6Yhi5SdZ+sJAd2aq8zezxnET7FujeAs5KmvLI8FfR0cW0/kFOwtYCKVo
         XresImZGRAlTHr27MpiCMohZxnASf6lXn+AgbBdJO1IcvndtzHl2kBu661IgMpptzEc+
         SoYekosYphMgx0YuaHsbU/Gu92kZHLZziry/mHmkRofEsHivXaFrtvF+gpWmi9spItKS
         3j9nD9peBQxZpmR/9UJeZA6j1kwgLtwwwiyZpzfv8NjvrFnzEbLlGWvZgcw9jVUAaGZe
         C9YQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3Wlo112acfYo0InbL1gumODsvmO1+O3wv5RIoqfBDY60T1VtJ9CFhUUmsG8zRGSi0VhFb54g76k+lxhpOtg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvPg9/cVcpPRU1PKlYYQ8qYQCV3/oZDBycYaZdy6rWItkR7fcI
	hH42BSUrKxXtt05LoVvoNvvZvY2TEWTAWNV8wfRafrhCSEKe6/LhY0K890jxj4DTaOnDrVqbvuA
	FWDfd8Pr7Bk/87gWxXM1I8r64QAW4etXS8PE1l81/Og==
X-Gm-Gg: AY/fxX6LmrtB+D6Ewp6mRwg6JMNK/R/0eUHBeYBYcQfB1F4+f2lIINyMMyIdR9k46eU
	4JBoKqgiXwvYMQP2PIgzFi0+sitimJ0WX0XxHEGZJ15WcexurRf022U7EQ56A4IR0Okuy+Soio8
	olA426vwuMa7MnLDkg5BXondw49b6BARWuUSKSZ3U7IG2qjtuXxCpt1pvwpMzm0ZONZhtJKrdin
	d7leVB9kiN+ItsF4mCv5GAuFlXa3JkpvMXgrgjOUpTv+j5OeE4ZMrccep+iW3Z2qbyCwbxxlplz
	RugVpNS9I2lhy6niPmwWvSpKurhq
X-Google-Smtp-Source: AGHT+IE6p5/ZrwPp+xuSiOG+gGKacHGFDX09xl3BGCerXqWsyT2ieGJ7KPUjbuzOn9UrLQbKiZi7jmfAYVy4hhdoJck=
X-Received: by 2002:a05:6512:3e0a:b0:59b:8505:51e5 with SMTP id
 2adb3069b0e04-59b8505529amr2306172e87.37.1768206194825; Mon, 12 Jan 2026
 00:23:14 -0800 (PST)
MIME-Version: 1.0
References: <20251031104846.119503-1-marco.crivellari@suse.com> <176798671267.3432512.10099163174587731077.b4-ty@sntech.de>
In-Reply-To: <176798671267.3432512.10099163174587731077.b4-ty@sntech.de>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Mon, 12 Jan 2026 09:23:03 +0100
X-Gm-Features: AZwV_Qjx9rLgKQcPZeKegbP8uvfJGRMynbrqihioo2kQ-eL10Lfla26TS98jxTs
Message-ID: <CAAofZF7K3XokopS99UuizraGzF-=haLxYhDeBdmzELJtYvgTVA@mail.gmail.com>
Subject: Re: [PATCH 0/2] rename system_wq and system_unbound_wq
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Frederic Weisbecker <frederic@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Michal Hocko <mhocko@suse.com>, Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_002317_684176_CEB57EB0 
X-CRM114-Status: UNSURE (   6.69  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKYW4gOSwgMjAyNiBhdCA4OjI14oCvUE0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4gWy4uLl0KPgo+IEFwcGxpZWQsIHRoYW5rcyEKPgo+IFsxLzJdIGRy
bS9yb2NrY2hpcDogcmVwbGFjZSB1c2Ugb2Ygc3lzdGVtX3VuYm91bmRfd3Egd2l0aCBzeXN0ZW1f
ZGZsX3dxCj4gICAgICAgY29tbWl0OiAwNjUwZjQ5MDlhZjJiYWZlNDkzMjJjOTFkZDhkZDBmNjhh
YmZkZjRmCj4gWzIvMl0gZHJtL3JvY2tjaGlwOiByZXBsYWNlIHVzZSBvZiBzeXN0ZW1fd3Egd2l0
aCBzeXN0ZW1fcGVyY3B1X3dxCj4gICAgICAgY29tbWl0OiBhYjg1NTlkNDRkZTU3NTBlMDM3Nzhj
NDIzMTFhZWM4ZGQ0MWE2MWY1CgpUaGFuayB5b3UhCgotLSAKCk1hcmNvIENyaXZlbGxhcmkKCkwz
IFN1cHBvcnQgRW5naW5lZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
