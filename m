Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0480D25032
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jan 2026 01:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zTsYtChOnrUr4zYoAenE27+hYjf1S4sa38CUGgY6Y4=; b=VBmz0jYcRjUlmI
	ayYBs9h0BA+VnAInDWOcFqFAheUrXDAObEbyVvHxH59EZCoq5F2PKgamE+E9YVegMG2HrxvdaqdDx
	fwk7k/KLUcGbyTLJQlfkxmSkYKSWZA9T0v7Cj+yTveBQUX/8DOPLD/SXEdFnBf1DbPJlFZc230nOZ
	bzf1MpauatZi2Am5pR6FwV1v+P3OFTTjP0Vtz8UeCHwS5DeGFP2U3HIJXV4Zct6mZDL3s+8rknlKw
	eeeX1QpWx9uBQDEUaQf8DM3UVGcSImxDvr+hu19ZiWiku0Js4uza19E4FBu2NfZEbP+1/YRQ4ubqq
	MDJzNKPCQk1sdqMdV/7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vekfV-00000003p2q-3gLb;
	Sun, 11 Jan 2026 01:55:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vekfU-00000003p2R-218K
	for linux-rockchip@lists.infradead.org;
	Sun, 11 Jan 2026 01:55:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CD65160185
	for <linux-rockchip@lists.infradead.org>; Sun, 11 Jan 2026 01:54:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 375A5C16AAE
	for <linux-rockchip@lists.infradead.org>; Sun, 11 Jan 2026 01:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768096497;
	bh=3+boh/64J3UqZucLzwtl7B8Arc8PYtZWke74PMpbH5Q=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Tt16OhBZKlk0+Go8ZDGIooj4m9Cy/cX8hjpPtxK3d+3SwCyZJnxUjpSpcbhfLcziW
	 0TY0XrjCnJtIWjAlHgKqsp4T0nhE80SDzZPHjYV6hV+MzUUox6jlKJhumnSejXAEUH
	 XBgWSAS5hmWjDTASBlZl4Lks5XpdKfR4GvxuqMSe4+0O7l443+Ya64BBqfbJNIOGgf
	 iSYFU77G+SI+T5hJfcB6CVLCrh74XzkX8/qZNpyosUo78d3zq6btiQCzPXOFwipul7
	 K1oQigx9ceirpAquoRX7PvNJjekrXNhISflbuoLsRxdIhxgYQ/j4vq7V6KRU1Nxuq3
	 JOyVtEWPj6jcQ==
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64b9dfc146fso4385448a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jan 2026 17:54:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUtlEDXc3n01KLMiQ/kPAgkzJ0ka4KdL+kPbynZqG2XXu8nxPn9Mr38IjaToprGVm7vYLD4f/ZehzNeVJfPHw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjKKot9Dfipuv07bEHW4O6eGBS6aaOB7ClPq8K4i9oxKrcUATA
	5YjYt5qzHSdQUK8m7ntLO6s3X8z2y4TXIqXZjTvZCGEI/Ma3fh2GBjFE7AKWMQDfCtimJ4W8RcY
	Ekv0fIxeMubWZWOg629eGA0ZxJLUTdFw=
X-Google-Smtp-Source: AGHT+IFefzhNqietnG7jCSa+J+bZNTm2sxT6EMCIzG2hX7dQNgvopeRcl429RcoFUOJJ8DD+HXIMkLRyHc5oHcFBqoE=
X-Received: by 2002:a17:906:31c4:b0:b86:f558:ecbd with SMTP id
 a640c23a62f3a-b86f558ef40mr259752266b.13.1768096495753; Sat, 10 Jan 2026
 17:54:55 -0800 (PST)
MIME-Version: 1.0
References: <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
 <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
 <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
 <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
 <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com>
 <98e36c6f-f0ee-40d2-be7f-d2ad9f36de07@rowland.harvard.edu>
 <CAAhV-H601B96D9rFrnARho4Lr9A+ah7Cx7eKiPr=epbG17ODHQ@mail.gmail.com>
 <561129d8-67ff-406c-afe8-73430484bd96@rowland.harvard.edu>
 <CAAhV-H41kwndL+oz2Gcfpe3-MCagaQd2X21gK9kMO2vpw_thhA@mail.gmail.com> <e6a02bff-6371-4a03-910e-b47c5eec726c@rowland.harvard.edu>
In-Reply-To: <e6a02bff-6371-4a03-910e-b47c5eec726c@rowland.harvard.edu>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Sun, 11 Jan 2026 09:54:46 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7NGgHhrZ+oC2ZbzURj0--yVL8rpn4Z42xk9VzKD3E1Qw@mail.gmail.com>
X-Gm-Features: AZwV_QjrxAmrXgM418NqjlVUfhPSmRQwnTXsOX72D4q8A2YzFMOxw5809vLsa1c
Message-ID: <CAAhV-H7NGgHhrZ+oC2ZbzURj0--yVL8rpn4Z42xk9VzKD3E1Qw@mail.gmail.com>
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Diederik de Haas <diederik@cknow-tech.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Huacai Chen <chenhuacai@loongson.cn>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org, Shengwen Xiao <atzlinux@sina.com>, 
	linux-rockchip@lists.infradead.org
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

T24gU2F0LCBKYW4gMTAsIDIwMjYgYXQgMTE6MDDigK9QTSBBbGFuIFN0ZXJuIDxzdGVybkByb3ds
YW5kLmhhcnZhcmQuZWR1PiB3cm90ZToKPgo+IE9uIFNhdCwgSmFuIDEwLCAyMDI2IGF0IDEyOjA1
OjE5UE0gKzA4MDAsIEh1YWNhaSBDaGVuIHdyb3RlOgo+ID4gU28gSSB0aGluayB3ZSBuZWVkIGEg
c29mdGRlcCBiZXR3ZWVuIG9oY2ktcGxhdGZvcm0vdWhjaS1wbGF0Zm9ybSBhbmQKPiA+IGVoY2kt
cGxhdGZvcm0sIHdoaWNoIGlzIHNpbWlsYXIgdG8gdGhlIFBDSSBjYXNlLgo+Cj4gWWVzLCBvbiB5
b3VyIHBsYXRmb3JtLiAgQnV0IG5vdCBvbiBvdGhlciBwbGF0Zm9ybXMuICAoRm9yIGV4YW1wbGUs
IG5vdAo+IG9uIGEgcGxhdGZvcm0gdGhhdCBkb2Vzbid0IGhhdmUgYW4gRUhDSSBjb250cm9sbGVy
LikKRm9yIHRoZSBQQ0kgY2FzZSwgT0hDSSB3aXRob3V0IEVIQ0kgaXMgYWxzbyBwb3NzaWJsZT8g
U28gSSB0aGluayB0aGV5CmFyZSBzaW1pbGFyLgoKPgo+IEkgdGhpbmsgdGhlIGJlc3Qgd2F5IHRv
IGRvIHRoaXMgaXMgdG8gY3JlYXRlIGEgbmV3IENPTkZJR19FSENJX1NPRlRERVBTCj4gS2NvbmZp
ZyBzeW1ib2wsIGFuZCBhZGQgdGhlIHNvZnQgZGVwZW5kZW5jeSBvbmx5IGlmIHRoZSBzeW1ib2wg
aXMKPiBkZWZpbmVkLiAgTm9ybWFsbHkgaXQgd2lsbCBiZSB1bmRlZmluZWQgYnkgZGVmYXVsdCwg
YnV0IG9uIHlvdXIgcGxhdGZvcm0KPiAoYW5kIGFueSBvdGhlcnMgdGhhdCBuZWVkIGl0KSB5b3Ug
Y2FuIHNlbGVjdCBpdC4KPgo+IEhvdyBkb2VzIHRoYXQgc291bmQ/CkZyb20gbXkgcG9pbnQgb2Yg
dmlldywga2VlcGluZyBpdCBzaW1wbGUgbWF5IGJlIGJldHRlci4gSSB0aGluayBhbgp1bmNvbmRp
dGlvbmFsIHNvZnRkZXAgaXMgaGFybWxlc3MuCgo+Cj4gPiA+IFRoZXJlIGFyZSBvdGhlciBpc3N1
ZXMgaW52b2x2aW5nIGNvbXBhbmlvbiBjb250cm9sbGVycywgY29ubmVjdGVkIHdpdGgKPiA+ID4g
aGliZXJuYXRpb24uICBZb3Ugc2hvdWxkIHRha2UgYSBsb29rIGF0IGNvbW1pdCA2ZDE5YzAwOWNj
NzggKCJVU0I6Cj4gPiA+IGltcGxlbWVudCBub24tdHJlZSByZXN1bWUgb3JkZXJpbmcgY29uc3Ry
YWludHMgZm9yIFBDSSBob3N0Cj4gPiA+IGNvbnRyb2xsZXJzIiksIHdoaWNoIHdhcyBsYXRlciBt
b2RpZmllZCBieSBjb21taXQgMDU3Njg5MThiOWExICgiVVNCOgo+ID4gPiBpbXByb3ZlIHBvcnQg
dHJhbnNpdGlvbnMgd2hlbiBFSENJIHN0YXJ0cyB1cCIpIGFuZCBhIGZldyBvdGhlcnMuCj4gPiA+
Cj4gPiA+IEFsc28sIHJlYWQgdGhyb3VnaCB0aGUgY3VycmVudCBjb2RlIGluIGhjZC1wY2kuYyAo
Zm9yX2VhY2hfY29tcGFuaW9uKCksCj4gPiA+IGVoY2lfcHJlX2FkZCgpLCBlaGNpX3Bvc3RfYWRk
KCksIG5vbl9laGNpX2FkZCgpLCBlaGNpX3JlbW92ZSgpLCBhbmQKPiA+ID4gZWhjaV93YWl0X2Zv
cl9jb21wYW5pb25zKCkpLiAgWW91ciBub24tUENJIHN5c3RlbSB3aWxsIG5lZWQgdG8gaW1wbGVt
ZW50Cj4gPiA+IHNvbWUgc29ydCBvZiBlcXVpdmFsZW50IHRvIGFsbCB0aGVzZSB0aGluZ3MuCj4g
PiBBdCBsZWFzdCBmb3IgdGhlIGRldmljZSBwcm9iZSwgYSBzb2Z0ZGVwIHNlZW1zIGVub3VnaC4K
Pgo+IERvZXMgdGhpcyBwbGF0Zm9ybSBzdXBwb3J0IGhpYmVybmF0aW9uIGF0IGFsbD8KTFMySzUw
MCBpcyBhbiBlbWJlZGRlZCBjaGlwLCBpdCBtYXkgb3IgbWF5IG5vdCBzdXBwb3J0IGhpYmVybmF0
aW9uLApidXQgd2UgaGF2ZW4ndCB1c2VkIGhpYmVybmF0aW9uLgoKSHVhY2FpCgo+Cj4gQWxhbiBT
dGVybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
