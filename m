Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC2E8C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 09:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSUg1V71nmEXhGtjB0pMvDezPwhnWkvW6rVp1hqJm14=; b=z4CUup5vGk+n8P
	vvC1tAvw3Lp3ymTEAZDD20gbJRNJYS5qTctU9RtzvfDXwDm9LlxcUjlTrRmZUrPchwHR+LmjydWHa
	uhK6A6imYFq1loe3DnZkfiWqMuIZ6sboXegHKO0W/TU651JCGnPMpcVkFftKAh5xd5jrLFOBrbr4t
	SZThu1nPnmZdDfLSmiEX7IROyN5olZ3f0LmTL7oXpsGDLiE8JUL7fDX3x4XFHmehfcihN9Ejpn69K
	V0qkPwrQSeKd9H86Yfgi7XhhTdJ4GXb8igoV7EeSQrIhI3ouJ+Ke9d/JcWC2aUgOnAs0Z1laqMGiQ
	kpBbqiia21NqC76/BDfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setZy-0000000CU4H-3zWQ;
	Fri, 16 Aug 2024 09:49:06 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setZk-0000000CTzH-39vO
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 09:48:54 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-52f01b8738dso1698043e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Aug 2024 02:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723801731; x=1724406531; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YgticG9dxHj5aMeMFYXDjN5eoKKd0nnxiMOkIVpF/ZA=;
        b=pCXUezXrZxqcDalofoqJ2Jlt3nVR3H8r2kMOQcxmz8dzaJTdkOHw5W+5jc6CPRdPiY
         yUaFJP7gv0ZoW4UezaHl2YA+HEcIrQ8cTKfaTyocx3emSrfdPxuKe3KtPG82pAye36mI
         59HP9DcKdJxr1TcQ9EIW37LmqbF+UMXU/lq7NOGQ13qzRA7Ll+3sHFX6+tYuZy1h1xV6
         n24CgPbQizoZfO/RW8+Uefs7lupsiJQ14TTO0XSTXo33B0PbDVXdWF84R14M/23l3yJX
         g6ZUdO4eG8tBDWo1MQXZhHznwIQlj1S1uiKNVVs9KaqLb3Bwxfc1CS2H/umXzCfssGPM
         tPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723801731; x=1724406531;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YgticG9dxHj5aMeMFYXDjN5eoKKd0nnxiMOkIVpF/ZA=;
        b=aNAme/fpxap8i+CJ/Q5k1/Yua8dAhEagW7C7pUhbM1ZfqsZRCDAtBhhamgSQDXcSVY
         ynyeZ+RS9jB0WVlVvIVCRKTA11YyDZs2ToNOqRU1S8QffKMEa9UyPKRi52zBD1dURfOp
         DU/dKPKV4ERddmLjzgohEshs41aofjvG2S3rj1kjY35LLjU60eX6m+TFYzYw+ppzjFpr
         wyJaDSBmzv9s6KHAXBhzCkoo5Cb9x+S2CMRhtqd0+bMKrw9CFP8HcImVwYuT43SObs0w
         g3wgfMSpFbfmezXGExv7HbPCgifXA8pYTkgbu+iY+ANBdE/lSGi7qI4EjcKxwVQtiOBd
         M+yg==
X-Forwarded-Encrypted: i=1; AJvYcCWmhoXO/Tzq3wxSSbdVIYPHNooWQ2a3+xySGboRLMWHiavP2DnZjdnZaXH7Wd5dWGkU88sMAYEl9K6X9IAZsavahCMNu1mZn9a9tKxmXmasOOGO
X-Gm-Message-State: AOJu0YzshobHzQQPNwka3CL+JTpJv8j+lOhLweeoSVyinw+oeA697Lci
	171JfwrZZCHLkIClfaI83lyxKv6DKiB6PEEqGFYdcw5lliSnRWgXPZqn5dupb+REAJi8aZS8I3y
	DcY4xU07Ag4GD6gKvuiBQFlKQRSpus43p1+0hXg==
X-Google-Smtp-Source: AGHT+IFij/jJsP/niqDckTb0DeGvPRhcCSmaDzREmmynoAVx9zNL/PyJ/e5FT5YitoKM5rpx+usdhEOKsfU75w8yY/w=
X-Received: by 2002:a05:6512:1111:b0:52c:e01f:3665 with SMTP id
 2adb3069b0e04-5331c6b01aamr1377360e87.25.1723801730065; Fri, 16 Aug 2024
 02:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com> <20240815071651.3645949-2-ye.zhang@rock-chips.com>
In-Reply-To: <20240815071651.3645949-2-ye.zhang@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 16 Aug 2024 11:48:38 +0200
Message-ID: <CAMRc=MfFJBTExgUah6tz8ceB-za=GcR6TxuXt0720ykBo8L8ww@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] gpio: rockchip: support acpi
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_024852_905324_A7EF5A86 
X-CRM114-Status: UNSURE (   7.04  )
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
LWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiAxLiBzdXBwb3J0IEFDUEkKPiAyLiBzdXBwb3J0ICdjbG9j
ay1uYW1lcycgZnJvbSBkdCBub2Rlcwo+IDMuIGRyaXZlciB3b3JrcyB3aXRob3V0IHBpbmN0cmwg
ZGV2aWNlCgpUaGlzIGlzIG5vdCBob3cgY29tbWl0IG1lc3NhZ2VzIGFyZSB3cml0dGVuLiBQbGVh
c2UgdGFrZSBhIGxvb2sgYXQKZXhhbXBsZXMgaW4ga2VybmVsIGdpdCBoaXN0b3J5LiBBbHNvOiB0
aGUgdGhyZWUgYnVsbGV0IHBvaW50cyBoZXJlCnNvdW5kIGxpa2UgdGhleSBzaG91bGQgYmUgc2Vw
YXJhdGUgY29tbWl0cy4KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
