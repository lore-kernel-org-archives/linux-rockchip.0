Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 172BCC02185
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jan 2025 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaDEQ/h0BpHXavPEWdz7krA91aVNXv2dmrFgqvZzoSM=; b=oZhbEEiYjPcvIF
	2k/qH34Zx7oAQzEE8GOa/u/5ce4Bjgqm3SJNfnQy0PoS4Uo8/FqmuseTD+kINYzxf+Iz1eb0WOrEu
	mkqrfYRhw1M9C1CbN/NTWq0x72NrBH6WaiRiVvFvwADhOFR1N0u0Bd4cmb9EY+pY+wztQsbDMRHd5
	R8hPl4ddQuARmgexaeSnzfvxOv2AMNv5vH3XCusDQIVWMwF8+qFQocOfOlhp3A2kcBMX1T0h+nyRC
	cr4JpsGKsixI/5VBO8Qg88CWUClqm1zudxy6xvBcstpfE8PPJ5bvrY0YqQZfaynHOlmXctWLFWrPD
	UsqDr6ToQXjO3O9vfa6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZ9v4-00000002XUz-1VN4;
	Sat, 18 Jan 2025 14:35:26 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZ9v1-00000002XTQ-2t7m;
	Sat, 18 Jan 2025 14:35:24 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5d96944401dso5418271a12.0;
        Sat, 18 Jan 2025 06:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737210922; x=1737815722; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8S9ixEcY8abMh6hBNRFz4AKcSH2mJNqJhoZUq3Q+OU=;
        b=GzEXY4XwKtV2cnR2WLhd5TAWbUi3LC0yzgvI9sKqDQ5pmC6zNSNZ9sQKzUkjI4FLnG
         o9DzReCk4VtSXAy8TkftGAMRhtD8wHH2iNQji8ZI1ZXCfh9kGExXsXpT9vqhww9gfYPE
         nn4aX70d/boZse+eHNIvMQXQPupyBduAOKWeXybHXedff+2y/e8bK6/SGlFhD1RjGpES
         qKrzux8MeWxhYzGT5lxblvCE+tAq9Sdbdfan+IN1ta1Gvn4UotOT+DtGPtCDKXwXfGSk
         MBNhJtBmF9smsYr+L1pspoo9jhcaO+UZcXBwdYifGoPGAJRuRGTkxqFZdN3RS7J5KogA
         SsqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737210922; x=1737815722;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X8S9ixEcY8abMh6hBNRFz4AKcSH2mJNqJhoZUq3Q+OU=;
        b=EuuRVmcnpbjUmfmtaNzDa7zcbVyURrrnfScMAmEiLfCtYQR/qe/p0Xy/PIDbLGF7Hq
         r8WxN8R2XwuECFgphpF4C5nkS8FTTpOOXAENuaPx6hV4R8gv6IzTp5OBNXnJDdseqkg+
         oqBRmVRo3lEQ5Lwav+a9Mqsa6nabcAURpOgyQa+U3LbKQwsYRZoFkzCsIbrTyTtNZplt
         5lSYwa5pzlkj1gnCMwquKBr6JJr4fmmGQLwAZLVGHUKny4e/Ijf/cgVJ13lrbMMT5IyG
         mKkTYciHQaKzRCgA3fp6zbLJ7hj2vNo3W6hN7mnmUEUGHCovGxOjBt9TR8JbarjP6I1d
         EPqA==
X-Forwarded-Encrypted: i=1; AJvYcCUpJDN/0VTGMw1Gb2iP1gSrZDmiUUJnkjcHB56yRXrmRpy2qgnRqaMMbmKz2RO4bXBbGLLY2bVZ647j@lists.infradead.org, AJvYcCVMXAwGjj35gT+ISQfePCg5XX6TWrWcXwDtzI7I6VNMpfT+hNR5z79Napxm0rwZg7S94uMLOzXZe00MJAiJkdqp@lists.infradead.org, AJvYcCXobEtq0iti50AI+lCu+LIYmWujhFPmSP8QMVHt/Tzc/6mN52/8jStYd0+Y4Ab30ky84EOj4NOYez6XencfaLI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxiFVnXaYLwi4Br0NpvsAZoXujajC45K6ApJMFiwFyMqYW3yKe
	XIUYkRgbqWW2OfQHwi75wOq1YHKedRH2lD5WP4wJf53g7x3P2Pnmhs1ewx4QDKvzNvkK6c6uCci
	BSAAVeL4D1Ch39AEnGjKTP8ss5sI=
X-Gm-Gg: ASbGncvjj9RJ5EHUIl5U5VVuul3aew3InkkJap86ftVNp2msqWZ+c7hcLol/FM4xP6P
	gecSYvBC5D11Owj1ckx2Hmbmh2mrsnVDVwazwSAsUb1vrGq+BVyUy
X-Google-Smtp-Source: AGHT+IFDZpftdKqBFqBjBkAeeMYE15CR2JHURmc/olRPtILwjDfNNssQSQSY8GDDreU8V095+cJIkrJgg1PZfxTj8hY=
X-Received: by 2002:a50:8d17:0:b0:5d1:22d2:8965 with SMTP id
 4fb4d7f45d1cf-5db7db2bff6mr5038044a12.30.1737210921703; Sat, 18 Jan 2025
 06:35:21 -0800 (PST)
MIME-Version: 1.0
References: <20250115012628.1035928-1-pgwipeout@gmail.com> <00cbc2a1-b4c1-46a2-8234-f66edc19fac9@kernel.org>
In-Reply-To: <00cbc2a1-b4c1-46a2-8234-f66edc19fac9@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 18 Jan 2025 09:35:08 -0500
X-Gm-Features: AbW1kva6DFr1RzjQp9KXMYYlhacM2koJu0uBfxOzcSRq7CyYw1cACxFrw_KEa_w
Message-ID: <CAMdYzYoE54PSdTH9JPBFLggDy9CZsj47N6qFKJFZz4xe3VVbBw@mail.gmail.com>
Subject: Re: [RFC PATCH v1 0/6] rockchip: add a functional usb3 phy driver for rk3328
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250118_063523_729479_2E395B83 
X-CRM114-Status: GOOD (  16.99  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, kever.yang@rock-chips.com, linux-phy@lists.infradead.org, zyw@rock-chips.com, Dragan Simic <dsimic@manjaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, Arnd Bergmann <arnd@arndb.de>, Jonas Karlman <jonas@kwiboo.se>, frank.wang@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>, Alex Bee <knaerzche@gmail.com>, william.wu@rock-chips.com, Zhang Yubing <yubing.zhang@rock-chips.com>, wulf@rock-chips.com, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Trevor Woerner <twoerner@gmail.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, Philipp Zabel <p.zabel@pengutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBKYW4gMTgsIDIwMjUgYXQgNDowOOKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAxNS8wMS8yMDI1IDAyOjI2LCBQZXRlciBHZWlz
IHdyb3RlOgo+ID4KPiA+IFRoaXMgaXMgbXkgbmV3bHkgcmV3b3JrZWQgcGh5IGRyaXZlciBmb3Ig
dGhlIHJrMzMyOCB1c2IzIHBoeS4gSXQgaXMKPiA+IGJhc2VkIGxvb3NlbHkgb24gbXkgb3JpZ2lu
YWwgdmVyc2lvbiwgYnV0IGFzIG9mIG5vdyBhbG1vc3Qgbm90aGluZyBvZgo+ID4gdGhlIG9yaWdp
bmFsIGRyaXZlciByZW1haW5zLiBUaGUgbWFpbiBmaXggaGVyZSBpcyB0aGUgZGlzY292ZXJ5IG9m
Cj4gPiBCSVQoNikgaW4gdGhlIGludGVycnVwdCBlbmFibGUgZ3JmIHJlZ2lzdGVyIGZpeGVzIHRo
ZSB1c2IzIGRpc2Nvbm5lY3Rpb24KPiA+IGRldGVjdGlvbiAobW9zdGx5KS4gT24gb2NjYXNpb24g
YW4gdW5wb3B1bGF0ZWQgdXNiMyBodWIgd2lsbCB0YWtlCj4gPiBzZXZlcmFsIHNlY29uZHMgdG8g
ZGlzY29ubmVjdC4gSG93ZXZlciB0aGlzIG1lYW5zIGFsbCBvZiB0aGUgaGFjayBhcm91bmQKPiA+
IHdvcmsgdG8gcmVzZXQgdGhlIHVzYiBjb3JlIG1hbnVhbGx5IGlzIG5vIGxvbmdlciByZXF1aXJl
ZC4KPiA+Cj4gQlRXLCBSRkMgZm9yIHNvbWUgbWFpbnRhaW5lcnMgbWVhbnMgImRvIG5vdCByZXZp
ZXcsIHdvcmstaW4tcHJvZ3Jlc3MiLgo+IEZvciBzb21lIG1lYW5zICJyZXZpZXcsIGJ1dCBsb3cg
cHJpb3JpdHkiIG9yICJyZXZpZXcsIGJ1dCBmb3Igc3VyZSBJCj4gaGF2ZSBidWdzIGhlcmUiLiBJ
IHVzdWFsbHkgcmV2aWV3IGFuZCB0aGVuIHNvbWVvbmUgcmVzcG9uZHM6ICJpdCBpcyBub3QKPiBm
b3IgcmV2aWV3LCBpdCBpcyBqdXN0IFJGQyIsIHNvIHRvIGF2b2lkIG15IHdhc3RlZCB0aW1lIHBs
ZWFzZSBhbHdheXMKPiBtZW50aW9uIGluIGNvdmVyIGxldHRlciB3aHkgdGhpcyBpcyBSRkMuIFdo
YXQgZG8geW91IGV4cGVjdCBoZXJlIG9yIHdoeQo+IHRoaXMgaXMgbm90IHJlYWR5IGZvciByZXZp
ZXcgYXMgbm9ybWFsIHBhdGNoLgoKVGhhbmsgeW91LCB0aGF0IG1ha2VzIHNlbnNlLiBJIG1hcmtl
ZCBpdCBhcyBSRkMgYXMgSSdtIGF3YXJlIGl0IGlzbid0CmEgcGVyZmVjdCBzb2x1dGlvbiBhbmQg
dGhlcmUncyBhIGxvdCBvZiB1bmRlZmluZWQgdmFsdWVzLiBXaGF0IEkgd2FzCmxvb2tpbmcgZm9y
IGhlcmUgd2FzOgotIFJldmlldyBmb3IgY29kZSBxdWFsaXR5LCBzbyBpZiBJJ20gY29tcGxldGVs
eSBvZmYgdHJhY2sgSSBjYW4gZ2V0IHRvCndvcmsgZml4aW5nIGl0LiAoVGhhbmsgeW91IHNvIGZh
cikKLSBTYW5pdHkgdGVzdGluZyBmcm9tIG90aGVycyBzdHJ1Z2dsaW5nIHdpdGggdGhlIGlzc3Vl
cyBpdCBmaXhlcy4KLSBGZWVkYmFjayBmcm9tIFVTQiBlbmdpbmVlcnMgYWJvdXQgdGhlIGlzc3Vl
cyByZW1haW5pbmcuCi0gSG9wZWZ1bGx5IHNvbWVvbmUgd2l0aCBhY2Nlc3MgdG8gdGhlIElQIGNh
biBwcm92aWRlIGluc2lnaHQgaW50byB0aGUKbWFnaWMgcmVnaXN0ZXJzLgoKPgo+IEJlc3QgcmVn
YXJkcywKPiBLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
