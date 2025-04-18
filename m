Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4121C369AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 09:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3BJKTCtliyFey0suGZv5x8Zd5CPMa0jkCHBWI49tUY=; b=Dl1Xb55ozmtV06
	B4DTXF7r5u1qp9/BNy/9oNKAE+dbKazjTgn6wdT2TPNcS0i3SRshwI1kNQPRRC6NU+cWS50NBTvmE
	yVUPCDNywE1jCj7P/BhHM2ociwHsu+c3LuavNWi1/k9JRmc1KTtNwDGmUqvvAapnfnbDIGOpgDz3X
	pONLgq7dWExgQ2GnIrv2y96F3YLhOaohlenk1TCcBiN4DBMPMy4d2JPkGGBG80Q1aJdp/13zyYPg+
	N5Hwunk0WjJQyP6gBh9GH1vfiytRlCpzLMQZ+yUTldfJrPWDVK9iRPI5itDnGpFBGJYlV0Av68Fot
	JIqjk82z/qxtZmYNh/lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5iHp-0000000FmYL-27qU;
	Fri, 18 Apr 2025 09:45:29 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5iFw-0000000FmNj-25eH
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Apr 2025 09:43:34 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-476977848c4so18723661cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Apr 2025 02:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1744969410; x=1745574210; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kFpo5oEBW5stbppkFOY++LlhDbuxsd6jJIOfBbyrv08=;
        b=XLl6E963cOHxUsh0/urNbRilqU0UosY1P18ujE/ZDq9MXVGyw3wKtgT7fBDi2NRrUT
         Vqs/MNO7u5/bRTNZBeOwEuJ0cjAvOUpS6jC/rot6dcPyOL8riG2EXie+We55n/htY8Jw
         8bFiEnRI8YAcf00uOybDeLlkW22KPoGTgAdLvNxvOXzHEWKgdy8pukRmKpKad1Y7Ql4V
         a2xFJgu8dpMIxPV3zZiVj8wxtbgfRjB3UEP7S1XpB/wUZmLoiS4HssO+VxC/M7xDut0G
         1ta96akGH8NYF1baFMXCxaHxFlvPfQ/tKFpioGoygI3rihyvT0Yu1qw78WHYc+0qeNMh
         ed1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744969410; x=1745574210;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kFpo5oEBW5stbppkFOY++LlhDbuxsd6jJIOfBbyrv08=;
        b=v93JmR4FQp1gu1yykn51hCnTZ1qW5k1SulT2wn2vdyOci0Lmc557rJMfA5/9FUnhGj
         GEqOVwrnrzZ7eImoa3uu2N0JVgUbJwb6+gsKxiscp+NoWaaAZORYcqN8hykd5Lwnhnfc
         LAfd3CenB7IcfgR5jPi6h5+Lm3eIHzehvLbZa4/h4DQdBl6HAdhWe2ABvooSuHVAI4+k
         lZ7BJ4JO162V2CKJ1Z5xEtrxbbHVYXvx4pjdMgTaToIVDH2YrvH3SaPzpsQqCxBEXjwF
         d2OkgNhBRr46dqQfNGZctyKh5qHxTV9CjOIMZA2lAoHPOe1ostuUImbOmQm16/q3qlrq
         51Ow==
X-Forwarded-Encrypted: i=1; AJvYcCWX0YmmkIO5pcY01gsnCVr6+xx+e7TeV6OqvfcSg6pN2WU3rjYY4CNrH2v74aibeeWSEzQCDo18febcHUXeyg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUzjP9QxDDcv0nSfr/wjWh2rh7J43NsPW5oqxDwC6+wpK32BHc
	segwXJ6rNscUtM+FX933yPWldcvuSL3CH7+hSxjPDvLn2r+tN/ZAKDj1vbfSnbDBUmEXEJ8RpcN
	niAb5VvmSbjmlmud1n/n5Vmsy5apd2mHtjmHUoQ==
X-Gm-Gg: ASbGncvQ0bj2vgxD9OPTOElQdDOSHSXmv6F/BXNo9qM/VShmAs1xBk4UHU5ZqJCzVql
	WZuTmtnu5zFbBzq9uk466cmDa7JdZB6FeulLg9hYOfLQ7ovhDPugnORmgI7IKQMKnLl4pby4gFG
	+WnugmuX68q8uGm6v3zhVdH13zf0QCAQ==
X-Google-Smtp-Source: AGHT+IELNPez3z5hE7XPdAn+/JmuPm4/LRceRqb1tqN8GldH7aTJ6b0D5paprWRXm4NnYwwtrill8wPC4uiDxVjoiEM=
X-Received: by 2002:a05:622a:1a95:b0:47a:e53a:5762 with SMTP id
 d75a77b69052e-47aec394ccdmr27568231cf.22.1744969410714; Fri, 18 Apr 2025
 02:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <20250414095332.9674-1-mail@etehtsea.me> <20250417065759.5948-1-mail@etehtsea.me>
 <17402f2e.360.1964640c3d3.Coremail.andyshrk@163.com>
In-Reply-To: <17402f2e.360.1964640c3d3.Coremail.andyshrk@163.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 18 Apr 2025 10:43:19 +0100
X-Gm-Features: ATxdqUGMyPtODmDTih2v_sR4LqFZ8n_GN4IoaxZBEb6HaOtqp6Dx3gQ7MviTVqg
Message-ID: <CAPj87rNDsyBfy=P=0SzTm7u6Na6BpeZSpEt1mRPhLCd6rHXzTA@mail.gmail.com>
Subject: Re: [PATCH v4] drm/rockchip: Disable AFBC for res >2560 on rk3399
To: Andy Yan <andyshrk@163.com>
Cc: Konstantin Shabanov <mail@etehtsea.me>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Dan Callaghan <djc@djc.id.au>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_024332_528060_63178CAF 
X-CRM114-Status: UNSURE (   8.82  )
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

Hi Andy,

On Fri, 18 Apr 2025 at 01:16, Andy Yan <andyshrk@163.com> wrote:
> I prefer the V1 version PATCH[0]. This is because we do not deal with hardware-related
> differences at this level.  It involves a VOP-related restriction and we always  handle
> limitiation like this  within the VOP driver .

As said in the review for v1, this is not enough for generic userspace.

If drmModeAddFB2WithModifiers() fails, userspace knows that the buffer
can never work in that configuration, and it should fall back. If
drmModeAtomicCommit(DRM_MODE_ATOMIC_TEST_ONLY) fails, userspace does
not know that the buffer can _never_ work, because the failure may be
transient or due to a combination of things.

Returning the more localised error saves userspace a lot of work and
enables a more optimal system.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
