Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ABD3C77B7A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 12:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poW4ri6lyue80RTdwPz4TRtd8IYQtVFagkxjUgSCbVc=; b=SoNhL94M9zYODS
	G27rqTjO1cAprhSBf6itNmdta0rWTUZaSAWgcA/ydTij+I9o7dTFdmCBN8pPNabiwMTaxn0eJEI4e
	VqXSCJ3AaNwYtv5TQDcYekdjpkWkOo9VznejoWqXnK++IybjEI+IC+/218hZBiMXr8GqrmxKpkTnB
	MJObR3jTGn6nxKVIA3yYtzrnz89V8/ITnGlFBPdN7B9C9ie+2ECVKo/MaC7jaikp037TZVRL2UEYg
	yInh+rDxeCiRdZeKAqbunu68F6rdNaarocWSO89zsSX4S8eJomBkevUeoxjkE15NJg/jQ1SK0lsaB
	17Bge4RknXxcQqK9cJQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbJZ-0000000Fc82-3Q8E;
	Fri, 20 Jun 2025 12:57:53 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaUZ-0000000FXBZ-3z1h
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Jun 2025 12:05:13 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-6fae04a3795so19460096d6.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Jun 2025 05:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750421111; x=1751025911; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iKSU6GlAD0b+reZYhRj4iOMFyn23zu+YAR94aAzdOEg=;
        b=jikDa22vqBLybL3FtnKWmSqpGPW44sSErN0uM3spTwu81P1OfWYFzpuUm452oDCYKL
         vS3RCDhDXuJPLDuna6IKfkLSGxVd7jEyaVaA3fptQlG7yv2ptoojSqTzehJEvc4zUDDm
         LhbxStizXB25bwD6vxIRWbQBj2v1EN7cJChxN/fqpCINbM8EdikWzfhBuYep5oEyCRc2
         ptKYGXNu3Axb/CIixh/G3/m0vNMGnMDmzmm+Y3pZjO7q6ZP7/NFFLpXNr5DFZFyghIiX
         8c3/himanJbrlJZUA1y0uzY+MukbIjQRgsIReM4JEOimAWPkbYQFIVw1luInfnK29oCM
         ijYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750421111; x=1751025911;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iKSU6GlAD0b+reZYhRj4iOMFyn23zu+YAR94aAzdOEg=;
        b=FD+2hMzQY6mBlwZs/GD6jW55Y5WEPgl9nWj9dxBIDx1elGLtKD+BcymjYKy+gwG7Fc
         Fw3r1l3AKoyr8iKjZzv6Y7GA1UaYZTScTSHf2n+ge4KPtlUdjGCW5+RTH6Q0E8XymnaV
         3Z7Vr7H1cXwk7ykB9//r+RcTq0Rssj3ZtZZP0+c3qZ7x5bA0oGKneU5Qk0oqylCUe7PF
         tqTycMJeGTR4z8Er8KJXh1hN4/u305JwJlIHPXSQbUEJKwUoegruSejPUjO2B6fLbOLg
         fHhxl50FGsg0/nfrqfHKswu2JMtHhcpowMXhUfXDpHMaXWKpyvdxdIpHVHiF6LAble3v
         kpRw==
X-Forwarded-Encrypted: i=1; AJvYcCWce16Q0Pa5fhUSyROybnK+HPRav57Qq+bkAsIreJotjA+cxQtsJNEJBGRrLXdFhGYBq7/iAowwGrtEId2nhw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+/qZM76J65FRuaKN8Ow2wL7gqW1U8+X4LNDlVjwzbyhnCe8Jy
	LPjFXGE+mdGnAgUEF02t3VrxcgrgEBJTRilK4ej0IVYwCzM2CAAfJOV/BPotw193GQU=
X-Gm-Gg: ASbGncum6431faTlgsQ2xycZGds0aX8GZk3T/pr9S+YYj+WDjlxjmb9HYnuNRnDRIrR
	T6tGC+Zrfn43DDmtse1wMOJajtzXtF5ptMqH9zJEEhMV/0KPRhipeoHzCK+7/1XG5Q5CDcmYdWs
	iL7xC7hwsoMeLgAbod3tNU90Xrb67yAWu5D66VkgBjSGR0LXIGnbYRPKrX+WQgamf5zWP+uW1ZS
	+XhUmv0jbKVtyB9YytSUEHbX1KcQwbpsalRhJx3mf1A5V6gs/lSXEbah5OLnpJbdXJBA8aofTKN
	dQVSdD4UADcZnuft05TFuwOlqa/3Y1fKJPd4/OjQ5Gh+ha7aJQfDDpa2qwRlLAhlJ1hp9w2SO82
	2uaT2CEcIGckMwjA1uYeRH+31mSXvFBckozhfzA==
X-Google-Smtp-Source: AGHT+IHfu4I3beDwgjtHUIfD6yuQvdS/JqKOrGvhTdy+iUwvWk3om69mhib1iCashING8Al0Lp0xvw==
X-Received: by 2002:a05:6214:1d24:b0:6fa:c81a:6202 with SMTP id 6a1803df08f44-6fd0a58f236mr37698336d6.29.1750421110649;
        Fri, 20 Jun 2025 05:05:10 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd09576766sm11104646d6.81.2025.06.20.05.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 05:05:10 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uSaUX-00000000Dmo-1ZEQ;
	Fri, 20 Jun 2025 09:05:09 -0300
Date: Fri, 20 Jun 2025 09:05:09 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250620120509.GA39770@ziepe.ca>
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
 <20250619165928.GA10257@ziepe.ca>
 <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_050512_057692_626A1234 
X-CRM114-Status: GOOD (  46.89  )
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

T24gRnJpLCBKdW4gMjAsIDIwMjUgYXQgMTA6NTc6NDlBTSArMDIwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gCj4gTGUgMTkvMDYvMjAyNSDDoCAxODo1OSwgSmFzb24gR3VudGhvcnBlIGEg
w6ljcml0wqA6Cj4gPiBPbiBUaHUsIEp1biAxOSwgMjAyNSBhdCAwNjoyNzo1MlBNICswMjAwLCBC
ZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+ID4gTGUgMTkvMDYvMjAyNSDDoCAxNTo0NywgSmFz
b24gR3VudGhvcnBlIGEgw6ljcml0wqA6Cj4gPiA+ID4gVWdoLiBUaGlzIGlnbm9yZXMgdGhlIGdm
cCBmbGFncyB0aGF0IGFyZSBwYXNzZWQgaW50byBtYXAgYmVjYXVzZSB5b3UKPiA+ID4gPiBoYXZl
IHRvIGZvcmNlIGF0b21pYyBkdWUgdG8gdGhlIHNwaW5sb2NrIHRoYXQgc2hvdWxkbid0IGJlIHRo
ZXJlIDooCj4gPiA+ID4gVGhpcyBtZWFucyBpdCBkb2VzIG5vdCBzZXQgR0ZQX0tFUk5FTF9BQ0NP
VU5UIHdoZW4gcmVxdWlyZWQuIEl0IHdvdWxkCj4gPiA+ID4gYmUgYmV0dGVyIHRvIGNvbnRpbnVl
IHRvIHVzZSB0aGUgcGFzc2VkIGluIEdGUCBmbGFncyBidXQgb3ZlcnJpZGUgdGhlbQo+ID4gPiA+
IHRvIGF0b21pYyBtb2RlLgo+ID4gPiBJIHdpbGwgYWRkIGEgZ2ZwX3QgcGFyYW1ldGVyIGFuZCB1
c2UgaXQgbGlrZSB0aGF0Ogo+ID4gPiBwYWdlX3RhYmxlID0gaW9tbXVfYWxsb2NfcGFnZXNfc3oo
Z2ZwIHwgR0ZQX0FUT01JQyB8IEdGUF9ETUEzMiwgU1BBR0VfU0laRSk7Cj4gPiBUaGlzIHdpbGwg
b3IgdG9nZXRoZXIgR0ZQX0FUT01JQyBhbmQgR0ZQX0tFUk5FTCwgSSBkb24ndCB0aGluayB0aGF0
Cj4gPiB3b3Jrcy4uCj4gCj4gSSBoYXZlIHRlc3QgaXQsIEkgZG9uJ3Qgc2VlIGNvbmZsaWN0cyBv
ciBlcnJvcnMuIFdoYXQgd29ycmllcyB5b3UgPwoKSnVzdCBsb29raW5nIGF0IHRoZSBiaXRtYXBz
IEknbSBub3Qgc3VyZT8gRGlkIHlvdSBydW4gd2l0aCBsb2NrZGVwPwoKPiA+ID4gPiA+ICtzdGF0
aWMgaW50IHZzaV9pb21tdV9hdHRhY2hfZGV2aWNlKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFp
biwKPiA+ID4gPiA+ICsJCQkJICAgc3RydWN0IGRldmljZSAqZGV2KQo+ID4gPiA+ID4gK3sKPiA+
ID4gPiA+ICsJc3RydWN0IHZzaV9pb21tdSAqaW9tbXUgPSBkZXZfaW9tbXVfcHJpdl9nZXQoZGV2
KTsKPiA+ID4gPiA+ICsJc3RydWN0IHZzaV9pb21tdV9kb21haW4gKnZzaV9kb21haW4gPSB0b192
c2lfZG9tYWluKGRvbWFpbik7Cj4gPiA+ID4gPiArCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiA+
ID4gPiArCWludCByZXQ7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArCWlmIChXQVJOX09OKCFpb21t
dSkpCj4gPiA+ID4gPiArCQlyZXR1cm4gLUVOT0RFVjsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsJ
LyogaW9tbXUgYWxyZWFkeSBhdHRhY2hlZCAqLwo+ID4gPiA+ID4gKwlpZiAoaW9tbXUtPmRvbWFp
biA9PSBkb21haW4pCj4gPiA+ID4gPiArCQlyZXR1cm4gMDsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ICsJcmV0ID0gdnNpX2lvbW11X2lkZW50aXR5X2F0dGFjaCgmdnNpX2lkZW50aXR5X2RvbWFpbiwg
ZGV2KTsKPiA+ID4gPiA+ICsJaWYgKHJldCkKPiA+ID4gPiA+ICsJCXJldHVybiByZXQ7Cj4gPiA+
ID4gSHVybSwgdGhpcyBpcyBhY3R1YWxseSBxdWl0ZSBiYWQsIG5vdyB0aGF0IGl0IGlzIGNsZWFy
IHRoZSBIVyBpcyBpbiBhbgo+ID4gPiA+IGlkZW50aXR5IG1vZGUgaXQgaXMgYWN0dWFsbHkgYSBz
ZWN1cml0eSBwcm9ibGVtIGZvciBWRklPIHRvIHN3aXRjaCB0aGUKPiA+ID4gPiB0cmFuc2xhdGlv
biB0byBpZGVudGl0eSBkdXJpbmcgYXR0YWNoX2RldmljZS4gSSdkIHJlYWxseSBwcmVmZXIgbmV3
Cj4gPiA+ID4gZHJpdmVycyBkb24ndCBtYWtlIHRoaXMgbWlzdGFrZS4KPiA+ID4gPiAKPiA+ID4g
PiBJdCBzZWVtcyB0aGUgbWFpbiB0aGluZyBtb3RpdmF0aW5nIHRoaXMgaXMgdGhlIGZhY3QgYSBs
aW5rZWQgbGlzdCBoYXMKPiA+ID4gPiBvbmx5IGEgc2luZ2xlIGlvbW11LT5ub2RlIHNvIHlvdSBj
YW4ndCBhdHRhY2ggdGhlIGlvbW11IHRvIGJvdGggdGhlCj4gPiA+ID4gbmV3L29sZCBkb21haW4g
YW5kIGF0b21pY2FsbHkgdXBkYXRlIHRoZSBwYWdlIHRhYmxlIGJhc2UuCj4gPiA+ID4gCj4gPiA+
ID4gSXMgaXQgcG9zc2libGUgZm9yIHRoZSBIVyB0byBkbyBhIGJsb2NraW5nIGJlaGF2aW9yPyBU
aGF0IHdvdWxkIGJlIGFuCj4gPiA+ID4gZWFzeSBmaXguLiBZb3Ugc2hvdWxkIGFsd2F5cyBiZSBh
YmxlIHRvIGZvcmNlIHRoaXMgYnkgYWxsb2NhdGluZyBhCj4gPiA+ID4gc2hhcmVkIHRvcCBwYWdl
IHRhYmxlIGxldmVsIGR1cmluZyBwcm9iZSB0aW1lIGFuZCBtYWtpbmcgaXQgZW50aXJlbHkKPiA+
ID4gPiBlbXB0eSB3aGlsZSBzdGF5aW5nIGFsd2F5cyBpbiB0aGUgcGFnaW5nIG1vZGUuIE1heWJl
IHRoZXJlIGlzIGEgbGVzcwo+ID4gPiA+IGV4cGVuc2l2ZSB3YXkuCj4gPiA+ID4gCj4gPiA+ID4g
T3RoZXJ3aXNlIHlvdSBwcm9iYWJseSBoYXZlIHdvcmsgbW9yZSBsaWtlIHRoZSBvdGhlciBkcml2
ZXJzIGFuZAo+ID4gPiA+IGFsbG9jYXRlIGEgc3RydWN0IGZvciBlYWNoIGF0dGFjaG1lbnQgc28g
eW91IGNhbiBoYXZlIHRoZSBpb21tdQo+ID4gPiA+IGF0dGFjaGVkIHR3byBkb21haW5zIGR1cmlu
ZyB0aGUgc3dpdGNoIG92ZXIgYW5kIG5ldmVyIGRyb3AgdG8gYW4KPiA+ID4gPiBpZGVudGl0eSBt
b2RlLgo+ID4gPiBJIHdpbGwgcmVtb3ZlIHRoZSBzd2l0Y2ggdG8gaWRlbnRpdHkgZG9tYWluIGFu
ZCBpdCB3aWxsIHdvcmtzIGZpbmUuCj4gPiBZb3UnbGwgbG9vc2UgaW52YWxpZGF0aW9ucy4uCj4g
PiAKPiA+IE1heWJlIHRoZSBlYXNpZXN0IHRoaW5nIGlzIHRvIHNxdWlzaCB2c2lfaW9tbXVfZW5h
YmxlKCkgYW5kIHJlb3JnYW5pemUKPiA+IGl0IHNvIHRoYXQgdGhlIHNwaW5sb2NrIGlzIGhlbGQg
YWNyb3NzIHRoZSByZWdpc3RlciBwcm9ncmFtbWluZyBhbmQKPiA+IHRoZW4geW91IGNhbiBhdG9t
aWNhbGx5IHVuZGVyIHRoZSBsb2NrIGNoYW5nZSB0aGUgcmVnaXN0ZXJzIGFuZCBjaGFuZ2UKPiA+
IHRoZSBsaW5rZWQgbGlzdC4gVGhlIHJlZ2lzdGVyIHdyaXRlIGNhbm5vdCBmYWlsIHNvIHRoaXMg
aXMgZmluZS4KPiA+IAo+ID4gVGhpcyBzaG91bGQgcHJvYmFibHkgYWxzbyBmbHVzaCB0aGUgaW90
bGIgaW5zaWRlIHRoZSBsb2NrLgo+IAo+IEkgd2lsbCB0cnkgdG8gc3VtbWFyaXplOgo+IGluIHZz
aV9pb21tdV9hdHRhY2hfZGV2aWNlKCkgSSBzaG91bGQ6Cj4gLSB0YWtlIHRoZSBsb2NrCj4gLSBk
byBub3RoaW5nIGlmIHRoZSBkb21haW4gaXMgdGhlIHNhbWUuCj4gLSBpZiBpb21tdSBpcyB1c2Vk
IChpZSBwb3dlcmVkIHVwKToKPiAgIC0gdXBkYXRlIHRoZSByZWdpc3RlcnMgdG8gZW5hYmxlIHRo
ZSBpb21tdQo+ICAgLSBmbHVzaAo+ICAgLSB1cGRhdGUgdGhlIGxpbmsgbGlzdAo+IC0gdXBkYXRl
IGlvbW11LT5kb21haW4KPiAtIHJlbGVhc2UgdGhlIGxvY2sKClRoYXQgc291bmRzIGJlbGlldmFi
bGUsIHllcy4uIFRob3VnaCBjYW4geW91IGRvIHRoZSAicG93ZXJlZCB1cCIgY2hlY2tzCmluc2lk
ZSB0aGUgc3BpbmxvY2sgLSBhcmUgdGhleSBzbGVlcGluZz8gQ2FuIHRoZXkgYmUgZG9uZSBiZWZv
cmUgdGhlCnNwaW5sb2NrPwoKPiBpbiB2c2lfaW9tbXVfaWRlbnRpdHlfYXR0YWNoKCkgSSBzaG91
bGQ6Cj4gLSB0YWtlIHRoZSBsb2NrCj4gLSBkbyBub3RoaW5nIGlmIHRoZSBkb21haW4gaXMgdGhl
IHNhbWUuCj4gLSBpZiBpb21tdSBpcyB1c2VkIChpZSBwb3dlcmVkIHVwKToKPiAgIC0gZGlzYWJs
ZSB0aGUgaW9tbXUKPiAgIC0gcmVtb3ZlIHRoZSBub2RlIGZyb20gdGhlIGxpc3QKPiAtIHVwZGF0
ZSBpb21tdS0+ZG9tYWluCj4gLSByZWxlYXNlIHRoZSBsb2NrCgpBbmQgbWF5YmUgZmx1c2ggdG9v
PyBIb3cgZG9lcyB0aGUgY2FjaGluZyBodyB3b3JrIGF0IHRoaXMgcG9pbnQ/IFlvdQpjYW4ndCBo
YXZlIHN0YWxlIGVudHJpZXMgaW4gdGhlIGNhY2hlIHdoZW4geW91IHN3aXRjaCBiYWNrIHRvIGFu
CmVuYWJsZWQvdHJhbnNsYXRpbmcgY29uZmlndXJhdGlvbi4gU28gZWl0aGVyIHRoZSBIVyBmbHVz
aGVzIGltcGxpY2l0bHkKb3IgeW91IG5lZWQgdG8gYWRkIGEgZmx1c2ggc29tZXdoZXJlLi4KIAo+
IHZzaV9pb21tdV9zdXNwZW5kKCkgYW5kIHZzaV9pb21tdV9yZXN1bWUoKSB3aWxsIGFsc28gaGF2
ZSB0byB0YWtlIHRoZSBsb2NrCj4gYmVmb3JlIGNhbGxpbmcgdnNpX2lvbW11X2Rpc2FibGUoKSBh
bmQgdnNpX2lvbW11X2VuYWJsZSgpLgoKWWVzLCBpZiB0aGV5IHVzZSBpb21tdS0+ZG9tYWluIHRo
YXQgc2VlbXMgZ29vZAoKSWYgdGhlIGFib3ZlIGxvY2tpbmcgaXMgYSBwcm9ibGVtIHRoZW4gSSdk
IHVzZSB0aGUgZ3JvdXAgbXV0ZXggaW5zdGVhZApkdXJpbmcgcmVzdW1lL3N1c3BlbmQuIFRoZSBh
dHRhY2ggZnVuY3Rpb25zIGFyZSBhbHJlYWR5IGNhbGxlZCB3aXRoCnRoZSBncm91cCBtdXRleCBo
ZWxkLgoKPiBEbyBJIGhhdmUgdG8gc3dpdGNoIHRvIGlkZW50aXR5IGRvbWFpbiBpbiB2c2lfaW9t
bXVfYXR0YWNoX2RldmljZSgpCj4gYmVmb3JlIGFwcGx5aW5nIHRoZSByZXF1ZXN0ZWQgZG9tYWlu
ID8KCk5vLCB0aGF0IGlzIHdoYXQgY3JlYXRlcyB0aGUgc2VjdXJpdHkgcHJvYmxlbS4gV2hhdCB5
b3Ugd2FudCBpcyB0bwp1cGRhdGUgdGhlIEhXIHJlZ2lzdGVycyBpbiBhIHdheSB0aGF0IHRoZSBI
VyBqdXN0IGNoYW5nZXMgaGl0bGVzc2x5CmZyb20gb25lIHRyYW5zbGF0aW9uIHRvIGFub3RoZXIs
IHRoZW4gZmx1c2ggdGhlIGNhY2hlLgoKSmFzb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
