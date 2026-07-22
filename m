Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C605C4453C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 13:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OMtbK3haExo41SJMqYzWU7OaZ6CIusifv7NhVsz+Ug=; b=ST8xb1jG3WHRcT
	4YIsFPsUX0Vw3ENhoZLxAob+cf0FXj2qvSB4hBAdIcqgDT6EkmTtS+0LwS11SSfyiHH3fXs0VB5nn
	dNxPkTl5MiawUQ34N+rcDiHIGeYmYYjXq+3YMV8S0dWxOCwLcFQzId8bzT8wb52o/AHCEgmjg+XdF
	pyqBKqedfVR3S3atv44bPiaOmUnei+hT2Fh9coB9zh5v/Q4WMJ1dbNQir0s9/jwrxDdZaozFHHaFN
	GW9zphBfdG1DmXHfq19Y4G8V5++vg/1Q+uZWTnhKS+UJXZeZLz24xFonEs3kYvVtZJGM7C0NBuwsQ
	Pp2HbNfdsCshQfFTojLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXP6-0000000BxGP-4215;
	Wed, 22 Jul 2026 13:54:32 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXP3-0000000BxEj-1Fhz
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 13:54:31 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-c169ae1cb26so1076942166b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784728467; cv=none;
        d=google.com; s=arc-20260327;
        b=iwhTpzgg5Yl18MiTFrsGUIesOqHzQTY21nMVhVkvdGvwpgrkHXHj+u3lOeOILYXlA4
         +0SPhY8Ivmcn8EnNaOrLqfLv7BdzhLcBQxVo/U0sIXRfPviiHr3fhRyUmGzXIUkBOx7s
         V/AhtUBT/gCt+Bg6LCa0x/N6ckdgVyCkbwg473Y/azREpKsiersWHa+7B8d+bMCX87hU
         xtyeQdiitNa5Gsog8cOrWNl2DjLuIEfm2XbgIUhdWLhDej9KP92FDaoSfDtobkCm6dbw
         uGUN3ubCSeIPNAXFnfFZt1hN+I7hkgy1+fxhYBaxrUEwuwQj/Q9sdNNWm6nOohymuwSI
         kflQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=awrVTQ1VekJ4Xb6s/ONNNBSESRBX7h9MN6iG9XhSyGo=;
        fh=OK8nrTp4rHzGhXPt0tliXcPAy/D1nZb8sXa7NMGJQuI=;
        b=s3ECd1z1Q/ntxHqRqUIgZmOw6WqT+5K9uKQPHptNQVkcsv66YxIsVK6fKZ/iYs9ls5
         o0dCFz3YaGsNHeT5PzgCJz9uL+Tn2UEVvfZzAwv02R/EqBOH/cuCDj1iwqdPUlI3TQ5n
         iOCfwfYwA0tAgc6NtM9TcyrpYwpWjXiE/Thqp8Ec1jaEYVMaiE+bqFF0uKWVmwHKDBG2
         Iub5Q31e2femvgtoK0N2pMKscSJ32e3Du//AXOJ7s3rpQI0Ug2c9r6mkwL3CXKz4tdNq
         tidSJe/D0Ckn3KfcjusMQ/nHuAh3slaI9Tuk5Wb4tc+9PbJL6Xmdh4ILm+hQETFx9Qp/
         SKBA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784728467; x=1785333267; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=awrVTQ1VekJ4Xb6s/ONNNBSESRBX7h9MN6iG9XhSyGo=;
        b=YJQStS5etQFoxNNUtOH8pQ9jeZKZ4uelfOUaykZ1Co/4hcWUjefWscRx2HioaKJe2O
         7JI1164riIDbZQQfvrVNIWNXfg26K0JKkp9CkTjXXOv0shtw7YdQSx4JMGjXNzaLcxjq
         MHfBq98zhs4jC9RdAxqGLH/Ss+d6R4JAdit84wCXt3mb++BVwDrhhdS0+8h9RM/3tE6Q
         OSREw+bPS6KkT01XcNu1zs1Q/h5QNlAJIV8dzoajh00GUho3/sx66v2H6PSCBcX7VrnE
         sCnJqFHkfx+cTQ9l7Id7s9bHsYksa/uNHS5HcUFno+e75uS4SllTgbZiRBf014J3DUFW
         IGGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784728467; x=1785333267;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=awrVTQ1VekJ4Xb6s/ONNNBSESRBX7h9MN6iG9XhSyGo=;
        b=QA4OBXKY5nYFJOCVhyCqx8dxc/INA1hvbN4liSoq1XxfV/UuotWAOisHeRyKTS0QGP
         T5P/uuCXwIcPftofOpL3acL05jxUHYFaJ+cbC+mlKA7eM6+xhj43b3JGkfjRGwjH0zZH
         CiBnLrwcWz5PXpxXhCNpkWmNWN9FDnZKpgq3FGMxiWiM13lYkjxcI/C2u43PMelx/Dew
         kjrpEM+GRb1o/xeOGcVmmA31gLsg3iVgGPQntwrdjuLicXau9dTDg8iPwpcvsbRufkjB
         ZrIA/mMYY89Yd1fyX4I5eT80MzFRZ3eqRywhNmct6sJ+KLD2onclFuksuleZi0NlCTLD
         hbvA==
X-Forwarded-Encrypted: i=1; AHgh+RrthBW7TLcWJXcNWWTlTHs0pSdMw8S0mes8/cwGfjEi3qS1fvRCqvGOvuxUwvCZuoZgeXfLqhUD+9njfOyLGg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHaAiF1yM/OeOcsV/QCk/oZw5gLv/2/xRlhRfNhMb/cRwcn3Ap
	uXKSaCEtXBfIzqereE0bXw2k7DN5CwiasxfECVeYgUPfFBMXpw8QxxuzsLIvOmN5URyWjArCjbH
	wHfoOTrKdB+lAV/x9AXu7C1C6IfqvZs0UU3eBkTIVUw==
X-Gm-Gg: AR+sD123KxE4VxBGpHsd0ndwwyNRccpMO+h2YzvIYw9lICwYlzUaekwt7nR/StkYDEh
	6vmDhllj6gXUuteZ8Lz/hzH96lCZaopd80bz+LuD+qga4CD8bl/YOCzdOzU3k+dSnZqL+bv0HAw
	Xzyvgs0MG98GT7iJXI2sYF8kya6Y2vOW8Pdiwua/zedAyGiBvqdqc8qbV76ku3r+agEgXg/VrmF
	AQjrVUkq+j6cDxaEB2m9hcOexudcDwx/D1Ldn3KGyLa7CTPZsfkj74t7Mr21y3jzd+ekuLMZni2
	1xGF/6khB0V6BAjhRw==
X-Received: by 2002:a17:907:a684:b0:c16:aee0:5422 with SMTP id
 a640c23a62f3a-c1c30a69e59mr189324266b.6.1784728467074; Wed, 22 Jul 2026
 06:54:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260721-rk3588-fracpll-v1-1-b289bf17cf17@flipper.net>
 <7f3924ab-52fc-4fb6-91b4-42a5e55d5c76@cherry.de> <CAKTNdwE=s6XG==4HvbaEV86DATWO6egVxLgNE4LpjFaXNQP7_g@mail.gmail.com>
 <b0111164-3726-4a1b-bc3a-0e678ea2ecad@cherry.de> <amDC9ZfBAD2xbhqa@venus>
In-Reply-To: <amDC9ZfBAD2xbhqa@venus>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 22 Jul 2026 17:54:15 +0400
X-Gm-Features: AUfX_mzETQep4O3vKsGAnWDqzknYtAlD9NY9GlA6VK-u5lN0h7PUcE9Fa-TFX_4
Message-ID: <CAKTNdwFEEd2LF0F2E2yR5jPfYB4sh-NaYyXn2GTFwCpACaqAfw@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: Fractional PLL coefficient on
 RK3588/RK3576 is two's complement
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Heiko Stuebner <heiko@sntech.de>, 
	Wyon Bi <bivvy.bi@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Detlev Casanova <detlev.casanova@collabora.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>, 
	Dragan Simic <dsimic@manjaro.org>, Liang Chen <cl@rock-chips.com>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_065429_354948_E5101F03 
X-CRM114-Status: GOOD (  29.48  )
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

SGkgU2ViYXN0aWFuLAoKT24gV2VkLCBKdWwgMjIsIDIwMjYgYXQgNTo0NOKAr1BNIFNlYmFzdGlh
biBSZWljaGVsCjxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhl
bGxvIEFsZXhleSwKPgo+IE9uIFdlZCwgSnVsIDIyLCAyMDI2IGF0IDAyOjU5OjI1UE0gKzAyMDAs
IFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+ID4gT24gNy8yMi8yNiAxOjAwIFBNLCBBbGV4ZXkgQ2hh
cmtvdiB3cm90ZToKPiA+ID4gT24gV2VkLCBKdWwgMjIsIDIwMjYgYXQgMjozNeKAr1BNIFF1ZW50
aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+IHdyb3RlOgo+ID4gPiA+IE9uIDcv
MjEvMjYgOToxNyBQTSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+ID4gPiBOb3QgYWRkaW5n
IENjIHN0YWJsZSwgYmVjYXVzZSB3aGlsZSB0aGlzIGZpeGVzIGEgcmVhbCBidWcgaXQncyBub3Qg
YQo+ID4gPiA+ID4gcmVncmVzc2lvbiwgYXMgdGhlIGlzc3VlIHdhcyBpbnRyb2R1Y2VkIGluIHRo
ZSBzYW1lIGNvbW1pdCB0aGF0IGFkZGVkIHRoZQo+ID4gPiA+ID4gUkszNTc2L1JLMzU4OCBzdXBw
b3J0Lgo+ID4gPiA+Cj4gPiA+ID4gSSBkb24ndCB0aGluayB0aGlzIGlzIGEgdmFsaWQgcmVhc29u
IDopCj4gPiA+Cj4gPiA+IEkgYmVsaWV2ZSBMaW51cyBmcm93bnMgdXBvbiBjaGFuZ2VzIGxpa2Ug
Iml0IG5ldmVyIHdvcmtlZCwgYnV0IHdlJ3ZlCj4gPiA+IGZpeGVkIGl0IG5vdyIgYmVpbmcgc3Vi
bWl0dGVkIGFzIGZpeGVzLiBJdCdzIGJlZW4gYnJva2VuIGZvciB5ZWFycywKPiA+ID4gYW5kIHNp
bmNlIG5vYm9keSBjb21wbGFpbmVkIHlldCwgZ29pbmcgdmlhIHRoZSBub3JtYWwgZGV2ZWxvcG1l
bnQgcGF0aAo+ID4gPiAoaS5lLiAtbmV4dCkgc2VlbXMgcGVyZmVjdGx5IGZpbmUgdG8gbWUuCj4g
Pgo+ID4gTXkgYmV0IGlzIGJlY2F1c2Ugb2YgdGhlIEZpeGVzOiBpdCdsbCBnZXQgYmFja3BvcnRl
ZCBhbnl3YXkgZXZlbgo+ID4gaWYgeW91IGRvbid0IHB1dCBDYzogc3RhYmxlLiBJbiBhbnkgY2Fz
ZSwgSSBkb24ndCBjYXJlIHRvbyBtdWNoIDopCj4KPiBGV0lXIHlvdSBhcmUgbWl4aW5nIHVwIHRo
aW5ncy4gTGludXMgZG9lcyBub3QgaGFuZGxlIHRoZSBzdGFibGUKPiBrZXJuZWxzLiBIZSBkb2Vz
IHRoZSByZWxlYXNlIGNhbmRpZGF0ZXMgYW5kIHRoZSBpbml0aWFsIHZlcnNpb24gb2YKPiBldmVy
eSBrZXJuZWwgcmVsZWFzZS4gVGhlIHN0YWJsZSByZWxlYXNlcyBhcmUgaGFuZGxlZCBieSB0aGUg
c3RhYmxlCj4gbWFpbnRhaW5lcnMuIExpbnVzIG9ubHkgc2FpZCwgdGhhdCBoZSBkb2VzIG5vdCB3
YW50IHRvIGdldCB0aGVzZQo+IGtpbmQgb2YgZml4ZXMgZHVyaW5nIGxhdGUgLXJjIHBoYXNlLiBU
aGF0IG1ha2VzIHNlbnNlIGNvbnNpZGVyaW5nCj4gZml4ZXMgYWxzbyBoYXZlIGEgY2hhbmNlIG9m
IGludHJvZHVjaW5nIHJlZ3Jlc3Npb25zLgo+Cj4gQnV0IGlmIHBhdGNoZXMgZW5kIHVwIGluIGEg
cHVsbCByZXF1ZXN0IGZvciBhbiAtcmMga2VybmVsIG9yIGluIHRoZQo+IHB1bGwgcmVxdWVzdCBm
b3IgdGhlIG5leHQgbWVyZ2Ugd2luZG93IGRlcGVuZHMgb24gdGhlIG1haW50YWluZXIKPiBhcHBs
eWluZyB0aGUgcGF0Y2ggKGkuZS4gSGVpa28pLiBUaGUgbWFpbnRhaW5lciBjYW4gcXVldWUgYSBw
YXRjaAo+IHdpdGggYWxsIHRob3NlIHRhZ3MgaW50byB0aGUgbm9ybWFsIGZvci1uZXh0IHF1ZXVl
IHRhcmdldGluZyB0aGUKPiBmb2xsb3dpbmcgbWVyZ2Ugd2luZG93LiBUaGlzIHJlc3VsdHMgaW4g
dGhlIHBhdGNoIGJlaW5nIGluCj4gbGludXgtbmV4dCBmb3IgYSB3aGlsZSwgdGhlbiBiZWluZyBh
ZGRlZCB0byB0aGUgbWFzdGVyIGJyYW5jaCBkdXJpbmcKPiBhIG1lcmdlIHdpbmRvdyBhbmQgdGhl
biBiZWluZyBhZGRlZCB0byB0aGUgc3RhYmxlIHRyZWVzIChhcyBzdGFibGUKPiBvbmx5IHBpY2tz
IHBhdGNoZXMgdGhhdCBhcmUgaW4gbWFpbmxpbmUpLgo+Cj4gVGhlIG1haW50YWluZXIgY2FuIGFs
c28gbWVyZ2UgYSBwYXRjaCB0byB0aGUgcXVldWUgZm9yIC1yYyBrZXJuZWxzCj4gd2l0aG91dCB0
aGUgQ2Mgc3RhYmxlLiBUaGF0IGlzIGV4YWN0bHkgd2hhdCBoYXBwZW5zIGZvciBhIHJlZ3Jlc3Np
b24KPiBmcm9tIGEgbm9ybWFsIHBhdGNoIGluIHRoZSBtZXJnZSB3aW5kb3csIHNpbmNlIHRoZSBh
ZmZlY3RlZCBwYXRjaAo+IHdvdWxkbid0IGJlIGluIGFueSBzdGFibGUga2VybmVsLgo+Cj4gVExE
UjogVGhlIENjIHN0YWJsZSB0YWcgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCBMaW51cy4KCkluZGVl
ZCwgSSBtYWRlIGEgbG9naWNhbCBsZWFwIGhlcmUuIEluIG15IHZpZXcsIGhvd2V2ZXIsIHRoaXMg
cGF0Y2gKZG9lc24ndCBuZWVkIHRvIGdvIGludG8gNy4yIGZpeGVzIChpdCB3YXNuJ3QgYnJva2Vu
IGR1cmluZyB0aGUgNy4yCm1lcmdlIHdpbmRvdyksIG5vciBuZWNlc3NhcmlseSBpbnRvIHN0YWJs
ZSBiYWNrcG9ydHMgKG5vLW9uZSBzZWVtcyB0bwpoYXZlIHVzZWQgdGhlIGFmZmVjdGVkIFBMTCBy
YXRlcyBpbiBvbGRlciBrZXJuZWxzLCBzbyB0aGVyZSBpcyBub3RoaW5nCnRvIGZpeCBmb3IgdGhl
bSBlaXRoZXIpLgoKSG93ZXZlciwgaXQgd2lsbCBiZWNvbWUgcmVsZXZhbnQgZm9yIGRyaXZpbmcg
YXJiaXRyYXJ5IGRpc3BsYXkgY2xvY2tzCmZvciBEUCB2aWRlbyBvdXRwdXQgYmVjYXVzZSBzZXZl
cmFsIGRpc3BsYXkgbW9kZXMgKGFuZCBjb25zZXF1ZW50bHksClBMTCByYXRlcykgSSBuZWVkZWQg
Zm9yIHRob3NlIG1vbml0b3JzIEkgdGVzdGVkIHJlcXVpcmUgbmV3IHRhYmxlCmVudHJpZXMgd2l0
aCBuZWdhdGl2ZSBQTEwgY29lZmZpY2llbnRzLiBUaG9zZSB3b3VsZCBiZSA3LjMrIG1hdGVyaWFs
CmFueXdheS4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
