Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4870AD1812A
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 15:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ae7SHGnEj76UzG6y4paIkv9Rq0MyzxsX2t7Y7XNy+a8=; b=firJ5fW5aNUTNz
	V/m5/PxJVCZgSVpz/R7C0zP2aynLmPV/pdsz2iYnemA4gUPnybRggmKZ70vbMfbXkx4mPS+pdO/Hr
	BYgJ79JH3l6S+0X10brRe9/71MDfUHCMw06n2mHIiBiiFV9FICO8MDlm2Lkzji2CKBIY4IqcLF9sD
	Uz/JZlC/7pQ/1s98P6WboqxN6ET6mYktySfo3kRlzFHTgFE5JBe9klWwIeRop8ltFl6A55bo8XjPp
	eTZgSeZjDcrCkdGIP4SbAkFz+4VlzajkrNXhAQcCUe/S6QJJD2izGPQ272Oau19MgONJoCVARsapD
	Ef/8fzVL24MUGGrP0+oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0N9N-00000005ien-2uSW;
	Mon, 14 Oct 2024 15:38:25 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0N6c-00000005gJQ-01RB
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Oct 2024 15:35:39 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-6e38ebcc0abso11833037b3.2
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Oct 2024 08:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728920131; x=1729524931; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zwoWR9kcLSD6y5POnvEG69c7ueVxZNzIdrUWcKD1IW4=;
        b=Ogo6NBQQQZuUgcgWg7efz80M6sobLiO4TS1bLkFPyLDN4jd3ZW8XLIGTXy3eCb9YTk
         WkCv9wbVIifvICu86RHJo2IQLciUBKUZY+1pClpHIwrQMzUObd2qrlwHcebPbZjjYPlg
         w3vE/HnKG3Xby+PgXO1m+ilUJ3HjncXEt4+hlpv/jesdxKbmDiPHoF7rcK9sByvMIQFW
         4C/JEF/S2rR8GLwpWgqw8K3rPykDlIb4wU6hkyVgZ/L/lPFl+Ehls7+cSTXHLSZyvxAh
         OsoPTjKZ0WXiHh/DH3PCFN0gtSwS+9Kwdgm9Vd3XyBPVfCXxo6Zo0EmeSxqNU0KINcHB
         VFBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728920131; x=1729524931;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zwoWR9kcLSD6y5POnvEG69c7ueVxZNzIdrUWcKD1IW4=;
        b=gZ/FSKaHTWUphhmyNoH4WtLup+uSNm8uI5Zblr7lMPrnKwr8jscKIKaiy4dglnRXCI
         rupJAuTwyCO2lRIZ2L5o1yNrBq5GQl9cGySHOm6yf1Xd7dzDXU6Eey6Hk+I0NkAENXNZ
         Vhvdf9mZqrSohbcWdC9Qd8IaDGiX/7Zo8sIGlWNjBFnseAf8ZFIq7ULXiGkLFw8MinLY
         VGAZp1rhFv3Ed8n//z6RdXThUQrEiwmYNLiOhV9ZTtCPa9mggQVBCXyj17Q1ap1SLRHB
         qiO32+IV5ZnUxHmGnTcGd88Eb3uTOgrOSw/HgWoLinV1IYchGWZzuvmL/3uPTUpObFsE
         rpEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXy2+7OVBc8t18zzbtVb82vCpLfPWJbPbGG9WkvX0gJG8fuHRQVybdaDaGWO4XuFrpXz/lCD1TKssU3jaZgVA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6TUefAFImo/7+dWyloXCrXXe9ilp5EldyFjvcYsGkJuLLGYcg
	DI3txNCdrnG0SglBKArzEGqFkOYQB9KEff+H282h1z7X/Dy/hpuOzW0ahyrxeXSn0HA1ki5dHaR
	T88YP3MdvnD9ikLGNHdR3bnMrcaI=
X-Google-Smtp-Source: AGHT+IGA8oiecngmaY9OZSeRApkIfg6x4tQAnzHxtWVvD6lnBpiQAM/dJ6sedqPFuMT+SIY/SLxLJN+IQMSuY6ZmyD8=
X-Received: by 2002:a05:690c:399:b0:6e3:4436:56af with SMTP id
 00721157ae682-6e347c4861cmr90232657b3.33.1728920131664; Mon, 14 Oct 2024
 08:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <20241011121408.89890-1-dlemoal@kernel.org> <20241011121408.89890-2-dlemoal@kernel.org>
In-Reply-To: <20241011121408.89890-2-dlemoal@kernel.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Mon, 14 Oct 2024 17:34:55 +0200
Message-ID: <CAAEEuho3WOA7qNDav9D_wPxdOac8B9W=nD4hxR+fS038h0zE7Q@mail.gmail.com>
Subject: Re: [PATCH v4 01/12] PCI: rockchip-ep: Fix address translation unit programming
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_083535_056033_1F04E7F3 
X-CRM114-Status: GOOD (  19.83  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMjoxNOKAr1BNIERhbWllbiBMZSBNb2FsIDxkbGVtb2Fs
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gVGhlIHJvY2tjaGlwIFBDSWUgZW5kcG9pbnQgY29udHJv
bGxlciBoYW5kbGVzIFBDSWUgdHJhbnNmZXJzIGFkZHJlc3Nlcwo+IGJ5IG1hc2tpbmcgdGhlIGxv
d2VyIGJpdHMgb2YgdGhlIHByb2dyYW1tZWQgUENJIGFkZHJlc3MgYW5kIHVzaW5nIHRoZQo+IHNh
bWUgbnVtYmVyIG9mIGxvd2VyIGJpdHMgbWFza2VkIGZyb20gdGhlIENQVSBhZGRyZXNzIHNwYWNl
IHVzZWQgZm9yIHRoZQo+IG1hcHBpbmcuIEZvciBhIFBDSSBtYXBwaW5nIG9mIDxzaXplPiBieXRl
cyBzdGFydGluZyBmcm9tIDxwY2lfYWRkcj4sCj4gdGhlIG51bWJlciBvZiBiaXRzIG1hc2tlZCBp
cyB0aGUgbnVtYmVyIG9mIGFkZHJlc3MgYml0cyBjaGFuZ2luZyBpbiB0aGUKPiBhZGRyZXNzIHJh
bmdlIFtwY2lfYWRkci4ucGNpX2FkZHIgKyBzaXplIC0gMV0uCj4KPiBIb3dldmVyLCByb2NrY2hp
cF9wY2llX3Byb2dfZXBfb2JfYXR1KCkgY2FsY3VsYXRlcyBudW1fcGFzc19iaXRzIG9ubHkKPiB1
c2luZyB0aGUgc2l6ZSBvZiB0aGUgbWFwcGluZywgcmVzdWx0aW5nIGluIGFuIGluY29ycmVjdCBu
dW1iZXIgb2YgbWFzawo+IGJpdHMgZGVwZW5kaW5nIG9uIHRoZSB2YWx1ZSBvZiB0aGUgUENJIGFk
ZHJlc3MgdG8gbWFwLgo+Cj4gRml4IHRoaXMgYnkgaW50cm9kdWNpbmcgdGhlIGhlbHBlciBmdW5j
dGlvbgo+IHJvY2tjaGlwX3BjaWVfZXBfb2JfYXR1X251bV9iaXRzKCkgdG8gY29ycmVjdGx5IGNh
bGN1bGF0ZSB0aGUgbnVtYmVyIG9mCj4gbWFzayBiaXRzIHRvIHVzZSB0byBwcm9ncmFtIHRoZSBh
ZGRyZXNzIHRyYW5zbGF0aW9uIHVuaXQuIFRoZSBudW1iZXIgb2YKPiBtYXNrIGJpdHMgaXMgY2Fs
Y3VsYXRlZCBkZXBlbmRpbmcgb24gYm90aCB0aGUgUENJIGFkZHJlc3MgYW5kIHNpemUgb2YKPiB0
aGUgbWFwcGluZywgYW5kIGNsYW1wZWQgYmV0d2VlbiA4IGFuZCAyMCB1c2luZyB0aGUgbWFjcm9z
Cj4gUk9DS0NISVBfUENJRV9BVF9NSU5fTlVNX0JJVFMgYW5kIFJPQ0tDSElQX1BDSUVfQVRfTUFY
X05VTV9CSVRTLiBBcwo+IGRlZmluZWQgaW4gdGhlIFJvY2tjaGlwIFJLMzM5OSBUUk0gVjEuMyBQ
YXJ0MiwgU2VjdGlvbnMgMTcuNS41LjEuMSBhbmQKPiAxNy42LjguMi4xLCB0aGlzIGNsYW1waW5n
IGlzIG5lY2Vzc2FyeSBiZWNhdXNlOgo+IDEpIFRoZSBsb3dlciA4IGJpdHMgb2YgdGhlIFBDSSBh
ZGRyZXNzIHRvIGJlIG1hcHBlZCBieSB0aGUgb3V0Ym91bmQKPiAgICByZWdpb24gYXJlIGlnbm9y
ZWQuIFNvIGEgbWluaW11bSBvZiA4IGFkZHJlc3MgYml0cyBhcmUgbmVlZGVkIGFuZAo+ICAgIGlt
cGx5IHRoYXQgdGhlIFBDSSBhZGRyZXNzIG11c3QgYmUgYWxpZ25lZCB0byAyNTYuCj4gMikgVGhl
IG91dGJvdW5kIG1lbW9yeSByZWdpb25zIGFyZSAxTUIgaW4gc2l6ZS4gU28gd2hpbGUgd2UgY2Fu
IHNwZWNpZnkKPiAgICB1cCB0byA2My1iaXRzIGZvciB0aGUgUENJIGFkZHJlc3MgKG51bV9iaXRz
IGZpbGVkIHVzZXMgYml0cyAwIHRvIDUgb2YKPiAgICB0aGUgb3V0Ym91bmQgYWRkcmVzcyByZWdp
b24gMCByZWdpc3RlciksIHdlIG11c3QgbGltaXQgdGhlIG51bWJlciBvZgo+ICAgIHZhbGlkIGFk
ZHJlc3MgYml0cyB0byAyMCB0byBtYXRjaCB0aGUgbWVtb3J5IHdpbmRvdyBtYXhpbXVtIHNpemUg
KDEKPiAgICA8PCAyMCA9IDFNQikuCgpIZWxsbyBEYW1pZW4sCkkganVzdCBmb3VuZCBvdXQgdGhl
IGNhZGVuY2UgY29udHJvbGxlcgooZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaWUt
Y2FkZW5jZS5jKSBzdWZmZXJzIGZyb20gdGhlIGV4YWN0CnNhbWUgbnVtX3Bhc3NfYml0cyBjYWxj
dWxhdGlvbiBpc3N1ZS4gVGhlIGNvZGUgaW4KY2Ruc19wY2llX3NldF9vdXRib3VuZF9yZWdpb24o
KSBpcyB2ZXJ5IHNpbWlsYXIgdG8Kcm9ja2NoaXBfcGNpZV9wcm9nX2VwX29iX2F0dSgpLgoKSSBm
b3VuZCBvdXQgYnkgcnVubmluZyB0aGUgTlZNZSBlbmRwb2ludCBmdW5jdGlvbiBvbiBhIFRleGFz
Ckluc3RydW1lbnRzIEFSTTY3QSBTb0Mgd2hpY2ggcmVsaWVzIG9uIHRoZSBwY2ktajcyMWUgY2Fk
ZW5jZSBQQ0kKZHJpdmVyLiBJIG9ic2VydmVkIHRoZSBzYW1lIGlzc3VlcyB3ZSBoYWQgd2l0aCB0
aGUgUkszMzk5LCB3aGVuIEkKcGF0Y2hlZCBpdCB3aXRoIHRoZSBzYW1lIGNvbXB1dGF0aW9uIGZv
ciB0aGUgbnVtIHBhc3MgYml0cyBhcyB3ZSBkaWQKZm9yIHRoZSBSSzMzOTksIGl0IHdvdWxkIHdv
cmsuCgpTbyB0aGlzIGlzc3VlIGFsc28gZXhpc3RzIGZvciBhbGwgY2FkZW5jZSBiYXNlZCBkcml2
ZXJzLiBJdCdzIHRvbyBiYWQKSSBkb24ndCBoYXZlIGFjY2VzcyB0byBhbnkgdGVjaG5pY2FsIGRv
YyByZWYgdG8gYmFjayB0aGlzIHVwLgoKSnVzdCB3YW50ZWQgdG8gbGV0IHlvdSBrbm93LgpCZXN0
IHJlZ2FyZHMsClJpY2sKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
