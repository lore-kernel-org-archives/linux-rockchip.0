Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1775AFC6162
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 03:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyWYHBLF88AaTgjZd5BHPFFzgEME8B34g5fKFm6w11A=; b=CG1ymsz4nco2u7
	ZPV1d1ohJ3IiwOLO6ZJhTeOMAHESH3re3QuBWpYVViDT+ihJ0Z6virzlGqm5zUfidR91UqjNcaBGV
	8hbNyF0bzAEg2ZtwAEO8raEtsH7TiKl6qjXvUbD5AqdqeOCFUho3lMSQu1/DQBFbqwf8haDIS4apd
	uEuVItTD36z01MyOWSaCgkd4VuIZCkeWcgtqNJ3DDMKlZuxF/Ao4m59Toak6lqQuIJJkvsuEiMNgg
	t3rQu4zF9Z18vyCY4jkA8NsMNqPCP/xTZ0NH+8toleKIwdZF0savhCZhHB8+CAgh1DZUTuqXQuqhw
	b9LnEKjfeGT8MRC6KvUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbslg-00000008wu9-3Dst;
	Sat, 03 Jan 2026 03:57:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbsle-00000008wu0-2J6M
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 03:57:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 683936013D
	for <linux-rockchip@lists.infradead.org>; Sat,  3 Jan 2026 03:57:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3F28C2BC86
	for <linux-rockchip@lists.infradead.org>; Sat,  3 Jan 2026 03:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767412648;
	bh=AeFdZYiYPzl1pEEjZ9I42Uglf405zH8bRDJ+yUqKhSM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=m5c+ahyB3QvwhdC7yt8srqpYLt3UReMYYyKGnAUCLOt/F6OXTxaUqEGzRBxAH2xzf
	 +5p8+H9tAkRswL5P0pyUZfnzYyHiCKxCnTYIP3Ma5MqxFUsExtfD5U8jfeHK0FrGET
	 9GsHk2Yjy/9mi3uxYhgtGtnDePiyobm66IJcac8O6hfpzJTntfT0uPnAr00G4RBPwS
	 MFGRIlOA8VOT+w/yiNk0CzYuERn0OHoCycU3VaW6UdhVpYXl4hkcel31mB5qagG65P
	 3IZTymrZHcIto1F0rNwi8mybmb9L7jGXKSxv3aPARhQEPyhwu9agcM7ioN02hqEKGC
	 K9HqztvNzPxeQ==
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b734fcbf1e3so2630183066b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Jan 2026 19:57:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUBPj35NnrzXgxajPeuO/FG8NwxQATFUNQ2bFcNu6rJH7MqDRJ2FXfKkbr0Q9oEcqdMKth2keUdDAHDoAXngQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqZymfuKHMKIZewQoo9ONdphjIoSeJN7N9OtoO2M44yXcUVOJi
	wZEtF0o95fyfRorB6K86DwX5p1A0D6E7VCTCIMjstENDQFvdTQHJ2rJm1fmKxnQqr5BixJmf/WF
	nhR8BqzV49SLx85yVZsVfO7hCoBdg07w=
X-Google-Smtp-Source: AGHT+IEn3aufPmFFWMDcg6KEHSRJwtm9J1uFeX3len5u0fi6cvwdxIi0kuc6c6wIedMPRDBkYH+A0VAByXZcsiczbOc=
X-Received: by 2002:a17:906:f586:b0:b79:fe73:3b18 with SMTP id
 a640c23a62f3a-b8036f56584mr3958118466b.22.1767412647282; Fri, 02 Jan 2026
 19:57:27 -0800 (PST)
MIME-Version: 1.0
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh> <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
 <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
 <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
 <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
 <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com> <98e36c6f-f0ee-40d2-be7f-d2ad9f36de07@rowland.harvard.edu>
In-Reply-To: <98e36c6f-f0ee-40d2-be7f-d2ad9f36de07@rowland.harvard.edu>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Sat, 3 Jan 2026 11:57:47 +0800
X-Gmail-Original-Message-ID: <CAAhV-H601B96D9rFrnARho4Lr9A+ah7Cx7eKiPr=epbG17ODHQ@mail.gmail.com>
X-Gm-Features: AQt7F2pAMrEJKbEHMWIRnkpzMBe0sTv7w_v74KyTevBsL5DkQBjSqu86tQVkJgo
Message-ID: <CAAhV-H601B96D9rFrnARho4Lr9A+ah7Cx7eKiPr=epbG17ODHQ@mail.gmail.com>
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

T24gU2F0LCBKYW4gMywgMjAyNiBhdCAxMTozM+KAr0FNIEFsYW4gU3Rlcm4gPHN0ZXJuQHJvd2xh
bmQuaGFydmFyZC5lZHU+IHdyb3RlOgo+Cj4gT24gU2F0LCBKYW4gMDMsIDIwMjYgYXQgMTE6MTY6
NTlBTSArMDgwMCwgSHVhY2FpIENoZW4gd3JvdGU6Cj4gPiBUaGFuayB5b3UgZm9yIHlvdXIgZXhw
bGFuYXRpb24sIHNvIGl0IG1lYW5zIHRoZXJlIGFyZSB0d28gbWV0aG9kczogVGhlCj4gPiBvbGQg
b25lIGlzIEVIQ0kgd2l0aCBhIGNvbXBhbmlvbiBPSENJOyB0aGUgbmV3IG9uZSBpcyBFSENJIHdp
dGggYQo+ID4gVVNCLTIuMCBodWIuIFJpZ2h0Pwo+Cj4gUmlnaHQuCj4KPiA+ID4gPiBTbyBJIGd1
ZXNzIE9IQ0kvVUhDSSBoYXZlIGFuIEVIQ0kgZGVwZW5kZW5jeSBpbiBvcmRlciB0byBhdm9pZCAi
bmV3Cj4gPiA+ID4gY29ubmVjdGlvbiIsIG5vdCBvbmx5IGluIHRoZSBQQ0kgY2FzZS4KPiA+ID4K
PiA+ID4gRG8geW91IGtub3cgb2YgYW55IG5vbi1QQ0kgc3lzdGVtcyB0aGF0IGRvIHRoaXM/Cj4g
PiBVbmZvcnR1bmF0ZWx5LCBpbiAyMDI2IHRoZXJlIGFyZSByZWFsbHkgIkVIQ0kgd2l0aCBhIGNv
bXBhbmlvbiBPSENJIgo+ID4gZm9yIG5vbi1QQ0kgc3lzdGVtcywgcGxlYXNlIHNlZQo+ID4gYXJj
aC9sb29uZ2FyY2gvYm9vdC9kdHMvbG9vbmdzb24tMmswNTAwLmR0c2kuCj4KPiBTaW5jZSB0aGVz
ZSBzeXN0ZW1zIGRvbid0IHVzZSBQQ0ksIHRoZSBxdWVzdGlvbiBJIHJhaXNlZCBlYXJsaWVyIHN0
aWxsCj4gbmVlZHMgdG8gYmUgYW5zd2VyZWQ6IEhvdyBkbyB0aGV5IHJvdXRlIGNvbm5lY3Rpb25z
IGJldHdlZW4gdGhlIHBvcnRzCj4gYW5kIHRoZSB0d28gY29udHJvbGxlcnM/Cj4KPiBUaGVyZSBt
YXkgYmUgc29tZSBleGNlcHRpb25zLCBidXQgZm9yIHRoZSBtb3N0IHBhcnQsIHRoZSBjb2RlIGlu
Cj4gZWhjaS1oY2Qgd2FzIHdyaXR0ZW4gYXNzdW1pbmcgdGhhdCBvbmx5IFBDSS1iYXNlZCBjb250
cm9sbGVycyB3aWxsIGhhdmUKPiBjb21wYW5pb25zLiAgSWYgeW91IHdhbnQgdG8gbWFrZSBhbiBl
eGNlcHRpb24gZm9yIGxvb25nc29uLTJrMDUwMCwgeW91Cj4gd2lsbCBuZWVkIHRvIGZpZ3VyZSBv
dXQgaG93IHRvIGdldCBpdCB0byB3b3JrLgpMb29uZ3Nvbi0ySzA1MDAgdXNlIEVIQ0kvT0hDSSB3
aXRoIHBsYXRmb3JtIGJ1cywgd2hpbGUKTG9vbmdzb24tMksxMDAwLzIwMDAgdXNlIEVIQ0kvT0hD
SSB3aXRoIFBDSSBidXMuIFRoZXkgdXNlIHRoZSBzYW1lIFVTQgpJUCBjb3Jlcywgc28gdGhlIHJv
dXRlIGNvbm5lY3Rpb25zIGFyZSBwcm9iYWJseSB0aGUgc2FtZS4KCkh1YWNhaQo+Cj4gSGF2ZSB5
b3UgdGVzdGVkIGFueSBvZiB0aG9zZSBzeXN0ZW1zIHRvIHNlZSBob3cgdGhleSBiZWhhdmUgaWYg
YSBVU0ItMQo+IGRldmljZSBpcyBhbHJlYWR5IHBsdWdnZWQgaW4gYW5kIHJ1bm5pbmcgd2hlbiB0
aGUgZWhjaS1oY2QgZHJpdmVyIGdldHMKPiBsb2FkZWQ/Cj4KPiBBbGFuIFN0ZXJuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
