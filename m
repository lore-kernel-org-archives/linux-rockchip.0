Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC806C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 10:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H++oQoasn6RsKQZA4jJzi+SvZxlCOVlOgAOV4TmwZQ=; b=4QJWA1tXxPg7Jb
	t3PD98qw2T+ItDQBcVJv7+fjMSNQuv40S/qJgRpVGadrCH+KCFNlDjnbq9WLOaEdcHn2cTvXThssx
	gAmTaV8EoCZYDMTBMBIIjAziCHFVpB+VDZ6g7x/NxqAE2LL4DIlu6z2GU20/Rvu5o2RejTQM6JDdf
	s+ExYJ5YALB1ZwOSI4/upxPhUPD0zfb2bP86oL0jRlgI6/sgNg46y+K3pTAUyDbzYBeR0JLWGl5qa
	7SFKRbm7fswchWNSPLqdfw0SfkRlfqjDNYXvlz6LGyfVpI95XiqqXnxSvD/K8xGdqyiKsz/Nvk+Px
	8lHzNumgHiey7qXKscZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setvl-0000000CYES-0mOS;
	Fri, 16 Aug 2024 10:11:37 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setvY-0000000CYCX-1W8l
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 10:11:25 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52efd530a4eso2934896e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Aug 2024 03:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723803081; x=1724407881; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jgW8qR9dd1GpYhXPsruabtVGV0P70quPl95KW8r73/M=;
        b=DR75JxZF7YqHAurEWyEHRbz/kJop9kHmidh6mHaot4VI3hc+F9UN/bBY3v2wQ3YeMI
         b4vqWPeiYPfyVoL4dnDU7zlWaSAKuucQttzxR+k3gPk7GawL+zRzyv8RMlTjzocr2MKL
         h1Wsvks9XGChbzJYb6QRV2EiZzQtQWzPmWPEnGtwKMvsGq+/7KPQA8MaTCR8i8BDF0Y7
         TpJjN3u79Sl3dwr4sWc7tUO3az5Q/jB1B/+RLg33sJJRLWxXycavsX7RTD544LMyjyDg
         TDjJyi4tSvdN0PIMOH6HI9nLC24Sm/FXrT3QqqPNbPpQVZrhd6zjkDunk1iirbz+NevT
         +3jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723803081; x=1724407881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jgW8qR9dd1GpYhXPsruabtVGV0P70quPl95KW8r73/M=;
        b=tN0XxOKysTwwfCj9tVCwL5KwB1etYKxN6nHcPoBCMfLK5eA/deV6l0Qec51POQ35DX
         reAHOeYJru73AW0TenYcVbF9wvlLm0eATic4iuF+09RFT705u/pKzI1LJuJFx7rhP+iF
         gYC7hcN+Of1AMvXqn1oDzmOzNqKm131qMT4fcJnnqKq3BPiNPtJcqmO8Jtmh/n+4EU+F
         kQWAtvxpazyhDv2dfK7DcsDx3J+v4S2raZ2orFGpNxJxkPNPlDqof3SLHdZXHWZ0YTFJ
         tL6tqqkm+7WNolgVynRus67HjCoybe1dB3vEjay+yP1oTVbfsftP4IsMQDzrPZCcMWcq
         TRAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwOCbU2hMAAG6dWDN0+DLuFAvv5W2y89pCZ3b+betyClXjZRtMIxUZvxGAXRT3l5sodgauiWhLyCbHotX76vq7ZlJkcFv4o1cz4b8FmK6UIfWF
X-Gm-Message-State: AOJu0Yxtf3B+vTEzAsUTi96Lc2vfKnQGthbfxlygghPIrb/KV9oNTlKt
	0cY/PblUz7cstF0P0T/cHMMcdFiQd2kxjyCfAA4GvLuMGXxiJV3IhFIkMW3QAlLdJATJ65YUCMH
	HSoL12zeMrgcdPy4V1QzKC7uTyzcGlYFQi69pbA==
X-Google-Smtp-Source: AGHT+IFcVVXjGoc/qGWPxsaC0pBLaWdPcEgyZ2BKX13uQ6PcUDXE3ldI/yAxzls/u7L0bahDE7nlrnrf5QbmU71tWFQ=
X-Received: by 2002:a05:6512:2356:b0:52e:767a:ada3 with SMTP id
 2adb3069b0e04-5331c6e38afmr1553665e87.47.1723803080819; Fri, 16 Aug 2024
 03:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com> <20240815071651.3645949-6-ye.zhang@rock-chips.com>
In-Reply-To: <20240815071651.3645949-6-ye.zhang@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 16 Aug 2024 12:11:09 +0200
Message-ID: <CAMRc=Mfok1T4xGvdKa54Hy9BocuFx5g4zrK8eSC3Qivhhmz9xg@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] rockchip: gpio: fix debounce config error
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_031124_576918_59D77352 
X-CRM114-Status: UNSURE (   6.88  )
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

T24gVGh1LCBBdWcgMTUsIDIwMjQgYXQgOToxN+KAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiAxLiBQcmV2ZW50IGRhdGEgZnJvbSBjcm9zc2luZyBib3Vu
ZGFyaWVzCgpJIGRvbid0IHVuZGVyc3RhbmQuCgo+IDIuIFN1cHBvcnQgR1BJT19UWVBFX1YyXzIg
ZGVib3VuY2UgY29uZmlnCgpTaG91bGQgdGhpcyBiZSBhIHNlcGFyYXRlIHBhdGNoPwoKPiAzLiBm
aXggcm9ja2NoaXBfZ3Bpb19zZXRfY29uZmlnCj4KClNhbWU/IEFuZCBhIGZpeD8KCkJhcnQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
