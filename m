Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61C90C5AC67
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 21:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0ZksfzW8cVfO/zv/Vp7viDwiuQxHhH8YjlLLL9bqOA=; b=pEBVXUraa4je2J
	1D5xsU5ZE9WLcu5Jt61J/nqLudS3Zo0luQl+VlAwFHdLWFZAZKaUUun9Dr2r7cTSknKkaoxwd4mVt
	kX/fHqTTxOnjfAOoX0oxz/ms9I+Tbczk/LGv+6ns7HPAVIW86WBuvb5gIYqO90xglnWl064ndo33Z
	vvNc3rt3OwWCJANiowVpCcPkDxTxmaYHc7vbklrbHEoVKm9+aibL6KSqS4oMUBg75HN1VEOKESRaT
	8G3WUjUGju8xG2wXmQuXrIWY6ibL18pBgeQDO2GP2qqnSlpF3+D+MbSSHN5xNGBZTwemSUI+BeFV9
	Cdeh+rUFChPC6BYLUrLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtu1a-0000000EzMj-0AP4;
	Tue, 11 Aug 2026 21:28:42 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtu1X-0000000EzMF-2iuB
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 21:28:41 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4996c452e95so295875e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Aug 2026 14:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786483718; x=1787088518; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Gp0euUyLe4l7U+iJjP259imx6iGI99L5pT79qh+F49U=;
        b=fRQoSn+mvTdyMdyyg6cpkICwE2WCWlT1EyeeASR4nBpvdj6j3m3O01TJD//43mIspZ
         l6S1ndCQJ3TkYvfuHk3QotoEDU4rkuD8WMWA+0MZHUwQrZMcm5oMA3U0B0Pbmh1i5vrG
         vRQJ3GiPTw9in8B2G8NPRH6KNmaZqc6UUSaUjBtpUvrGXXXJcU3ISOw0CyTV7h4XEgeJ
         ce72vQcsZM1uZVsJWjY7bFvnl1uu6VMS5W5MEaMmj1JwL4WVSlxNolnbJOm4snphgkhh
         99R7Cj3YThsiP1dfO62Yp+ZijzpY5enVyh39mjEZgVc2BwGu4FCkbNlhyCRnSENOZgNr
         5WRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786483718; x=1787088518;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Gp0euUyLe4l7U+iJjP259imx6iGI99L5pT79qh+F49U=;
        b=Ap4hRUsIOGxfsqUUNm+jDKcr2TF0u9et9lnrhzcYZd0L8Ed7fZzdplA5ilBm8EQkOr
         mEqHuawSftxh8cVlEm2V+ygF8vOJ3j1t1lBw8WLPkqsJTzxHvbis5WU2dOSFR9Qqgi3s
         QNJKE4HOxI2PU6KfGjeg/caNPFSDGRwt/EAIYGXxy6tD0j8urZJDvKqjwKEXOZoL5xUZ
         0A2xkJg9JEeEivr6aacD2n8nW3b3bmlVTD4vQAgYUPHGtNLAtQonzTgQnhKGhA38uaSn
         oRKxfUAyvmN58hXG+5oUk0ETPrlnOZBsciu43T7uznUZl6aDQayEgHSSeGdaLG3Albqp
         eoCw==
X-Forwarded-Encrypted: i=1; AHgh+RpZe2MzZiHtzZdEUBkkQeop3ocl5vLw4tnwMakASpPe4aJafJZ22Guxr52uyIqr8vAN8a+XiksMaaBpHkwETw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzvzkSxw1vxk0VvNu1VFnvgPhRA17kLQPwXmKupuyOx4kSgSiwv
	SZNGY2O1ADzkCqbHV6C8ltCJ8SRdYhotNzravnJuhiQzO6hXYEAbgWGU
X-Gm-Gg: AR+sD11TGbUYMJN2i8LIJmMxHA9oBX/yAmo9RWQl0gXE3VPkE5l5cpz7w6iMKchM6Kk
	lmpaqUVGA5o3tq2yH1yzKhigLsdw0ovYS31pFf5HmL0by/qHzpRwDq9VLpD8SNuedFOntEHDxd4
	rkopkC4rxS9B0jROGVbMhCa90zS3PA64OlQd5FOr3OHprDry52/Ph+s5B7vcRRBXmTCdc9uhDTZ
	PqbHW0uXLUb1b5/IoQaQBSwyx7ZW3ohxFDOIEXzVlL0wDR5i0XZP73D6aqfh3DRNf1b4houqNMX
	j3reC7M1ubU2vMzoCUF8iDF/2Ec54WUkbm13J0u885xsfXYUO+v9zSpehvOWl60OYuXxeb6Xj8U
	/7Ik6HxNqmaEFH34cGwwnlO0eUr5sYXjrq0dPurRuTWDME1pP+AzUdi37ka9ksTAjjYBE/oLvSh
	X/n08QiXppgPq9EX0FXOmbsz7+BdgdL+e6iTzav0kkAD4q3Lqjw1dwDs87PbTZo1qtM0TG1vo9u
	OsKPY/rhySsy35z3YdLtYVlb2EkemfoZl3Mrvnd8nKlWs682N9jg4h84bIxOoJf8y1V/w==
X-Received: by 2002:a05:600c:a48:b0:499:73ca:c419 with SMTP id 5b1f17b1804b1-4997c12c6c7mr1024745e9.4.1786483717603;
        Tue, 11 Aug 2026 14:28:37 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B94ED005B06BF1B5A09FFE4.dsl.pool.telekom.hu. [2001:4c4e:1b94:ed00:5b06:bf1b:5a09:ffe4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48150c057f0sm1359078f8f.9.2026.08.11.14.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2026 14:28:37 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] accel/rocket: request the core clocks by name
Date: Tue, 11 Aug 2026 23:28:14 +0200
Message-ID: <20260811212818.10487-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260729130743.128876-1-royalnet026@gmail.com>
References: <20260729130743.128876-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_142839_702955_C94ADE4A 
X-CRM114-Status: GOOD (  11.57  )
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

Hi Tomeu,

A gentle ping on this one. It has been on the list since 29 July and has
picked up review and test coverage in the meantime:

  Reviewed-by: Jiaxing Hu <gahing@gahingwoo.com>
  Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
  Tested-by: Sidong Yang <sidong.yang@furiosa.ai>
  Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, NanoPC-T6 Plus

so it now carries two reviews and two independent test reports, covering
the two NanoPC-T6 variants besides my own board.

The reason I am pinging rather than simply waiting: Jiaxing's RK3576
enablement series is based on this patch as of v6,

  https://lore.kernel.org/linux-rockchip/20260806063413.350184-1-gahing@gahingwoo.com/

and he has a v7 in preparation. Up to v5 that series carried a duplicate
of the same hunk, which would have conflicted whichever of the two landed
first. Basing on this patch is the right fix, but it does mean his series
is now waiting behind it.

Nothing has changed in the patch itself since v2 and there is no open
comment on it, so it should apply as is. Happy to resend it with the tags
collected if that is easier for you.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
