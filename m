Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1961ED6D254
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Nov 2024 02:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/r/Q1bjUfdJLIW3f7zfmC8WiM/M7ldtgXjs0LnQ16Y=; b=ZbD97vn3m5w3HQ
	m6yVmlYzbZiSPo9nGa2vhaYvfYEJYoZLTjS2OWEFziPOGSY45Pj9s/3QI5COy6KVZL0nRr+4sjahP
	LYvv2tqJ46nejU2/uZ+qeWMPrjdE5vukpoXPYPE78ZnHHBy8RC4qCrxdVIea7KTynntWHfaA7bK5z
	D0e9XIIdODy925rTinq8xX2MWSkdBb/Y5O9SQhyS1gNhOUkb2WLieQTF9ICHCZiHu3OqieCH/0fGS
	kUnkpze2e0Ktnl1eJCCVCco/w7iwMn0hf2/1Cfki/9KI7cgiLM6gu45hL8pRoMvFq2A0QKzX1w7eE
	Q6nRQ0n0gVIKd9y0SwLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGUAP-0000000EWnV-2bMz;
	Thu, 28 Nov 2024 02:22:05 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGSwt-0000000EOWo-1oJp
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Nov 2024 01:04:05 +0000
X-QQ-mid: bizesmtpip4t1732755788txbiemb
X-QQ-Originating-IP: 5lyWGImiKsTIN/UVqHgWnBnCf6w0hBBdT9A7gXB3rzE=
Received: from [IPV6:240f:10b:7440:1:d502:63f8 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 28 Nov 2024 09:03:03 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2885135889790177938
Message-ID: <F596759069124768+5da60c49-3b1f-423c-b96e-8435e0cef88a@radxa.com>
Date: Thu, 28 Nov 2024 10:03:00 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for
 Radxa ROCK 5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, cfsworks@gmail.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org
References: <20241119100813.78820-1-naoki@radxa.com>
 <f1255d6a5c18fb43c47fab756f622891@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <f1255d6a5c18fb43c47fab756f622891@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MXHIEC8P0R7huB0dsvbDCsRgyzTsX/jdHk2suceuN9i47ovc/oZKyT5z
	YvunjgZzuo+tH9W1q79y8jQepjSr2H/0tlc/6HbZlL7e7I78bZRTAiVvQgtZXqQIHVVfVfx
	G+V23oiJfygw7onK9PDsaLLTwNGvk1lRtj2Bz0BUq71d44BZSLrf8pV7KiBvFxXxYliFco0
	za+9LuZUxFE0hivJYhlGhM4vUkIt3pwvSg4H4wOdOrE5N+MKa3SDBxUGgYw1OBwDltVUKoP
	RHD5Kq64YTXN4UOjSbSjnYJTxJVY8xOS7e7kUmBRAAiL8Uwi+4lpJoj7ihxAMjoUXPZ72go
	FFVPtGAgQrnwqkv0TCT+xNZ552JOTPTxWpyFmtmuhwFD0XKC63B15Mmsq3xqBQrYZ5tITok
	vAvkUDqagtCed9r0ZsKFnx0Z4pi14+8nosGjK4XCBu4auMdvnlnA8OXRqt3BbjaSejV4A8+
	HciRSXqG0I7sxfrE89EOlTAnKlw9z6L8hBbLB3o4WGko5lLiebnpHfFVr5NtYD+cWkglFVu
	FqDwVzTuTjzg+ugn5mkE6e/r4Y1FMuYBboi20YAaNcfqP53KsBp51Ttgbatkonww3jYxDVn
	b7v4Dgl7uzdpwEzZDCFNPX/ysIsEVOvSDy3UZP7JeN7YyWpn/xpdChZpAKFaSUehu35II0T
	Jt+iNp3kocGR1I/4sILjARrKIM6Nz3q2ntvkEJn2JR0sleRzz6X7qOVIjzNLU9ObX22DXw/
	LpNrn1+Ff9M4JXWBuUMwyNArCYpQuwAZpIB0OzPvzLM/CRdVv6D9LywH4V5WzE8urQMwblk
	01JlftaQxMBt84kqecRULE9SqfiA3M9fcZ7pPwxTmZVUdUjBcLIExcVQmb6YvmfRfmSLfPP
	J6M5+VxR807WX8xrVRlQJiTuugRfHUUfhxpivmcy3hZMZErKr/zg2WQH6RdABlUCfdn6Ins
	n0olwP0yeHCQH8w==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_170403_960727_13668987 
X-CRM114-Status: GOOD (  13.73  )
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

SGksCgpPbiAxMS8yOC8yNCAwOTozOSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxvIEZ1a2F1
bWksCj4gCj4gT24gMjAyNC0xMS0xOSAxMTowOCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4gYWRk
ICJkY2luIiBsYWJlbCB0byB2Y2M1dl9kY2luIHJlZ3VsYXRvciBhbmQgdXNlIGl0IGluIHZjY19z
eXNpbgo+PiByZWd1bGF0b3IuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkgTmFva2kgPG5h
b2tpQHJhZHhhLmNvbT4KPj4gLS0tCj4+IENoYW5nZXMgaW4gdjI6Cj4+IC0gbm9uZQo+PiAtLS0K
Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMgfCA0
ICsrLS0KPj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LXJvY2stNWMuZHRzCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJv
Y2stNWMuZHRzCj4+IGluZGV4IDZkYTEzYjZiOWE3Yi4uYjU0NjBjMTc5ZWY3IDEwMDY0NAo+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMKPj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWMuZHRzCj4+
IEBAIC04OCw3ICs4OCw3IEBAIHZjYzN2M19wY2llMngxbDI6IHJlZ3VsYXRvci12Y2MzdjNfcGNp
ZTJ4MWwyIHsKPj4gwqDCoMKgwqDCoMKgwqDCoCB2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzaW4+Owo+
PiDCoMKgwqDCoCB9Owo+Pgo+PiAtwqDCoMKgIHZjYzV2X2RjaW46IHJlZ3VsYXRvci12Y2M1di1k
Y2luIHsKPj4gK8KgwqDCoCB2Y2M1dl9kY2luOiBkY2luOiByZWd1bGF0b3ItdmNjNXYtZGNpbiB7
Cj4gCj4gSSBqdXN0IHdlbnQgdGhyb3VnaCB0aGUgYXNzb2NpYXRlZCBwYXJ0IG9mIHRoZSBST0NL
IDVDIHNjaGVtYXRpYywKPiBhbmQgSSB3YXMgdW5hYmxlIHRvIHNlZSBhbnkgcmVhc29ucyB3aHkg
c2hvdWxkIHdlIGludHJvZHVjZSAiZGNpbiIKPiBhcyBhbm90aGVyIGFsaWFzIGhlcmU/Cj4gCj4g
VGhlIHJvb3Qgb2YgdGhlIFJPQ0sgNUMncyBwb3dlciB0cmVlIGlzIGxhYmVsZWQgIjV2X2RjaW4i
IGluIHRoZQo+IHNjaGVtYXRpYywgc28gcmVuYW1pbmcgInZjYzV2X2RjaW4iIHRvICI1dl9kY2lu
IiB3b3VsZCBtYWtlIHNlbnNlLAo+IGJ1dCBJIGRvbid0IHNlZSB3aHkgc2hvdWxkIHdlIGFkZCBh
bm90aGVyIGFsaWFzLgoKUk9DSyA1QSBoYXMgdmNjMTJfZGNpbiB3aGljaCBzdXBwbHkgcG93ZXIg
dG8gdmNjX3N5c2luLiBib3RoIHZjYzV2X2RjaW4gCm9uIFJPQ0s1QyBhbmQgdmNjMTJ2X2RjaW4g
b24gUk9DSyA1QyBoYXZlIGFkZGl0aW9uYWwgImRjaW4iIGxhYmVsIGZvciAKc2hhcmluZyAuZHRz
aS4gKHBsZWFzZSBjaGVjayBQQVRDSCAzLzMpCgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5h
b2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+PiDCoMKgwqDCoMKgwqDC
oMKgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4gwqDCoMKgwqDCoMKgwqDCoCBy
ZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1dl9kY2luIjsKPj4gwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0
b3ItYWx3YXlzLW9uOwo+PiBAQCAtMTcwLDcgKzE3MCw3IEBAIHZjY19zeXNpbjogcmVndWxhdG9y
LXZjYy1zeXNpbiB7Cj4+IMKgwqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLWJvb3Qtb247Cj4+IMKg
wqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4+IMKg
wqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4+IC3C
oMKgwqDCoMKgwqDCoCB2aW4tc3VwcGx5ID0gPCZ2Y2M1dl9kY2luPjsKPj4gK8KgwqDCoMKgwqDC
oMKgIHZpbi1zdXBwbHkgPSA8JmRjaW4+Owo+PiDCoMKgwqDCoCB9Owo+Pgo+PiDCoMKgwqDCoCB2
Y2NhOiByZWd1bGF0b3ItdmNjYSB7Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
