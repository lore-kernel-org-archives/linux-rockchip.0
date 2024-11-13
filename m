Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F71BD41D4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 13:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+4g0bG6OGvdzAtJ8/UNT0vequPD89bFk+n21IpdCtA=; b=CCAbXWDUzMU6SU
	+eN90vSE1qk92JfTyyBbEm4aOl7WTIhFS/0lIDPiC7cCodvm3y8Ef+UaciZPh+NLy9ZQjLQsRFu/K
	VZ8GgopPNApnu5SqGwd/j7rzBCJDCFENooJ0kxVC1NL1ViBPmFmkIjORV3uexafj8LsjvmiwUIHBR
	mcGC7rGJt0THO0o+GQrhwIJvOBqBgn/u5nvJyUhoV3hm3p9oBAlKN5bdbwLBphShneevYSuOWvdYD
	8/tf1b0gEqVR/rigcDiynJDsWUzhfuvDAkJUvA3L3GbxDUODpyOoElPuOocgq7bcYHHfN+8TE7cZL
	4k3bjhyYRwtYKJy8HofA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDLd-00000006tvs-2zWw;
	Wed, 13 Nov 2024 13:23:53 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDLS-00000006ttT-3jTl
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 13:23:52 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2fb498a92f6so59163871fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2024 05:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731504220; x=1732109020; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WuUoL/3Od4PAfLx0IEVL7oxlLvlZraYaALoxt1cPU/4=;
        b=LXz82o2MYKVRxGg2qKJeUro9xj+VAWqr8H01gq/Wx5WxJayU7qiPrcaMA+5hO5pPL3
         oNDwntCF3j70qfMRuGycitM/8UmNZyBC0jxFErBpvdnUSMb20Anddb7dps+dfHhGisYZ
         aDfbOd7L2NjQhzm9tX6Vt6XXcqmMXjM2XzyENr82joOxS+ORLge6fk/qY9hoWzUT1l0I
         hu2XMIY5dr0UNsOwglB0VnXQmoHsvOiU2ftuZUxxoBHt1pHtpvPqoLrP56at9RDtjVEE
         o8EKIA78Zuogpt2os0s8hTgMYoGOEk4M4r9fODzCax9oxxQ9++NCojEgZITN7eCwYK2z
         7Faw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504220; x=1732109020;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WuUoL/3Od4PAfLx0IEVL7oxlLvlZraYaALoxt1cPU/4=;
        b=gDjZkNdYk4hOj9W2zSPG6fOMgniYBScXSrfpZMmkqwSPX70dKorq20+0MpOUb/S41O
         cDX8ONOPpp7HE3hOsE0t9LGAii9YgMx0n4gAJlWB04t1yW5WKc1MMUav9A8Ux11k3hLL
         2H2/vqM3qnuRjUFs3ZVzz0eMMnryTb5/rixA4CWq0asLaqNM2I48GkmK1CUuRdnVhRBC
         9n91sgn+HXLmlFVFBGah646eSWyJavHxI75jNkwORNX+kYWjGr6fo3o9yeSImxq8RPdl
         YYp5ts/4nko1MUh++EUe84IVnAUh5L++WVArMzUaPRoZOXxqXH/du9DOwfgAuSinrCqd
         C2fA==
X-Forwarded-Encrypted: i=1; AJvYcCVo6WZw1jI0hJfeJCdfWq9zB4Xl+2LiRJftGTFn7Xz9VSwpuZCcrlwBJaE4f0RXRvFqh//dtan75VWjgVLHZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YylUG6RD1XqMA4rBiufKsCJJEiYlKHoSk8qqvV3rYCeGhRGEJSH
	bZdL+7lEzz79/SWQws7KcxLZgSS/xIrWEg7M8c1TskEs72XcZrEHzTYWUO4CEcSkazdKNIp6aI9
	RIo+BKDJdRHIFFXMof16DOmlIxV9D5b/Lna+eMA==
X-Google-Smtp-Source: AGHT+IHPQaK5Q2KrP40p6fsjtBW+uQBglC9BCYxI3zoro/0CrtBDXagUb0BV8QyEJHptozHMaCqcNJb9txvKEMn8wa4=
X-Received: by 2002:a2e:a552:0:b0:2fb:3bc0:9c7c with SMTP id
 38308e7fff4ca-2ff202e135amr113365511fa.25.1731504220103; Wed, 13 Nov 2024
 05:23:40 -0800 (PST)
MIME-Version: 1.0
References: <20241111023412.3466161-1-ye.zhang@rock-chips.com> <20241111023412.3466161-2-ye.zhang@rock-chips.com>
In-Reply-To: <20241111023412.3466161-2-ye.zhang@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2024 14:23:29 +0100
Message-ID: <CACRpkdaswgKiFXQMHgAW=eXCw=BG3+2oQTwq4PaAf7--vUiKiw@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] gpio: rockchip: explan the format of the GPIO
 version ID
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: brgl@bgdev.pl, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com, 
	andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_052342_954136_99D9EBE2 
X-CRM114-Status: UNSURE (   6.37  )
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

T24gTW9uLCBOb3YgMTEsIDIwMjQgYXQgMzozNOKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cgo+IFJlbW92ZSByZWR1bmRhbnQgY29tbWVudHMgYW5kIHByb3Zp
ZGUgYSBkZXRhaWxlZCBleHBsYW5hdGlvbiBvZiB0aGUKPiBHUElPIHZlcnNpb24gSUQuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBZZSBaaGFuZyA8eWUuemhhbmdAcm9jay1jaGlwcy5jb20+CgpSZXZpZXdl
ZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgoKWW91cnMsCkxp
bnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
