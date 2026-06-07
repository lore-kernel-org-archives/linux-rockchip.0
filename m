Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65042CD8C8C
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jun 2026 21:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQJdhQods9hvnsZFfHoOWCPLc64TiCRWKRGG7C9Oudg=; b=2rxFMvJWrjMtAz
	HFtJpxXB2tXJnRvwmddChn676QMfh94D86v4y9gs/ZcHhxc0ep2MWjx9J4Gl1xY/eLMPTSxPVrVe3
	drtQ36IoxUNQfmoij97BSo+Jvhxrx18Xg7xOXi6zo+KWDt0FAWIxfaCisHEG8jK1KZMfcUtNPzRub
	8or3JvsAbQVJG8WQU++hKb3rAZ9m2aMOQm+Dp5BIvynJX36UbCFp7xhdCuJMin8M+yxxnRKCOQQ/f
	k22hD+zrjKWouCnWpaGm2QQgEEZx+b7PuY92v/6KJFrb3b9zMgv+hNpjLUVRuxNPs4tIP6n64z4Ta
	cE1JCIX7h6WNAY8V+HZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWKdR-00000002UeG-0b4h;
	Sun, 07 Jun 2026 21:02:21 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWKdO-00000002UdV-2FJl
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Jun 2026 21:02:20 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-bec423a5265so575333366b.1
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Jun 2026 14:02:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780866137; cv=none;
        d=google.com; s=arc-20240605;
        b=QrMX57PMKjBWrW9jhbh06WNMD8U8lJrg3s7C+ZUW5ck+wlP1iORvb7i4VqmjCTNIuu
         j2hOokH6j5ZJKA7rtmX84B5bMY0eH8LHZeHNFlwyzWHw42DZciTQ47b27PQec96HZVjB
         otQK8r85QUl8SZ1vz0E4OPQziU8boUVZGh9Q5iViPb0/RXlb53Vmup+kz+UelA3Rpq8v
         Yetmsk5g9UAwjWooWf4f53D9RK794qtmhMkAZDyMlCoyzi6IBj9UdLvPoLahcp/eGK+3
         cNyF/TwrUU5Lcp5QrjsNI8jgJ+UuTD1pvbShw8QVNDBdiexlW1oRcDBFtTZglZKVTBlE
         UfBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=A+9fNpCsE6s4qptEKDyb1NK+xycGWP9ueu0opDX1ZcA=;
        fh=tUcezYQxT6VJbS8Zv3EUswcM4Zt0nRy0fVPx8Ti08Yc=;
        b=fhPXmdssPsbOweVaxrub91oKeZRLL0JE/XdiytQRm2Kxu+tr1poq2SCqn+Uoq1YQJY
         g6M+nn6HGk9JkmYwcMoV6MsgvNUV/xfQPxt2JRR1s76JR9ly6ajt+N9lzwOxcvctLPKr
         ZXZ4Owu641v6jIg0mUugBvCHWQTUImst6ba+DpH4FVVzjwWI3UebsISrNRjIfPmlRlLB
         7/GOPF/opNgU6yhr+eiCEX35lgHwLGMW6uhPrmfyuffypfvALiDcVvYd+lauwtAToLNW
         GJfpAzZCe+TNhILPJX1WJOh+PGnPHjePOR2vlGNxs6JEK7kzYVSuSglt6i2FORXcxKPh
         NYwQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780866137; x=1781470937; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A+9fNpCsE6s4qptEKDyb1NK+xycGWP9ueu0opDX1ZcA=;
        b=Fti/M1tuP2EpqyYcOoutfKbhPj8FNG+KXakMNz3e3f/IdXTNKXu0tWL0KCf3C01tQ6
         If2iwkB4ofR881QiqnUddXihH07P8t4h95+9kZHsf+2gXnKMmX9Hb9vsLExXmwS99BdR
         L02cnJn1sCvW6+qfCJKjiCW0JVIGk2MmVGYppsAnpWDFyv74ADVopjV7XNie/QOKVPRr
         p4ERdGihY2X9g0O6c4Et9HucQWbIbj3Ugf0zaEAPpcNgkma0xgSHASPZLvfHcG/p4J6v
         oyx6IWmPMZzp+P09LsR8UZLTMMcpXRO+NqQHgn1MwJE8TUTNrehM0Wg/eigumY6EmW2B
         iZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780866137; x=1781470937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A+9fNpCsE6s4qptEKDyb1NK+xycGWP9ueu0opDX1ZcA=;
        b=X5T2gi54uAUJLoVme1DfHqLTZKE6oV62H9tUct6vUEQcU3HsZNCw7XlUkt5tXfd+H4
         6PkRZLWurWqlyU/J2vTVWou85hoYv04ZJzcYXgBMkAm0Iy7DnjNqx3Nu6he7z5yL2A/V
         46OmmhUaGb2wd75dsixUsZPLpg0s7So2kmhO3DY64UnzaIuKd5itC2U5431Txme0KpgB
         F/41WDrrT9A8ctCu4EGjmq/5k8gfz6gcYRb9FPyjn8XTCMWTii1uKplbuG/8YcTggkIM
         h7wd2BnU2iQLHk4w1FVSVlEtKfLV8ewPvp7qua0KIjJzSXtrJac4+yIBQEo1DeSdzcDw
         Paww==
X-Forwarded-Encrypted: i=1; AFNElJ+JsmxrthRMw3ImO4GaBzTXx6i5zaRc5G/ddEhkCPQ6WkU2ZWPyvhqD9eLLGPMoL0Fdt8JoPoPrV3ARswD6+A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3TkfBnJ6EB80TL2JaLIK455Nqavoz7bufYveoLMTy7HX5G1Ch
	m/9BS9DZAb2X6juBbqWsh7xrEOrzuSDMzQtfTAAO56qU17j0iJhNTGyOrtLeBgqp2NtAdYhPrsh
	a20YFLEP2oOW+jOk4EvOh545TBos5/+E=
X-Gm-Gg: Acq92OHSb5py1cMiJ8YteAimpw62vp5p1NncL+t3mYsQAXlsE5j5WYH6zbmhK5SeGvy
	R78N0YiJDYqxhAIU56kvPxwY+QCMQTsRz4TfQ3pHae+GBgNsJh68GDPfwgr2+MAq7VcAkO6FW/d
	JykY/TrKfp6ffh9+bRxq/pLaRuSvmLKWylXoxR75GC7yQ3Xe41uwprrG9X1z0XkfCwYhRMQZvaM
	glEWO16CS6Q54JYDnW3mT7GxHQhZioMfl64o76PQ0pzaFfQ32TauNgXgVgKw8VtkUY4CkHh4L2a
	JzQq1Kb1bPH7Si4V6unHOkMnh8mrFh392mN19DWUPTpJFp0nkuM=
X-Received: by 2002:a17:907:2718:b0:bea:f4e0:c7b9 with SMTP id
 a640c23a62f3a-bf370d638ccmr437637066b.19.1780866136465; Sun, 07 Jun 2026
 14:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <20260604135255.62682-1-midgy971@gmail.com> <20260604135255.62682-7-midgy971@gmail.com>
 <e44b506e-e9d2-48e3-acea-ab28b7be9b37@rock-chips.com>
In-Reply-To: <e44b506e-e9d2-48e3-acea-ab28b7be9b37@rock-chips.com>
From: Midgy Balon <midgy971@gmail.com>
Date: Sun, 7 Jun 2026 23:05:03 +0200
X-Gm-Features: AVVi8Cf-JVkWYJtDYXL1xfOVyosnpbnb7w4PJV4kFFggOhSQTxoQOwyJz0V_ZFQ
Message-ID: <CA+GS1Y16++cztPxdUGLrPA73ENm4vJGFrjm-jP8r=8OQqcMJGA@mail.gmail.com>
Subject: Re: [RFC PATCH v3 6/9] iommu/rockchip: Clear AUTO_GATING bit 1 on the
 RK356x v1 IOMMU
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Simon Xue <xxm@rock-chips.com>, tomeu@tomeuvizoso.net, ogabbay@kernel.org, 
	heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_140218_625669_415E584E 
X-CRM114-Status: GOOD (  28.52  )
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

SGkgQ2hhb3lpLAoKPiBBcyBJIHNhaWQsIGl0IGlzIHYyLiBDb3VsZCB5b3UgcGxlYXNlIHRyeSB1
c2luZyB0aGUgY29kZSBiZWxvdyBpbnN0ZWFkIGFuZAo+IHNlZSBpZiBpdCB3b3Jrcz8KPiBbIGF1
dG9fZ2F0ZSA9IHJlYWQoUktfTU1VX0FVVE9fR0FUSU5HKTsgYXV0b19nYXRlIHw9IEJJVCgzMSk7
IHdyaXRlKC4uLikgXQoKVGhhbmtzIC0tIHRoYXQncyBjbGVhcmx5IHRoZSByaWdodCBzaGFwZSAo
cmVhZC1tb2RpZnktd3JpdGUsIGJlZm9yZSBwYWdpbmcgaXMKZW5hYmxlZCwga2VlcGluZyB0aGUg
cmVzZXQgdmFsdWUgaW5zdGVhZCBvZiBteSBjbG9iYmVyaW5nIDB4MikuCgpJIHJlYnVpbHQgdjcu
MS1yYzYgKHdpdGggdGhlIHJvY2tldCBSSzM1Njggc2VyaWVzICsgeW91ciBwZXItZGV2aWNlLW9w
cyB3b3JrKQp1c2luZyB5b3VyIGJpdC0zMSB2ZXJzaW9uIGFuZCB0ZXN0ZWQgaXQgb24gYSBST0NL
IDNCOiB0aGUgTlBVIElPTU1VIGNvbWVzIHVwIGFuZApzZXJ2aWNlcyB0aGUgTlBVJ3MgRE1BIGNs
ZWFubHkgLS0gdGhlIE5QVSBwcm9iZXMsIGF0dGFjaGVzIGl0cyBkb21haW4sIGFuZCBydW5zCnJl
cGVhdGVkIGNvbnYgc3VibWlzc2lvbnMgd2l0aCBubyBETUFfUkVBRF9FUlJPUiBhbmQgbm8gcGFn
ZS13YWxrIHN0YWxsLiBObwpyZWdyZXNzaW9uIGZyb20gdGhlIHdyaXRlLgoKVG8gYmUgcHJlY2lz
ZSBhYm91dCB3aGF0IEkgY2FuIGFuZCBjYW4ndCBzaG93OiBJIHRlc3RlZCBib3RoIHdheXMgb24g
djcuMS1yYzYgLS0Kd2l0aCB5b3VyIGJpdC0zMSB3cml0ZSwgYW5kIG9uIHRoZSByZXNldCB2YWx1
ZSAoMHgzKSAtLSBhbmQgdGhlIE5QVQpJT01NVSBzZXJ2aWNlcwp0aGUgTlBVJ3MgcmVhZHMgd2l0
aCB6ZXJvIGZhdWx0cyBpbiBib3RoIGNhc2VzIChubyBETUFfUkVBRF9FUlJPUiwgbm8gcGFnZS13
YWxrCnN0YWxsKS4gU28gSSBkb24ndCBoYXZlIGEgZmFpbGluZyBiYXNlbGluZSBoZXJlIHRoYXQg
Yml0LTMxIHZpc2libHkKZml4ZXMuIElzIHRoZQpBVVRPX0dBVElORyB3cml0ZSBuZWVkZWQgb24g
Y3VycmVudCBtYWlubGluZSwgb3Igb25seSB1bmRlciBjb25kaXRpb25zIEknbSBub3QKcmVwcm9k
dWNpbmcgKGEgcGFydGljdWxhciB0cmFmZmljIHBhdHRlcm4gLyBzaWxpY29uIHJldik/IEknbGwg
a2VlcCB0aGUgcGF0Y2ggaW4KeW91ciBmb3JtIHVubGVzcyB5b3UnZCBwcmVmZXIgdG8gZHJvcCBp
dC4KCk9uZSBxdWVzdGlvbiBzbyBJIGRvY3VtZW50IGl0IGNvcnJlY3RseTogd2hhdCBkb2VzIGJp
dCAzMSBvZiBSS19NTVVfQVVUT19HQVRJTkcKY29udHJvbCBvbiB0aGUgdjIgYmxvY2sgLS0gaXMg
aXQgYSBtYXN0ZXIgImRpc2FibGUgaW50ZXJuYWwgYXV0byBjbG9jay1nYXRpbmciCmZvciB0aGUg
cGFnZS10YWJsZSB3YWxrZXIgKGkuZS4gc28gYSBUTEItbWlzcyB3YWxrJ3MgQVhJIG1hc3RlciBr
ZWVwcyBpdHMgY2xvY2sKdG8gY29tcGxldGlvbik/IFRoZSBSSzM1NjggVFJNIEkgaGF2ZSBkb2Vz
bid0IGNvdmVyIHRoZSBJT01NVSByZWdpc3RlcnMsIHNvIGEKb25lLWxpbmUgZGVzY3JpcHRpb24g
d291bGQgbGV0IG1lIHdyaXRlIGFuIGFjY3VyYXRlIGNvbW1lbnQuCgoKCktpbmQgcmVnYXJkcywK
TWlkZ3kKCkxlIHZlbi4gNSBqdWluIDIwMjYgw6AgMDM6NTksIENoYW95aSBDaGVuIDxjaGFveWku
Y2hlbkByb2NrLWNoaXBzLmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGVsbG8gTWlkZ3ksCj4KPiBPbiA2
LzQvMjAyNiA5OjUyIFBNLCBNaWRneSBCQUxPTiB3cm90ZToKPiA+IE9uIHRoZSBSSzM1NnggdjEg
SU9NTVUsIFJLX01NVV9BVVRPX0dBVElORyByZXNldHMgdG8gMHgzLiBCaXQgMSBlbmFibGVzCj4g
PiBhdXRvIGNsb2NrLWdhdGluZyBvZiB0aGUgcGFnZS10YWJsZSB3YWxrZXIsIHNvIHRoZSB3YWxr
ZXIncyBBWEkgbWFzdGVyCj4gPiBsb3NlcyBpdHMgY2xvY2sgYmV0d2VlbiB0cmFuc2FjdGlvbnM7
IGEgVExCLW1pc3MgcGFnZSB3YWxrIHRoZW4gbmV2ZXIKPiA+IGNvbXBsZXRlcyBhbmQgdGhlIElP
TU1VIGlzIGxlZnQgc3R1Y2sgKFBBR0lOR19FTkFCTEVELCBuZXZlciBJRExFKS4KPiA+Cj4gPiBD
bGVhciBiaXQgMSAoa2VlcGluZyBiaXQgMCwgdGhlIHNsYXZlLXBvcnQgZ2F0ZSkgb25jZSBwYWdp
bmcgaXMgZW5hYmxlZAo+ID4gc28gdGhlIHdhbGtlciBrZWVwcyBpdHMgY2xvY2suIFRoaXMgaXMg
cmVxdWlyZWQgZm9yIHRoZSBSSzM1NjggTlBVIE1NVS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBN
aWRneSBCQUxPTiA8bWlkZ3k5NzFAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9pb21t
dS9yb2NrY2hpcC1pb21tdS5jIHwgMTIgKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9yb2Nr
Y2hpcC1pb21tdS5jIGIvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4gPiBpbmRleCA0
ZGE4MDEzNjkzM2M0Li5lM2Q4YjZlOWNhMTJiIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9pb21t
dS9yb2NrY2hpcC1pb21tdS5jCj4gPiArKysgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11
LmMKPiA+IEBAIC05NTMsNiArOTUzLDE4IEBAIHN0YXRpYyBpbnQgcmtfaW9tbXVfZW5hYmxlKHN0
cnVjdCBya19pb21tdSAqaW9tbXUpCj4gPgo+ID4gICAgICAgcmV0ID0gcmtfaW9tbXVfZW5hYmxl
X3BhZ2luZyhpb21tdSk7Cj4gPgo+ID4gKyAgICAgaWYgKCFyZXQpIHsKPiA+ICsgICAgICAgICAg
ICAgLyoKPiA+ICsgICAgICAgICAgICAgICogUkszNTZ4IHYxIElPTU1VOiBSS19NTVVfQVVUT19H
QVRJTkcgYml0IDEgZW5hYmxlcyBwYWdlLXdhbGtlcgo+ID4gKyAgICAgICAgICAgICAgKiBhdXRv
IGNsb2NrLWdhdGluZzsgdGhlIHdhbGtlcidzIEFYSSBtYXN0ZXIgdGhlbiBsb3NlcyBpdHMgY2xv
Y2sKPiA+ICsgICAgICAgICAgICAgICogYmV0d2VlbiB0cmFuc2FjdGlvbnMgYW5kIGEgVExCLW1p
c3MgcGFnZSB3YWxrIG5ldmVyIGNvbXBsZXRlcywKPiA+ICsgICAgICAgICAgICAgICogbGVhdmlu
ZyB0aGUgSU9NTVUgc3R1Y2sgKFBBR0lOR19FTkFCTEVELCBuZXZlciBJRExFKS4gIENsZWFyCj4g
PiArICAgICAgICAgICAgICAqIGJpdCAxIChrZWVwIGJpdCAwLCB0aGUgc2xhdmUtcG9ydCBnYXRl
KSBvbmNlIHBhZ2luZyBpcyBlbmFibGVkLgo+ID4gKyAgICAgICAgICAgICAgKi8KPiA+ICsgICAg
ICAgICAgICAgZm9yIChpID0gMDsgaSA8IGlvbW11LT5udW1fbW11OyBpKyspCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgcmtfaW9tbXVfd3JpdGUoaW9tbXUtPmJhc2VzW2ldLCBSS19NTVVfQVVU
T19HQVRJTkcsIDB4Mik7Cj4gPiArICAgICB9Cj4gPiArCj4gPiAgb3V0X2Rpc2FibGVfc3RhbGw6
Cj4gPiAgICAgICBya19pb21tdV9kaXNhYmxlX3N0YWxsKGlvbW11KTsKPiA+ICBvdXRfZGlzYWJs
ZV9jbG9ja3M6Cj4KPiBBcyBJIHNhaWQsIGl0IGlzIHYyLiBDb3VsZCB5b3UgcGxlYXNlIHRyeSB1
c2luZyB0aGUgY29kZSBiZWxvdwo+IGluc3RlYWQgYW5kIHNlZSBpZiBpdCB3b3Jrcz8gVGhhbmsg
eW91Lgo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYyBiL2Ry
aXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+IGluZGV4IDAwMTNjZjE5NmM1Ny4uODllM2E4
M2EwMjUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+ICsr
KyBiL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+IEBAIC05MzAsNiArOTMwLDcgQEAg
c3RhdGljIGludCBya19pb21tdV9lbmFibGUoc3RydWN0IHJrX2lvbW11ICppb21tdSkKPiAgICAg
ICAgIHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiA9IGlvbW11LT5kb21haW47Cj4gICAgICAg
ICBzdHJ1Y3QgcmtfaW9tbXVfZG9tYWluICpya19kb21haW4gPSB0b19ya19kb21haW4oZG9tYWlu
KTsKPiAgICAgICAgIGludCByZXQsIGk7Cj4gKyAgICAgICB1MzIgYXV0b19nYXRlOwo+Cj4gICAg
ICAgICByZXQgPSBjbGtfYnVsa19lbmFibGUoaW9tbXUtPm51bV9jbG9ja3MsIGlvbW11LT5jbG9j
a3MpOwo+ICAgICAgICAgaWYgKHJldCkKPiBAQCAtOTQ4LDYgKzk0OSwxMCBAQCBzdGF0aWMgaW50
IHJrX2lvbW11X2VuYWJsZShzdHJ1Y3QgcmtfaW9tbXUgKmlvbW11KQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBya19vcHMtPm1rX2R0ZW50cmllcyhya19kb21haW4tPmR0X2RtYSkp
Owo+ICAgICAgICAgICAgICAgICBya19pb21tdV9iYXNlX2NvbW1hbmQoaW9tbXUtPmJhc2VzW2ld
LCBSS19NTVVfQ01EX1pBUF9DQUNIRSk7Cj4gICAgICAgICAgICAgICAgIHJrX2lvbW11X3dyaXRl
KGlvbW11LT5iYXNlc1tpXSwgUktfTU1VX0lOVF9NQVNLLCBSS19NTVVfSVJRX01BU0spOwo+ICsK
PiArICAgICAgICAgICAgICAgYXV0b19nYXRlID0gcmtfaW9tbXVfcmVhZChpb21tdS0+YmFzZXNb
aV0sIFJLX01NVV9BVVRPX0dBVElORyk7Cj4gKyAgICAgICAgICAgICAgIGF1dG9fZ2F0ZSB8PSBC
SVQoMzEpOwo+ICsgICAgICAgICAgICAgICBya19pb21tdV93cml0ZShpb21tdS0+YmFzZXNbaV0s
IFJLX01NVV9BVVRPX0dBVElORywgYXV0b19nYXRlKTsKPiAgICAgICAgIH0KPgo+ICAgICAgICAg
cmV0ID0gcmtfaW9tbXVfZW5hYmxlX3BhZ2luZyhpb21tdSk7Cj4KPiAtLQo+IEJlc3QsCj4gQ2hh
b3lpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
