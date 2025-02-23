Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F0AAC021B2
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 21:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VaO9KNYm+nEhaAsJkXU4nw41lv1C2H7oWUvIWxHiXA=; b=y374c7NXqVnjwY
	bub6aZF4kpC2rNN77Nmzlfy82qKvne6TpPBbS04VTl0jTAfyEOBW4K45WNx5dsDavoRzMtJf3lfvz
	5zEwaWXWvY63yOsMV0rDnwW9gOxATHLsBZoer+tnktPTXKfF9chyRY2c9i2C8rNu7gV7admWaQMcz
	FH+fGizNu0psOC5GBUAB0ScGGhXz4Qp8QjAvUTE5nq7D+OQ/lnnwrByHa1eGckvg/HAaeb5o0FKwu
	ALTd4t1SNtU15Wejn9yvHZh69tNobTMUX4fMiOlEojtqXSNfefCX589hQEB0x3dprHPe7hNzcL194
	J/at7c3XDZbcrppbuVlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmJGO-0000000BnYF-2Kgu;
	Sun, 23 Feb 2025 21:11:48 +0000
Received: from smtp-13.smtpout.orange.fr ([80.12.242.13] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmJGK-0000000BnXe-3vU7
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Feb 2025 21:11:47 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id mJGAtHQOaZS23mJGDtmdYt; Sun, 23 Feb 2025 22:11:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1740345101;
	bh=HuJJOq1A9e3DRjNXPiYM07a9GOunl4wRKobsFRzCRpA=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=iFCz7x/l/vAWKzpr/kGp4iTumBqm4ke1nj5jNeEirgSnW0ryCDpNkBRG+IRL9lG2P
	 4PBMJzLCWnjgiEX6TRKMbsGAiYvm/jMuXL0BGzcLrq+vusJkbUY6823CBc7aeLjwOQ
	 Mv2p+CbfANUmfUkbf933++GJ/UCB40Di9za32dKE+Xt59903co7J1U5VcLmSTDmln+
	 GKitQatXs0ENsI1WMhD1Rs4yVuL9u/yGkkJLlcbtT3xg7aSIHDEZvl/RQe3W2MaAAX
	 mCV+KmDhnzBcO7ahZy1JcKlD1LGL1OhhEfQYyMQTMGzAEMApyodcudar56WBF0LTtT
	 s85ibwzfXIUPQ==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sun, 23 Feb 2025 22:11:41 +0100
X-ME-IP: 90.11.132.44
Message-ID: <bc1f5334-b0fb-4e81-979d-feb17886ac40@wanadoo.fr>
Date: Sun, 23 Feb 2025 22:11:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
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
 <c30a291b-c81b-4da1-a0ae-270d323b28e3@collabora.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <c30a291b-c81b-4da1-a0ae-270d323b28e3@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_131145_381223_F1811275 
X-CRM114-Status: GOOD (  16.02  )
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

TGUgMjMvMDIvMjAyNSDDoCAxOTowOCwgRG1pdHJ5IE9zaXBlbmtvIGEgw6ljcml0wqA6Cj4gT24g
Mi8yMy8yNSAyMDo1NCwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+PiBMZSAyMy8wMi8yMDI1
IMOgIDE4OjMwLCBEbWl0cnkgT3NpcGVua28gYSDDqWNyaXTCoDoKPj4+IEZyb206IFNocmVleWEg
UGF0ZWwgPHNocmVleWEucGF0ZWxAY29sbGFib3JhLmNvbT4KPj4+Cj4+PiBBZGQgaW5pdGlhbCBz
dXBwb3J0IGZvciB0aGUgU3lub3BzeXMgRGVzaWduV2FyZSBIRE1JIFJYCj4+PiBDb250cm9sbGVy
IERyaXZlciB1c2VkIGJ5IFJvY2tjaGlwIFJLMzU4OC4gVGhlIGRyaXZlcgo+Pj4gc3VwcG9ydHM6
Cj4+PiAgwqAgLSBIRE1JIDEuNGIgYW5kIDIuMCBtb2RlcyAoSERNSSA0a0A2MEh6KQo+Pj4gIMKg
IC0gUkdCODg4LCBZVVY0MjIsIFlVVjQ0NCBhbmQgWUNDNDIwIHBpeGVsIGZvcm1hdHMKPj4+ICDC
oCAtIENFQwo+Pj4gIMKgIC0gRURJRCBjb25maWd1cmF0aW9uCj4+Pgo+Pj4gVGhlIGhhcmR3YXJl
IGFsc28gaGFzIEF1ZGlvIGFuZCBIRENQIGNhcGFiaWxpdGllcywgYnV0IHRoZXNlIGFyZQo+Pj4g
bm90IHlldCBzdXBwb3J0ZWQgYnkgdGhlIGRyaXZlci4KPj4+Cj4+PiBDby1kZXZlbG9wZWQtYnk6
IERpbmd4aWFuIFdlbiA8c2hhd24ud2VuQHJvY2stY2hpcHMuY29tPgo+Pj4gU2lnbmVkLW9mZi1i
eTogRGluZ3hpYW4gV2VuIDxzaGF3bi53ZW5Acm9jay1jaGlwcy5jb20+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBTaHJlZXlhIFBhdGVsIDxzaHJlZXlhLnBhdGVsQGNvbGxhYm9yYS5jb20+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29t
Pgo+Pgo+PiBIaSwKPj4KPj4+ICvCoMKgwqAgaGRtaXJ4X2Rldi0+ZGV2ID0gZGV2Owo+Pj4gK8Kg
wqDCoCBkZXZfc2V0X2RydmRhdGEoZGV2LCBoZG1pcnhfZGV2KTsKPj4+ICsKPj4+ICvCoMKgwqAg
cmV0ID0gaGRtaXJ4X3BhcnNlX2R0KGhkbWlyeF9kZXYpOwo+Pj4gK8KgwqDCoCBpZiAocmV0KQo+
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+PiArCj4+PiArwqDCoMKgIHJldCA9IGhk
bWlyeF9zZXR1cF9pcnEoaGRtaXJ4X2RldiwgcGRldik7Cj4+PiArwqDCoMKgIGlmIChyZXQpCj4+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4KPj4gIEZyb20gaGVyZSwgc2hvdWxkIG9m
X3Jlc2VydmVkX21lbV9kZXZpY2VfcmVsZWFzZSgpIGJlIGNhbGxlZCBpbiB0aGUKPj4gZXJyb3Ig
aGFuZGxpbmcgcGF0aCwgYXMgZG9uZSBpbiB0aGUgcmVtb3ZlIGZ1bmN0aW9uPwo+IAo+IEluZGVl
ZCwgSSdsbCBtYWtlIGl0IHRvIHVzZSBkZXZtLgo+IAo+Pj4gK8KgwqDCoCBoZG1pcnhfZGV2LT5y
ZWdzID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwo+Pj4gK8KgwqDC
oCBpZiAoSVNfRVJSKGhkbWlyeF9kZXYtPnJlZ3MpKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihoZG1pcnhfZGV2LT5yZWdzKSwKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJmYWlsZWQgdG8gcmVtYXAgcmVn
cyByZXNvdXJjZVxuIik7Cj4+Cj4+IC4uLgo+Pgo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIGhkbWlyeF9pZFtdID0gewo+Pj4gK8KgwqDCoCB7IC5jb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzU4OC1oZG1pcngtY3RybGVyIiB9LAo+Pj4gK8KgwqDCoCB7IH0sCj4+Cj4+IFVu
bmVlZGVkIHRyYWlsaW5nIGNvbW1hIGFmdGVyIGEgdGVybWluYXRvci4KPj4KPj4+ICt9Owo+Pj4g
K01PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGhkbWlyeF9pZCk7Cj4+Cj4+IC4uLgo+Pgo+Pj4gK8Kg
wqDCoCByZXQgPSBjZWNfcmVnaXN0ZXJfYWRhcHRlcihjZWMtPmFkYXAsIGNlYy0+ZGV2KTsKPj4+
ICvCoMKgwqAgaWYgKHJldCA8IDApIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGNlYy0+
ZGV2LCAiY2VjIHJlZ2lzdGVyIGFkYXB0ZXIgZmFpbGVkXG4iKTsKPj4+ICvCoMKgwqDCoMKgwqDC
oCBjZWNfdW5yZWdpc3Rlcl9hZGFwdGVyKGNlYy0+YWRhcCk7Cj4+Cj4+IElzIGl0IG5lZWRlZCB0
byBjYWxsIGNlY191bnJlZ2lzdGVyX2FkYXB0ZXIoKSB3aGVuCj4+IGNlY19yZWdpc3Rlcl9hZGFw
dGVyKCkgZmFpbHM/Cj4gCj4gWWVzLCBpdCdzIGNvbmZ1c2luZywgYnV0IHVucmVnaXN0ZXIgaXMg
bmVlZGVkIHRvIGZyZWUgdGhlIGFkYXB0ZXIKPiBwcm9wZXJseSwgaXQncyBwcmVwYXJlZCB0byBk
byBpdC4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lgo+IAoKSSBkb24ndCBrbm93IHRoaXMgQVBJLCBz
byB5b3UnbGwgZ2V0IHRoZSBsYXN0IHdvcmQsIGJ1dCAKY2VjX3VucmVnaXN0ZXJfYWRhcHRlcigp
IGRvZXMgbm90IHNlZW0gdG8gZG8gdGhhdCBtYW55IHRoaW5ncyBpbiBzdWNoIGEgCmNhc2UsIHVu
bGVzcyBJIG1pc3Mgc29tZXRoaW5nLiBTZWUgWzFdLgoKQ0oKClsxXTogCmh0dHBzOi8vZWxpeGly
LmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE0LXJjMy9zb3VyY2UvZHJpdmVycy9tZWRpYS9jZWMvY29y
ZS9jZWMtY29yZS5jI0wzNzAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
