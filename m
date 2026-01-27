Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECC44D2FEC7
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 17:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgsY00VLhRrGAWWkdK5xRP8Ey1DxNzJASt0d7Ki3nTg=; b=4LKYt26bvSLF3Z
	VdQpVC1O1/eL1lxMS+dFOkuSm0P1c1H/6tZ60dIiflzdgnG6HdrgXqvmqoz9rzptZx0gqSt4Qhnky
	u3jk4x1YO2jrybgYLPbRUfJUZ0qSutZhuv+BRXZSld5NI5pD96JIHKJFfpZoBeaIn/BodE/KupOEp
	8XQ8dN1ECZs6gGXbAtvL1ONOakU6uZR+YZZD/dVeJ65U08jEoa97w4fxI+4U5xycvcLCJcGooLdJ4
	tdOyq99cixH3cYHaOwBwiYx3Gs1Z1jw80rnvxDjGAjZwLDHofrmIzYemUdKLYoiCocWIPmJIs/72D
	3CrQhg40LwN1AzYNDusw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkn2Z-0000000EkKH-190s;
	Tue, 27 Jan 2026 17:39:47 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkn2U-0000000EkJU-3ZkW
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 17:39:45 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-42fbc305882so3656837f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 09:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769535581; x=1770140381; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=syfA3BkKAIe5vn02Wihs7fQFdQwNkyJZbjNriJ6lerQ=;
        b=I9C2iMDoD5cS+bUcJcqu03/te2JNE/nXjpEdBtI4RlgWJ2lag+xKk4TiOv94m5c7Hf
         5UZsaTQ4YlvxLPPn2EsVGOxUo/xgva7ALbM6ao/YuGT9tj5NX8goe21WYjF4O5MCQBi4
         bJ3s1X8ltgEPsJUCeQlEX2e7IbyCsYwEdo8aejecCuAI1t4SqcmPVYIybGBUJzKbPpX2
         H2SYRohJaP1FhvFfxZWMM9KkLguPX8s9qd7sexrQc+Y2Dxa1zz9vD4YMpWanhGowLFx0
         ac6yVaVM3AfRrmG2D8xXz1It9QWVuuCA7p8iesAY7FBpcdUYV4WTYzaFyOcz20ec8C+a
         KEdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769535581; x=1770140381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=syfA3BkKAIe5vn02Wihs7fQFdQwNkyJZbjNriJ6lerQ=;
        b=f20pIAJtCu8SaQIXM+0f2nZTeBISx0ltw3dcWZHvuPuERjgwhhTh+YRtVrJ2nLupXZ
         bBlV7JSG4tIOXRkZLKgt/mYbdVjTv23mABURMvYeJmP4Mi7LFV3tA957Gf8j0tpItf2Z
         CPneKSx5BZAa9yF+bVHNAlp44fEMmpwMunNe6X6QDQ+znfo5l+OIfN2YRdNO+N9YZiRi
         6qqGSSRTENOGDTUUI3Ey4uRcAqyDGpGwYPLfoWdwvjkNi6PyinzknBm1l7RoDdFOMxFb
         v6r3dpojq0DmmzYTqL1rguBTizzRGuf5JpW84UrG7X8JVvh2kDqft74C3DRTWfiDtwNd
         J40g==
X-Forwarded-Encrypted: i=1; AJvYcCW+DKqPECJ/rq+xSOFshsmdvn+XJtOUaQWstMYPX3wD1E5lO9Oh11vuf5rqiDd5NbSpPJaLi1PM5eVM36QlcA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxwsJBSNC1ZDzqv4Ls4xP1CK1RXf2vbQOXknxuk+IdeoV+VOvn+
	CcUT7QmP/oes5cEFvgMaJqnEtAgS1m1Fhjw9p/XwAE9t5pKMRt3f4tu7
X-Gm-Gg: AZuq6aLDAA3ekuUcmfXRopV0UUu9LC/ReaBrXdsJuZa/pCTyu2WQtNpsbUncORY5sUq
	IDmrGKUDFfQU+1lBHtUxZx95sG0UcHb8cB7RJhjK4sC7lAThrHSgOMlAa79T75h/vcoHQmqhH8S
	7leVkPt1fkmC1gS4FM4WBm4hIfZuMseOiE+3bImvq4knvYMtbPL3N1I3iqTddSBaquNJYtmFx3+
	x9XJGsaceJrzstbVlzP/MJQ/RzNnmL7ktMpNo7I5s5dL2SHZrkTMqjrCberuF8fFbJsFpAq7wXL
	7TpVtVlqy3fkSRG/WiEQ9q/2GtSIb5dh5lxPpeWEZLyvlLPVwn8n5lCWZdJb3mEw0TBQx0gBCNK
	igBpZ2RxvHshnDmo7WB3yq64Mx/A1xCjJkAbqLCjm/+/+nBkBm7ggO0u3BcCLttcrs7SVKFpH2R
	7VVwBR2jAKomy9AUytpjxj+KlrBal0+sGloXoZZdQiROZOVJoxrld2
X-Received: by 2002:a5d:5f88:0:b0:435:a647:a3c3 with SMTP id ffacd0b85a97d-435dd073c0fmr3746612f8f.23.1769535580531;
        Tue, 27 Jan 2026 09:39:40 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132356dsm335609f8f.33.2026.01.27.09.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 09:39:40 -0800 (PST)
Date: Tue, 27 Jan 2026 17:39:38 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v5 1/4] uapi: Provide DIV_ROUND_CLOSEST()
Message-ID: <20260127173938.314d922c@pumpkin>
In-Reply-To: <aXjNyHaJDHoCPRJO@smile.fi.intel.com>
References: <20260127-rk3588-bgcolor-v5-0-b25aa8613211@collabora.com>
	<20260127-rk3588-bgcolor-v5-1-b25aa8613211@collabora.com>
	<baf075b2370a13cddd597a3d421b5f39290d87a4@intel.com>
	<aXjNyHaJDHoCPRJO@smile.fi.intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_093944_531111_FD3D2C34 
X-CRM114-Status: GOOD (  23.52  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Haneen Mohammed <hamohammed.sa@gmail.com>, Louis Chauvet <louis.chauvet@bootlin.com>, kernel@collabora.com, Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>, "=?UTF-8?B?TsOtY29sYXM=?= F. R. A.
 Prado" <nfraprado@collabora.com>, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, Melissa Wen <melissa.srw@gmail.com>, linux-rockchip@lists.infradead.org, Diederik de Haas <diederik@cknow-tech.com>, Jani Nikula <jani.nikula@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Robert Mader <robert.mader@collabora.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 27 Jan 2026 16:38:00 +0200
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

> On Tue, Jan 27, 2026 at 03:58:13PM +0200, Jani Nikula wrote:
> > On Tue, 27 Jan 2026, Cristian Ciocaltea <cristian.ciocaltea@collabora.com> wrote:  
> > > Currently DIV_ROUND_CLOSEST() is only available for the kernel via
> > > include/linux/math.h.
> > >
> > > Expose it to userland as well by adding __KERNEL_DIV_ROUND_CLOSEST() as
> > > a common definition in uapi.
> > >
> > > Additionally, ensure it allows building ISO C applications by switching
> > > from the 'typeof' GNU extension to the ISO-friendly __typeof__.  
> > 
> > I am not convinced that it's a good idea to make the implementation of
> > kernel DIV_ROUND_CLOSEST() part of the kernel UAPI, which is what this
> > change effectively does.
> > 
> > I'd at least like to get an ack from Andy Shevchenko first (Cc'd).  
> 
> Thanks for Cc'ing me!
> 
> So, the history of the DIV_ROUND_UP() to appear in UAPI is a response to
> the ethtool change that missed the fact that this was a kernel internal macro.
> Giving a precedent there is no technical issues to add DIV_ROUND_CLOSEST()
> to UAPI as proposed. Main question here is: Does DRM headers in question
> (that are going to use it) really need this?

My 2c...

And is it actually going to 'clean compile' in userspace?
The tests for x < 0 are very likely to generate warnings when x
is unsigned.
It is hard to avoid those in the kernel build, never mind some 'random'
userspace build.

I'd have thought that the only reason for any of the kernel defines 'leaking'
into the uapi headers is that they are used in other uapi headers for
constants that programs need to use.

It isn't as though it isn't hard to write something that will 'do the job'
and in a place where the definition will be found while reading the sources.
Even just 'hiding' the definitions the kernel itself uses in the uapi
headers doesn't really help anyone.

	David




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
