Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9231BE7FDE0
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 22:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7sfRcBFfDIrJ2/CZ4ZIUeek7APbNBG9k1mR19NWn6Q=; b=Kqq1CcD3Z7DPZL
	UQlSImyIl+7BCCnHGH37e2t+ps2DT9N4cyElvQnVneVsNrRjf/U1g6bWXHuuI4LDT2q42yzIt1YTA
	s4scSR0W69k5bhtRgGLWbNUM5YhTEbPyP++EAG+vr8tQh6Itw7/b4uawbbOYyB4KkFtW03pklfh6p
	+sNespyjYIgpehGjP9q/GOvGhV3Dn3nsfsDfhyDzm1TlgV2feejDVa563r1ofg+GDMSXAEQsT/E6M
	2PGdr50gMq1vnfzB7IdrZRu8tGs5IEEyW5jX2XHi1sJaM+YeNjLfnuOuYLfvk//MpVpmuwQ8eR92k
	SOOqQ0U/bfKLz6R1vLkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn2fw-00000005isw-2BQl;
	Mon, 02 Feb 2026 22:45:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn2ft-00000005is7-0gGo
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 22:45:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso1821515e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 14:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770072339; x=1770677139; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JGqAdrVHnFu6PnnaHfHKQoFDoCwgyHq7ziHIdTjOCQs=;
        b=fLTRpG3XuGS3BescqRhZBLLNh0qNjkib9YpOolmuzt7qVop9y7Yw4v9W60nQGYMBJp
         uHtDQrLWD0IpvG1sobCOJaLkyojqGT8pQGnxXxNonNzSGWRPvEW0A54RVNYSYFUvC0Gp
         bEwRIpbhgtYHbJR1gazobZiEQ/syatzcGC0dbJzpnirdRJewVw37DGZXiGppgybDiM76
         W5aHXZIrqzfjV8fuVby/r4i1m/F9lbcjHXG/pwLf1hnFyyq58kPb2m3XuuJ8xEK5y7ss
         A6sJhiBYzvp7S9ffggdPnomBnsxqo++eEAZ0Bd1sVErG7Qjp7Rqo2w9Kt31gaL8TdOSL
         NOLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770072339; x=1770677139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JGqAdrVHnFu6PnnaHfHKQoFDoCwgyHq7ziHIdTjOCQs=;
        b=qMj8QklQIM2rxYCvjGhbQVF3rHqBFmGdbmW1DazLfHL2uzgBbVLFhoG30Q9RfrkY3X
         Ff3KpNDkP5OSuSolY/OJ+zUoz2N7wg7p/i7VFBICPQzzBlABZGq2noRrx5ITFhD4jI/E
         Ed+nXonVjNaUre167BAoC5plLskdORuBZQKoP6Ojj2EnwCddEXhaSPepDnsFbYin4IEt
         uLei1lS+TQ1dElrvLUTF8qkBLEo9SQa4iEXjV08QT4Fcp7a2m5mTvhVgq3UeTUj5+uC8
         C88ntkFBoec4gFJoInDZ1Mj2FRQcZhLbKwyIE6RrMk6lW1q9dK02fIkMcAxOJJkT+Jik
         zCpg==
X-Forwarded-Encrypted: i=1; AJvYcCXKeBIvzMbTOujyu+ElzbrohYffHGhroua0WY+8yui6TekobHyuwoMpnkZDh+Kxg0HIaLm5hhmh9SStI1ShIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzAnqhENwA77uMo10uBlAAhOB/DmzuGmRlOtYFDghN6QZzOSF98
	DlqFZpik0lo8Kc6X44eRjx/0C8NSQm80er7jSiLwQJFB/asL7GrjYkFK
X-Gm-Gg: AZuq6aIHCvxLjuJozROj2KnZlysLETddvefQICw+tVHyD7T1r69n1oYTppX/N6caehm
	HliA28wQD/llPrm5ZnrmC/bckLZVlMi802mTbbOCC/rQdxlgdv70uODZeZHsoEknTipqnuv2iSk
	F9pM4RxQt2SA7xPAvX9IqZQ44rCMcfyUdKNoM9ZFaBxrgZccCaVP94dJvoPkaAjpNRVYDP2uSRc
	p7ZLJRtLvfZ/SV3N7pFXNpvEGH1A1Gx88/glbK9HN9eM92SyXkVricVUgsRATxJcukva9+/K1RK
	ztN/UI1u7pjKy/48sOa4I3R05Osagbmal7Z2Vrc/wwSv9P6A1x57exw0HOkr5EhsQpILWjtxEvC
	2ZGv5C9ZGzl6X7FOGMLgh4m8J2O8wbB17nm8uQHRsRUlwvunb0lMFDJVxperrLTLvfk9G7OQIGi
	78qpPaSLg8Ur3g5nSdyjIdsebnsssL38Mv0wbyPPfxyvMDikTznGBq
X-Received: by 2002:a05:600c:6303:b0:47e:e59c:67c5 with SMTP id 5b1f17b1804b1-4830513aed8mr18382505e9.8.1770072338747;
        Mon, 02 Feb 2026 14:45:38 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482e2973d57sm100080575e9.18.2026.02.02.14.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 14:45:38 -0800 (PST)
Date: Mon, 2 Feb 2026 22:45:37 +0000
From: David Laight <david.laight.linux@gmail.com>
To: "Arnd Bergmann" <arnd@arndb.de>
Cc: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>, "Arnd Bergmann"
 <arnd@kernel.org>, "Detlev Casanova" <detlev.casanova@collabora.com>,
 "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 "Nathan Chancellor" <nathan@kernel.org>, "Hans Verkuil"
 <hverkuil+cisco@kernel.org>, "Nick Desaulniers"
 <nick.desaulniers+lkml@gmail.com>, "Bill Wendling" <morbo@google.com>,
 "Justin Stitt" <justinstitt@google.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH 1/2] media: rkvdec: reduce excessive stack usage in
 assemble_hw_pps()
Message-ID: <20260202224537.16c16e13@pumpkin>
In-Reply-To: <070cebc8-3cab-4f32-a203-9456506dfcc5@app.fastmail.com>
References: <20260202094804.1231706-1-arnd@kernel.org>
	<16baade123f563ea92e6117bf78c56e8617daf14.camel@collabora.com>
	<3b89635f-1c1c-4e4e-b0a9-2bbd0f21bc90@app.fastmail.com>
	<da9f044152383cacd50989b025fdce08a654bbe3.camel@collabora.com>
	<070cebc8-3cab-4f32-a203-9456506dfcc5@app.fastmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_144541_229910_D7E83050 
X-CRM114-Status: GOOD (  12.31  )
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

On Mon, 02 Feb 2026 16:59:05 +0100
"Arnd Bergmann" <arnd@arndb.de> wrote:

...
>  - Since most of the fields are exactly 6 bits offset from a word
>    boundary, you can try assembling all the  *_field_order_cnt*
>    fields in an array first that has all the bits in the correct
>    order, but then shift the entire array six bits.

How are they being written to the hardware?
It would be very unusual for hardware not to have things 'reasonably aligned'.
This makes me think that the data buffer is actually being 'bit-bashed'
down some serial data interface.
In which case the simple solution is to give the function that writes
the data a 'bit offset' for the first word.

And to re-iterate C bit-fields are completely non portable and entirely
inappropriate for mapping onto device registers.
You can use C structures (arranged with everything on its natural
boundary so there are no holes) with members declared with the correct
endianness.
Indeed that is actually preferable to using numeric constants as the
offsets are tied to the correct structure.

	David

> 
>       Arnd
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
