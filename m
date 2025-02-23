Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 842BDC021B2
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 18:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApxePAmYdkAmq9R52Gsda9hwEGQei1tOxJFJgWa9d7Q=; b=zVS9QIyjHi3bok
	f4qvDeeHUarOyyTO51pyy46Pbkp1Psw6HjSTa+qRDzmtyfu7bLbqFW8La22bIDLZTABpUdeEt1pV/
	Z68xqu8tV5tJaRK6j40VUzmcuB9oad/g1/c2v75aexLRAiyPIBRk5V62DGUjDN2iPPUhoUDdng4m0
	ICXDPkem0BtjAp5ewGZYqgY8Ss81MsICr5DJ+CWcY4M1s0u9fN29rQ0fVlRLLaEG2FsFr8G61OOEE
	JA9uzZ/NgGOO61I9+Q8tbLj0+b+/xYq0t97rsSmLfcD4Cq9zfBkQ+TFCtmgKVpNPr3y+0baBpWCwy
	Zzm+rUnQagvjoMg0iZvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmGPr-0000000BYpy-1mmE;
	Sun, 23 Feb 2025 18:09:23 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmGPo-0000000BYpP-2v9k
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Feb 2025 18:09:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740334146; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lR5Xpeon+xZfR0YEGEAoMO0RxcL4DBk2FyX3X15S12bxI6eGecjDvNB4A0wiRL90WheCfjgrgMPkSrcwNLfrL1Wrn9FdgJhKev0csn/0UwM7aMKodWyVaVSKsgnXH0T9X2hhkLgmRWUl265F0yGiFdE8RPe3hJL5v7OcOe2IVaY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740334146; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=0PhFMKLaP4CnNVQFwAvqdp7PveYbLnvH99BPyYvIqPc=; 
	b=Bgkn8Un/4vKxVly110XizM3t8o9kTG7kWPZRnUQ8hqzteku9ZUa69BFu6+NdTfD5u1WZT19vbnXKUNCBXirCImo2ltaHDYSJUACVdjB/RPTtbdOzFzuuZA3e2VujjRMil2SO+HgfaqsAyLU2OKxSwmKwqWc8Egy6XudbtZ+hXXA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740334146;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=0PhFMKLaP4CnNVQFwAvqdp7PveYbLnvH99BPyYvIqPc=;
	b=EIAQcBWYiLAb8CbsnvEyjvpz3qVQgoklsuraEH0D0uzngfXEI/kD2i74Zheeho2V
	9RhKHFnqwj8TvkoPGZrAfI3aV5cAqI6I/Gv3/lnACCVU5I6CPXC0E+USSIjBQHz1TTd
	woLuBw8GBjxZwHExL8Jrm/CyBhlY8nyut90HAlvw=
Received: by mx.zohomail.com with SMTPS id 1740334144187513.9514643088662;
	Sun, 23 Feb 2025 10:09:04 -0800 (PST)
Message-ID: <c30a291b-c81b-4da1-a0ae-270d323b28e3@collabora.com>
Date: Sun, 23 Feb 2025 21:08:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>
References: <20250223173019.303518-1-dmitry.osipenko@collabora.com>
 <20250223173019.303518-5-dmitry.osipenko@collabora.com>
 <88b02c37-6741-459b-b966-d6d58d1f9b6f@wanadoo.fr>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <88b02c37-6741-459b-b966-d6d58d1f9b6f@wanadoo.fr>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_100920_816460_B9FD6EC5 
X-CRM114-Status: GOOD (  15.70  )
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

T24gMi8yMy8yNSAyMDo1NCwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+IExlIDIzLzAyLzIw
MjUgw6AgMTg6MzAsIERtaXRyeSBPc2lwZW5rbyBhIMOpY3JpdMKgOgo+PiBGcm9tOiBTaHJlZXlh
IFBhdGVsIDxzaHJlZXlhLnBhdGVsQGNvbGxhYm9yYS5jb20+Cj4+Cj4+IEFkZCBpbml0aWFsIHN1
cHBvcnQgZm9yIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgUlgKPj4gQ29udHJvbGxlciBE
cml2ZXIgdXNlZCBieSBSb2NrY2hpcCBSSzM1ODguIFRoZSBkcml2ZXIKPj4gc3VwcG9ydHM6Cj4+
IMKgIC0gSERNSSAxLjRiIGFuZCAyLjAgbW9kZXMgKEhETUkgNGtANjBIeikKPj4gwqAgLSBSR0I4
ODgsIFlVVjQyMiwgWVVWNDQ0IGFuZCBZQ0M0MjAgcGl4ZWwgZm9ybWF0cwo+PiDCoCAtIENFQwo+
PiDCoCAtIEVESUQgY29uZmlndXJhdGlvbgo+Pgo+PiBUaGUgaGFyZHdhcmUgYWxzbyBoYXMgQXVk
aW8gYW5kIEhEQ1AgY2FwYWJpbGl0aWVzLCBidXQgdGhlc2UgYXJlCj4+IG5vdCB5ZXQgc3VwcG9y
dGVkIGJ5IHRoZSBkcml2ZXIuCj4+Cj4+IENvLWRldmVsb3BlZC1ieTogRGluZ3hpYW4gV2VuIDxz
aGF3bi53ZW5Acm9jay1jaGlwcy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IERpbmd4aWFuIFdlbiA8
c2hhd24ud2VuQHJvY2stY2hpcHMuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBTaHJlZXlhIFBhdGVs
IDxzaHJlZXlhLnBhdGVsQGNvbGxhYm9yYS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBP
c2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+Cj4gCj4gSGksCj4gCj4+ICvC
oMKgwqAgaGRtaXJ4X2Rldi0+ZGV2ID0gZGV2Owo+PiArwqDCoMKgIGRldl9zZXRfZHJ2ZGF0YShk
ZXYsIGhkbWlyeF9kZXYpOwo+PiArCj4+ICvCoMKgwqAgcmV0ID0gaGRtaXJ4X3BhcnNlX2R0KGhk
bWlyeF9kZXYpOwo+PiArwqDCoMKgIGlmIChyZXQpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
cmV0Owo+PiArCj4+ICvCoMKgwqAgcmV0ID0gaGRtaXJ4X3NldHVwX2lycShoZG1pcnhfZGV2LCBw
ZGV2KTsKPj4gK8KgwqDCoCBpZiAocmV0KQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsK
PiAKPiBGcm9tIGhlcmUsIHNob3VsZCBvZl9yZXNlcnZlZF9tZW1fZGV2aWNlX3JlbGVhc2UoKSBi
ZSBjYWxsZWQgaW4gdGhlCj4gZXJyb3IgaGFuZGxpbmcgcGF0aCwgYXMgZG9uZSBpbiB0aGUgcmVt
b3ZlIGZ1bmN0aW9uPwoKSW5kZWVkLCBJJ2xsIG1ha2UgaXQgdG8gdXNlIGRldm0uCgo+PiArwqDC
oMKgIGhkbWlyeF9kZXYtPnJlZ3MgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRl
diwgMCk7Cj4+ICvCoMKgwqAgaWYgKElTX0VSUihoZG1pcnhfZGV2LT5yZWdzKSkKPj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihoZG1pcnhfZGV2LT5y
ZWdzKSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImZhaWxl
ZCB0byByZW1hcCByZWdzIHJlc291cmNlXG4iKTsKPiAKPiAuLi4KPiAKPj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGhkbWlyeF9pZFtdID0gewo+PiArwqDCoMKgIHsgLmNvbXBh
dGlibGUgPSAicm9ja2NoaXAscmszNTg4LWhkbWlyeC1jdHJsZXIiIH0sCj4+ICvCoMKgwqAgeyB9
LAo+IAo+IFVubmVlZGVkIHRyYWlsaW5nIGNvbW1hIGFmdGVyIGEgdGVybWluYXRvci4KPiAKPj4g
K307Cj4+ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBoZG1pcnhfaWQpOwo+IAo+IC4uLgo+IAo+
PiArwqDCoMKgIHJldCA9IGNlY19yZWdpc3Rlcl9hZGFwdGVyKGNlYy0+YWRhcCwgY2VjLT5kZXYp
Owo+PiArwqDCoMKgIGlmIChyZXQgPCAwKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGNl
Yy0+ZGV2LCAiY2VjIHJlZ2lzdGVyIGFkYXB0ZXIgZmFpbGVkXG4iKTsKPj4gK8KgwqDCoMKgwqDC
oMKgIGNlY191bnJlZ2lzdGVyX2FkYXB0ZXIoY2VjLT5hZGFwKTsKPiAKPiBJcyBpdCBuZWVkZWQg
dG8gY2FsbCBjZWNfdW5yZWdpc3Rlcl9hZGFwdGVyKCkgd2hlbgo+IGNlY19yZWdpc3Rlcl9hZGFw
dGVyKCkgZmFpbHM/CgpZZXMsIGl0J3MgY29uZnVzaW5nLCBidXQgdW5yZWdpc3RlciBpcyBuZWVk
ZWQgdG8gZnJlZSB0aGUgYWRhcHRlcgpwcm9wZXJseSwgaXQncyBwcmVwYXJlZCB0byBkbyBpdC4g
VGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKLS0gCkJlc3QgcmVnYXJkcywKRG1pdHJ5CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
