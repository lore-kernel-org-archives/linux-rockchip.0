Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B5D1CA1013
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JkF6ruVFjmDUawsCxcC56LA5ipCZIPs8ysi6VMtLog=; b=N9bzXix7xIcGg5
	seVUk16MreRwTkp2Wr3IHV0wW9Fc4bvEYT871RpFAXsf0PclZ3mGsL3lv03U/9j1LUqx/O7FEyr3c
	1Bkst6HlbAY5q+acpwreUNkk3q44yD1ow2p2So7gZgLgaU2Qz3xgMi8Ya4TJxrtZyOPNoAWMHc3cV
	jTWyVL5QPTDKEHV/O0c0iMGrpoMAsUQN7Pe8ZNdMqeo7pEZup/PES1A3rqEoW1N8e8T6+YeuL0QAB
	jIXLX2iscjrC9Pf4IKCdIhNVHaWzqD2ogEsruJ1dDLcbDkpgZk7XN1z+ILUrbI2sB9klWQaIXfBop
	44VeYX5WfFaHjNme+7kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvSQv-0000000EDQQ-1k4j;
	Mon, 08 Sep 2025 03:20:45 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvSO6-0000000ECnt-24p1;
	Mon, 08 Sep 2025 03:17:52 +0000
X-QQ-mid: esmtpgz14t1757301392t1d5f40cd
X-QQ-Originating-IP: ZUOPaUqj2wXqgkX85zS9BenCl9Em07B5jGELAC+KwJc=
Received: from localhost.localdomain ( [183.51.121.90])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 08 Sep 2025 11:16:30 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6945571031618804772
EX-QQ-RecipientCnt: 16
From: Kaison Deng <dkx@t-chip.com.cn>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Wayne Chou <zxf@t-chip.com.cn>,
	Kaison Deng <dkx@t-chip.com.cn>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add devicetree for the ROC-RK3588-RT
Date: Mon,  8 Sep 2025 11:16:30 +0800
Message-Id: <20250908031630.1010407-1-dkx@t-chip.com.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CALWfF7+6dTqLRHYKHL1iBf9YknLQ5yTrwPur8VySmjiy3mzh0Q@mail.gmail.com>
References: <CALWfF7+6dTqLRHYKHL1iBf9YknLQ5yTrwPur8VySmjiy3mzh0Q@mail.gmail.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:t-chip.com.cn:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MwoN/pFApqr2Vt+r9edkD4W23fv2wp8lvSNH0JRKcoZp4ypOp7PKYaVT
	61rDCSaagwCjh23QO+JGFccS2TVakpuBOZ4O0DbpItZ5VeUEJDCf8ceeLo57t7YZ3xw42QY
	qd6p6/KuEJNy6VEy+/xJCCTbSr6ubgxEg3YPCoqCXC8+3feCn4pP5KTP+vkeHdKiHpV3uZm
	lOK49FY5B01VwXjwmF5NP72v7WajSQ8IT5TcGmxVk0VjZAiC8fNY1f1+G+X3Z2sKICSHVPc
	J4Qy9XUPAJH8zFuAkNLZ8YplA2GJdqiliLY/C2GOHxsZwMqBHKz5crpyKbPv+fai43dHl4W
	UYKkZIL4uKO+mhzdHQnIVhffHCg3fdcTt91xJtGNvBMRBJFjdtiDUdZ5Y7utnhdNKEYDLM3
	SUuY6V0B2jtE23GYwr/E649ju3ikOKSCi0E8FZQ6swaNyOPwwbbcS5tU44BlAq0mHQ9oT6W
	MgU9EZbP+UX9l6uWeZbvTUqQYFaWz4OCwTwSTTtnG1Tvbv2cAFoVfE2CfckqI7oGK48jgED
	par/wcnbeZtKn08+Wn36EoYwJW7AkWhcYx2DsR+YKeEKDBN5x1bKr6tTQSNYH86832ahHBD
	BV19ls0Jod/5DBASwgWCrGupsimS0TR/5wBjzcZPwdkreqw1gwzT1x3kwzXa/0vrvHP8L2o
	0fRsWK/EwbeYgJTo8l+rx+YA1q0hSTiB6PU9QdCEitFX6xDUORil59y/awZy6CbVl/Nntp2
	Mvxr/cFKxnZGz/Gz5VQn9aswenZqYN0aARFz6fVrmVFBcDicGy3K9+fCCyyiyt8DAVkdDUK
	7KlYIgGNYLb2rPiFtSg9FrAaZ2VnHOGvTppfy8I4nPC+cAUUP4aYn9aVIdBWgSAw0swQ854
	3IFQ07irL11zRI8MsBRmw5wy4YFz1sHvMSSfkZA9dvMiUYF3hUG7tIE2EzLxG52IZ89Dwjf
	TuTqNWIIulgNG6o4ygs9q2c0oX+bymfaC83ePU+Hwa33BwCQBI+0tZVAPozrGkTmE/pnJnq
	mtv3sYaj6HFlL6eQQD980pUAP209xrYIlZEawMJRrw97pMRCTYX/onpGTW4IP6xHGQUG2ez
	nNZsvwHRh7+mo1KFEvSTWPKbv+0/qlLfxr7S4mxAUAK
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_201751_311228_FC54F601 
X-CRM114-Status: GOOD (  25.29  )
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

SGksCgpPbiBGcmksIDIwMjUtMDktMDUgYXQgMjA6NTAgLTA1MDAsIEppbW15IEhvbiB3cm90ZToK
PiBPbiBGcmksIFNlcCA1LCAyMDI1IGF0IDk6MzLigK9BTSBLYWlzb24gRGVuZyA8ZGt4QHQtY2hp
cC5jb20uY24+IHdyb3RlOgo+ID4gVGhlIEZpcmVmbHkgUk9DLVJLMzU4OC1SVCBpcyBSSzM1ODgg
YmFzZWQgU0JDIGZlYXR1cmluZzoKPiA+Cj4gPiAtIFRGIGNhcmQgc2xvdAo+ID4gLSBOVk1FIDIy
NDIgc29ja2V0Cj4gQ291bGQgeW91IHVwZGF0ZSB0aGUgY29tbWl0IGRlc2NyaXB0aW9uIHRvIG1h
dGNoIGRldmljZSB0cmVlLiBJdAo+IGxvb2tzCj4gbGlrZSB0aGUgTS4yIDIyNDIgc29ja2V0IGlz
IGNvbmZpZ3VyZWQgYXMgYSBTQVRBIChpLmUuICJzYXRhMiIpCj4gaW5zdGVhZCBvZiBOVk1FLgo+
Cj4gSXMgdGhlIE0uMiBzbG90IGFsc28gd2lyZWQgZm9yIE5WTUUgb3BlcmF0aW9uPyBJZiBzbywg
d2lsbCB5b3UgYmUKPiBwcm92aWRpbmcgYSBEVCBvdmVybGF5IHRvIHVzZSBpdCBpbiB0aGF0IG1v
ZGU/Cj4KPiBodHRwczovL3dpa2kudC1maXJlZmx5LmNvbS9lbi9ST0MtUkszNTg4LVJUL3VzYWdl
X3NhdGEuaHRtbCNzb2Z0d2FyZS1jb25maWd1cmF0aW9uCj4KVGhlIGRlZmF1bHQgaXMgc2F0YSwg
SSB3aWxsIHVwZGF0ZSB0aGUgY29tbWl0IGRlc2NyaXB0aW9uIHRvIG1hdGNoIHRoZSBkZXZpY2Ug
dHJlZS4KCj4gPiAtIDF4IFVTQiAzLjAgUG9ydCwgMXggVVNCIDIuMCBQb3J0LCAxeCBUeXBlYyBQ
b3J0Cj4gPiAtIDF4IEhETUkgMi4xIG91dCwgMXggSERNSSAyLjAgb3V0Cj4gPiAtIDJ4IEdpZ2Fi
aXQgRXRoZXJuZXQsIDF4IDIuNUcgRXRoZXJuZXQKPiA+IC0gTS4yIEUtS0VZIGZvciBFeHRlbmRl
ZCBXaUZJIGFuZCBCbHVldG9vbGgKPiA+IC0gRVM4Mzg4IG9uLWJvYXJkIHNvdW5kIGNvZGVjIC0g
amFjayBpbi9vdXQKPiA+IC0gUlRDCj4gPiAtIExFRDogV09SSywgRElZCj4gPiAtIEJUQiBjb25u
ZWN0b3IgZm9yIFBDaWUsIFVBUlQsIFVTQiwgQ0FOLCBTQVJBREMsIEdQSU8KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBLYWlzb24gRGVuZyA8ZGt4QHQtY2hpcC5jb20uY24+Cj4gPiAtLS0KPiA+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgICAxICsKPiA+
ICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvYy1ydC5kdHMgfCAxMTIwCj4g
PiArKysrKysrKysrKysrKysrKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTEyMSBpbnNlcnRpb25z
KCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXJvYy1ydC5kdHMKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01h
a2VmaWxlCj4gPiBpbmRleCA5ZDU2ZDQxNDZiMjAuLmFkNjg0ZTM4MzFiYyAxMDA2NDQKPiA+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+IEBAIC0xODEsNiArMTgxLDcgQEAg
ZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1vcmFuZ2VwaS0KPiA+IDUtbWF4
LmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtb3JhbmdlcGkt
NS1wbHVzLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtb3Jh
bmdlcGktNS11bHRyYS5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmsz
NTg4LXF1YXJ0enBybzY0LmR0Ygo+ID4gK2R0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSBy
azM1ODgtcm9jLXJ0LmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1
ODgtcm9jay01LWl0eC5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmsz
NTg4LXJvY2stNWIuZHRiCj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4
OC1yb2NrLTViLXBjaWUtZXAuZHRibwo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LXJvYy1ydC5kdHMKPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtcm9jLXJ0LmR0cwo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGlu
ZGV4IDAwMDAwMDAwMDAwMC4uMWQ1MDAwOWQzMTUzCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2MtcnQuZHRzCj4KPiBbc25p
cF0KPgo+ID4gKwo+ID4gKyZoZG1pMCB7Cj4gPiArICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+
ICt9Owo+ID4gKwo+ID4gKyZoZG1pMF9pbiB7Cj4gPiArICAgICAgIGhkbWkwX2luX3ZwMDogZW5k
cG9pbnQgewo+ID4gKyAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmdnAwX291dF9o
ZG1pMD47Cj4gPiArICAgICAgIH07Cj4gPiArfTsKPiA+ICsKPiA+ICsmaGRtaTBfb3V0IHsKPiA+
ICsgICAgICAgaGRtaTBfb3V0X2NvbjogZW5kcG9pbnQgewo+ID4gKyAgICAgICAgICAgICAgIHJl
bW90ZS1lbmRwb2ludCA9IDwmaGRtaTBfY29uX2luPjsKPiA+ICsgICAgICAgfTsKPiA+ICt9Owo+
IERvZXMgdGhlIGJvYXJkIHN1cHBvcnQgaGRtaTBfc291bmQgYW5kIGhkbWkxX3NvdW5kIChhbmQg
dGhlCj4gY29ycmVzcG9uZGluZyBpMnM1XzhjaCBhbmQgaTJzNl84Y2gpPwo+ClRoYW5rcyB0byBy
ZW1pbmQsIHRoZSBib2FyZCBzdXBwb3J0IGhkbWkwX3NvdW5kIGFuZCBoZG1pMV9zb3VuZCwgSSds
bCBhZGQgdGhlbS4KCj4gPiArCj4gPiArJmhkbWkxIHsKPiA+ICsgICAgICAgc3RhdHVzID0gIm9r
YXkiOwo+ID4gK307Cj4KPiBbc25pcF0KPgo+ID4gKwo+ID4gKyZzZGhjaSB7Cj4gPiArICAgICAg
IGJ1cy13aWR0aCA9IDw4PjsKPiA+ICsgICAgICAgbm8tc2RpbzsKPiA+ICsgICAgICAgbm8tc2Q7
Cj4gPiArICAgICAgIG5vbi1yZW1vdmFibGU7Cj4gPiArICAgICAgIG1heC1mcmVxdWVuY3kgPSA8
MjAwMDAwMDAwPjsKPiA+ICsgICAgICAgbW1jLWhzNDAwLTFfOHY7Cj4gPiArICAgICAgIG1tYy1o
czQwMC1lbmhhbmNlZC1zdHJvYmU7Cj4gVGhlc2UgcHJvcGVydGllcyBzaG91bGQgYmUgaW4gYWxw
aGFiZXRpY2FsIG9yZGVyLgo+Ckkgd2lsbCBhZGp1c3QgdGhlIGF0dHJpYnV0ZXMgdG8gYXJyYW5n
ZSB0aGVtIGluIGFscGhhYmV0aWNhbCBvcmRlci4KCj4gPiArICAgICAgIHN0YXR1cyA9ICJva2F5
IjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZzZG1tYyB7Cj4gPiArICAgICAgIGJ1cy13aWR0aCA9IDw0
PjsKPiA+ICsgICAgICAgY2FwLXNkLWhpZ2hzcGVlZDsKPiA+ICsgICAgICAgZGlzYWJsZS13cDsK
PiA+ICsgICAgICAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+ID4gKyAgICAgICBuby1z
ZGlvOwo+ID4gKyAgICAgICBuby1tbWM7Cj4gPiArICAgICAgIHNkLXVocy1zZHIxMDQ7Cj4gPiAr
ICAgICAgIHZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc2RfczA+Owo+ID4gKyAgICAgICB2cW1tYy1z
dXBwbHkgPSA8JnZjY2lvX3NkX3MwPjsKPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4g
K307Cj4KPiBKaW1teQo+CgpLYWlzb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
