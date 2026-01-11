Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9DCCD2502E
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jan 2026 23:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9kqq7g0qYHoM74ydrQpgt3HPrR9uZBBf6MLDEGn0QE=; b=m7Zp8tymXQzaDY
	81Engc6yCUSLBjqgQQnfu57Yh5frdVLXyuhWFUgu9lgZ8oaBk9G/rBVoQ+iiS1M8vV2IWE/Ddt3vv
	Idtu9CLDp1HVjA0XRanB4336jGKR9fN59+DBaZjbgw2x2l7JSSVZXBsogSmUahqJZdq+3086p4iT6
	D1k0E2cML10JxF63NWBzSlfAEdO9JVszppnjSBpykV6wqa2kke/NUwr9aK2X9LxI+kboN72iypLD1
	HsiCwUrJYK96x3NpOnmaw70n7vOFXojH8STmsjrNDZx5I9W4pvFXnF2WGEaVjpoVw7P0n/fpUz387
	+8hOuN9GXWzGWmNpOxFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf5Df-00000004ZtB-1Tci;
	Sun, 11 Jan 2026 23:51:39 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf5Dc-00000004ZsT-3rvH
	for linux-rockchip@lists.infradead.org;
	Sun, 11 Jan 2026 23:51:37 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7c71cca8fc2so3924328a34.1
        for <linux-rockchip@lists.infradead.org>; Sun, 11 Jan 2026 15:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768175495; x=1768780295; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D/ENBQX982lICCo3cjSQ7OsIstGG9Mk6/7pP55Ji4uo=;
        b=jU0Hrw4Mw2jjNn5/gA7SVEgb6RbVLEDGy+bhS/z5RlM2h9tyb9iMB+fmShIhisUHyN
         hJ0zPQJZm2pTeaxT7812qf/9g3mVI/EuHpQel88OEB0GobK+nRcu1J4XbkoSFv2lveZ8
         9+QPeoHqv23gKHWoUN9N8/u9rw52L1RbaQQM0pvc7EQGWR2ckgSmYDCfSoT2APwiQN4n
         a0cG4QeqtYbDJ8qt9mwAzHxZeE/mHpjVVbbcWgu7wqJHD9yaQOhQ5tRJWKegkiAMk35l
         DKSsxGeU59Yp3lyt3el3ePBv+4kZEjdmgtN8V0nJ11IndFNm4cnrBnAY2Epyzl/cthhJ
         4PFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768175495; x=1768780295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D/ENBQX982lICCo3cjSQ7OsIstGG9Mk6/7pP55Ji4uo=;
        b=TlXziOHa4ybv/duXpOvapk0xwFiu+6lvClDxXRo4M+uyIj1NvYPH6CYM6QUGULGAnQ
         hkkYyDmQF/JhlscWiJUTehpuE9ahT3A7XHaqjZw6PqLJJzU73VxXx8/kQ5d5DYqJ5M9L
         OsGX5spx4h+1DfTMVZXyp+wIAqTAb2HY5UKA/wMRmCcKkWAUslQwoCj1ewgNsg1RbAy5
         VLyX+t67pi4S0Tk1aoxepsKHaqkrmJR9XON9WtuofVgWmx3JK0gWz1vXbD7Axsuv4iNw
         GYBScxfxWdxKYZju8miWbt/N9877xE0KO3p4ezVXPP+ob3Bo13TRwVtqPmLqHNXJ+Ku6
         A7sw==
X-Forwarded-Encrypted: i=1; AJvYcCVniQrXaLIULfb5yOqeZohnJxmtv82lWkLfRxRzAhcoiUfI4Kj9v87Vcpugqi+oKt+/pJEa19+Xh8zi49NPTw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzyb6sdPzzHYfqcyRraOStG4Ml3EAKueDxYMH0pGziU14rUYP0y
	Su2Ndb61jyb6xDyrf3Kfg6EuHXzfXNaiLAf0zXLAFcAiDuk6t3PrXii0eo3t8zYQFHFLNkOjA8O
	P5FXkZL1CC4+pfrPY4am9jQsMhj7fxBc=
X-Gm-Gg: AY/fxX5Tiw8yLIBsUQkbIHDxK+40QgJnPh3U+y2Z4Y9jdC7/tlZZYug8HXGqM9RDiPb
	FdkdP1rxv3OyrvWXx4U0jwe1+/kEkxKNhHc39ORRqyYTewGgw4RdJBmfLriyi5NTZe5ESy000/U
	RE1rA+tiGDQdrrMmHGCXenfCO4MWDR0MadnHFtbc2ZEnvaYfczvDkLmEHhIx/wzcrVMU6vlyDVO
	7PehM4k//vWX/G1WKn5xtDIvZ0n/Hy+YVuhTBZ22tUC9Z1e+kBNO/8UGfEaY9065mko60SH7Agi
	OeiuIB+SP8XjhcgSqECMBCMYofc=
X-Google-Smtp-Source: AGHT+IGlge53U08ebFfe8r244rsrE6CkWTn00e+I2aSY3bW6BvjGm0i6R4xXCnYggHKHg3FXbw80wZStXmjolJVgDDY=
X-Received: by 2002:a05:6830:4111:b0:7c7:6c9f:bb06 with SMTP id
 46e09a7af769-7ce50b7b138mr11464374a34.16.1768175495062; Sun, 11 Jan 2026
 15:51:35 -0800 (PST)
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <20260110010715.1610159-2-mschirrmeister@gmail.com> <20260111-melodic-chestnut-coua-73e6ec@quoll>
In-Reply-To: <20260111-melodic-chestnut-coua-73e6ec@quoll>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Mon, 12 Jan 2026 00:51:24 +0100
X-Gm-Features: AZwV_QgRXlN1CiuRYVEhXNkMAqD9Aoc5N6ROQBHLSJhP77NnrQn6dbThJj_qUMM
Message-ID: <CAGJh8eAWNe0JzC7BdA2Rw5etCYgGq3O5Zdgk9zSzsLNv18k=ag@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: mmc: rockchip-dw-mshc: add rockchip,disable-runtime-pm
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, ulf.hansson@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_155136_956551_2E829370 
X-CRM114-Status: GOOD (  13.43  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmsgeW91IGZvciB0aGUgZmVlZGJhY2suCgpPbiBTdW4sIEphbiAx
MSwgMjAyNiBhdCAxMDo0MeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4gPiArICByb2NrY2hpcCxkaXNhYmxlLXJ1bnRpbWUtcG06Cj4gPiArICAgIHR5
cGU6IGJvb2xlYW4KPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiArICAgICAgSW5oaWJpdCBydW50
aW1lIHBvd2VyIG1hbmFnZW1lbnQuIFRoaXMgaXMgcmVxdWlyZWQgZm9yIGJvYXJkcwo+Cj4gV2hh
dCBpcyBydW50aW1lIHBvd2VyIG1hbmFnZW1lbnQ/IExpa2UgTGludXggUE0/IElmIGFueXRoaW5n
IHBocmFzZWQKPiBsaWtlIHRoYXQgaXMgaXQgaXMgYSBjbGVhciBubyBnby4gQmluZGluZ3MgZGVz
Y3JpYmUgaGFyZHdhcmUuCgpZb3UgYXJlIHJpZ2h0LiBUaGlzIHJlZmVycyB0byB0aGUgTGludXgg
UE0gc3Vic3lzdGVtIGFuZCBkZXNjcmliZXMKc29mdHdhcmUgYmVoYXZpb3IuCgo+ID4gKyAgICAg
IHdoZXJlIHRoZSBidXMgdGltaW5nIGJlY29tZXMgdW5zdGFibGUgaWYgdGhlIGNvbnRyb2xsZXIg
aXMKPiA+ICsgICAgICBydW50aW1lLXN1c3BlbmRlZC4KPgo+IFlvdSBkZXNjcmliZWQgdGhlIGRl
c2lyZWQgTGludXggZmVhdHVyZSBvciBiZWhhdmlvciwgbm90IHRoZSBhY3R1YWwKPiBoYXJkd2Fy
ZS4gVGhlIGJpbmRpbmdzIGFyZSBhYm91dCB0aGUgbGF0dGVyLCBzbyBpbnN0ZWFkIHlvdSBuZWVk
IHRvCj4gcmVwaHJhc2UgdGhlIHByb3BlcnR5IGFuZCBpdHMgZGVzY3JpcHRpb24gdG8gbWF0Y2gg
YWN0dWFsIGhhcmR3YXJlCj4gY2FwYWJpbGl0aWVzL2ZlYXR1cmVzL2NvbmZpZ3VyYXRpb24gZXRj
LgoKT24gdGhpcyBib2FyZCwgdGhlIGJ1cyB0aW1pbmcgYmVjb21lcyB1bnN0YWJsZSB3aGVuIHdh
a2luZyB1cCBmcm9tCmEgbG93LXBvd2VyIHN0YXRlLiBUaGlzIGNhdXNlcyBhIGNvbnN0YW50IHJl
dHJhaW5pbmcgbG9vcC4KCkkgd2lsbCBtb3ZlIHRoaXMgbG9naWMgaW50byB0aGUgZHJpdmVyIGFu
ZCBoYW5kbGUgaXQgYXMgYSBib2FyZCBzcGVjaWZpYwpxdWlyayB1c2luZyBvZl9tYWNoaW5lX2lz
X2NvbXBhdGlibGUoImZyaWVuZGx5YXJtLG5hbm9waS1yNzZzIikKaW5zdGVhZC4gSSB3aWxsIHNl
bmQgYSB2Mi4KCkJlc3QgcmVnYXJkcywKTWFyY28KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
