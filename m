Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62225C531DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Aug 2024 20:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NaRfUHC4CEwD4kfaIadjCDJl6X/IR57VwDnGSb0dzxs=; b=gYamDHmli3PvF/OIeO9DAU9QMn
	3uz7xqUE0Bup0jHMBXk1pXaQTCVbT6xq+DKmmzMbKHOYj2yK7Bxas4ytXEgGA5LHtaMq42utv0zWR
	FpHK91Gzb17zFY0KHg6RSd1qWiEV9IERlQCi1bhkrMwKQxubyWzMiXTm8gpSFCoRk+aQxPFmG+wiF
	Hs+gwCKwBiMVm3K/kNWT5lSD0WDKpGkcOEdzr6hZ1RMY/3WBAPImVfCMkyzOUMXt+P7VatuxQ3jSk
	1GC182FY+yI/f9FY4oLaBwAi3PnVsWpbN3+2N5Nci+XxYiletkiMTgnZYxng1mU0s/IvhN9Pdxmd6
	Bwj8jinQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfPmu-0000000FhIf-3n8u;
	Sat, 17 Aug 2024 20:12:36 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfPms-0000000FhHT-16wE
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Aug 2024 20:12:35 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723925552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SCQWHtPErW27nymGw3s2lzlzfui64bUTLqoqbf2frlY=;
	b=iWVXMXCqrwgbQUQ2iLhNZQGs/t/SP2MaiQsMZWx7Q4SaviGQOHAGDMCfRrAI9qLChJ4K4Z
	NouhEYeCNu6m1rn7lcWEUvAw1fsGK3xdPtMUkSkfBmBQiVGS581ZvIONejpzD6b6JxqH2/
	7o1iQOe03r6lWr3Ol5W48EgNcds8xM6LUZFhspW779o2DWre4Mrp7yZowVUxqYEnAqQq3a
	BjyqhL6bbu+s3hhqE14bffdvJQh4zQdoFqQXlneq9yL33V/aX2mH/TydvF8Ny3w9kitICW
	Kt3p7XPqpobCuonpsVGI9sSY7lruphQYtxGDwN5cYSVFVJPTQyC7IZY+/n4tUA==
Date: Sat, 17 Aug 2024 22:12:31 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
In-Reply-To: <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
 <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
 <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
Message-ID: <79b071b69f0a3e5faac2c3daf1a4f272@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240817_131234_673605_34F6A6F7 
X-CRM114-Status: GOOD (  11.99  )
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

T24gMjAyNC0wOC0xNyAyMjowNCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBPbiA4LzE4LzI0IDA0
OjUxLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+IE9uIDIwMjQtMDgtMTcgMjE6MjgsIERyYWdhbiBT
aW1pYyB3cm90ZToKPj4+IE9uIDIwMjQtMDgtMTcgMDA6MjAsIEZVS0FVTUkgTmFva2kgd3JvdGU6
Cj4+Pj4gT24gOC8xNy8yNCAwNzoxMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+Pj4+IEFtIEZy
ZWl0YWcsIDE2LiBBdWd1c3QgMjAyNCwgMjM6MzQ6MjkgQ0VTVCBzY2hyaWViIEZVS0FVTUkgTmFv
a2k6Cj4+Pj4+PiBSYWR4YSBST0NLIFBpIEUgdjMuMCBpcyBhIGNvbXBhY3QgbmV0d29ya2luZyBT
QkNbMV0gdXNpbmcgdGhlIAo+Pj4+Pj4gUm9ja2NoaXAKPj4+Pj4+IFJLMzMyOCBjaGlwIHRoYXQg
c2hpcHMgaW4gYSBudW1iZXIgb2YgUkFNL2VNTUMvV2lGaS9CVCAKPj4+Pj4+IGNvbmZpZ3VyYXRp
b25zOgo+Pj4+Pj4gCj4+Pj4+PiAtIFJvY2tjaGlwIFJLMzMyOCBTb0MKPj4+Pj4+IC0gUXVhZCBB
NTMgQ1BVCj4+Pj4+PiAtIDUxMk1CLzFHQi8yR0IgRERSNCBSQU0KPj4+PiAoc25pcCkKPj4+Pj4g
Y2FuIHlvdSBwbGVhc2UgZGVzY3JpYmUgd2hhdCBpcyBkaWZmZXJlbnQgaW4gdGhhdCB2MyBib2Fy
ZD8KPj4+Pj4gRGVzY3JpYmluZyB3aGF0IGlzIGRpZmZlcmVudCB0byByZXF1aXJlIGEgc2VwYXJh
dGUgYm9hcmQgc2hvdWxkJ3ZlIAo+Pj4+PiBiZWVuCj4+Pj4+IHBhcnQgb2YgdGhlIGNvbW1pdCBt
ZXNzYWdlLgo+Pj4+PiAKPj4+Pj4gQmVjYXVzZSBmcm9tIHRob3NlIGNoYW5nZXMsIHRoZSBib3R0
b20gbGluZSBjdXJyZW50bHkgc2VlbXMgdG8gYmUKPj4+Pj4gdGhlIHNhbWUgYm9hcmQgd2l0aCBz
d2FwcGVkIG1tYyBhbGlhc2VzPwo+Pj4+IAo+Pj4+IGl0J3MgbmV3IGJvYXJkIHdoaWNoIHVzZXMg
RERSNCBSQU0gKGluc3RlYWQgb2YgRERSMyBSQU0gb24gUGkgRSkuCj4+Pj4gZGlmZmVyZW50IGJv
b3Rsb2FkZXIgKFUtQm9vdCkgaXMgcmVxdWlyZWQuCj4+Pj4gCj4+Pj4gYWRkaW5nIHYzIGR0cyBz
ZWVtcyBub3QgdG8gYmUgc28gaW1wb3J0YW50IGZvciBMaW51eCwgYnV0IGl0J3MgdmVyeQo+Pj4+
IGltcG9ydGFudCBmb3IgVS1Cb290IGFuZCBPcGVuV3J0KGl0IGluY2x1ZGVzIGJvb3Rsb2FkZXIg
Zm9yCj4+Pj4gZGlzdHJpYnV0ZWQgYmluYXJ5KS4KPj4+IAo+Pj4gQXJlbid0IHRoZXJlIGRpZmZl
cmVudCBtZXRob2RzIHRoYXQgYWxsb3cgc3VjaCBib2FyZCB2YXJpYW50cyB0byBiZQo+Pj4gc3Vw
cG9ydGVkIGluIFUtQm9vdCwgd2l0aCBubyBuZWVkIGZvciBhIHNlcGFyYXRlIERUIGluIHRoZSBr
ZXJuZWw/Cj4+PiBJSVJDLCB0aGVyZSBhcmUgYWxyZWFkeSBtb3JlIHRoYW4gYSBmZXcgZXhhbXBs
ZXMgb2Ygc3VjaCBib2FyZCAKPj4+IHZhcmlhbnRzLAo+Pj4gd2hpY2ggcmVxdWlyZSBkaWZmZXJl
bnQgRFJBTSBpbml0aWFsaXphdGlvbiwgd2hpY2ggaXMgY292ZXJlZCBpbiAKPj4+IFUtQm9vdAo+
Pj4gYnkgcHJvdmlkaW5nIGRpZmZlcmVudCBidWlsZHMgdGhhdCB1c2UgdGhlIHNhbWUgRFQuCj4+
IAo+PiBBcyBhbiBleGFtcGxlLCBwbGVhc2UgaGF2ZSBhIGxvb2sgYXQgdGhlIGZvbGxvd2luZyBm
aWxlcyBpbiBVLUJvb3Q6Cj4+IAo+PiAtIGFyY2gvYXJtL2R0cy9yazMzOTktbmFub3BpLW00LXUt
Ym9vdC5kdHNpCj4+IC0gYXJjaC9hcm0vZHRzL3JrMzM5OS1uYW5vcGktbTQtMmdiLXUtYm9vdC5k
dHNpCj4+IC0gY29uZmlncy9uYW5vcGktbTQtcmszMzk5X2RlZmNvbmZpZwo+PiAtIGNvbmZpZ3Mv
bmFub3BpLW00LTJnYi1yazMzOTlfZGVmY29uZmlnCj4+IAo+PiBCYXNpY2FsbHksIHRoZXJlJ3Mg
bm8gbmVlZCBmb3Igc2VwYXJhdGUgRFRzIGluIHRoZSBrZXJuZWwsIGp1c3QgdG8gCj4+IHN1cHBv
cnQKPj4gYm9hcmQgdmFyaWFudHMgd2l0aCBkaWZmZXJlbnQgRFJBTSB0eXBlcyBpbiBVLUJvb3Qu
Cj4gCj4gT3BlbldydCBmaXJtd2FyZSB1cGdyYWRpbmcgdG9vbCAoc3lzdXBncmFkZSkgcmVmZXJz
ICJjb21wYXRpYmxlIgo+IHN0cmluZyB0byB2YWxpZGF0ZSBuZXcgZmlybXdhcmUgZmlsZSBpcyBz
dXJlbHkgImZvciB0aGlzIGJvYXJkIi4KPiAKPiBjdXJyZW50bHkgYm90aCBQaSBFIGR0cyBoYXZl
ICJyYWR4YSxyb2NrcGktZSIsIGl0IG1ha2VzIGZsYXNoaW5nIHdyb25nCj4gZmlybXdhcmUgKGlu
Y2x1ZGUgYm9vdGxvYWVyLCBVLUJvb3QpIHBvc3NpYmxlLgoKQ291bGQgeW91LCBwbGVhc2UsIGV4
cGxhaW4gd2hhdCdzIHRoZSBhY3R1YWwgaXNzdWUgd2l0aCBPcGVuV3J0PyAgSSBkaWQKcmVhZCBz
b21lIEdpdEh1YiBpc3N1ZSB0aGF0IGRlc2NyaWJlZCBpdCwgSUlSQywgYnV0IEkgd2FzIHVuYWJs
ZSB0byAKZnVsbHkKdW5kZXJzdGFuZCB3aGF0J3MgdGhlIHVuZGVybHlpbmcgaXNzdWUuCgo+IFJh
ZHhhIFJPQ0sgUGkgRSB2MS54KEREUjMpIGFuZCBST0NLIFBpIEUgdjMoRERSNCkgYXJlIGRpZmZl
cmVudAo+IGluY29tcGF0aWJsZSBib2FyZHMsIGl0IG11c3QgaGF2ZSBkaWZmZXJlbnQgImNvbXBh
dGlibGUiIHN0cmluZy4KCldlbGwsIHRoZSBhYm92ZS1tZW50aW9uZWQgTmFubyBQaSBNNCBib2Fy
ZHMgc2hhcmUgdGhlIHNhbWUgRFQgYW5kIHRoZSAKc2FtZQoiY29tcGF0aWJsZSIgdmFsdWUsIGJl
Y2F1c2UgZm9yIGFsbCBjb25zdW1lcnMgb2YgdGhlIERULCBleGNlcHQgZm9yIApVLUJvb3QKdGhh
dCBjYW4gYWxyZWFkeSBoYW5kbGUgdGhlIGRpZmZlcmVuY2VzLCB0aGV5IGFyZSB0aGUgc2FtZSBi
b2FyZHMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
