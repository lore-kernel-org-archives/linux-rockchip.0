Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 819D6C71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 15:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqRxm3Vs5wpzLGgFpZ41fqN80ZirUcPYVljCH16E0Ro=; b=j0hSTsdrtQJ9x3
	7UbGPLYuJrgZEKClZtGQi7rvzMHVj34U92JR/xrjUKr5/vauhB5KEcAtcSMoVNrROdpFOn2Pd3YTT
	lZj06Mfgue3TcZS3btTaSFXNvAYGYZhNjkFxULXYgWloBpNhOWI2zGJ+ttbsV5vIlsJsxCK328d1t
	tvaCOe4T/QHTjfanOTi2ZD+ldb/NwXr0iCVuVMCIGcPl9qfBryYB27OluSil0rKprTcroE80OY4ie
	/d0x5Fj66p/3NHEC4PkztcKLyByxkn9Iw0r+oIjzv8j9831Um2++V6NUdA/790nfqd+yT5gWEGBbn
	bR5Y+wxsb6J+tYMc8vFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSdFu-0000000FvRd-4A8h;
	Fri, 20 Jun 2025 15:02:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScBA-0000000FmWu-08rk;
	Fri, 20 Jun 2025 13:53:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=V459JMUmyF9w2CF7odfd6vdr2BDTmJkRuH7Scgg3lLo=; b=j5q/qeHn35vvt61rCxqD3JulCI
	rim6hGFkc9llnzO2yN0xJVF6ZQN0o6vtSD44eWLHPNMEinnCWn7W3sJFkgi35ciFQ5nxBAsN7YT8M
	Y8XCe5ibLC4trza4ucv6+tXo+Kcb8tq8I0ybhoiFKnVBt/PF4suk1vh/ZmbV6aYsmTkqpc/1jY2XV
	rwo/pV8EG3aq+rHZ1E2ZEQ07Kd89yTqy/Q/dFlAwtQ1NSInWjY745jXM2CqsV2zf0zTrPZOlIWCLh
	ThXyK0KazmctwMga+kjXuXA9o1XpkookzRRyl2i+sWvo9y5gWcr7rgfWTzhIIsujkwppycbHLdKpK
	+bQSXXxA==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScB7-00000004knf-137z;
	Fri, 20 Jun 2025 13:53:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750427571; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TXFOrOvEz7z1ai2laSiHdc57LGo4WZ9k8SJkVhzrfhqnwR0b1rPncIkqMG4VX7ZpvyYelO0JBnkmhrDGjgGNrpwvL0TZWo94GZaOUrP9myK6Isj2y5llSo/uUrvLQed+opagwHRuo6jvJ5DavjSyw1jIYOsgxMftmwnigA714k0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750427571; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=V459JMUmyF9w2CF7odfd6vdr2BDTmJkRuH7Scgg3lLo=; 
	b=MMTZaNXtnwEFO2WRdtoGadqLqAnzc/YzvA/W7Z2ArWiZ9cqNU/hUQfcLQz7ulhlcUlCExzCFwcpkxKIRch4wnIQqGxO8FpNFOfKNOtYKSO5v+JHODAaPbzxqXk0EJgb8OY3pLxG0u5SR9olb2fiMMO990y9JuMXKp99EdfKR/90=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750427571;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=V459JMUmyF9w2CF7odfd6vdr2BDTmJkRuH7Scgg3lLo=;
	b=XMz83gLGVocBQQxhMXW3P41Im4nz6IP8qnRncCfexbBczpHYl1RS8MFGcilrvPYa
	gCE6lYBG8nfrS65sPW5tCrhl4mTSHQSVEhOyY6KOT13Ijf6FE/ha3v2o/A2qCdvvEkw
	32AsJPhSZf6Hzk8n3E2138cANxh3Z8xrQfCPOdmQ=
Received: by mx.zohomail.com with SMTPS id 1750427570159193.5196944847704;
	Fri, 20 Jun 2025 06:52:50 -0700 (PDT)
Message-ID: <d9a1b9ab-b6ab-4364-a1b7-df4debc21bc1@collabora.com>
Date: Fri, 20 Jun 2025 15:52:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
 <20250619165928.GA10257@ziepe.ca>
 <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>
 <20250620120509.GA39770@ziepe.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250620120509.GA39770@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_145313_707601_F53AAE94 
X-CRM114-Status: GOOD (  36.81  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDIwLzA2LzIwMjUgw6AgMTQ6MDUsIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+IE9u
IEZyaSwgSnVuIDIwLCAyMDI1IGF0IDEwOjU3OjQ5QU0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJk
IHdyb3RlOgo+PiBMZSAxOS8wNi8yMDI1IMOgIDE4OjU5LCBKYXNvbiBHdW50aG9ycGUgYSDDqWNy
aXTCoDoKPj4+IE9uIFRodSwgSnVuIDE5LCAyMDI1IGF0IDA2OjI3OjUyUE0gKzAyMDAsIEJlbmph
bWluIEdhaWduYXJkIHdyb3RlOgo+Pj4+IExlIDE5LzA2LzIwMjUgw6AgMTU6NDcsIEphc29uIEd1
bnRob3JwZSBhIMOpY3JpdMKgOgo+Pj4+PiBVZ2guIFRoaXMgaWdub3JlcyB0aGUgZ2ZwIGZsYWdz
IHRoYXQgYXJlIHBhc3NlZCBpbnRvIG1hcCBiZWNhdXNlIHlvdQo+Pj4+PiBoYXZlIHRvIGZvcmNl
IGF0b21pYyBkdWUgdG8gdGhlIHNwaW5sb2NrIHRoYXQgc2hvdWxkbid0IGJlIHRoZXJlIDooCj4+
Pj4+IFRoaXMgbWVhbnMgaXQgZG9lcyBub3Qgc2V0IEdGUF9LRVJORUxfQUNDT1VOVCB3aGVuIHJl
cXVpcmVkLiBJdCB3b3VsZAo+Pj4+PiBiZSBiZXR0ZXIgdG8gY29udGludWUgdG8gdXNlIHRoZSBw
YXNzZWQgaW4gR0ZQIGZsYWdzIGJ1dCBvdmVycmlkZSB0aGVtCj4+Pj4+IHRvIGF0b21pYyBtb2Rl
Lgo+Pj4+IEkgd2lsbCBhZGQgYSBnZnBfdCBwYXJhbWV0ZXIgYW5kIHVzZSBpdCBsaWtlIHRoYXQ6
Cj4+Pj4gcGFnZV90YWJsZSA9IGlvbW11X2FsbG9jX3BhZ2VzX3N6KGdmcCB8IEdGUF9BVE9NSUMg
fCBHRlBfRE1BMzIsIFNQQUdFX1NJWkUpOwo+Pj4gVGhpcyB3aWxsIG9yIHRvZ2V0aGVyIEdGUF9B
VE9NSUMgYW5kIEdGUF9LRVJORUwsIEkgZG9uJ3QgdGhpbmsgdGhhdAo+Pj4gd29ya3MuLgo+PiBJ
IGhhdmUgdGVzdCBpdCwgSSBkb24ndCBzZWUgY29uZmxpY3RzIG9yIGVycm9ycy4gV2hhdCB3b3Jy
aWVzIHlvdSA/Cj4gSnVzdCBsb29raW5nIGF0IHRoZSBiaXRtYXBzIEknbSBub3Qgc3VyZT8gRGlk
IHlvdSBydW4gd2l0aCBsb2NrZGVwPwoKWWVzIGFuZCBpdCBjb21wbGFpbnMgYWJvdXQgdGhhdC4K
SSBzZWUgdGhhdCBzdW41MGkgZHJpdmVyIGhhdmUgbW9yZSBsZXNzIHRoZSBzYW1lIHN0cnVjdCB0
aGFuIG15IGRyaXZlcgpidXQgZG9lc24ndCB1c2UgbG9jay4gSSB3aWxsIHRyeSBzZWUgaWYgSSBj
YW4gcmVtb3ZlIHRoZSBsb2NrLgoKPj4+Pj4+ICtzdGF0aWMgaW50IHZzaV9pb21tdV9hdHRhY2hf
ZGV2aWNlKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiwKPj4+Pj4+ICsJCQkJICAgc3RydWN0
IGRldmljZSAqZGV2KQo+Pj4+Pj4gK3sKPj4+Pj4+ICsJc3RydWN0IHZzaV9pb21tdSAqaW9tbXUg
PSBkZXZfaW9tbXVfcHJpdl9nZXQoZGV2KTsKPj4+Pj4+ICsJc3RydWN0IHZzaV9pb21tdV9kb21h
aW4gKnZzaV9kb21haW4gPSB0b192c2lfZG9tYWluKGRvbWFpbik7Cj4+Pj4+PiArCXVuc2lnbmVk
IGxvbmcgZmxhZ3M7Cj4+Pj4+PiArCWludCByZXQ7Cj4+Pj4+PiArCj4+Pj4+PiArCWlmIChXQVJO
X09OKCFpb21tdSkpCj4+Pj4+PiArCQlyZXR1cm4gLUVOT0RFVjsKPj4+Pj4+ICsKPj4+Pj4+ICsJ
LyogaW9tbXUgYWxyZWFkeSBhdHRhY2hlZCAqLwo+Pj4+Pj4gKwlpZiAoaW9tbXUtPmRvbWFpbiA9
PSBkb21haW4pCj4+Pj4+PiArCQlyZXR1cm4gMDsKPj4+Pj4+ICsKPj4+Pj4+ICsJcmV0ID0gdnNp
X2lvbW11X2lkZW50aXR5X2F0dGFjaCgmdnNpX2lkZW50aXR5X2RvbWFpbiwgZGV2KTsKPj4+Pj4+
ICsJaWYgKHJldCkKPj4+Pj4+ICsJCXJldHVybiByZXQ7Cj4+Pj4+IEh1cm0sIHRoaXMgaXMgYWN0
dWFsbHkgcXVpdGUgYmFkLCBub3cgdGhhdCBpdCBpcyBjbGVhciB0aGUgSFcgaXMgaW4gYW4KPj4+
Pj4gaWRlbnRpdHkgbW9kZSBpdCBpcyBhY3R1YWxseSBhIHNlY3VyaXR5IHByb2JsZW0gZm9yIFZG
SU8gdG8gc3dpdGNoIHRoZQo+Pj4+PiB0cmFuc2xhdGlvbiB0byBpZGVudGl0eSBkdXJpbmcgYXR0
YWNoX2RldmljZS4gSSdkIHJlYWxseSBwcmVmZXIgbmV3Cj4+Pj4+IGRyaXZlcnMgZG9uJ3QgbWFr
ZSB0aGlzIG1pc3Rha2UuCj4+Pj4+Cj4+Pj4+IEl0IHNlZW1zIHRoZSBtYWluIHRoaW5nIG1vdGl2
YXRpbmcgdGhpcyBpcyB0aGUgZmFjdCBhIGxpbmtlZCBsaXN0IGhhcwo+Pj4+PiBvbmx5IGEgc2lu
Z2xlIGlvbW11LT5ub2RlIHNvIHlvdSBjYW4ndCBhdHRhY2ggdGhlIGlvbW11IHRvIGJvdGggdGhl
Cj4+Pj4+IG5ldy9vbGQgZG9tYWluIGFuZCBhdG9taWNhbGx5IHVwZGF0ZSB0aGUgcGFnZSB0YWJs
ZSBiYXNlLgo+Pj4+Pgo+Pj4+PiBJcyBpdCBwb3NzaWJsZSBmb3IgdGhlIEhXIHRvIGRvIGEgYmxv
Y2tpbmcgYmVoYXZpb3I/IFRoYXQgd291bGQgYmUgYW4KPj4+Pj4gZWFzeSBmaXguLiBZb3Ugc2hv
dWxkIGFsd2F5cyBiZSBhYmxlIHRvIGZvcmNlIHRoaXMgYnkgYWxsb2NhdGluZyBhCj4+Pj4+IHNo
YXJlZCB0b3AgcGFnZSB0YWJsZSBsZXZlbCBkdXJpbmcgcHJvYmUgdGltZSBhbmQgbWFraW5nIGl0
IGVudGlyZWx5Cj4+Pj4+IGVtcHR5IHdoaWxlIHN0YXlpbmcgYWx3YXlzIGluIHRoZSBwYWdpbmcg
bW9kZS4gTWF5YmUgdGhlcmUgaXMgYSBsZXNzCj4+Pj4+IGV4cGVuc2l2ZSB3YXkuCj4+Pj4+Cj4+
Pj4+IE90aGVyd2lzZSB5b3UgcHJvYmFibHkgaGF2ZSB3b3JrIG1vcmUgbGlrZSB0aGUgb3RoZXIg
ZHJpdmVycyBhbmQKPj4+Pj4gYWxsb2NhdGUgYSBzdHJ1Y3QgZm9yIGVhY2ggYXR0YWNobWVudCBz
byB5b3UgY2FuIGhhdmUgdGhlIGlvbW11Cj4+Pj4+IGF0dGFjaGVkIHR3byBkb21haW5zIGR1cmlu
ZyB0aGUgc3dpdGNoIG92ZXIgYW5kIG5ldmVyIGRyb3AgdG8gYW4KPj4+Pj4gaWRlbnRpdHkgbW9k
ZS4KPj4+PiBJIHdpbGwgcmVtb3ZlIHRoZSBzd2l0Y2ggdG8gaWRlbnRpdHkgZG9tYWluIGFuZCBp
dCB3aWxsIHdvcmtzIGZpbmUuCj4+PiBZb3UnbGwgbG9vc2UgaW52YWxpZGF0aW9ucy4uCj4+Pgo+
Pj4gTWF5YmUgdGhlIGVhc2llc3QgdGhpbmcgaXMgdG8gc3F1aXNoIHZzaV9pb21tdV9lbmFibGUo
KSBhbmQgcmVvcmdhbml6ZQo+Pj4gaXQgc28gdGhhdCB0aGUgc3BpbmxvY2sgaXMgaGVsZCBhY3Jv
c3MgdGhlIHJlZ2lzdGVyIHByb2dyYW1taW5nIGFuZAo+Pj4gdGhlbiB5b3UgY2FuIGF0b21pY2Fs
bHkgdW5kZXIgdGhlIGxvY2sgY2hhbmdlIHRoZSByZWdpc3RlcnMgYW5kIGNoYW5nZQo+Pj4gdGhl
IGxpbmtlZCBsaXN0LiBUaGUgcmVnaXN0ZXIgd3JpdGUgY2Fubm90IGZhaWwgc28gdGhpcyBpcyBm
aW5lLgo+Pj4KPj4+IFRoaXMgc2hvdWxkIHByb2JhYmx5IGFsc28gZmx1c2ggdGhlIGlvdGxiIGlu
c2lkZSB0aGUgbG9jay4KPj4gSSB3aWxsIHRyeSB0byBzdW1tYXJpemU6Cj4+IGluIHZzaV9pb21t
dV9hdHRhY2hfZGV2aWNlKCkgSSBzaG91bGQ6Cj4+IC0gdGFrZSB0aGUgbG9jawo+PiAtIGRvIG5v
dGhpbmcgaWYgdGhlIGRvbWFpbiBpcyB0aGUgc2FtZS4KPj4gLSBpZiBpb21tdSBpcyB1c2VkIChp
ZSBwb3dlcmVkIHVwKToKPj4gICAgLSB1cGRhdGUgdGhlIHJlZ2lzdGVycyB0byBlbmFibGUgdGhl
IGlvbW11Cj4+ICAgIC0gZmx1c2gKPj4gICAgLSB1cGRhdGUgdGhlIGxpbmsgbGlzdAo+PiAtIHVw
ZGF0ZSBpb21tdS0+ZG9tYWluCj4+IC0gcmVsZWFzZSB0aGUgbG9jawo+IFRoYXQgc291bmRzIGJl
bGlldmFibGUsIHllcy4uIFRob3VnaCBjYW4geW91IGRvIHRoZSAicG93ZXJlZCB1cCIgY2hlY2tz
Cj4gaW5zaWRlIHRoZSBzcGlubG9jayAtIGFyZSB0aGV5IHNsZWVwaW5nPyBDYW4gdGhleSBiZSBk
b25lIGJlZm9yZSB0aGUKPiBzcGlubG9jaz8KPgo+PiBpbiB2c2lfaW9tbXVfaWRlbnRpdHlfYXR0
YWNoKCkgSSBzaG91bGQ6Cj4+IC0gdGFrZSB0aGUgbG9jawo+PiAtIGRvIG5vdGhpbmcgaWYgdGhl
IGRvbWFpbiBpcyB0aGUgc2FtZS4KPj4gLSBpZiBpb21tdSBpcyB1c2VkIChpZSBwb3dlcmVkIHVw
KToKPj4gICAgLSBkaXNhYmxlIHRoZSBpb21tdQo+PiAgICAtIHJlbW92ZSB0aGUgbm9kZSBmcm9t
IHRoZSBsaXN0Cj4+IC0gdXBkYXRlIGlvbW11LT5kb21haW4KPj4gLSByZWxlYXNlIHRoZSBsb2Nr
Cj4gQW5kIG1heWJlIGZsdXNoIHRvbz8gSG93IGRvZXMgdGhlIGNhY2hpbmcgaHcgd29yayBhdCB0
aGlzIHBvaW50PyBZb3UKPiBjYW4ndCBoYXZlIHN0YWxlIGVudHJpZXMgaW4gdGhlIGNhY2hlIHdo
ZW4geW91IHN3aXRjaCBiYWNrIHRvIGFuCj4gZW5hYmxlZC90cmFuc2xhdGluZyBjb25maWd1cmF0
aW9uLiBTbyBlaXRoZXIgdGhlIEhXIGZsdXNoZXMgaW1wbGljaXRseQo+IG9yIHlvdSBuZWVkIHRv
IGFkZCBhIGZsdXNoIHNvbWV3aGVyZS4uCgpJIGRvIG5vdCBoYXZlIHRoZSBkb2N1bWVudGF0aW9u
IGZvciB0aGUgaGFyZHdhcmUgYnV0IGl0IHNlZW1zIHRoYXQKZW5hYmxlL2Rpc2FibGUgYXJlIGVu
b3VnaCB0byBkbyB0aGUgam9iLgogIAoKPiAgIAo+PiB2c2lfaW9tbXVfc3VzcGVuZCgpIGFuZCB2
c2lfaW9tbXVfcmVzdW1lKCkgd2lsbCBhbHNvIGhhdmUgdG8gdGFrZSB0aGUgbG9jawo+PiBiZWZv
cmUgY2FsbGluZyB2c2lfaW9tbXVfZGlzYWJsZSgpIGFuZCB2c2lfaW9tbXVfZW5hYmxlKCkuCj4g
WWVzLCBpZiB0aGV5IHVzZSBpb21tdS0+ZG9tYWluIHRoYXQgc2VlbXMgZ29vZAo+Cj4gSWYgdGhl
IGFib3ZlIGxvY2tpbmcgaXMgYSBwcm9ibGVtIHRoZW4gSSdkIHVzZSB0aGUgZ3JvdXAgbXV0ZXgg
aW5zdGVhZAo+IGR1cmluZyByZXN1bWUvc3VzcGVuZC4gVGhlIGF0dGFjaCBmdW5jdGlvbnMgYXJl
IGFscmVhZHkgY2FsbGVkIHdpdGgKPiB0aGUgZ3JvdXAgbXV0ZXggaGVsZC4KCkRvZXMgZ3JvdXAg
bXV0ZXggaXMgYWxzbyBjYWxsZWQgd2hlbiB1c2luZyB2c2lfaW9tbXVfbWFwIG9yIHZzaV9pb21t
dV91bm1hcCA/Cgo+Cj4+IERvIEkgaGF2ZSB0byBzd2l0Y2ggdG8gaWRlbnRpdHkgZG9tYWluIGlu
IHZzaV9pb21tdV9hdHRhY2hfZGV2aWNlKCkKPj4gYmVmb3JlIGFwcGx5aW5nIHRoZSByZXF1ZXN0
ZWQgZG9tYWluID8KPiBObywgdGhhdCBpcyB3aGF0IGNyZWF0ZXMgdGhlIHNlY3VyaXR5IHByb2Js
ZW0uIFdoYXQgeW91IHdhbnQgaXMgdG8KPiB1cGRhdGUgdGhlIEhXIHJlZ2lzdGVycyBpbiBhIHdh
eSB0aGF0IHRoZSBIVyBqdXN0IGNoYW5nZXMgaGl0bGVzc2x5Cj4gZnJvbSBvbmUgdHJhbnNsYXRp
b24gdG8gYW5vdGhlciwgdGhlbiBmbHVzaCB0aGUgY2FjaGUuCj4KPiBKYXNvbgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
