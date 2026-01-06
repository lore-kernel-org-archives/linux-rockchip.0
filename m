Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59AE8CEFCE2
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 17:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZScUdOUSa2xOmlw4RT5pazk5kDSOBPyEdzefh0zmYDc=; b=Mt+paEHK7dUFPL
	i6myDEs5xscqmOB3JdRMXOHm42De2DWL6eJMs2ew3iJBAF+K5MvGH+uSgovZZ0248yiRJFmW5yKHK
	dk0f5BISvvKJatFszT73qqCNKQCW7ruzgT303peeckSXxGQ3sV8AG3eiYez5uzaOdNxCnr4XleiN2
	voQm4itUssFxE1Cs+ynasDtMbOAaGdsGiOv7gIT4p9MVxPeCTAy/mrMWsz78QLFN4P1OUIXS9eyWX
	KHZSTsBQIvSfmJUduRIPcte5IQtjAwBtnF5NOCPFR/6FKVoRETXgxILc1Z3uyuHOIvMTMiRUiiyf3
	3agD5Tkq0OJlYHjMs+Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdAZd-0000000DY1R-2SFc;
	Tue, 06 Jan 2026 17:10:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdAZa-0000000DY0h-2uQq;
	Tue, 06 Jan 2026 17:10:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CK1pjOZHgHUmALyetdFeD/XBzJb0zHryAM/HjnpXBsw=; b=BTjU7zXVaPTBCgdfTupnegVh5x
	spGEnvNDYbg3RYXwMnEjdKlxIBwBgicISdzhcMdGRegCutQ11QolnDgo5/ixuQ4nwV2KWBupqViNM
	OhON3+V7CCPPbSJ163hewlWzGY4ZFXMM7bZJLWwEMKQnHdJ6mNduhOHcUgyJ9MJ940JzGVw7+YJ0N
	SO92W8SEAwKgcYZVs4sJgEhLlvSKup4+B2gfit+1A25r34cxWszyBs10z/cZsTvUXZmEnDcOL0eNr
	GX+83mB7fdnB6/g0wjzRyZu4Zvd+HXFYmAsc4eVIxRHlxJFxcJMkM6g0rH8KqP+zb8VWf+40RVjUH
	BPXR7xww==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdAZT-001Gyr-JH; Tue, 06 Jan 2026 18:10:16 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
 stable@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
Date: Tue, 06 Jan 2026 18:10:15 +0100
Message-ID: <6940171.Sb9uPGUboI@phil>
In-Reply-To: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_091022_795542_E45C4F94 
X-CRM114-Status: GOOD (  12.78  )
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

QW0gRGllbnN0YWcsIDYuIEphbnVhciAyMDI2LCAxMDowMDoxMSBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIEJhcnRvc3ogR29sYXN6ZXdza2k6Cj4gVGhlIEdQSU8gY29udHJv
bGxlciBpcyBjb25maWd1cmVkIGFzIG5vbi1zbGVlcGluZyBidXQgaXQgdXNlcyBnZW5lcmljCj4g
cGluY3RybCBoZWxwZXJzIHdoaWNoIHVzZSBhIG11dGV4IGZvciBzeW5jaHJvbml6YXRpb24uCj4g
Cj4gVGhpcyBjYW4gY2F1c2UgdGhlIGZvbGxvd2luZyBsb2NrZGVwIHNwbGF0IHdpdGggc2hhcmVk
IEdQSU9zIGVuYWJsZWQgb24KPiBib2FyZHMgd2hpY2ggaGF2ZSBtdWx0aXBsZSBkZXZpY2VzIHVz
aW5nIHRoZSBzYW1lIEdQSU86Cj4gCj4gQlVHOiBzbGVlcGluZyBmdW5jdGlvbiBjYWxsZWQgZnJv
bSBpbnZhbGlkIGNvbnRleHQgYXQKPiBrZXJuZWwvbG9ja2luZy9tdXRleC5jOjU5MQo+IGluX2F0
b21pYygpOiAxLCBpcnFzX2Rpc2FibGVkKCk6IDEsIG5vbl9ibG9jazogMCwgcGlkOiAxMiwgbmFt
ZToKPiBrd29ya2VyL3UxNjowCj4gcHJlZW1wdF9jb3VudDogMSwgZXhwZWN0ZWQ6IDAKPiBSQ1Ug
bmVzdCBkZXB0aDogMCwgZXhwZWN0ZWQ6IDAKPiA2IGxvY2tzIGhlbGQgYnkga3dvcmtlci91MTY6
MC8xMjoKPiAgICMwOiBmZmZmMDAwMWYwMDE4ZDQ4ICgod3FfY29tcGxldGlvbilldmVudHNfdW5i
b3VuZCMyKXsrLisufS17MDowfSwKPiBhdDogcHJvY2Vzc19vbmVfd29yaysweDE4Yy8weDYwNAo+
ICAgIzE6IGZmZmY4MDAwODQyZGJkZjAgKGRlZmVycmVkX3Byb2JlX3dvcmspeysuKy59LXswOjB9
LCBhdDoKPiBwcm9jZXNzX29uZV93b3JrKzB4MWI0LzB4NjA0Cj4gICAjMjogZmZmZjAwMDFmMTg0
OThmOCAoJmRldi0+bXV0ZXgpey4uLi59LXs0OjR9LCBhdDoKPiBfX2RldmljZV9hdHRhY2grMHgz
OC8weDFiMAo+ICAgIzM6IGZmZmYwMDAxZjc1ZjFlOTAgKCZnZGV2LT5zcmN1KXsuKy4/fS17MDow
fSwgYXQ6Cj4gZ3Bpb2RfZGlyZWN0aW9uX291dHB1dF9yYXdfY29tbWl0KzB4MC8weDM2MAo+ICAg
IzQ6IGZmZmYwMDAxZjQ2ZTNkYjggKCZzaGFyZWRfZGVzYy0+c3BpbmxvY2spey4uLi59LXszOjN9
LCBhdDoKPiBncGlvX3NoYXJlZF9wcm94eV9kaXJlY3Rpb25fb3V0cHV0KzB4ZDAvMHgxNDQgW2dw
aW9fc2hhcmVkX3Byb3h5XQo+ICAgIzU6IGZmZmYwMDAxZjE4MGVlOTAgKCZnZGV2LT5zcmN1KXsu
Ky4/fS17MDowfSwgYXQ6Cj4gZ3Bpb2RfZGlyZWN0aW9uX291dHB1dF9yYXdfY29tbWl0KzB4MC8w
eDM2MAo+IGlycSBldmVudCBzdGFtcDogODE0NTAKPiBoYXJkaXJxcyBsYXN0ICBlbmFibGVkIGF0
ICg4MTQ0OSk6IFs8ZmZmZjgwMDA4MTNhY2JhND5dCj4gX3Jhd19zcGluX3VubG9ja19pcnFyZXN0
b3JlKzB4NzQvMHg3OAo+IGhhcmRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDgxNDUwKTogWzxmZmZm
ODAwMDgxM2FiZmI4Pl0KPiBfcmF3X3NwaW5fbG9ja19pcnFzYXZlKzB4ODQvMHg4OAo+IHNvZnRp
cnFzIGxhc3QgIGVuYWJsZWQgYXQgKDc5NjE2KTogWzxmZmZmODAwMDgxMTQ1NWZjPl0KPiBfX2Fs
bG9jX3NrYisweDE3Yy8weDFlOAo+IHNvZnRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDc5NjE0KTog
WzxmZmZmODAwMDgxMTQ1NWZjPl0KPiBfX2FsbG9jX3NrYisweDE3Yy8weDFlOAo+IENQVTogMiBV
SUQ6IDAgUElEOiAxMiBDb21tOiBrd29ya2VyL3UxNjowIE5vdCB0YWludGVkCj4gNi4xOS4wLXJj
NC1uZXh0LTIwMjYwMTA1KyAjMTE5NzUgUFJFRU1QVAo+IEhhcmR3YXJlIG5hbWU6IEhhcmRrZXJu
ZWwgT0RST0lELU0xIChEVCkKPiBXb3JrcXVldWU6IGV2ZW50c191bmJvdW5kIGRlZmVycmVkX3By
b2JlX3dvcmtfZnVuYwo+IENhbGwgdHJhY2U6Cj4gICBzaG93X3N0YWNrKzB4MTgvMHgyNCAoQykK
PiAgIGR1bXBfc3RhY2tfbHZsKzB4OTAvMHhkMAo+ICAgZHVtcF9zdGFjaysweDE4LzB4MjQKPiAg
IF9fbWlnaHRfcmVzY2hlZCsweDE0NC8weDI0OAo+ICAgX19taWdodF9zbGVlcCsweDQ4LzB4OTgK
PiAgIF9fbXV0ZXhfbG9jaysweDVjLzB4ODk0Cj4gICBtdXRleF9sb2NrX25lc3RlZCsweDI0LzB4
MzAKPiAgIHBpbmN0cmxfZ2V0X2RldmljZV9ncGlvX3JhbmdlKzB4NDQvMHgxMjgKPiAgIHBpbmN0
cmxfZ3Bpb19kaXJlY3Rpb24rMHgzYy8weGUwCj4gICBwaW5jdHJsX2dwaW9fZGlyZWN0aW9uX291
dHB1dCsweDE0LzB4MjAKPiAgIHJvY2tjaGlwX2dwaW9fZGlyZWN0aW9uX291dHB1dCsweGI4LzB4
MTljCj4gICBncGlvY2hpcF9kaXJlY3Rpb25fb3V0cHV0KzB4MzgvMHg5NAo+ICAgZ3Bpb2RfZGly
ZWN0aW9uX291dHB1dF9yYXdfY29tbWl0KzB4MWQ4LzB4MzYwCj4gICBncGlvZF9kaXJlY3Rpb25f
b3V0cHV0X25vbm90aWZ5KzB4N2MvMHgyMzAKPiAgIGdwaW9kX2RpcmVjdGlvbl9vdXRwdXQrMHgz
NC8weGY4Cj4gICBncGlvX3NoYXJlZF9wcm94eV9kaXJlY3Rpb25fb3V0cHV0KzB4ZWMvMHgxNDQg
W2dwaW9fc2hhcmVkX3Byb3h5XQo+ICAgZ3Bpb2NoaXBfZGlyZWN0aW9uX291dHB1dCsweDM4LzB4
OTQKPiAgIGdwaW9kX2RpcmVjdGlvbl9vdXRwdXRfcmF3X2NvbW1pdCsweDFkOC8weDM2MAo+ICAg
Z3Bpb2RfZGlyZWN0aW9uX291dHB1dF9ub25vdGlmeSsweDdjLzB4MjMwCj4gICBncGlvZF9jb25m
aWd1cmVfZmxhZ3MrMHhiYy8weDQ4MAo+ICAgZ3Bpb2RfZmluZF9hbmRfcmVxdWVzdCsweDFhMC8w
eDU3NAo+ICAgZ3Bpb2RfZ2V0X2luZGV4KzB4NTgvMHg4NAo+ICAgZGV2bV9ncGlvZF9nZXRfaW5k
ZXgrMHgyMC8weGI0Cj4gICBkZXZtX2dwaW9kX2dldF9vcHRpb25hbCsweDE4LzB4MzAKPiAgIHJv
Y2tjaGlwX3BjaWVfcHJvYmUrMHg5OC8weDM4MAo+ICAgcGxhdGZvcm1fcHJvYmUrMHg1Yy8weGFj
Cj4gICByZWFsbHlfcHJvYmUrMHhiYy8weDI5OAo+IAo+IEZpeGVzOiA5MzZlZTI2NzVlZWUgKCJn
cGlvL3JvY2tjaGlwOiBhZGQgZHJpdmVyIGZvciByb2NrY2hpcCBncGlvIikKPiBDYzogc3RhYmxl
QHZnZXIua2VybmVsLm9yZwo+IFJlcG9ydGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+Cj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
ZDAzNWZjMjktM2IwMy00Y2Q2LWI4ZWMtMDAxZjkzNTQwYmM2QHNhbXN1bmcuY29tLwo+IFNpZ25l
ZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAb3NzLnF1
YWxjb21tLmNvbT4KCkFja2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
