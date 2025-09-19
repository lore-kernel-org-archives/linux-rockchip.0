Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 168BDCAC59A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Sep 2025 10:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5ww/1V2eYTWTIEKguVQrU3HIco6ZFsSNjC7wKs0rhMY=; b=iL1rGmibHuXyesZ4syNSsQ1edm
	RqEDyHuocqS1K+XxpFbFeaujpPxDPEj5Dve0wbjwcj7Xz/RnzSPt9jPxjpBJ16WUvhFojKdIR0mBw
	YqUo/IhfvfnnKEOsAKJ99FUWRgjTl/2l+/94W295wMtQvy4RHG94NNXUba6S2ZPLzSZAn/r+kM3zB
	dEPYB6QCdBnSDDkoK+gaWNLO1gAwsYMlHWH9rHwgqcNrFOq7sDBBHZG/fXAyHf79XF8LhBOKP0nOs
	BFdvnszmiJVlMixlxyOv7uzUUwhnXzBwfR7liTf1g14f/o6KPVFiSLrXrYF3s/V2q3lQjn2fTV6fz
	vNGbw09g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzYFo-00000002XW1-2vQG;
	Fri, 19 Sep 2025 10:22:12 +0000
Received: from bg1.exmail.qq.com ([114.132.67.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzYFm-00000002XV2-1MGu;
	Fri, 19 Sep 2025 10:22:11 +0000
X-QQ-mid: zesmtpip2t1758277275ta8f180fc
X-QQ-Originating-IP: FaZuIGI3lqEvBtl92gk0ndR9LDofYDIzCT5EB3kaeoo=
Received: from [IPV6:240f:10b:7440:1:ce36:128f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 19 Sep 2025 18:21:11 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16849280493774206844
Message-ID: <E2F727E460ACE497+3eb0af61-5175-47f1-a2f2-4bae7471b916@radxa.com>
Date: Fri, 19 Sep 2025 19:21:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: correct uart mux for Radxa
 ZERO3
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ed W <lists@wildgooses.com>
References: <20250917114932.25994-1-lists@wildgooses.com>
 <2325560.3ZeAukHxDK@diego>
 <0DB47BC84E90B0E6+694b1274-4826-4ec1-9aa2-ca8aa790f61a@radxa.com>
 <1971910.g5d078U9FE@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1971910.g5d078U9FE@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NojR6Ao/DkEDOzfxtENjUyQURpJdQNHOroe4VshccZ3SVgNOr8liZPYK
	HX6UFTrhAyrNgkQ9TeeaTcAUvqsNCWEGKUuz2FIBYzAmT9hJ3ueXpVcGzUp3WUu+rbG3Xnt
	Xn76txT/HTFG6xlVroukdIAMduzlneXbQT0Os6d03CJjkH9arDHxTTnCY4ZEo6qjIW1kPwO
	qP6xx6DOeQP4Y1tjMiOBfEfuRjomVXcJ4469GuwLKGFincYKIT5bL5qXydMc+U1SJGGmOUc
	N+BwkdzODiL2QI3/jy48fAjE15gSIFZX/i47+HgqbcvpyLk4yR+7jkmVQ7TahyofEgE8sAk
	MYYcZtl1iyH7fX1BMukcCDA6E2zTMj9CZP+7CpuRC9S0tBNxOk/mbhqJT1holqLXuN0Pin6
	zyR99PMN/UVP09hjU4qakG/kzO6Q3dpgX0rmATtXX6a1CAIZldwr8ogOtC6RPlbUL3TmpZn
	PCFVK9F/YV0dQ/XTyGjoXYHAby0xlneX/GVE1ySBlDe32YOlfCEj+w5d1Q3k04Is8rTUxb+
	3iCa7aC6qNFBJjw5Z1H20oQLc7bxUuCO5zLEB3bJGBgNuVsAWy8as2/tFIhOAFuh8jbqsy9
	G9gl2hFJL/K1RY8H9nTeJPo4UB0Ctmzw6M4ncVM1l6Gp79TW6LP4FRJmGaKCw+rGI+cQK65
	HENUPwf6MrFguRuJQKqPtK3Wc6xG2kjBf0+5A169jEXWMvk3cPl9xUjk9n0FoX9HQcu69Cm
	sb7uawSBubOJwinUII9bkIvfk1g2vRZ1YdzWBBrwPKngquDxcvl5Nb/imPAwur46I4Q9LLR
	zgJm/oDdSrZyBdKxuNJ1upm4DkUi5oq/TpVJ6ikZVvuah/3bavC/HAJkroBDftNfFpk+vJL
	axrp+7L2vU7pK7gRNdTCBIVRu6ZpkhkiQQhdcegZJxJ0b4alY/NBrPLJc5HJorCY7BoMFl8
	9Cg/XVXNE+vFpK/ujEH7Vk77q18MPRf8rWjjgVNdp/gsoFvSIqbePgM1M/lsdMhQhynI85D
	zAan8N6n0/dZ/dCT+FGIDCY7leQrVIi49rJfPD33ORFQBxRCaT
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_032210_691884_CD9439C2 
X-CRM114-Status: GOOD (  20.44  )
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

T24gOS8xOS8yNSAxOToxNywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRnJlaXRhZywgMTku
IFNlcHRlbWJlciAyMDI1LCAwMTo1Nzo1NyBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBz
Y2hyaWViIEZVS0FVTUkgTmFva2k6Cj4+IEhpIEhlaWtvLCBFZCwKPj4KPj4gT24gOS8xOS8yNSAw
MToxOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+PiBBbSBEb25uZXJzdGFnLCAxOC4gU2VwdGVt
YmVyIDIwMjUsIDE3OjIzOjA0IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIg
RWQgVzoKPj4+PiBPbiAxOC8wOS8yMDI1IDA1OjUzLCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+Pj4+
PiBIaSBFZCwKPj4+Pj4KPj4+Pj4gVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciB3b3JrLgo+
Pj4+Pgo+Pj4+PiBPbiA5LzE3LzI1IDIwOjQ5LCBFZCBXaWxkZ29vc2Ugd3JvdGU6Cj4+Pj4+PiBU
aGUgcmszNTY2IGhhcyBtdWx0aXBsZXhlZCBwaW5zIGFuZCB0aGUgdWFydHMgY2FuIGJlIG1vdmVk
IHRvIGEgY2hvaWNlCj4+Pj4+PiBvZiAyIHBpbiBncm91cHMuIFRoZSBkZWZhdWx0IHJrMzU2eC1i
YXNlLmR0c2kgYXBwZWFycyB0byBkZWZhdWx0IHRvIG11eDAKPj4+Pj4+IGZvciBhbGwgdWFydHMs
IGhvd2V2ZXIsIHNwZWNpZmljIGhhcmR3YXJlIG1pZ2h0IGNob29zZSB0byBpbXBsZW1lbnQKPj4+
Pj4+IGFsdGVybmF0aXZlcwo+Pj4+Pj4KPj4+Pj4+IFRoZSBSYWR4YSB6ZXJvIDMgc2hvd3MgdGhh
dCBpcyB1c2VzIE0xIGZvciB1YXJ0czoKPj4+Pj4+IC0gdWFydDQKPj4+Pj4+IC0gdWFydDUKPj4+
Pj4+IC0gdWFydDkKPj4+Pj4+Cj4+Pj4+PiBUaGVzZSBhcmVuJ3Qgbm9ybWFsbHkgZW5hYmxlZCwg
YnV0IHdlIHNob3VsZCBhdCBsZWFzdCBjb3JyZWN0IHRoZQo+Pj4+Pj4gZGVmYXVsdCBwaW5jdHJs
IGRlZmluaXRpb25zLiBXaXRob3V0IHRoZXNlIGNoYW5nZXMgdGhlcmUgd2lsbCBiZQo+Pj4+Pj4g
Y29uZmxpY3RzIHdpdGggbW1jMC9tbWMxLCBsZWFkaW5nIHRvIHRoZSBTRCBvciBlTU1DIGdvaW5n
IG1pc3NpbmcuCj4+Pj4+Cj4+Pj4+IFNvcnJ5LCBidXQgd2h5IGRvIHdlIG5lZWQgdGhlc2UgZGVm
aW5pdGlvbnMgZm9yIGRpc2FibGVkIG5vZGVzPwo+Pj4+Pgo+Pj4+PiBPciB3aHkgZG9uJ3Qgd2Ug
ZG8gc2ltaWxhciBkZWZpbml0aW9ucyBmb3Igbm9kZXMgb3RoZXIgdGhhbiB1YXJ0Pwo+Pj4+PiBG
b3IgZXhhbXBsZSwgUFdNMTIsIEkyUzMsIGFuZCBTUEkzIGFsc28gdXNlIE0xLiBBcmUgdGhleSBu
b3QgcmVsYXRlZCB0byBTRC9lTU1DIGFuZCB0aGVyZWZvcmUKPj4+Pj4gZG9uJ3QgbmVlZCB0byBi
ZSBkZWZpbmVkPwo+Pj4+Pgo+Pj4+PiBJZiB1c2VycyB3YW50IHRvIHVzZSBVQVJUcyBvbiBwaW4g
aGVhZGVycywgdGhleSB3aWxsIHJlZmVyIHRvIHRoZSBjb3JyZWN0IGRvY3VtZW50YXRpb25bMV0g
dG8KPj4+Pj4gZGV0ZXJtaW5lIHdoaWNoIHBpbnMgYXJlIFVBUlRzIGFuZCB3aWxsIG9mIGNvdXJz
ZSB3cml0ZSB0aGUgY29ycmVjdCBwaW5jdHJsIGRlZmluaXRpb24uCj4+Pj4+Cj4+Pj4+IFsxXSBo
dHRwczovL2RvY3MucmFkeGEuY29tL2VuL3plcm8vemVybzMvaGFyZHdhcmUtZGVzaWduL2hhcmR3
YXJlLWludGVyZmFjZSNncGlvLWludGVyZmFjZQo+Pj4+Pgo+Pj4+PiBCZXN0IHJlZ2FyZHMsCj4+
Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IFBlcnNvbmFsbHksIGFuZCBJJ20gc2F5aW5nIHRoaXMgYXMgYSB1
c2VyIHdobyBpcyB0ZWNobmljYWwgZW5vdWdoIHRvIGZpeCB0aGUgZGVmaW5pdGlvbnMsIGl0IHRv
b2sgbWUKPj4+PiBxdWl0ZSBhIGZldyBkYXlzIHRvIGZpZ3VyZSBvdXQgd2hhdCB3YXMgd3Jvbmcg
d2l0aCB0aGUgZGVmaW5pdGlvbnMgYW5kIHVuZGVyc3RhbmQgdGhlIGludHJpY2F0ZSB0cmVlCj4+
Pj4gb2YgZHRzaSBpbmNsdWRlcywgdG8gZmluYWxseSBmaWd1cmUgb3V0IHdoeSBJIGNvdWxkbid0
IGp1c3QgZG8gYSAic3RhdHVzID0gIm9rYXkiOyIgdG8gZW5hYmxlIHRoZQo+Pj4+IFVBUlRzLi4u
ICh3aGljaCBpcyByb3VnaGx5IHdoYXQgaXMgc2hvd24gaW4gc2V2ZXJhbCByYWR4YSBzdXBwbGll
ZCBvdmVybGF5cyB0byBlbmFibGUgdWFydHMgb24KPj4+PiB2YXJpb3VzIGJvYXJkcykKPj4+Pgo+
Pj4+IFNvIG15IHZvdGUgd291bGQgYmUgdG8gY29ycmVjdGx5IGRlZmluZSBhbGwgdGhlIGhhcmR3
YXJlIGZvciBhIGdpdmVuIGJvYXJkLiBUaGVuIHVzZXJzIGNhbiBzaW1wbHkgZG8KPj4+PiBhIHN0
YXR1cz0ib2theSIgdG8gZW5hYmxlIGFuZCBvZmYgdGhleSBnby4KPj4+Cj4+PiBBbmQgSSdkIGFn
cmVlIHdpdGggdGhhdCBhcmd1bWVudC4gU2V0dGluZyB1cCB0aGUgbmVlZGVkIHBpbmN0cmwgc2V0
dGluZ3MKPj4+IGZvciB0aGUgcGVyaXBoZXJhbHMgZGVzY3JpYmVkIGluIHRoZSBkZXZpY2UgZG9j
dW1lbnRhdGlvbgo+Pj4gKCBodHRwczovL2RvY3MucmFkeGEuY29tL2VuL3plcm8vemVybzMvaGFy
ZHdhcmUtZGVzaWduL2hhcmR3YXJlLWludGVyZmFjZSNncGlvLWludGVyZmFjZSApCj4+Pgo+Pj4g
aXMgdGhlIHNlbnNpYmxlIHRoaW5nIHRvIGRvLiBXaGlsZSBrZWVwaW5nIHRoZSBwZXJpcGhlcmFs
cyBpdHNlbGYgZGlzYWJsZWQKPj4+IGFuZCBmb3IgdGhlIHVzZXIgdG8gZGVjaWRlIHdoaWNoIHBl
cmlwaGVyYWwgdG8gZW5hYmxlLgo+Pgo+PiBJJ20gbm90IHN0cm9uZ2x5IG9wcG9zZWQgdG8gdGhp
cyBwb2xpY3ksIGJ1dCBJIHRob3VnaHQgaWYgeW91J3JlIGdvaW5nCj4+IHRvIGRvIHRoaXMsIHlv
dSBzaG91bGQgZG8gaXQgZm9yIGV2ZXJ5dGhpbmcsIG5vdCBqdXN0IFVBUlRzLgo+IAo+IHllcywg
ZXhhY3RseQo+IFNvIHBhdGNoZXMgZm9yIHRoZSBvdGhlciBoZWFkZXIgcGVyaXBoZXJhbHMgd2Vs
Y29tZSA6LSkgLgo+IAo+IEJ1dCBzdGlsbCBpdCdzIG5pY2UgdG8gZG8gaXQgaW4gc3RlcHMgbGlr
ZSB0aGlzIG9uZSwgYXMgaXQgbWFrZXMgcmV2aWV3aW5nIGVhc2llci4KCkkgYWdyZWUuCgpCZXN0
IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28u
LCBMdGQuCgo+IAo+IAo+IEhlaWtvCj4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
