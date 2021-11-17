Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37630C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 10:51:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ECA1961A7D
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 10:51:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ECA1961A7D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UR8Xlb04zdb4uqLehUrHc0eDYoRq9h+YbJeXjdUELV4=; b=pAfRbUIG77vA2KJX5cc0dHiIN3
	XfiqycoUIisL/CQJIjGz2h8wAWJJlZJZ5pnu56xX85f+Se7ZQZdEEixsuKs7HpHoghZr+DhZZe0rG
	xns/ul1G+rXOTE/vqOlt8Wtrd4+ujHNaLSoPpOUnZD3TEdUNW/O4t94zZGACXwtR9s9IDzfgP8CoE
	CdB0GTl4G7XRpx8orLjeOyyVoHzzTssbJnhekfNR/ocujkUimNgbfhRu14Gk5g/oOwsIT5ouIJDQc
	6dtttlerFhh3doY9ECdzq+LD5Rn/gilw/WjRLc3bUA0TUq12Oj0Fv11JffZzaigsDx+q2gPSQtfjI
	BJmKIsYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnIXI-004Umw-5f; Wed, 17 Nov 2021 10:51:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnIX4-004Uiq-0y; Wed, 17 Nov 2021 10:51:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 28B251F45D5B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1637146272; bh=F8kJsKyO3eNjl+hyFQQSyGJyEnjC26LZMm295j7R78w=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=Tvn80Aby5gCkhmtEN9nfr7LcgoNlBfw1cLIvGsVAkalU/ruW9O41li8Qbc4IBJIRe
 QRaq9lp1xkF5bkNWQIqUKBI5xUHfQqyT0o4ZG960Hbvo0dT/egkpgx8f05aeTiYpr7
 zSukR28HiY6i2x7FnM1MFTFUJflU/6WOwgXkH8UtTNu/VPtk/CWfjEIlBdsqzpL5tQ
 iO58QPhMYl+pJBqD9um9knZKKfbDgDsJvBI1KE0ZZh03TJnsmux0mknnwxPCFvn1GZ
 sHxWBVFKgRLALmGnabagIjem07uoLpsfG3M7e9PpJmsGG9akSU7mC/mESDNtIXiWKU
 ldAjx0VMlCiIg==
Subject: Re: [PATCH v7 00/11] VP9 codec V4L2 control interface
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com
References: <20210929160439.6601-1-andrzej.p@collabora.com>
 <9db47ebc-cb95-872d-feb4-d6432a74f2cb@xs4all.nl>
 <29f27bad-28ae-12ff-eed6-79902bd5b722@collabora.com>
 <b8f8ee2e-ea98-4700-f4ca-f0af68c9de5c@xs4all.nl>
 <cdbbe5e6-0811-1276-1f62-fc7ad2628a30@collabora.com>
 <4da113ef-7b12-3729-0186-f746901c892a@xs4all.nl>
 <69f16bb0-4b5a-18b3-e244-60deb029d239@collabora.com>
 <2cd7a7f0-72d6-1a0e-b5d2-87ff809c2acd@xs4all.nl>
 <63429780-9e39-f8ab-40c2-0f1b57553850@collabora.com>
Message-ID: <ccc29c1f-e2a1-f7c9-77ad-6e9fc1a57c95@collabora.com>
Date: Wed, 17 Nov 2021 11:51:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <63429780-9e39-f8ab-40c2-0f1b57553850@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_025114_360869_40AEAB8E 
X-CRM114-Status: GOOD (  25.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgYWdhaW4sCgpXIGRuaXUgMTcuMTEuMjAyMSBvwqAxMTo0OSwgQW5kcnplaiBQaWV0cmFzaWV3
aWN6IHBpc3plOgo+IEhpLAo+IAo+IFcgZG5pdSAxNy4xMS4yMDIxIG/CoDEwOjU5LCBIYW5zIFZl
cmt1aWwgcGlzemU6Cj4+IE9uIDE2LzExLzIwMjEgMTQ6MTQsIEFuZHJ6ZWogUGlldHJhc2lld2lj
eiB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IFcgZG5pdSAxNi4xMS4yMDIxIG/CoDA5OjIxLCBIYW5z
IFZlcmt1aWwgcGlzemU6Cj4+Pj4gT24gMTYvMTEvMjAyMSAwOTowOSwgQW5kcnplaiBQaWV0cmFz
aWV3aWN6IHdyb3RlOgo+Pj4+PiBIaSBIYW5zLAo+Pj4+Pgo+Pj4+PiBXIGRuaXUgMTUuMTEuMjAy
MSBvwqAyMjoxNiwgSGFucyBWZXJrdWlsIHBpc3plOgo+Pj4+Pj4gT24gMTUvMTEvMjAyMSAxODox
NCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+Pj4+Pj4+IEhpIEhhbnMsCj4+Pj4+Pj4K
Pj4+Pj4+PiBXIGRuaXUgMTUuMTEuMjAyMSBvwqAxNjowNywgSGFucyBWZXJrdWlsIHBpc3plOgo+
Pj4+Pj4+PiBBbmRyemVqLAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBDYW4geW91IHJlYmFzZSB0aGlzIHNl
cmllcyBvbiB0b3Agb2YgdGhlIG1hc3RlciBicmFuY2ggb2YKPj4+Pj4+Pj4gaHR0cHM6Ly9naXQu
bGludXh0di5vcmcvbWVkaWFfc3RhZ2UuZ2l0LyA/IFVuZm9ydHVuYXRlbHkgdGhpcyB2NyBubyBs
b25nZXIKPj4+Pj4+Pj4gYXBwbGllcy4gU3BlY2lmaWNhbGx5ICJya3ZkZWM6IEFkZCB0aGUgVlA5
IGJhY2tlbmQiIGZhaWxlZCBpbiBhIG5vbi10cml2aWFsCj4+Pj4+Pj4+IG1hbm5lci4KPj4+Pj4+
Pgo+Pj4+Pj4+IFRoaXMgaXMgYSBicmFuY2ggZm9yIHlvdToKPj4+Pj4+Pgo+Pj4+Pj4+IGh0dHBz
Oi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vbGludXgvZm9yLXVwc3RyZWFtLy0vdHJlZS92cDktdWFw
aQo+Pj4+Pj4KPj4+Pj4+IEknbSBnZXR0aW5nIGEgYnVuY2ggb2Ygc3BhcnNlL3NtYXRjaCB3YXJu
aW5nczoKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoYW5rcyBmb3IgZmluZGluZyB0aGlzLCBJIHdpbGwg
cmUtY3JlYXRlIHRoZSBicmFuY2ggYW5kIGxldCB5b3Uga25vdyBvbiBpcmMuCj4+Pj4+IFNvbWUg
b2YgdGhlIGJlbG93IGFyZSAiZmFsc2UgcG9zaXRpdmVzLCBuYW1lbHk6Cj4+Pj4+Cj4+Pj4+IGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vb21hcDNpc3Avb21hcDNpc3AuaAo+Pj4+PiBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vdmVudXMvY29yZS5oCj4+Pj4KPj4+PiBBaCwgc29ycnksIEkgdGhv
dWdoIEkgaGFkIGZpbHRlcmVkIHRob3NlIG91dC4gT2J2aW91c2x5IHlvdSBjYW4gaWdub3JlIHRo
b3NlLgo+Pj4+Cj4+Pj4gUGxlYXNlIHBvc3QgYSB2OC4gVGhhdCB3YXkgdGhlIHNlcmllcyBpcyBh
cmNoaXZlZCBvbiBsb3JlLiBBbmQgaXQgd29ya3MgYmV0dGVyCj4+Pj4gd2l0aCBwYXRjaHdvcmsu
Cj4+Pgo+Pj4gU3VyZSwgbm8gcHJvYmxlbS4gQWxzbyBwbGVhc2Ugc2VlIGJlbG93Lgo+Pj4KPj4+
Pgo+Pj4+IFJlZ2FyZHMsCj4+Pj4KPj4+PiDCoMKgwqDCoEhhbnMKPj4+Pgo+Pj4+Pgo+Pj4+PiB3
aGljaCBhcmUgbm90IHRvdWNoZWQgYnkgdGhlIHNlcmllcy4KPj4+Pj4KPj4+Pj4gUmVnYXJkcywK
Pj4+Pj4KPj4+Pj4gQW5kcnplago+Pj4+Pgo+Pj4+Pj4gc3BhcnNlOgo+Pj4+Pj4gcmt2ZGVjL3Jr
dmRlYy12cDkuYzoxOTA6NDM6IHdhcm5pbmc6IHZhcmlhYmxlICdkZWNfcGFyYW1zJyBzZXQgYnV0
IG5vdCAKPj4+Pj4+IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4+Pj4+PiBya3Zk
ZWMvcmt2ZGVjLXZwOS5jOjI0NTo0Mzogd2FybmluZzogdmFyaWFibGUgJ2RlY19wYXJhbXMnIHNl
dCBidXQgbm90IAo+Pj4+Pj4gdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPj4+Pj4+
IFNQQVJTRTpoYW50cm8vaGFudHJvX3Bvc3Rwcm9jLmMgaGFudHJvL2hhbnRyb19wb3N0cHJvYy5j
OjM3OjM1OiB3YXJuaW5nOiAKPj4+Pj4+IHN5bWJvbCAnaGFudHJvX2cxX3Bvc3Rwcm9jX3JlZ3Mn
IHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Cj4+Pj4+Pgo+Pj4+Pj4gc21h
dGNoOgo+Pj4+Pj4gcmt2ZGVjL3JrdmRlYy12cDkuYzoxOTA6NDM6IHdhcm5pbmc6IHZhcmlhYmxl
ICdkZWNfcGFyYW1zJyBzZXQgYnV0IG5vdCAKPj4+Pj4+IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQt
dmFyaWFibGVdCj4+Pj4+PiBya3ZkZWMvcmt2ZGVjLXZwOS5jOjI0NTo0Mzogd2FybmluZzogdmFy
aWFibGUgJ2RlY19wYXJhbXMnIHNldCBidXQgbm90IAo+Pj4+Pj4gdXNlZCBbLVd1bnVzZWQtYnV0
LXNldC12YXJpYWJsZV0KPj4+Pj4+IHJrdmRlYy9ya3ZkZWMtdnA5LmM6IHJrdmRlYy9ya3ZkZWMt
dnA5LmM6MjM2IGluaXRfaW50cmFfb25seV9wcm9icygpIAo+Pj4+Pj4gZXJyb3I6IGJ1ZmZlciBv
dmVyZmxvdyAncHRyJyA5MCA8PSA5MQo+Pj4KPj4+IHRoaXMgbG9va3MgYSBmYWxzZSBwb3NpdGl2
ZS4KPj4+Cj4+PiBBIHBvcnRpb24gb2YgbWVtb3J5IHBvaW50ZWQgdG8gYnkgcHRyIGlzIGluZGV4
ZWQgd2l0aCBpICogMjMgKyBtLAo+Pj4gd2hlcmUgaSByYW5nZXMgZnJvbSAwIHRvIDMsIGluY2x1
c2l2ZSwgYW5kIG0gcmFuZ2VzIGZyb20gMCB0byAyMiwKPj4+IGluY2x1c2l2ZSBpZiBpIDwgMywg
b3RoZXJ3aXNlIG0gcmFuZ2VzIGZyb20gMCB0byAyMCwgaW5jbHVzaXZlLgo+Pj4gU28gdGhlIGxh
cmdlc3QgaW5kZXggdmFsdWUgd2UgY29tcHV0ZSBlcXVhbHMgODkgKDMgKiAyMyArIDIwKS4KPj4+
IEJlY2F1c2UgcHRyIHBvaW50cyB0byBzb21ldGhpbmcgdGhhdCBpcyBhdCBsZWFzdCA5MCBieXRl
cyBsYXJnZSwKPj4+IDg5IGlzIGEgdmFsaWQgaW5kZXggYW5kIG5vIGdyZWF0ZXIgaW5kZXggd2ls
bCBiZSBldmVyIGNvbXB1dGVkLgo+Pgo+PiBCdXQgd2UgZG8gbmVlZCB0byBnZXQgcmlkIG9mIHRo
aXMgc21hdGNoIHdhcm5pbmcsIG90aGVyd2lzZSBpdCB3aWxsIHBvbGx1dGUgdGhlCj4+IGxpc3Qg
b2Ygc21hdGNoIHdhcm5pbmdzLgo+Pgo+PiBJIHdhcyBsb29raW5nIGF0IHRoZSBjb2RlIGFuZCB3
b25kZXIgaWYgaXQgd291bGRuJ3QgbWFrZSBtb3JlIHNlbnNlIHRvCj4+IG1vdmUgd3JpdGluZyB0
byBya3Byb2JzLT5pbnRyYV9tb2RlW2ldLnV2X21vZGVbXSBpbnRvIGEgc2VwYXJhdGUgZm9yIGxv
b3A6Cj4+Cj4+IMKgwqDCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUodjRs
Ml92cDlfa2ZfdXZfbW9kZV9wcm9iKTsgaSsrKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBya3Byb2JzLT5pbnRyYV9tb2RlW2kgLyAyM10udXZfbW9kZVtpICUgMjNdID0gCj4+
IHY0bDJfdnA5X2tmX3V2X21vZGVfcHJvYltpXTsKPj4KPj4gV291bGRuJ3QgdGhhdCBkbyB0aGUg
c2FtZSBhcyB0aGUgY3VycmVudCBjb2RlPyBJdCBsb29rcyBzaW1wbGVyIGFzIHdlbGwuCj4+Cj4g
Cj4gSSB0aGluayBpdCB3b3VsZCwgYnV0IEkgd291bGQgc2xpZ2h0bHkgY2hhbmdlIHRoZSBsb29w
Ogo+Cj4gIMKgwqDCoMKgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUodjRsMl92cDlfa2ZfdXZf
bW9kZV9wcm9iKTsgaSsrKSB7CgphY3R1YWxseSwgc2l6ZW9mKHY0bDJfdnA5X2tmX3V2X21vZGVf
cHJvYikKCgoKPiAgwqDCoMKgwqDCoMKgwqAgY29uc3QgdTggKnB0ciA9IChjb25zdCB1OCAqKXY0
bDJfdnA5X2tmX3V2X21vZGVfcHJvYjsKPiAKPiAgwqDCoMKgwqDCoMKgwqAgcmtwcm9icy0+aW50
cmFfbW9kZVtpIC8gMjNdLnV2X21vZGVbaSAlIDIzXSA9IHB0cltpXTsKPiAgwqDCoMKgwqB9Cj4g
Cj4gYmVjYXVzZSB2NGwyX3ZwOV9rZl91dl9tb2RlX3Byb2IgaXMgYWN0dWFsbHkgYSB1OFsxMF1b
OV0uCj4gCj4gSSB3aWxsIG1ha2Ugc3VjaCBhIGNoYW5nZSBsb2NhbGx5IGFuZCB0ZXN0IHdoZXRo
ZXIgaXQgY2F1c2VzIHJlZ3Jlc3Npb25zLgo+IAo+IE9uY2UgSSBjb25maXJtIGl0IHdvcmtzIChh
bmQgSSBleHBlY3QgSSB3aWxsKSB3b3VsZCB5b3UgbGlrZSBtZSB0byBwb3N0IGEgdjksCj4gb25s
eSByZXBseSB0byB0aGUgY2hhbmdlZCBwYXRjaCB3aXRoIGl0cyB1cGRhdGVkIHZlcnNpb24gb3Ig
ZG8geW91IHdhbnQgdG8gbWFrZSAKPiB0aGlzIGNoYW5nZSB5b3Vyc2VsZj8KPiAKPiBBbmRyemVq
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
