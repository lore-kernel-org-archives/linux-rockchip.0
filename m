Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 054F1C7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQUXlLlAkaQTJ1AiRtLXkyoIZ/RAPY942SwVyj/mY5s=; b=lTmJEjnZooYkvw
	Dhbe90lSxdB0KHfYPFKcfcIwoDital2vwgY6s2JoWOWfrBTZU5mjVca/xEFoCRtkcZEL3D4CsCFdI
	UPyTlRoELz7kZgI3L+JX42/WPtSQqdu1pCvw1OPdF6/qILO3l9oU+9sDyjW/P0XYAEX79yk4aQTaq
	6C2gXh5PX2Fu/JAEcujlXdlluo+kuo0Dw5iXiENVfJHfreoyclnyo9J+TZz5kcJ94oXcO62Mo0Lpc
	t41hy5/PtB2uMgIf+iJliiEZvTlZ3j69+rDKCbIoRRs5e3XitO9o0gH+LGqtm8gzeB3yH9YhyntyD
	6R9LBZVpRVbt9q3uEeWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBXx-0000000Cbyh-2zal;
	Thu, 19 Jun 2025 09:27:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAns-0000000CSV9-0DKT
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:39:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 46E484AC2F
	for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 08:39:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23D8BC4CEF5
	for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 08:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750322363;
	bh=Af1OBCdjmgbt/lD9KT32L5IXYHmC0HvCKLNQiW6fK9w=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Csh8OR/pk9BFeNnwmvLfFJG2JwmWeRuYOUoDSa+zSj9lRB1ZY/XlsL5cqON4UBYfT
	 ioVVAYqhvrTTZakzEiywyCQXZEcqZiTfWyccel4wCkjQfX3nM8Y1r//TP2rQrDIh63
	 QUSKrx/IeUGfqXERYQNcTYfEZIU3c0+dCr4+OJE2xeIZk5+Y6iOwlP4LCKbcGzppg6
	 YoBeAFYEidFfiV5gZwsYBXEexzL+0qcll7sNXfjMQ4sYlALzp8sr8t1hHYodFaiAkw
	 eEAI4C12T8jRtDiKMcZltn2jtsqJKFJPASK52m27RswXlJ/2qWJwm/dCtoZKo/mpyn
	 clP11XuDD/OmA==
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e8187601f85so552516276.2
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:39:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWXkAa9WNWtiTuLWH4tcEi7oi1TeSuzt7IEd0r15ryuMnhdQThxIJEGkajVVMV+YbE83GDxqszl3S38H3PW/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwIKxuS03MYiEPCuzz4bTLa4MYjPaPONnUpXNBuLJKbJRmq7q0Q
	yKrtZYIjLxNaWWRConLp/NHDvm7V1I6BUyTZZswUEu/mudNul6ppYLMemrXjxhZrcjJ+kl5j7TL
	1209fwyP70ImYCrq7oZzdqFLZmr9Iu1JzTBQ3aDmRng==
X-Google-Smtp-Source: AGHT+IHFhbTPC3IHdAEhse776L10W8aRjQW3q5wXxAWG0QvKzfsbI08GKkjb4oJHnymnKzxYSdGNC0f44vXXp8PZN6Y=
X-Received: by 2002:a05:6902:707:b0:e81:838b:c58c with SMTP id
 3f1490d57ef6-e822ac0a614mr27592560276.20.1750322362356; Thu, 19 Jun 2025
 01:39:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net> <20250606-6-10-rocket-v7-1-dc16cfe6fe4e@tomeuvizoso.net>
In-Reply-To: <20250606-6-10-rocket-v7-1-dc16cfe6fe4e@tomeuvizoso.net>
From: Robert Foss <rfoss@kernel.org>
Date: Thu, 19 Jun 2025 10:39:11 +0200
X-Gmail-Original-Message-ID: <CAN6tsi5Q_az2zYGLhNxvxmpZdHXusE-Uxwe9N0nWobdGQSVjQQ@mail.gmail.com>
X-Gm-Features: AX0GCFtRCeI0XKT_8-8WC0wDHRHS1a_MhotfcVvZBvXr_sxNNlpYqYYLoNopHpg
Message-ID: <CAN6tsi5Q_az2zYGLhNxvxmpZdHXusE-Uxwe9N0nWobdGQSVjQQ@mail.gmail.com>
Subject: Re: [PATCH v7 01/10] accel/rocket: Add registers header
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013924_108521_6790D109 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gNiwgMjAyNSBhdCA4OjI54oCvQU0gVG9tZXUgVml6b3NvIDx0b21ldUB0b21l
dXZpem9zby5uZXQ+IHdyb3RlOgo+Cj4gQSBYTUwgZmlsZSB3YXMgZ2VuZXJhdGVkIHdpdGggdGhl
IGRhdGEgZnJvbSB0aGUgVFJNLCBhbmQgdGhlbiB0aGlzCj4gaGVhZGVyIHdhcyBnZW5lcmF0ZWQg
ZnJvbSBpdC4KPgo+IFRoZSBjYW5vbmljYWwgbG9jYXRpb24gZm9yIHRoZSBYTUwgZmlsZSBpcyB0
aGUgTWVzYTNEIHJlcG9zaXRvcnkuCj4KPiB2MzoKPiAtIE1ha2UgdXNlIG9mIEdQTC0yLjAtb25s
eSBmb3IgdGhlIGNvcHlyaWdodCBub3RpY2UgKEplZmYgSHVnbykKPgo+IFNpZ25lZC1vZmYtYnk6
IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0PgoKUmV2aWV3ZWQtYnk6IFJvYmVy
dCBGb3NzIDxyZm9zc0BrZXJuZWwub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
