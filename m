Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCF26CE7B17
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 13:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ABrM26JvASlaE9FJNLIIVWleVng2/q9J33Fks1e2ps=; b=3m1InZwQHc+aRT
	rQrFbxwQ+zBESa1eEGHprXjfnD08fj/+FqOw69aiCW6kcyE40qsrsuTu3jKmX5GXUlyYUsPM3cVMm
	IfsMyRdepw+d454KOEWtHCkSyb0/QGs54XCRitr6zQCnJc1jWTKff8RR6vb4fkPdORcGyjotRxoxb
	QKS6sHWIw4Tiw/5Ekz10l2i0ZY3NE1iDDanGIP3DnnBgjbsUdST+IK9NSRQkOp0u4nxVyy09PgUMm
	NpOicMLPK2WVFPkiAk/90/K2RpxrIMWGUuQSMpyuV6QzxmPgveoGgaq1uIprJRTO8Swe2ToHhdiiG
	hOmZFDJP9Mp6NFTpLxmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZIt-0000000CP3R-0fMV;
	Fri, 06 Sep 2024 13:47:11 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZC7-0000000CNJp-0pFC;
	Fri, 06 Sep 2024 13:40:13 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 8E88C789F3;
	Fri,  6 Sep 2024 21:40:03 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 8E88C789F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725630005;
	bh=THWh+jTU82Bk2jmaEr2jKdyj00Le9PDV8sXnbY3W8pw=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=U+1eM/4q7hMnhB/H/vmuwrkYpiweMg1aAhliFX9aUjFYAPCWIdmQuYDFeLLtYir6Y
	 B/nfatTkjew4Gbl4eXGwKfR6TGQre/dQbAzqzZV2/Sy/BHl8FjNNO9ov05Q1okXk+j
	 /UsUdrhs/RISXZ3poemVDMTGg3BLm+eN/rBMsYoE=
Message-ID: <a1e96682-4eb5-486e-97bf-472634642553@classfun.cn>
Date: Fri, 6 Sep 2024 21:41:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] watchdog: Add Photonicat PMU watchdog driver
To: Guenter Roeck <linux@roeck-us.net>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-4-bigfoot@classfun.cn>
 <8e2cecbe-aa48-4e84-93cc-8c028c5e649e@roeck-us.net>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, "Conor Dooley,"
 <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>, Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <8e2cecbe-aa48-4e84-93cc-8c028c5e649e@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_064012_087575_70144807 
X-CRM114-Status: GOOD (  22.40  )
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

T24gMjAyNC85LzYgMTk6NTIsIEd1ZW50ZXIgUm9lY2sgd3JvdGU6Cj4gT24gOS82LzI0IDAyOjM2
LCBKdW5oYW8gWGllIHdyb3RlOgo+PiBUaGlzIGRyaXZlciBwcm92aWRlcyBhY2Nlc3MgdG8gUGhv
dG9uaWNhdCBQTVUgd2F0Y2hkb2cgZnVuY3Rpb25hbGl0eS4KPj4KWy4uLl0KPj4gKwo+PiArc3Ry
dWN0IHBjYXRfd2F0Y2hkb2cgewo+PiArwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldjsKPiAKPiBJ
IGRvbid0IHNlZSB3aGF0IHRoaXMgaXMgdXNlZCBmb3IuCgpJIHVzZWQgdG8gdXNlIHRoaXMgZm9y
IGxvZ2dpbmcsIGJ1dCBub3cgdGhleSBhcmUgZ29uZSwgSSB3aWxsIGRlbGV0ZSBpdC4KCj4gClsu
Li5dCj4+ICsKPj4gK3N0YXRpYyBpbnQgcGNhdF93ZHRfc2V0dXAoc3RydWN0IHBjYXRfd2F0Y2hk
b2cgKmRhdGEsIGludCB0aW1lb3V0KQo+PiArewo+PiArwqDCoMKgIGludCByZXQ7Cj4+ICvCoMKg
wqAgdTggdGltZSA9IDA7Cj4gCj4gVW5uZWNlc3NhcnkgaW5pdGlhbGl6YXRpb24uCj4gCj4+ICvC
oMKgwqAgdTggdGltZXNbM10gPSB7IDYwLCA2MCwgMCB9Owo+PiArCj4+ICvCoMKgwqAgdGltZSA9
IE1JTigyNTUsIE1BWCgwLCB0aW1lb3V0KSk7Cj4+ICsKPj4gK8KgwqDCoCByZXQgPSBwY2F0X3Bt
dV93cml0ZV9kYXRhKGRhdGEtPnBtdSwgUENBVF9DTURfV0FUQ0hET0dfVElNRU9VVF9TRVQsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRpbWVzLCBzaXplb2YodGltZXMp
KTsKPiAKPiBXaGVyZSBkb2VzIHRoaXMgYWN0dWFsbHkgc2VuZCB0aGUgdGltZW91dCB0byB0aGUg
Y2hpcCA/Cj4gCgpJIGZvcmdvdCB0byBmaWxsIGluIHRpbWVvdXQgaW50byB0aW1lc1syXSBkdXJp
bmcgcmVmYWN0b3JpbmcgcHJvY2VzcywgSSB3aWxsIGZpeCBpdC4KCj4+ICvCoMKgwqAgaWYgKCFy
ZXQpClsuLi5dPj4gKwo+PiArc3RhdGljIGludCBwY2F0X3dkdF9zZXRfdGltZW91dChzdHJ1Y3Qg
d2F0Y2hkb2dfZGV2aWNlICp3ZGV2LCB1bnNpZ25lZCBpbnQgdmFsKQo+PiArewo+PiArwqDCoMKg
IGludCByZXQgPSAwOwo+PiArwqDCoMKgIHN0cnVjdCBwY2F0X3dhdGNoZG9nICpkYXRhID0gd2F0
Y2hkb2dfZ2V0X2RydmRhdGEod2Rldik7Cj4+ICsKPj4gK8KgwqDCoCBkYXRhLT50aW1lb3V0ID0g
dmFsOwo+IAo+IFRoaXMgbmVlZHMgdG8gc3RvcmUgJ3RpbWVvdXQnIGluIHdkZXYuIFN0b3Jpbmcg
aXQgbG9jYWxseSBpcyB1bm5lY2Vzc2FyeS4KPiAKPj4gK8KgwqDCoCBpZiAoZGF0YS0+c3RhcnRl
ZCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldCA9IHBjYXRfd2R0X3NldHVwKGRhdGEsIGRhdGEtPnRp
bWVvdXQpOwo+IAo+IFRoaXMgaXMgbWlzbGVhZGluZyBiZWNhdXNlIGl0IHdvdWxkIHBlcm1pdCBz
ZXR0aW5nIHRoZSB0aW1lb3V0IHRvCj4gMCB3aGVuIHRoZSB3YXRjaGRvZyBpc24ndCBydW5uaW5n
LCBhbmQgdGhlbiB3aGVuIHRoZSB3YXRjaGRvZyBpcyBzdGFydGVkCj4gaXQgd291bGQgbm90IHJl
YWxseSBzdGFydCBpdC4gVGhlIGNvZGUgc2hvdWxkIG5vdCB1c2UgYSBsb2NhbCAic3RhcnRlZCIK
PiB2YXJpYWJsZSBidXQgY2FsbCB3YXRjaGRvZ19hY3RpdmUoKS4gSXQgc2hvdWxkIGFsc28gbm90
IGFjY2VwdCAiMCIKPiBhcyBhIHZhbGlkIHRpbWVvdXQuCj4gCgpJIHdpbGwgZml4IHRoZSBwY2F0
X3dkdF9zZXRfdGltZW91dC4KCj4+ICsKWy4uLl0KPj4gKwo+PiArwqDCoMKgIHdhdGNoZG9nLT5k
ZXYgPSBkZXY7Cj4+ICvCoMKgwqAgd2F0Y2hkb2ctPnBtdSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYt
PnBhcmVudCk7Cj4+ICvCoMKgwqAgd2F0Y2hkb2ctPndkZC5pbmZvID0gJnBjYXRfd2R0X2luZm87
Cj4+ICvCoMKgwqAgd2F0Y2hkb2ctPndkZC5vcHMgPSAmcGNhdF93ZHRfb3BzOwo+PiArwqDCoMKg
IHdhdGNoZG9nLT53ZGQudGltZW91dCA9IDYwOwo+PiArwqDCoMKgIHdhdGNoZG9nLT53ZGQubWF4
X3RpbWVvdXQgPSBVOF9NQVg7Cj4+ICvCoMKgwqAgd2F0Y2hkb2ctPndkZC5taW5fdGltZW91dCA9
IDA7Cj4gCj4gVGhpcyBlZmZlY3RpdmVseSBsZXRzIHRoZSB1c2VyIC4uLiBraW5kIG9mIC4uLiBz
dG9wIHRoZSB3YXRjaGRvZwo+IGJ5IHNldHRpbmcgdGhlIHRpbWVvdXQgdG8gMC4gVGhpcyBpcyBu
b3QgYWNjZXB0YWJsZS4KPiAKPj4gK8KgwqDCoCB3YXRjaGRvZy0+d2RkLnBhcmVudCA9IGRldjsK
Pj4gKwo+PiArwqDCoMKgIHdhdGNoZG9nX3N0b3Bfb25fcmVib290KCZ3YXRjaGRvZy0+d2RkKTsK
Pj4gK8KgwqDCoCB3YXRjaGRvZ19zZXRfZHJ2ZGF0YSgmd2F0Y2hkb2ctPndkZCwgd2F0Y2hkb2cp
Owo+PiArwqDCoMKgIHBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHdhdGNoZG9nKTsKPj4gKwo+
IE5vIHdhdGNoZG9nX2luaXRfdGltZW91dCgpID8KClRoYW5rcyBmb3IgeW91ciBjb3JyZWN0aW9u
LCBJIHdpbGwgZml4IGl0LgoKPiAKPj4gK8KgwqDCoCByZXR1cm4gZGV2bV93YXRjaGRvZ19yZWdp
c3Rlcl9kZXZpY2UoZGV2LCAmd2F0Y2hkb2ctPndkZCk7ClsuLi5dCj4+ICtNT0RVTEVfTElDRU5T
RSgiR1BMIik7Cj4gCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LCBJIHdpbGwgZml4IGFsbCBwcm9i
bGVtcyBpbiBuZXh0IHZlcnNpb24hCgpCZXN0IHJlZ2FyZHMsCkp1bmhhbwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
