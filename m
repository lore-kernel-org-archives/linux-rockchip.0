Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2068AFA3726
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jan 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47YIyHSIjpDWzkNDuk+agQJXtpHLlqKaKJX3/kjAlSQ=; b=k3mQMUA6RsMNXW
	t/ozc65SYTfe3DnUbKc+aGq6BpFoijBW3ZeH84ik6cJ9zPSZCVKe1IVMNOLrp/7RkPMKOlN98ybzq
	The6JScXcxg4IioalpJEfDK+EN94QUx88KR6yQozAk8rTgIBXEhcyvADLPT3u5ureSMV6WeDfNfpM
	FPlaurNHvIJV3PqGbRrzmMAQhhOABffLbsKz1W3dIfvyl33wQOR4gz72zsfmItqE0rQ6EnncFOLKC
	52+OgaIKSgCCE9NIHG911flDG8L7WZ8fYM1HY8qB9vpdHtinMCALOnb68UphrqyWDNGkYww63mYST
	z4P0FpUqakfs2kihdJkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbV1Z-00000007j8V-1SZQ;
	Fri, 02 Jan 2026 02:36:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbV1X-00000007j81-1Uqt
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Jan 2026 02:36:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 41C0A600AA
	for <linux-rockchip@lists.infradead.org>; Fri,  2 Jan 2026 02:36:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE6F9C19425
	for <linux-rockchip@lists.infradead.org>; Fri,  2 Jan 2026 02:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767321377;
	bh=DfTjVyPkPlF8+h71Wfnen1ji8bK+saUfxXxq5W1MIko=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=GovNAfecOxI43sV18xi+N015VWAmkYS4XkX9qcDsgDKXL1DIKVAYAidMXQo8/jlLt
	 V8jOjXCVgaahM6OYFgUylIhx8iFw6vXaCLnvocLkPF07BEfhnyCy1n7C1R2V9qLbVR
	 UorviAGpXtA3usXsb+QzjIezu/sDKqbDo888si2l/nDieGJIjqgJudf8OUxNz5wKug
	 fRturtOU96hX7lCc1yojrq5kgWqmsi0sKa0BRu5oLLWnDGWIbtIcb/NlYCm/xV9WMd
	 vZ6VLj39UKd9UenSIhFfQWdJmRyHCck7Gi8ujhkDH4ZOjakZEKtacXyytWZN1vmnnR
	 P/QQDNJZySuTA==
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b73a9592fb8so2315736266b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Jan 2026 18:36:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXkIStRMa29KUrT3VRWSIdSWqFx2PzofIj4xmPPnk2Z+KXSIhkT7oJNqmAnasc6fjzJyl09amwTYyntPr6kOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxthjLri8VazdvRmPiquMy5ydQxhsIXoz+3WyAfUB4iPDlw6+WP
	13AgXydhn/har7gMw5txl/TDXto5Uh4+Av0rVnQdyN6Y8vibVNyyVBIpL4CQ/nYk4pPbHdMeH5d
	VHvVVochCvfmfYMPWmuA4j6OZKjcsjmE=
X-Google-Smtp-Source: AGHT+IFvKRFGjALVjIE2PdpGqIP4K3Bkyd218s2vwyTLJhdPENKNqcsiJiYAt6huCBwIaiwZWWGOlSPSep8xsABXsuA=
X-Received: by 2002:a17:907:1b26:b0:b72:84bd:88f3 with SMTP id
 a640c23a62f3a-b803563ee36mr4353637166b.11.1767321376278; Thu, 01 Jan 2026
 18:36:16 -0800 (PST)
MIME-Version: 1.0
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh> <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com> <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
In-Reply-To: <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Fri, 2 Jan 2026 10:36:35 +0800
X-Gmail-Original-Message-ID: <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
X-Gm-Features: AQt7F2pBMy6uQYiqfN3YBOwxky2OlMF5LBaK2LjXdA8kqKgx4D1i2BPaBPZfYkU
Message-ID: <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
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

T24gV2VkLCBEZWMgMzEsIDIwMjUgYXQgMTE6MjHigK9QTSBBbGFuIFN0ZXJuIDxzdGVybkByb3ds
YW5kLmhhcnZhcmQuZWR1PiB3cm90ZToKPgo+IE9uIFdlZCwgRGVjIDMxLCAyMDI1IGF0IDA1OjM4
OjA1UE0gKzA4MDAsIEh1YWNhaSBDaGVuIHdyb3RlOgo+ID4gRnJvbSB5b3VyIGxvbmcgZXhwbGFu
YXRpb24gSSB0aGluayB0aGUgb3JkZXIgaXMgc3RpbGwgaW1wb3J0YW50LiAiTmV3Cj4gPiBjb25u
ZWN0aW9uIiBtYXkgYmUgaGFybWxlc3MgZm9yIFVTQiBrZXlib2FyZC9tb3VzZSwgYnV0IHJlYWxs
eQo+ID4gdW5hY2NlcHRhYmxlIGZvciBVU0Igc3RvcmFnZS4KPiA+Cj4gPiBJZiB3ZSByZXZlcnQg
MDVjOTJkYTBjNTI0IGFuZCA5YmVlZWU2NTg0YjksIHRoZSByZWFsIHByb2JsZW0gZG9lc24ndAo+
ID4gZGlzYXBwZWFyLiBUaGVuIHdlIGdvIGJhY2sgdG8gcHJlLTIwMDggdG8gcmVseSBvbiBkaXN0
cmlidXRpb25zCj4gPiBwcm92aWRpbmcgYSBjb3JyZWN0IG1vZHByb2JlLmNvbmY/Cj4KPiBUaGUg
d2FybmluZyBtZXNzYWdlIGluIDliZWVlZTY1ODRiOSB3YXMgd3JpdHRlbiBhIGxvbmcgdGltZSBh
Z287IGJhY2sKPiB0aGVuIEkgZGlkbid0IHJlYWxpemUgdGhhdCB0aGUgcmVhbCBkZXBlbmRlbmN5
IHdhcyBiZXR3ZWVuIHRoZSAtcGNpCj4gZHJpdmVycyByYXRoZXIgdGhhbiB0aGUgLWhjZCBvbmVz
IChhbmQgSSB3YXNuJ3QgYXdhcmUgb2Ygc29mdGRlcHMpLiAgVGhlCj4gc29mdCBkZXBlbmRlbmN5
IGluIDA1YzkyZGEwYzUyNCBpcyBiZXR3ZWVuIHRoZSAtcGNpIGRyaXZlcnMsIHNvIGl0IGlzCj4g
Y29ycmVjdC4KPgo+IFRvIHB1dCBpdCBhbm90aGVyIHdheSwgb24gUENJLWJhc2VkIHN5c3RlbXMg
aXQgaXMgbm90IGEgcHJvYmxlbSBpZiB0aGUKPiBtb2R1bGVzIGFyZSBsb2FkZWQgaW4gdGhpcyBv
cmRlcjogdWhjaS1oY2QsIG9oY2ktaGNkLCBlaGNpLWhjZCwKPiBlaGNpLXBjaSwgb2hjaS1wY2ks
IHVoY2ktcGNpLiAgRXZlbiB0aG91Z2ggdGhlIHdhcm5pbmcgbWVzc2FnZSB3b3VsZCBiZQo+IGxv
Z2dlZCwgdGhlIG1lc3NhZ2Ugd291bGQgYmUgd3JvbmcuCkNvcnJlY3QgbWUgaWYgSSdtIHdyb25n
LgoKSSBmb3VuZCBYSENJIGlzIGNvbXBhdGlibGUgd2l0aCBVU0IxLjAvMi4wIGRldmljZXMsIGJ1
dCBFSENJIGlzbid0CmNvbXBhdGlibGUgd2l0aCBVU0IxLjAuIEluc3RlYWQsIEVIQ0kgdXN1YWxs
eSBoYXMgYW4gT0hDSSB0b2dldGhlciwKdGhpcyBpcyBub3Qgb25seSBpbiB0aGUgUENJIGNhc2Uu
CgpTbyBJIGd1ZXNzIE9IQ0kvVUhDSSBoYXZlIGFuIEVIQ0kgZGVwZW5kZW5jeSBpbiBvcmRlciB0
byBhdm9pZCAibmV3CmNvbm5lY3Rpb24iLCBub3Qgb25seSBpbiB0aGUgUENJIGNhc2UuCgoKSHVh
Y2FpCgo+Cj4gT24gdGhlIHdob2xlLCBJIHRoaW5rIHRoZSBiZXN0IGFwcHJvYWNoIGlzIHRvIHJl
dmVydCA5YmVlZWU2NTg0Yjkncwo+IHdhcm5pbmcgbWVzc2FnZSB3aGlsZSBrZWVwaW5nIDA1Yzky
ZGEwYzUyNCdzIHNvZnRkZXBzLiAgR3JlZyBtaWdodCBub3QKPiBhcHByb3ZlIG9mIHNvZnQgZGVw
ZW5kZW5jaWVzIGJldHdlZW4gbW9kdWxlcyBpbiBnZW5lcmFsLCBidXQgaW4gdGhpcwo+IGNhc2Ug
SSBiZWxpZXZlIGl0IGlzIGFwcHJvcHJpYXRlLgo+Cj4gQW5kIHNvIHlvdXIgcGF0Y2ggcmVhbGx5
IGlzIG5vdCBuZWVkZWQsIGFzIGZhciBhcyBJIGNhbiB0ZWxsLiAgV2hpbGUgaXQKPiBtaWdodCBp
biB0aGVvcnkgaGVscCBzb21lIHBlY3VsaWFyIHBsYXRmb3JtLWRlcGVuZGVudCBzY2VuYXJpbywg
SSdtCj4gbm90IGF3YXJlIG9mIGFueSBwbGF0Zm9ybXMgbGlrZSB0aGF0Lgo+Cj4gQWxhbiBTdGVy
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
