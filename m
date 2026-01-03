Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16236FC6165
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 03:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBldhDcffUY1/HzkLYMSW9JIdBUu5z1uhNh7TnXNdfI=; b=GwSKrWtgs85sRN
	XqaX5+MK17GDa8KPw3je+s6vjtJ0JTnGuqoysepoVt17VFSpozTFh/S/wMfeW4OYvI/e2NpUIxPrQ
	iGY83mYUCG47S0pa5Oi7PJoWeh8h6DGIHnLU+F6lcxJun8bVnGJcjBHx/g63T2pfbbxFmaGHqJLK+
	kJrh1QnxiYQnjJOl2zz5N07CZWkPkjB4ReTjTjir1F67Igvy9US1G8nXfHfJySvQUPykzo5k1DqMW
	lJHnei4NgLTaSYnnP+O8JNOez1gpVW6DtYPE6Dgmt3KOAP+6yzd4fz1aHQiiY7W/h/HDAbMT/DHtQ
	1AnmNAmBO2MnIBKcU8xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbs8D-00000008vNi-497w;
	Sat, 03 Jan 2026 03:16:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbs8C-00000008vNX-0VMR
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 03:16:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 484776013D
	for <linux-rockchip@lists.infradead.org>; Sat,  3 Jan 2026 03:16:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1847C2BC86
	for <linux-rockchip@lists.infradead.org>; Sat,  3 Jan 2026 03:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767410200;
	bh=m9xIBj3yL9LawKUkeqOxIMHhpeBMxBfDFT4hgdvqNxI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hEAfEe3Lme0NNGrJTeE6cc8HOq7gx3X/6ZnV7zwGPsAcHzxSu0eF1kvyJeSkWT8nk
	 b+9npTewLTl9oMrhQsLV/UoaC4GQNbTTI8zCWGnsf4EeO9bWoCemfc0UUhgobW0Pr4
	 kEwiKJHpXavsF0SxNfy1QP/wpnn1JxPHRhWIo+cId4lEyQpX7MQ8vnWWnStQgi0x3C
	 NXc+SK8m91C4kWYLIMqx0mUGNNMcInJdCyF/ZeDNdfNiiheGCBpjgx69XhvK+w/XJ+
	 TrFcuqR63iLiznhmTZK+hPAgeUupWd6LSKH/ItDy0bN3MYy1RgDbjLP3ZGJErZFiWk
	 oVKBVWw8c8iCA==
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64b5ed53d0aso18098809a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Jan 2026 19:16:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV6Bj7KtpyFPdmmJ6o5yzTXuYpupf3Tp0juFu9K/L9Jr0JtXp+yE/m1//l4W8YRXNEYmvA5DnSpi/9PD0jwiw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/Hi07XeipLhZ4TEtX+WhbE/zFwnX+jcdRfNAjGwwLzfacjc+z
	OVD3uEppu6qbw01nwb/bESV0CZ6fty/6+tWWRXAJBj/nZLPZFeLFFMtNCigF46nnCrMVoR1D6oc
	GX1LiMvxxUbSMWfWJljT7zbgymDs9uN0=
X-Google-Smtp-Source: AGHT+IENwkbY5Krujo1vI/+oQgXYSVTGsEftmHp5TsgQioVkf+KFrHnaVJGa5DrZDz3gGsdbfK08WhOdN1Wgf21PUHg=
X-Received: by 2002:a17:906:c146:b0:b73:99f7:8134 with SMTP id
 a640c23a62f3a-b8037180224mr4120664866b.45.1767410199407; Fri, 02 Jan 2026
 19:16:39 -0800 (PST)
MIME-Version: 1.0
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh> <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
 <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
 <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com> <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
In-Reply-To: <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Sat, 3 Jan 2026 11:16:59 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com>
X-Gm-Features: AQt7F2p7PUWpUJu1gk3NQjtCnUFNalt9DTy3BonfJ8TJwT21wFS49ZipknARuPk
Message-ID: <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com>
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

T24gRnJpLCBKYW4gMiwgMjAyNiBhdCAxMToxM+KAr1BNIEFsYW4gU3Rlcm4gPHN0ZXJuQHJvd2xh
bmQuaGFydmFyZC5lZHU+IHdyb3RlOgo+Cj4gT24gRnJpLCBKYW4gMDIsIDIwMjYgYXQgMTA6MzY6
MzVBTSArMDgwMCwgSHVhY2FpIENoZW4gd3JvdGU6Cj4gPiBPbiBXZWQsIERlYyAzMSwgMjAyNSBh
dCAxMToyMeKAr1BNIEFsYW4gU3Rlcm4gPHN0ZXJuQHJvd2xhbmQuaGFydmFyZC5lZHU+IHdyb3Rl
Ogo+ID4gPgo+ID4gPiBPbiBXZWQsIERlYyAzMSwgMjAyNSBhdCAwNTozODowNVBNICswODAwLCBI
dWFjYWkgQ2hlbiB3cm90ZToKPiA+ID4gPiBGcm9tIHlvdXIgbG9uZyBleHBsYW5hdGlvbiBJIHRo
aW5rIHRoZSBvcmRlciBpcyBzdGlsbCBpbXBvcnRhbnQuICJOZXcKPiA+ID4gPiBjb25uZWN0aW9u
IiBtYXkgYmUgaGFybWxlc3MgZm9yIFVTQiBrZXlib2FyZC9tb3VzZSwgYnV0IHJlYWxseQo+ID4g
PiA+IHVuYWNjZXB0YWJsZSBmb3IgVVNCIHN0b3JhZ2UuCj4gPiA+ID4KPiA+ID4gPiBJZiB3ZSBy
ZXZlcnQgMDVjOTJkYTBjNTI0IGFuZCA5YmVlZWU2NTg0YjksIHRoZSByZWFsIHByb2JsZW0gZG9l
c24ndAo+ID4gPiA+IGRpc2FwcGVhci4gVGhlbiB3ZSBnbyBiYWNrIHRvIHByZS0yMDA4IHRvIHJl
bHkgb24gZGlzdHJpYnV0aW9ucwo+ID4gPiA+IHByb3ZpZGluZyBhIGNvcnJlY3QgbW9kcHJvYmUu
Y29uZj8KPiA+ID4KPiA+ID4gVGhlIHdhcm5pbmcgbWVzc2FnZSBpbiA5YmVlZWU2NTg0Yjkgd2Fz
IHdyaXR0ZW4gYSBsb25nIHRpbWUgYWdvOyBiYWNrCj4gPiA+IHRoZW4gSSBkaWRuJ3QgcmVhbGl6
ZSB0aGF0IHRoZSByZWFsIGRlcGVuZGVuY3kgd2FzIGJldHdlZW4gdGhlIC1wY2kKPiA+ID4gZHJp
dmVycyByYXRoZXIgdGhhbiB0aGUgLWhjZCBvbmVzIChhbmQgSSB3YXNuJ3QgYXdhcmUgb2Ygc29m
dGRlcHMpLiAgVGhlCj4gPiA+IHNvZnQgZGVwZW5kZW5jeSBpbiAwNWM5MmRhMGM1MjQgaXMgYmV0
d2VlbiB0aGUgLXBjaSBkcml2ZXJzLCBzbyBpdCBpcwo+ID4gPiBjb3JyZWN0Lgo+ID4gPgo+ID4g
PiBUbyBwdXQgaXQgYW5vdGhlciB3YXksIG9uIFBDSS1iYXNlZCBzeXN0ZW1zIGl0IGlzIG5vdCBh
IHByb2JsZW0gaWYgdGhlCj4gPiA+IG1vZHVsZXMgYXJlIGxvYWRlZCBpbiB0aGlzIG9yZGVyOiB1
aGNpLWhjZCwgb2hjaS1oY2QsIGVoY2ktaGNkLAo+ID4gPiBlaGNpLXBjaSwgb2hjaS1wY2ksIHVo
Y2ktcGNpLiAgRXZlbiB0aG91Z2ggdGhlIHdhcm5pbmcgbWVzc2FnZSB3b3VsZCBiZQo+ID4gPiBs
b2dnZWQsIHRoZSBtZXNzYWdlIHdvdWxkIGJlIHdyb25nLgo+ID4gQ29ycmVjdCBtZSBpZiBJJ20g
d3JvbmcuCj4gPgo+ID4gSSBmb3VuZCBYSENJIGlzIGNvbXBhdGlibGUgd2l0aCBVU0IxLjAvMi4w
IGRldmljZXMsCj4KPiBZZXMuCj4KPiA+ICBidXQgRUhDSSBpc24ndAo+ID4gY29tcGF0aWJsZSB3
aXRoIFVTQjEuMC4gSW5zdGVhZCwgRUhDSSB1c3VhbGx5IGhhcyBhbiBPSENJIHRvZ2V0aGVyLAo+
ID4gdGhpcyBpcyBub3Qgb25seSBpbiB0aGUgUENJIGNhc2UuCj4KPiBJdCdzIG1vcmUgY29tcGxp
Y2F0ZWQgdGhhbiB0aGF0Lgo+Cj4gRm9yIHF1aXRlIGEgbG9uZyB0aW1lIG5vdywgbW9zdCBzeXN0
ZW1zIHVzaW5nIEVIQ0kgaGF2ZSBub3QgaW5jbHVkZWQgYQo+IGNvbXBhbmlvbiBPSENJIG9yIFVI
Q0kgY29udHJvbGxlci4gIEluc3RlYWQgdGhleSBpbmNsdWRlIGEgYnVpbHQtaW4KPiBVU0ItMi4w
IGh1YjsgdGhlIGh1YiBpcyB3aXJlZCBkaXJlY3RseSBpbnRvIHRoZSBFSENJIGNvbnRyb2xsZXIg
YW5kIHRoZQo+IGV4dGVybmFsIHBvcnRzIGFyZSBjb25uZWN0ZWQgdG8gdGhlIGh1Yi4gIFVTQi0y
LjAgaHVicyBpbmNsdWRlCj4gdHJhbnNhY3Rpb24gdHJhbnNsYXRvcnMgdGhhdCByZWxheSBwYWNr
ZXRzIGJldHdlZW4gaGlnaC1zcGVlZCBhbmQgbG93LQo+IG9yIGZ1bGwtc3BlZWQgY29ubmVjdGlv
bnMsIHNvIHRoZXkgY2FuIHRhbGsgdG8gYm90aCBVU0ItMSBhbmQgVVNCLTIKPiBkZXZpY2VzLiAg
SGVuY2Ugbm8gY29tcGFuaW9uIGNvbnRyb2xsZXIgaXMgbmVlZGVkLgo+Cj4gSSBkb24ndCByZW1l
bWJlciB3aGVuIEludGVsIHN0YXJ0aW5nIHNlbGxpbmcgY2hpcHNldHMgbGlrZSB0aGlzLCBidXQg
aXQKPiB3YXMgcHJvYmFibHkgYXJvdW5kIDIwMDAgb3IgZWFybGllci4gIChTb21lIG5vbi1JbnRl
bC1iYXNlZCBzeXN0ZW1zCj4gaW5jbHVkZWQgYSB0cmFuc2FjdGlvbiB0cmFuc2xhdG9yIGRpcmVj
dGx5IGluIHRoZSByb290IGh1Yiwgc28gdGhleQo+IGRpZG4ndCBldmVuIG5lZWQgdG8gaGF2ZSBh
biBhZGRpdGlvbmFsIFVTQi0yLjAgaHViLikKPgo+IEJlZm9yZSB0aGF0LCBzeXN0ZW1zIGRpZCBp
bmNsdWRlIGNvbXBhbmlvbiBjb250cm9sbGVycyBhbG9uZyB3aXRoIGFuCj4gRUhDSSBjb250cm9s
bGVyLiAgSSBkb24ndCBrbm93IG9mIGFueSBub24tUENJIHN5c3RlbXMgdGhhdCBkaWQgdGhpcywg
YnV0Cj4gb2YgY291cnNlIHNvbWUgbWF5IGV4aXN0LiAgSG93ZXZlciwgdGhlIEVIQ0ktMS4wIHNw
ZWNpZmljYXRpb24gc2F5cyB0aGlzCj4gaW4gc2VjdGlvbiA0LjIgIlBvcnQgUm91dGluZyBhbmQg
Q29udHJvbCIgKHAuIDU0KToKPgo+ICAgICAgICAgVGhlIFVTQiAyLjAgaG9zdCBjb250cm9sbGVy
IG11c3QgYmUgaW1wbGVtZW50ZWQgYXMgYQo+ICAgICAgICAgbXVsdGktZnVuY3Rpb24gUENJIGRl
dmljZSBpZiB0aGUgaW1wbGVtZW50YXRpb24KPiAgICAgICAgIGluY2x1ZGVzIGNvbXBhbmlvbiBj
b250cm9sbGVycy4KPgpUaGFuayB5b3UgZm9yIHlvdXIgZXhwbGFuYXRpb24sIHNvIGl0IG1lYW5z
IHRoZXJlIGFyZSB0d28gbWV0aG9kczogVGhlCm9sZCBvbmUgaXMgRUhDSSB3aXRoIGEgY29tcGFu
aW9uIE9IQ0k7IHRoZSBuZXcgb25lIGlzIEVIQ0kgd2l0aCBhClVTQi0yLjAgaHViLiBSaWdodD8K
Cj4gPiBTbyBJIGd1ZXNzIE9IQ0kvVUhDSSBoYXZlIGFuIEVIQ0kgZGVwZW5kZW5jeSBpbiBvcmRl
ciB0byBhdm9pZCAibmV3Cj4gPiBjb25uZWN0aW9uIiwgbm90IG9ubHkgaW4gdGhlIFBDSSBjYXNl
Lgo+Cj4gRG8geW91IGtub3cgb2YgYW55IG5vbi1QQ0kgc3lzdGVtcyB0aGF0IGRvIHRoaXM/ClVu
Zm9ydHVuYXRlbHksIGluIDIwMjYgdGhlcmUgYXJlIHJlYWxseSAiRUhDSSB3aXRoIGEgY29tcGFu
aW9uIE9IQ0kiCmZvciBub24tUENJIHN5c3RlbXMsIHBsZWFzZSBzZWUKYXJjaC9sb29uZ2FyY2gv
Ym9vdC9kdHMvbG9vbmdzb24tMmswNTAwLmR0c2kuCgpIdWFjYWkKCj4KPiBBbGFuIFN0ZXJuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
