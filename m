Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA81C79FAD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 11:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35HWyJuanM4cp1ladkiUjM+IzXcDPtTLW1VyznIGIlI=; b=kcVOHHLJ9em+kg
	Z00i0srGohUZOyg8/YMkmwkq7u6Wiy/SOdWlG/rnfM5xPuX8/mgrCfPGRy+llJv/Plp17RavSgkow
	dFxQvcQrTZSjR3+XlePdfIXPiLQb+kJdxUYslaW7ym0MxbYIq2r/dQLS9QSj21W1KecP9HtCfZLh2
	daLP1KQ3Rxb5ix8PtA4Kxzo/+Uka01f3oUM+2ufgZILhWSoFZDqnC39jeohpsokDD9rjwv7/Q8rA+
	H7wL976fm/Z2ZKlgtItvXWbImTaDcO5X7ZsF+dcN1BVDN2D4T55w5vC+brImelUo/bCEyGulK6mvv
	4ZRnvICBr/vK48woMsKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GRY-0000000BZDF-3mqM;
	Wed, 09 Sep 2026 11:26:20 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GRU-0000000BZCP-19II
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 11:26:19 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843703c170so439528f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 04:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788953174; x=1789557974; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X9DeehTFtKYcoXYYj70SGng74boW4Lx0fudui6KbUDU=;
        b=kC0ioNtweKTEZ2xDVTufeGXqpboGzKGDK/tarpo55zqCTvU13iKSxCpp12iLzDAmvy
         Weo3K5/GziJ18EunzZqO0i8s/yXUuXZ4OLq63Pu611BI+Cu9gIm3/YZciG0Nj1Iy4x/0
         RYKxZV4gNuXVkQX88ZBsYuvK01symKb665fgSO2AXB3iZsYtgev5yK/umXN/wbPNmvZn
         PxQoM4TDRZhc8QlAHK2JyHVQeceKh3StJKDEzFzuohy4ifGmyZKrr0jT++v6k0xP7zom
         jS8C1gwNE2KPgtLwfTljoM6u/1qCjU+2Rc2w4T9S1oS0wXN3KX33PwCGF5z6aaM12OlV
         5RHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788953174; x=1789557974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X9DeehTFtKYcoXYYj70SGng74boW4Lx0fudui6KbUDU=;
        b=ioqnA9bmH1Jo+u5gW5G6JgcgxV/p7No4jhosr9771YF1kYRSQg558+GxltWFsFRkLZ
         Vjx00yy/YOUJ9r+7XEPNh/P0fdUfXg/BTnPpU/il6micNRx41IY/PFwaDIDYwkG9co+2
         Cqd8/C+0I5r2bE5GErF/oMrqpc7ipXQh1ICo68nyefX6UYVHUUbMVKOISTKB/IBLAUs2
         +TPRaMBAT5idzSdaFt66Rc0YqO1PvuPWBGm3xjro1NW2aOQRCRkdVgsL6ayP2vVxpmiU
         dIdQHHNwp6aO/9Zk71lZ7Ei5p8n3cdP4wKbPb4g4IQ9oVPwi4LJjlf89FzQXjDm9Fr5f
         M6xA==
X-Forwarded-Encrypted: i=1; AKwUvBwyFY40sKx6nao+X5HZQivNUNncGDQB3dEC329l+3KOR+rcRsg7dyJCD2c23iuQW7DpjkvaGMDEQMTlSQP+gA==@lists.infradead.org
X-Gm-Message-State: AFuF++kTocEO6ttRCrYnrXba4EOHerUtzNIrR9leo6U1sL6r5kytYQ9S
	MCknZGafucT4SuMJ05i4VjdD5j+ZFHrFIfDbkUdUBmi0zoUfVtBFBgpn
X-Gm-Gg: AYBFou20m3Y11/Bhc4iit3NmMmuUtmIytkbppgDmgLESaQOGpm5ItudEtyRo0BADm5j
	85kg2sPv30KfKfEI5dCDgjZOXYIROdjEZXl9/IHrAILVqMpfMjqJewCVJY4g8v9slwdP8fJbY9u
	/sAEi9EeI/SurlREvXVV+nGhAxa5w2fVAHfz04UxohqaRG2QcjZoPDke5ilp308wnQx1QdMWaLX
	4ueU8HyphKaXHLphYA8n3wG5veacNySM6tAX1aIf7Ed8eRakvR1zc/PSqQNgO6QdqasxjjheHrx
	NNZVDBCstue54r+DufqtvCehnInpYmyim79JwWkLl8wPIAu2LC+kjw/ykAge3R3gxcKMeJZHUoQ
	zgUmeKRZGSdU9uOc1EEN+CThygzrZfM06dRIT+a1bG+KwmunWQLvaLu+q2OBQ/QM8jHzWPzNa7G
	/Y6dCoxohZdiDf+zttJzx6AqSkkcgewKQEKAiS2Usrjd/nrDjFi/jXNF/F4WXvxnWDVbyMX2P36
	PLo7C3AT2cV3t4mC/WavcIAK2Ev+/FAbALEAxEurCURFrYaFvuaaymLUsfQBNJaX2aOaiTR0TvZ
	Ekw=
X-Received: by 2002:a05:6000:4805:b0:482:e0f3:462c with SMTP id ffacd0b85a97d-4859796300amr24943997f8f.0.1788953174092;
        Wed, 09 Sep 2026 04:26:14 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B836900E58FC5516AABB3E4.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:e58f:c551:6aab:b3e4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883a9b49sm36475476f8f.17.2026.09.09.04.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 04:26:13 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] drm/rockchip: dw_hdmi_qp: attach the HDMI Colorspace connector property
Date: Wed,  9 Sep 2026 13:25:40 +0200
Message-ID: <20260909112543.6913-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260805153416.8459-1-royalnet026@gmail.com>
References: <20260805153416.8459-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_042617_948496_472A89F9 
X-CRM114-Status: GOOD (  10.35  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Diederik de Haas <diederik@cknow-tech.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

Gentle ping on this one - it has been a month without review.

I re-checked it today rather than assuming: it still applies cleanly on
drm-misc-next (8ce26b09f652), with no offset and no fuzz, and nothing
merged since attaches the Colorspace property for this connector. So the
gap is still there: without it KWin reports the outputs as "HDR:
incapable" on RK3588 even though the sinks and the rest of the kernel
side are ready.

The patch is independent of Cristian's dw-hdmi-qp HDMI 2.0 series; that
series is not in drm-misc-next yet, and when it lands its patch 34 will
touch the first context line of my hunk, so I will rebase and resend as
v3 at that point. The change itself does not overlap with it.

Happy to respin if you would rather have it on top of that series.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
