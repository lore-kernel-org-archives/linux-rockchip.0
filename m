Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FDE6C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 00:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2Qc8h8b626ItotY8qbw5BzYIlo9GU67KiWGwS2pXQU=; b=t+UfTT5dshWkCa
	4ukkYVo0WK/bliIK+pyg2p+iQ/lhs3ahVcl7/az5q+n/6ibJ0LJDMZk4q6WxQo1q3iYxcHd+vfG5G
	5w6qtGiCiKXgMTAuLG+ieRHw1iGt4v28kHiIXbwmxvU9yJ05HRmQOoyKCCaw4SmnM4VboTFiUFeJr
	39CheLhWeni8sTVT6G3eBNpCSd9YYhfy6HL8YIF5Yv5lSA1jnDro4KkR1bQC0+3HYC5FZkIT70lfD
	NY9Pt/GhVTxPn5rJMdOw9zpLLkf0PHJFmJ6vQ1T9a9DBv7MyBjFu1f0b3xie7srRRJTDErdDDnUfz
	K8LF5HJyZN3JeYIMoPPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whcNH-00000000eJq-19o2;
	Thu, 09 Jul 2026 00:12:19 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whcNE-00000000eJ6-1Cgp
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jul 2026 00:12:17 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-698bf053053so2205677a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 17:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783555934; cv=none;
        d=google.com; s=arc-20260327;
        b=p11H2mb801yu1UMq3cy6L111Gs+ukFDZMmtkvcUDBVZbmfk9IwzLoUFVyFhZ87Ohs1
         /4jG7Nj/l55rassgFDDGYyxVpKSOrGgTFDDOG+4t4TZy6lJttHpb9ktn1z0J3AuHMz5O
         8WIrg3sdJbI65QmV/CNxV1Ky9VLsHbYZSHtTBcwZB0/2UyaM8C6ioNMSHzRQBYgpS0Yw
         38pm91ju5lsUi5oAxY17iItmtRmn19D2ivxvqv/jyLJMW9ydl7okJnK8WvEi5UV3BHv1
         wGko0BqYpwRAqQtdGwj7MgIfnRDGOWFrjd3SrcoPaETBuJd0JGX7ljg5Ooelr22PR+kF
         Vk/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ujm2++fOaQbhOA4MmQSTLdq4gprqLzthH/E1smRUGkc=;
        fh=Olh3s7DOivJKMg3yfqFFjDmu1/O8Qc5FVsVL2gtig7g=;
        b=P9mcCxJNPHRke6rqFVcrFjJzm+jQu0oBwOynIT2+wuBIjzYeemQkBS3rTKkL5olK7F
         cS/WXfNsqpvl8LEuJJBZrjRrPv/vOj/WPbeYFxmloeck9Covt8BfTOkMu4dwqPCyhihF
         cAzZV1n8sW16Ei10rwhUAh+aIG9WdO6hJezEO5vMf3n4ZUMNDzjgtaMvoNpFLhJUaCQI
         whi7jMLU6iywu434UkdSCJB/7UwAOb/BPklrJNxkqIYhgEfF0mEcolTq/yDCMswJlPuh
         xsEwif0XU5xBnpi+04qLyatZC3iJICl1kfVqRhewXg5e5HcMVb8H28y3azd8OZh4kRY+
         oM0Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783555934; x=1784160734; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ujm2++fOaQbhOA4MmQSTLdq4gprqLzthH/E1smRUGkc=;
        b=MFyATvdH0fEzEtvqLFt/Sji8naBt2ovlMC3DEYMmvpStWht0Wt0NHBCRfZJRfu/wOB
         LNKtozYfVDsjGuxKNoP/YzyBRQcxSUYFM8EhNuoyJ8p9nwgk8LXRVMLsuUpoU2jJ3wpM
         rIfFrc4+7wgxt2WppZDYFVYEclebhflWFCiNKz6l7XDb9ZKMozkE0QacNdS+7qggbR5Q
         7QPcULJIpRqbIHf6CAIU0glN+78pHtsBLtbn7fIUvLy13JgV34lyK/c6hUkdg1mZa3Rs
         /m9c5bBc+ySvkFqZO6n/IFWYz4NSzkIqH9jzmtqELu/7dRgosuVgU/1lP0kmMIQ8qVP5
         Np2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783555934; x=1784160734;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ujm2++fOaQbhOA4MmQSTLdq4gprqLzthH/E1smRUGkc=;
        b=O/n/fixu5pLKNvZiQpO6I8LCpRHqjxB5Or500OPM0ldNYNDA3h/mqnxKgcYxTsURSd
         4ULQyqk0Gj4PLp3bWBNYTk0L+D47h9pnil5NrZlAJyPXHjABMZ3YP71DQvG99b/0uEZF
         bAAK59df0zS70uQYmRCzIjEXYdLVmbfXuMjOpozHqveOZ9o/DgDS8ZMIGjkBp0Qe2AsJ
         DdWuH4i1vQ01kAjBShscJztLUSkEI2YPuM7KT5QFLSA0L9WNl6tLt6DjDDeQrT1EwHjP
         8TcdsHobBYDygIh4fRPqT6Gp5PBNaFa0gKVWPVo6e8p1FkBgUL8rjE0aU0XeGhBYtvWK
         uc0w==
X-Forwarded-Encrypted: i=1; AHgh+RrYz3RUZbo5FctbnA9U3Bkf00prXv/8a9HA5Alkov+BVLluYZn8bTYqnr9Sk/C8+EFF6Ocu6ExLH52XKf+6lQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwEf20YyqjG0mbo0SwkBobbikaotW/q36XozOGWuKydO1tjimwo
	QjO2afg0z0uoKxrbcQat9iaAS+WqTdX3UPa0A78k/9++1fNOurclO9PTB3aL83kv1vQxLZnjvRr
	I2iIiFE56GzRuJoLh9FGvIN2U82Biw/o=
X-Gm-Gg: AfdE7cndHacRoagYXVnhsjZyC1SH82FSQdPDzz0LnPo/REOGpgoygZbZPiY3zoph9FX
	drZ+37EoC12J7BEIuENfjLMHfclfJik7p00ChbiE1Jh5J0SdGIMY+Kw8ew657Vp1zbpmpcooIfv
	xuO3jYQescl222rhFpcKngKsLqlWkWxj/DR9g7IexRH7TWNbYf2mov13KSvBSKqOL5iiui9S9BW
	w+Nxw4nCbx+0bag/aa5JLKmm868LoaXRueZxLwbrmeEpQVZizAwlg5d1Ggl/5OkhYgTneHtMQJe
	i5fuybnIoaoBNraPM1L4Bu608t3gAZNF2NpwZFD1
X-Received: by 2002:a05:6402:4283:b0:69a:b3ab:dbea with SMTP id
 4fb4d7f45d1cf-69ab4460cf7mr1758244a12.13.1783555934141; Wed, 08 Jul 2026
 17:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260604135255.62682-1-midgy971@gmail.com> <20260604135255.62682-7-midgy971@gmail.com>
 <e44b506e-e9d2-48e3-acea-ab28b7be9b37@rock-chips.com> <CA+GS1Y16++cztPxdUGLrPA73ENm4vJGFrjm-jP8r=8OQqcMJGA@mail.gmail.com>
 <0919ffcc-81c3-483a-a3ba-404b455c2040@rock-chips.com> <42f1f39f-ab2b-4473-a82a-7ccefad41fcf@rock-chips.com>
In-Reply-To: <42f1f39f-ab2b-4473-a82a-7ccefad41fcf@rock-chips.com>
From: Midgy Balon <midgy971@gmail.com>
Date: Thu, 9 Jul 2026 02:15:34 +0200
X-Gm-Features: AVVi8CcApkElNM_3Z1d6_PvamEAEJfcZGBI9cxUob9-qJkpZOuLDZsOO_EVsZe8
Message-ID: <CA+GS1Y1i87vkv+9NAdqRGNCNsxjQwat2yqEFxjgDZRAPsQjaQA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260708_171216_378634_E2F76B96 
X-CRM114-Status: GOOD (  28.70  )
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

SGkgQ2hhb3lpLAoKU29ycnkgZm9yIHRoZSBzbG93IGZvbGxvdy11cCDigJQgYW5kIHRoYW5rcyBh
Z2FpbiBmb3IgdGhlIHBvaW50ZXJzLCB0aGF0IGNsb3Nlcwp0aGlzIG91dCBjbGVhbmx5LgoKSSBy
ZWFkIHRoZSB0d28gcm9ja2NoaXAtbGludXggY29tbWl0cyAoN2Y4MTU4ZmIsIDZhMzU1ZTVmKSBh
bmQgdGhlIG1lcmdlZApwYXRjaCB5b3UgbWVudGlvbmVkOiAiaW9tbXUvcm9ja2NoaXA6IGRpc2Fi
bGUgZmV0Y2ggZHRlIHRpbWUgbGltaXQiCihTdmVuIFDDvHNjaGVsLCBGcm9tOiBTaW1vbiBYdWUs
CjIwMjYwNDI4LXNwdS1pb21tdWR0ZWZpeC12Mi0xLWY1OTJmNTc5ZTUwOEBwZW5ndXRyb25peC5k
ZSksIHdoaWNoIEpvZXJnCmFwcGxpZWQgb24gMjAyNi0wNi0wMi4gSXQgYWRkcyBESVNBQkxFX0ZF
VENIX0RURV9USU1FX0xJTUlUIChCSVQoMzEpKSBhbmQKZG9lcyBleGFjdGx5IHRoZSBhdXRvX2dh
dGUgfD0gQklUKDMxKSByZWFkLW1vZGlmeS13cml0ZSB5b3Ugc3VnZ2VzdGVkLCBpbgpya19pb21t
dV9lbmFibGUoKSBiZWZvcmUgcGFnaW5nIGlzIGVuYWJsZWQsIGZvciBldmVyeSBSb2NrY2hpcCBJ
T01NVS4gU28gYml0CjMxIGRpc2FibGVzIHRoZSBEVEUtZmV0Y2ggdGltZSBsaW1pdCAod2l0aG91
dCBpdCB0aGUgbmV3ZXIgcmV2aXNpb24gYmxvY2tzCmFmdGVyIGZvdXIgY29uc2VjdXRpdmUgbWFz
dGVyIERURSBmZXRjaGVzIHJhY2luZyB0aGUgQ1BVJ3MgSU9UTEIgemFwcyk7IHRoZQpSSzM1Njgv
UkszNTg4IGVycmF0dW0gaXMgdGhlIHNhbWUgb25lIGFzIFJWMTEyNi9SVjExMDkuIFRoYXQncyB0
aGUgYWNjdXJhdGUKZGVzY3JpcHRpb24gSSB3YXMgbWlzc2luZyDigJQgdGhhbmsgeW91LgoKU2lu
Y2UgdGhhdCBmaXggaXMgYWxyZWFkeSB1cHN0cmVhbSwgSSdsbCBkcm9wIHRoZSBBVVRPX0dBVElO
RyBjaGFuZ2UKZnJvbSBteSBzZXJpZXMgZW50aXJlbHkgcmF0aGVyIHRoYW4gY2FycnkgYQpkdXBs
aWNhdGU6IHY0IHdpbGwgcmViYXNlIG9uIHRvcCBvZiBpdCBhbmQgdGhlIE5QVSBNTVUgcGlja3Mg
dXAgQklUKDMxKSBmb3IKZnJlZS4gRm9yIHRoZSByZWNvcmQsIG9uIHRoZSBST0NLIDNCIHRoZSBO
UFUgSU9NTVUgc2VydmljZXMgdGhlIE5QVSdzIHJlYWRzCndpdGggemVybyBmYXVsdHMgYm90aCB3
aXRoIEJJVCgzMSkgYW5kIG9uIHRoZSByZXNldCB2YWx1ZSAoMHgzKSwgc28gdGhpcyBpcyBhCm5v
LW9wIG9uIG15IGhhcmR3YXJlL3dvcmtsb2FkIOKAlCBidXQgcmViYXNpbmcgcGFzdCB0aGUgbWVy
Z2VkIHBhdGNoIGlzIHRoZQpyaWdodCB0aGluZyByZWdhcmRsZXNzLgoKU28gbXkgdjQgSU9NTVUg
ZGVwZW5kZW5jeSBsaXN0IGJlY29tZXM6IHlvdXIgcGVyLWRldmljZS1vcHMgc2VyaWVzLCBwbHVz
IHRoZQptZXJnZWQgImRpc2FibGUgZmV0Y2ggZHRlIHRpbWUgbGltaXQiIHBhdGNoLiBNeSBzZXJp
ZXMgbm8gbG9uZ2VyIHRvdWNoZXMgdGhlCklPTU1VIGRyaXZlciBpdHNlbGYuCgooVGhlIGNvbnZv
bHV0aW9uIG91dHB1dCBpcyBzdGlsbCB1bmlmb3JtIHplcm8tcG9pbnQgLyB0aGUgam9iIHRpbWVz
IG91dCDigJQKdGhhdCdzIHRoZSBzZXBhcmF0ZSBOUFUgY29tcHV0ZS1jb21wbGV0aW9uIGlzc3Vl
LCB1bnJlbGF0ZWQgdG8gdGhpcy4pCgpUaGFua3MgYWdhaW4sIGFuZCBraW5kcyByZWdhcmRzCk1p
ZGd5CgoKTGUgbHVuLiA4IGp1aW4gMjAyNiDDoCAwNTo0MCwgQ2hhb3lpIENoZW4gPGNoYW95aS5j
aGVuQHJvY2stY2hpcHMuY29tPiBhIMOpY3JpdCA6Cj4KPiBPbiA2LzgvMjAyNiA5OjQ1IEFNLCBD
aGFveWkgQ2hlbiB3cm90ZToKPiA+IEhpIE1pZGd5LAo+ID4KPiA+IE9uIDYvOC8yMDI2IDU6MDUg
QU0sIE1pZGd5IEJhbG9uIHdyb3RlOgo+ID4+IEhpIENoYW95aSwKPiA+Pgo+ID4+PiBBcyBJIHNh
aWQsIGl0IGlzIHYyLiBDb3VsZCB5b3UgcGxlYXNlIHRyeSB1c2luZyB0aGUgY29kZSBiZWxvdyBp
bnN0ZWFkIGFuZAo+ID4+PiBzZWUgaWYgaXQgd29ya3M/Cj4gPj4+IFsgYXV0b19nYXRlID0gcmVh
ZChSS19NTVVfQVVUT19HQVRJTkcpOyBhdXRvX2dhdGUgfD0gQklUKDMxKTsgd3JpdGUoLi4uKSBd
Cj4gPj4KPiA+PiBUaGFua3MgLS0gdGhhdCdzIGNsZWFybHkgdGhlIHJpZ2h0IHNoYXBlIChyZWFk
LW1vZGlmeS13cml0ZSwgYmVmb3JlIHBhZ2luZyBpcwo+ID4+IGVuYWJsZWQsIGtlZXBpbmcgdGhl
IHJlc2V0IHZhbHVlIGluc3RlYWQgb2YgbXkgY2xvYmJlcmluZyAweDIpLgo+ID4+Cj4gPj4gSSBy
ZWJ1aWx0IHY3LjEtcmM2ICh3aXRoIHRoZSByb2NrZXQgUkszNTY4IHNlcmllcyArIHlvdXIgcGVy
LWRldmljZS1vcHMgd29yaykKPiA+PiB1c2luZyB5b3VyIGJpdC0zMSB2ZXJzaW9uIGFuZCB0ZXN0
ZWQgaXQgb24gYSBST0NLIDNCOiB0aGUgTlBVIElPTU1VIGNvbWVzIHVwIGFuZAo+ID4+IHNlcnZp
Y2VzIHRoZSBOUFUncyBETUEgY2xlYW5seSAtLSB0aGUgTlBVIHByb2JlcywgYXR0YWNoZXMgaXRz
IGRvbWFpbiwgYW5kIHJ1bnMKPiA+PiByZXBlYXRlZCBjb252IHN1Ym1pc3Npb25zIHdpdGggbm8g
RE1BX1JFQURfRVJST1IgYW5kIG5vIHBhZ2Utd2FsayBzdGFsbC4gTm8KPiA+PiByZWdyZXNzaW9u
IGZyb20gdGhlIHdyaXRlLgo+ID4+Cj4gPj4gVG8gYmUgcHJlY2lzZSBhYm91dCB3aGF0IEkgY2Fu
IGFuZCBjYW4ndCBzaG93OiBJIHRlc3RlZCBib3RoIHdheXMgb24gdjcuMS1yYzYgLS0KPiA+PiB3
aXRoIHlvdXIgYml0LTMxIHdyaXRlLCBhbmQgb24gdGhlIHJlc2V0IHZhbHVlICgweDMpIC0tIGFu
ZCB0aGUgTlBVCj4gPj4gSU9NTVUgc2VydmljZXMKPiA+PiB0aGUgTlBVJ3MgcmVhZHMgd2l0aCB6
ZXJvIGZhdWx0cyBpbiBib3RoIGNhc2VzIChubyBETUFfUkVBRF9FUlJPUiwgbm8gcGFnZS13YWxr
Cj4gPj4gc3RhbGwpLiBTbyBJIGRvbid0IGhhdmUgYSBmYWlsaW5nIGJhc2VsaW5lIGhlcmUgdGhh
dCBiaXQtMzEgdmlzaWJseQo+ID4+IGZpeGVzLiBJcyB0aGUKPiA+PiBBVVRPX0dBVElORyB3cml0
ZSBuZWVkZWQgb24gY3VycmVudCBtYWlubGluZSwgb3Igb25seSB1bmRlciBjb25kaXRpb25zIEkn
bSBub3QKPiA+PiByZXByb2R1Y2luZyAoYSBwYXJ0aWN1bGFyIHRyYWZmaWMgcGF0dGVybiAvIHNp
bGljb24gcmV2KT8gSSdsbCBrZWVwIHRoZSBwYXRjaCBpbgo+ID4+IHlvdXIgZm9ybSB1bmxlc3Mg
eW91J2QgcHJlZmVyIHRvIGRyb3AgaXQuCj4gPj4KPiA+PiBPbmUgcXVlc3Rpb24gc28gSSBkb2N1
bWVudCBpdCBjb3JyZWN0bHk6IHdoYXQgZG9lcyBiaXQgMzEgb2YgUktfTU1VX0FVVE9fR0FUSU5H
Cj4gPj4gY29udHJvbCBvbiB0aGUgdjIgYmxvY2sgLS0gaXMgaXQgYSBtYXN0ZXIgImRpc2FibGUg
aW50ZXJuYWwgYXV0byBjbG9jay1nYXRpbmciCj4gPj4gZm9yIHRoZSBwYWdlLXRhYmxlIHdhbGtl
ciAoaS5lLiBzbyBhIFRMQi1taXNzIHdhbGsncyBBWEkgbWFzdGVyIGtlZXBzIGl0cyBjbG9jawo+
ID4+IHRvIGNvbXBsZXRpb24pPyBUaGUgUkszNTY4IFRSTSBJIGhhdmUgZG9lc24ndCBjb3ZlciB0
aGUgSU9NTVUgcmVnaXN0ZXJzLCBzbyBhCj4gPj4gb25lLWxpbmUgZGVzY3JpcHRpb24gd291bGQg
bGV0IG1lIHdyaXRlIGFuIGFjY3VyYXRlIGNvbW1lbnQuCj4gPj4KPiA+Cj4gPiBHbGFkIHRvIGhl
YXIgdGhpcyB3b3Jrcy4gUGxlYXNlIHJlZmVyIHRvIHRoZSBjb21taXQgYmVsb3cuCj4gPgo+ID4g
WzBdOiBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsL2NvbW1pdC83Zjgx
NThmYjQxYjVjYzhlNzM4YWFlZWJjMzYzN2M1MGViZDc0Y2FlCj4gPiBbMV06IGh0dHBzOi8vZ2l0
aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvY29tbWl0LzZhMzU1ZTVmOWEyMDY5YTIzMDll
MjQwNzkxYmMzYWFkNjNiNzMyNGUKPiA+Cj4KPiBJdCBsb29rcyBsaWtlIFJHQSBuZWVkcyB0aGlz
IHBhdGNoIHRvbywgYW5kIGl0IGhhcyBhbHJlYWR5IGJlZW4gbWVyZ2VkIDopLgo+Cj4gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNDI4LXNwdS1pb21tdWR0ZWZpeC12Mi0xLWY1OTJm
NTc5ZTUwOEBwZW5ndXRyb25peC5kZS8KPgo+IC0tCj4gQmVzdCwKPiBDaGFveWkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
