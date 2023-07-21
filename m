Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA76EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 16:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+7qU2YUAW4TTqqQ2XT9CVKQ+6jUi7Oy5HeqH5imrjk=; b=g8CUCFxnUd/aNY
	wlwK9jJPOoPu4Wr7i2ZuEhoEprKi3wdDUhxsgGB7ByTTCofmJ/jHjmXD0mnlfvsNatV62Bm1vvs7s
	6fp1+oDcYYRhTF85F8MaA1tDbw+xW5heR2KMuPP0BGJyqo7IYEOxS/WgbBtfdkmrXKieayHp6Hi4n
	AR2VO/P7VPRC43aBoBth62iTkBMVS58OFSRNQ/ZdPv1ZesCRPhJPfyg5YpWWnRXso+vvdzfGgQVTz
	GOZJDt9oC8qgxDbAYrjjX+/j0sDV/rj/DXCiE7NTldFB8vick2rHsGknLO/9lGKOAK1xuqZjEwlwz
	GM4DQ524q0CTt53X7DEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMspa-00EYtS-2M;
	Fri, 21 Jul 2023 16:18:14 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMspY-00EYrt-1D
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 16:18:13 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3141c3a7547so1659209f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jul 2023 09:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689956288; x=1690561088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sA2hRH6tfaw45jC8b+muVq/w9g9VDpgo6qGxGygAeH0=;
        b=CNaUEWo8mfPYc0zH13AH7uE+VJ33ncwsDfdCgXuFzvC8SlNGdExg4bpxcTRa+TfV5d
         3f8jlokXgLYla/K8kMKXsOqRLmHlmMWezK4yMk82QJ5hmbYV4Zm9LHPm4oBqx2V3ks9U
         MuqSF6EN3h+7Iy5uRM7S7zOXJquE/PLH1X8lMBSSCMsFdxK49xpu+I8cwPVo4OvUWhuw
         rE9qk/zyrkGBfbW6LY4j7kvVBMk9/6NC3iil7iwCZoz+X5GhD3r/9+JG1lXtvKnmvDKw
         J5VBOdlp0lK6Ey3eQHN8md7m1243EbhpSfyMB0jHLGaLIfGonIDXdBvrOf/4dK+YVC65
         ZY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689956288; x=1690561088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sA2hRH6tfaw45jC8b+muVq/w9g9VDpgo6qGxGygAeH0=;
        b=FZlo51CcLP9CcBVlec69cs1zx12kZ+Xx+LRrfgCjXTzG5JPlN78B3AYrLB9eNjdMVr
         LaYUjXAp2rzdZGSgjgZCynQiUup3V2q/D4PlrMSJjkq5DM49JVbA2WbZzykE1idCZfoe
         n/TPl3NLZwuM/4FwmUj79VmvE9/e3UEHOCuBc2i8XWqlFj4+obAslkctLxljd8saeLx0
         zpvvVf9jRcfOFZF+I3pirmiPoDm/mvNhSyGC6ipb8f/sEQwg8MYlsBAD3jW/cwh2kItg
         LKqSCT+TRqV11nHTj4+Po/Bmay/UjaVQv95kUyWzre6Q79WSZbmfQrP9hyo4xt2wFdJ8
         jNog==
X-Gm-Message-State: ABy/qLZuykoKbybtzsK7/117t0Ze4hmOKkKk4aZakose2Ov8U9REBCFo
	c71N8C5IJn55+ATaSNdvm8Eb5w==
X-Google-Smtp-Source: APBJJlFeAtdiYRavePrg+Tz7Q8In1dPtMAHvPMuIL6njPICT0ZwKprhmWBq+pvu411ehMEOjv5G8kQ==
X-Received: by 2002:a5d:5909:0:b0:313:f990:c631 with SMTP id v9-20020a5d5909000000b00313f990c631mr1736281wrd.44.1689956288564;
        Fri, 21 Jul 2023 09:18:08 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id r9-20020adff709000000b002fb60c7995esm4679564wrp.8.2023.07.21.09.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 09:18:07 -0700 (PDT)
Date: Fri, 21 Jul 2023 19:18:03 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Mark Brown <broonie@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations
 with RBTREE and MAPLE caches
Message-ID: <e61ebbfd-98d2-4dad-98e7-67d81c0cc04e@kadam.mountain>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
 <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
 <c9614ffb-7840-6a84-883d-ed4371d75c11@roeck-us.net>
 <205a83df-c67b-457f-a9bf-a9c6def4bb3e@sirena.org.uk>
 <1c90db79-4a1a-d3cb-5250-f30cf6b5a90c@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c90db79-4a1a-d3cb-5250-f30cf6b5a90c@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_091812_490839_E4ED59AD 
X-CRM114-Status: UNSURE (   9.55  )
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

On Fri, Jul 21, 2023 at 09:01:03AM -0700, Guenter Roeck wrote:

> Dan, let me know if you don't have time to send a proper patch.
> I have one based on your suggestion prepared that I could send out
> if needed.

I sent it but, aww crud, I forgot to CC you.  Really, get_maintainer.pl
should add everyone from the tag section to the CC list...

https://lore.kernel.org/all/58f12a07-5f4b-4a8f-ab84-0a42d1908cb9@moroto.mountain/

regards,
dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
