Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD360C197BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaGc0vaAynM5WjmZgaEgCVaojnGl8Veawpn4alsN8+0=; b=KnrvRWnOEnS3Ia
	OGi2UOxE4qdSrAJfg0LLey0s9vUyV3f1LEhbfC3V9mCGrws0DMrKpwAR+pVlZAAYqecIJFZzARTFW
	JqpYMWrZVSKuUevLRupxwfwAc7bN3jOZ4OtZMjAyy9tV2GZ3i9li5muSRT/bpUcbvU8Np68UGSI+u
	FNJ6F5weet8iVNjZgMYD2bkflLTmUUwlhadfozZgN6h/asrjrVaC4Hbt9SVHWRcpgPdriFg6Pf5KJ
	ccij2jQKiL9tiaR8vVN6Vyb+QQLtdDzAnIjn+jcosPYl7JIzXbl0MII91r1zoBKJA3WVhEpAGTVA2
	FYh6GXvMjOpv4O657HfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncYD-00000007GWq-2oyL;
	Thu, 27 Feb 2025 11:59:37 +0000
Received: from mail-m49251.qiye.163.com ([45.254.49.251])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnc25-00000007AvP-3QjU;
	Thu, 27 Feb 2025 11:26:27 +0000
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c661e153;
	Thu, 27 Feb 2025 19:26:22 +0800 (GMT+08:00)
Message-ID: <d77bfb17-d875-4bd2-abb4-e9ff012d7bfc@rock-chips.com>
Date: Thu, 27 Feb 2025 19:26:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] thermal: rockchip: Support the rk3562 SoC in thermal
 driver
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 Shaohan Yao <shaohan.yao@rock-chips.com>, linux-pm@vger.kernel.org,
 Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Rui <rui.zhang@intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20241224094015.3816301-1-kever.yang@rock-chips.com>
 <20241224094015.3816301-2-kever.yang@rock-chips.com>
 <7f17cc55-a741-4bb8-9513-0580ca6fedd3@linaro.org> <17758610.geO5KgaWL5@diego>
 <e36a5771-d277-41d3-af9c-c5841c4060a2@linaro.org>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <e36a5771-d277-41d3-af9c-c5841c4060a2@linaro.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlDQlZOGEJJS0pKHk0eShhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9547285bae03afkunmc661e153
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NUk6CQw*CDIJTg0zATUcQlFW
	Nh4aCgJVSlVKTE9LTU5OTkNIT05OVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISExMNwY+
DKIM-Signature: a=rsa-sha256;
	b=i5P3hTgFm+CnEdpL/8tNOszN+11tNwkNdYMuDt9fVuC8Q03OnD2woX8xplYkHaD0wN/kiOLdzgIqdtrYKqSTItqn0yZDr6UsDoeJEsJGMbFo4TEeXb1PWyBrA1oaHfIEP59NHeTDvRIc28/dGrSwmrds+jl2u6uyf9O7NJzGDKw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=6AqLQisyWEDMQ8wooXXEp+oSjAf7xuTYbpqqo/XRzD8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_032626_071936_0EB1AA5E 
X-CRM114-Status: GOOD (  17.68  )
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

SGkgRGFuaWVsLAoKT24gMjAyNS8yLzE5IDAzOjQzLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPiBP
biAxMS8wMi8yMDI1IDExOjE5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gSGV5IERhbmllbCwK
Pj4KPj4gQW0gRGllbnN0YWcsIDExLiBGZWJydWFyIDIwMjUsIDEwOjM2OjA5IE1FWiBzY2hyaWVi
IERhbmllbCBMZXpjYW5vOgo+Pj4gT24gMjQvMTIvMjAyNCAxMDo0MCwgS2V2ZXIgWWFuZyB3cm90
ZToKPj4+PiBGcm9tOiBTaGFvaGFuIFlhbyA8c2hhb2hhbi55YW9Acm9jay1jaGlwcy5jb20+Cj4+
Pj4KPj4+PiBUaGVyZSBhcmUgb25lIFRlbXBlcmF0dXJlIFNlbnNvciBvbiByazM1NjIsIGNoYW5u
ZWwgMCBpcyBmb3IgY2hpcC4KPj4+Cj4+PiBBIGJpdCBzdGluZ3kgaW4gdGVybXMgb2YgZGVzY3Jp
cHRpb24sIG5vID8KPj4+Cj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFNoYW9oYW4gWWFvIDxzaGFv
aGFuLnlhb0Byb2NrLWNoaXBzLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBLZXZlciBZYW5nIDxr
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgo+PiBbLi4uXQo+Pj4+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IHRzYWRjX3RhYmxlIHJrMzU2Ml9jb2RlX3RhYmxlW10gPSB7Cj4+Pj4gK8KgwqDCoCB7MCwg
LTQwMDAwfSwKPj4+PiArwqDCoMKgIHsxNDE5LCAtNDAwMDB9LAo+Pj4+ICvCoMKgwqAgezE0Mjgs
IC0zNTAwMH0sCj4+Pj4gK8KgwqDCoCB7MTQzNiwgLTMwMDAwfSwKPj4+PiArwqDCoMKgIHsxNDQ1
LCAtMjUwMDB9LAo+Pj4+ICvCoMKgwqAgezE0NTMsIC0yMDAwMH0sCj4+Pj4gK8KgwqDCoCB7MTQ2
MiwgLTE1MDAwfSwKPj4+PiArwqDCoMKgIHsxNDcwLCAtMTAwMDB9LAo+Pj4+ICvCoMKgwqAgezE0
NzksIC01MDAwfSwKPj4+PiArwqDCoMKgIHsxNDg3LCAwfSwKPj4+PiArwqDCoMKgIHsxNDk2LCA1
MDAwfSwKPj4+PiArwqDCoMKgIHsxNTA0LCAxMDAwMH0sCj4+Pj4gK8KgwqDCoCB7MTUxMiwgMTUw
MDB9LAo+Pj4+ICvCoMKgwqAgezE1MjEsIDIwMDAwfSwKPj4+PiArwqDCoMKgIHsxNTI5LCAyNTAw
MH0sCj4+Pj4gK8KgwqDCoCB7MTUzOCwgMzAwMDB9LAo+Pj4+ICvCoMKgwqAgezE1NDYsIDM1MDAw
fSwKPj4+PiArwqDCoMKgIHsxNTU1LCA0MDAwMH0sCj4+Pj4gK8KgwqDCoCB7MTU2MywgNDUwMDB9
LAo+Pj4+ICvCoMKgwqAgezE1NzIsIDUwMDAwfSwKPj4+PiArwqDCoMKgIHsxNTgwLCA1NTAwMH0s
Cj4+Pj4gK8KgwqDCoCB7MTU4OSwgNjAwMDB9LAo+Pj4+ICvCoMKgwqAgezE1OTgsIDY1MDAwfSwK
Pj4+PiArwqDCoMKgIHsxNjA2LCA3MDAwMH0sCj4+Pj4gK8KgwqDCoCB7MTYxNSwgNzUwMDB9LAo+
Pj4+ICvCoMKgwqAgezE2MjMsIDgwMDAwfSwKPj4+PiArwqDCoMKgIHsxNjMyLCA4NTAwMH0sCj4+
Pj4gK8KgwqDCoCB7MTY0MCwgOTAwMDB9LAo+Pj4+ICvCoMKgwqAgezE2NDgsIDk1MDAwfSwKPj4+
PiArwqDCoMKgIHsxNjU3LCAxMDAwMDB9LAo+Pj4+ICvCoMKgwqAgezE2NjYsIDEwNTAwMH0sCj4+
Pj4gK8KgwqDCoCB7MTY3NCwgMTEwMDAwfSwKPj4+PiArwqDCoMKgIHsxNjgyLCAxMTUwMDB9LAo+
Pj4+ICvCoMKgwqAgezE2OTEsIDEyMDAwMH0sCj4+Pj4gK8KgwqDCoCB7MTY5OSwgMTI1MDAwfSwK
Pj4+PiArwqDCoMKgIHtUU0FEQ1YyX0RBVEFfTUFTSywgMTI1MDAwfSwKPj4+PiArfTsKPj4+Cj4+
PiBNYXkgYmUgaXQgaXMgdGltZSB0byBvcHRpbWl6ZSBhbGwgdGhlc2UgdGFibGVzIG91dCBvZiB0
aGUgbWVtb3J5IAo+Pj4gZHJpdmVyPwo+Pj4KPj4+IEl0IGlzIHRoZSA5dGggdGFibGUgaW50cm9k
dWNlZC4KPj4KPj4ganVzdCB0byBzZWUgaWYgd2UgdGhpbmsgZGlmZmVyZW50bHksIHdoYXQgZG8g
eW91IGhhdmUgaW4gbWluZD8KPj4KPj4gRm9yIG1lIHRoZSBhZGMtdG8tdGVtcGVyYXR1cmUgY29u
dmVyc2lvbiBfaXNfIHBhcnQgb2YgdGhlIGh3LWJsb2NrIAo+PiBpdHNlbGYsCj4+IHNvIHNob3Vs
ZCBsaWtlbHkgbm90IHNwaWxsIGludG8gdGhlIGRldmljZXRyZWUsIGJ1dCB5b3UncmUgcmlnaHQs
IAo+PiBkZWZpbmluZwo+PiBhIGJpZyB0YWJsZSBmb3IgZWFjaCBzb2MgYWxzbyBpc24ndCByZWFs
bHkgZ3JlYXQuCj4+Cj4+IEZvciB0aGUgcmszNTYyIGluIHF1ZXN0aW9uLCB0aGUgc3RlcHBpbmcg
c2VlbXMgdG8gYmUgOCw5LDgsOSwuLi4uCj4+IHdoZXJlIGZvciB0aGUgcmszNTY4IHRoZSB2YWx1
ZSBzdGVwcGluZyBzZWVtcyB0byBiZSAzMiwzNiwzMiwzNiwuLi4KPj4gYW5kIGl0IGxvb2tzIHNp
bWlsYXIgZm9yIHRoZSBvdGhlciBzb2NzIHRvbywgd2l0aCB0aGUgZHJpdmVyIGlzIGFscmVhZHkK
Pj4gaW50ZXJwb2xhdGluZyBiZXR3ZWVuIHZhbHVlcyBpdCBzZWVtcy4KPj4KPj4gU28gZXZlbiBq
dXN0IGhhbHZpbmcgKG9yIG1vcmUpIGFsbCB0aGUgYmlnIHRhYmxlcyAoZHJvcHBpbmcgZXZlcnkg
c2Vjb25kCj4+IGVudHJ5IGZvciBleGFtcGxlKSBzaG91bGQgbm90IHJlYWxseSBsb29zZSB1cyBy
ZWFsIGdyYW51bGFyaXR5Lgo+Cj4gSXQgY2FuIGJlIGp1c3QgYSBmb3JtdWxhIHRvIGJlIHJldXNl
ZCBpbiB0aGUgYWRjX3RvX3RlbXAsIHRlbXBfdG9fYWRjIAo+IG9yIHByZWNvbXB1dGUgdGhlIHRh
YmxlIGZyb20gdGhlIGZvcm11bGE6Cj4KPiBGb3IgaW5zdGFuY2UgdGhlIGZvbGxvd2luZyBmb3Jt
dWxhczoKPgo+IHJrMzU4OF9jb2RlX3RhYmxlOgo+Cj4gwqDCoMKgwqB5ID0gKCh4XjIgKyAyMzMx
NXggLSA1OTQ5MzAwKSAqIDEwMCkgLyAyNDU3Cj4KPiByazM1NjhfY29kZV90YWJsZToKPgo+IMKg
wqDCoMKgeSA9ICgoeF4yIC0gMjY2MHggKyAxNTQ3NzEyKSAqIDYyNSkgLyAyNDQ4CkkgY2FuIHVu
ZGVyc3RhbmQsIGl0IGxvb2tzIG11Y2ggYmV0dGVyIGlmIHdlIGNhbiB1c2UgdGhlIGZvcm11bGEg
aW5zdGVhZCAKb2YgdGhlIHRhYmxlLgoKV2UgZ290IGFsbCB0aGVzZSBkYXRhIGZyb20gZGlmZmVy
ZW50IHZlbmRvci9mb3VuZHJ5ICzCoCBzb21lIG9mIHZlbmRvciBkbyAKcHJvdmlkZSB0aGUgZm9y
bXVsYSB3aGlsZSBvdGhlcnMgbm90LgoKQW5kIEkgdGhpbmsgdGhlcmUgaXMgYSBrZXkgaXNzdWUg
aXMgdGhhdCB0aGUgZm9ybXVsYSBtYXkgbm90IGZpdCBmb3IgYWxsIAp0aGUgc2l0dWF0aW9uLCBz
b21ldGltZXMgbmVlZCB0byBjYWxpYnJhdGUKCmFmdGVyIGNoaXBzIGFyZSBvdXQsIG9ubHkgdGhl
IHRhYmxlIGlzIGF2YWlsYWJsZSBpbiB0aGlzIGNhc2UuCgpBbmQgaW4gdGhpcyBjYXNlLCB3ZSBz
ZW5kIHRoZSB0YWJsZSBhcy1pcyBmcm9tIHRoZSB2ZW5kb3IuCgoKVGhhbmtzLAoKLSBLZXZlcgoK
Pgo+IGV0YyAuLi4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
