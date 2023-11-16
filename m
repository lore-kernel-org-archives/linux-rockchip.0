Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C136C197A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 08:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwgptBA2ez0vPm0LYMkIcFNLaoZzOA+ljm4qsS0PI9Q=; b=rM62Ulv4SYOdTX
	0G4E/owUH5Fype6+6jTRewPeWv43UEnCZ61zFcXil5FHSzgTo6hT+DimVoLA3oV92ngx0TeiPZe9A
	qCQYRGRau3f17+Z7ORv7oDb0zI0tim4i06moKQDZodOnJWhz0X96Vl+ASPRfW5kb4/z5tFgj9AKrj
	p1LQIqDb/pCuklS7dQZJTz8ZzH8ERPxXv60HLlNbXs+9TWSmXvAhR6VWxgxGG/YOWHDu7K72TdWg7
	OAEYGtNRhNC13QxZynMKWU7eoAiJLqW7Ha3Mie9Z2IRTs27gq4Tmqa2pgkP0IC7iWiSxse36a25zb
	B2OmSiz35KdagaTgGXgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3XJ3-002ooI-1t;
	Thu, 16 Nov 2023 08:00:57 +0000
Received: from mail-m12776.qiye.163.com ([115.236.127.76])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3XJ0-002onX-0p
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 08:00:55 +0000
DKIM-Signature: a=rsa-sha256;
	b=KWqvvflA9+/axwizsRSRSGyg5fk6IiUM3lVg4IWeuLgSTHP3EQwrAHevkwLc9fj1YaVp0MhVr5sxIW+M6U3bH5A8RWx1FFuNaXhOfQX4jKKO0eplRABeNejJiZklHazkzs1VNUFwz0Ei+cMawQgO4+qE4HMijB789pKyiY4iVWo=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=tb1X4KpeIfR7YuU+9FGfgBz5jQqP4HMT01BOCR63WJc=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id A79AA7801AF;
	Thu, 16 Nov 2023 16:00:06 +0800 (CST)
Message-ID: <d6c77064-bae5-41c3-b49f-8c5c3a076a6b@rock-chips.com>
Date: Thu, 16 Nov 2023 16:00:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
 chris.obbard@collabora.com
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
 <20231115090823.GY3359458@pengutronix.de>
 <229557d7-beec-44e0-9ee6-4a962b33ec79@rock-chips.com>
 <20231116075015.GG3359458@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231116075015.GG3359458@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxkZGVZKH0weGEofGR9NQ0pVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8bd724fb70b24fkuuua79aa7801af
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NU06Pzo6Pzw8KUIOMiocFBA0
	SyNPCxRVSlVKTEtLSklKTUtMT0NCVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT05NTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_000054_433911_18E694F0 
X-CRM114-Status: GOOD (  19.41  )
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

SGkgU2FzY2hhOgoKT24gMTEvMTYvMjMgMTU6NTAsIFNhc2NoYSBIYXVlciB3cm90ZToKPiBPbiBU
aHUsIE5vdiAxNiwgMjAyMyBhdCAwMzoyNDo1NFBNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4+
IAljYXNlIFJPQ0tDSElQX1ZPUDJfRVBfSERNSTA6Cj4+PiAJY2FzZSBST0NLQ0hJUF9WT1AyX0VQ
X0hETUkxOgo+Pj4gCQkuLi4KPj4+IH0KPj4+Cj4+PiB3b3VsZCBsb29rIGEgYml0IGJldHRlciBv
dmVyYWxsLgo+Pj4KPj4+PiArCQkvKgo+Pj4+ICsJCSAqIEsgPSAyOiBkY2xrX2NvcmUgPSBpZl9w
aXhjbGtfcmF0ZSA+IGlmX2RjbGtfcmF0ZQo+Pj4+ICsJCSAqIEsgPSAxOiBkY2xrX2NvcmUgPSBo
ZG1pZV9lZHBfZGNsayA+IGlmX3BpeGNsa19yYXRlCj4+Pj4gKwkJICovCj4+Pj4gKwkJaWYgKG91
dHB1dF9tb2RlID09IFJPQ0tDSElQX09VVF9NT0RFX1lVVjQyMCkgewo+Pj4+ICsJCQlkY2xrX3Jh
dGUgPSBkY2xrX3JhdGUgPj4gMTsKPj4+PiArCQkJSyA9IDI7Cj4+Pj4gKwkJfQo+Pj4+ICsKPj4+
PiArCQlpZl9waXhjbGtfcmF0ZSA9IChkY2xrX2NvcmVfcmF0ZSA8PCAxKSAvIEs7Cj4+Pj4gKwkJ
aWZfZGNsa19yYXRlID0gZGNsa19jb3JlX3JhdGUgLyBLOwo+Pj4+ICsKPj4+PiArCQkqaWZfcGl4
Y2xrX2RpdiA9IGRjbGtfcmF0ZSAvIGlmX3BpeGNsa19yYXRlOwo+Pj4+ICsJCSppZl9kY2xrX2Rp
diA9IGRjbGtfcmF0ZSAvIGlmX2RjbGtfcmF0ZTsKPj4+IE5vdCBzdXJlIGlmIHRoaXMgd2lsbCBj
aGFuZ2Ugd2l0aCBmdXR1cmUgZXh0ZW5zaW9ucywgYnV0IGN1cnJlbnRseQo+Pj4gKmlmX3BpeGNs
a19kaXYgd2lsbCBhbHdheXMgYmUgMiBhbmQgKmlmX2RjbGtfZGl2IHdpbGwgYWx3YXkgYmUgNCwK
Pj4+IHNvIG1heWJlIGJldHRlciB3cml0ZSBpdCBsaWtlIHRoaXMKPj4KPj4gWWVzLCB0aGUgY2Fs
Y3VsYXRpb24gb2YgKmlmX3BpeGNsa19kaXYgaXMgYWx3YXlzIDIgYW5kICppZl9kY2xrX2RpdiBp
cyBhbHdheXMgNCwKPj4KPj4gSSB0aGluayBjYWxjdWxhdGlvbiBmb3JtdWxhIGNhbiBnaXZlIHVz
IGEgY2xlYXIgZXhwbGFuYXRpb24gd2h5IGlzIDIgb3IgNC4KPj4KPj4gY29uc2lkZXJpbmcgdGhl
IGdyZWF0IHBvd2VyIG9mIHJrMzU4OCwgaSB0aGluayBpdCBjYW4gY2FsY3VsYXRlIGl0IHZlcnkg
ZWFzeS4KPiBTdXJlIGl0IGNhbi4gTXkgY29uY2VybiBpcyBub3QgdGhlIENQVSB0aW1lIGl0IHRh
a2VzIHRvIGRvIHRoYXQKPiBlcXVhdGlvbiwgYnV0IG1vcmUgdGhlIHJlYWRhYmlsaXR5IG9mIHRo
ZSBjb2RlLiBGb3IgbWUgYXMgYSByZWFkZXIgaXQKPiBtaWdodCBiZSBtb3JlIGVhc2lseSBhY2Nl
cHRhYmxlIHRoYXQgYm90aCBkaXZpZGVycyBoYXZlIGZpeGVkIHZhbHVlcwo+IHRoYW4gaXQgaXMg
dG8gdW5kZXJzdGFuZCB0aGUgZXF1YXRpb24uCj4KPiBZb3VyIG1pbGVhZ2UgbWF5IHZhcnksIEkg
d29uJ3QgaW5zaXN0IG9uIHRoaXMuCgoKT3IgSSBtYWtlIGl0IGFzIGZpeGVkIHZhbHVlcywgYW5k
IGxlYXZlIHRoZSBjYWxjdWxhdGlvbiBmb3JtdWxhIGFzIGNvbW1lbnRzID8KCj4KPj4+Cj4+Pj4g
KwkJKmRjbGtfY29yZV9kaXYgPSBkY2xrX3JhdGUgLyBkY2xrX2NvcmVfcmF0ZTsKPj4+ICpkY2xr
X2NvcmVfZGl2IGlzIGNhbGN1bGF0ZWQgdGhlIHNhbWUgd2F5IGZvciBhbGwgY2FzZXMuIFlvdSBj
b3VsZCBwdWxsCj4+PiB0aGlzIG91dCBvZiB0aGUgaWYvZWxzZS4KPj4gT2theSwgd2lsbCBkby4K
Pj4+PiArCX0gZWxzZSBpZiAodm9wMl9vdXRwdXRfaWZfaXNfZWRwKGlkKSkgewo+Pj4+ICsJCS8q
IGVkcF9waXhjbGsgPSBlZHBfZGNsayA+IGRjbGtfY29yZSAqLwo+Pj4+ICsJCWlmX3BpeGNsa19y
YXRlID0gdl9waXhjbGsgLyBLOwo+Pj4+ICsJCWlmX2RjbGtfcmF0ZSA9IHZfcGl4Y2xrIC8gSzsK
Pj4+IGlmX2RjbGtfcmF0ZSBpcyB1bnVzZWQgaGVyZS4KPj4KPj4gSXQgd2lsbCBiZSByZW1vdmVk
IGluIG5leHQgdmVyc2lvbi4KPj4KPj4+PiArCQlkY2xrX3JhdGUgPSBpZl9waXhjbGtfcmF0ZSAq
IEs7Cj4+Pj4gKwkJKmRjbGtfY29yZV9kaXYgPSBkY2xrX3JhdGUgLyBkY2xrX2NvcmVfcmF0ZTsK
Pj4+PiArCQkqaWZfcGl4Y2xrX2RpdiA9IGRjbGtfcmF0ZSAvIGlmX3BpeGNsa19yYXRlOwo+Pj4+
ICsJCSppZl9kY2xrX2RpdiA9ICppZl9waXhjbGtfZGl2Owo+Pj4gQm90aCAqaWZfcGl4Y2xrX2Rp
diBhbmQgKmlmX2RjbGtfZGl2IHdpbGwgYWx3YXlzIGJlIDEuCj4+IEFjdHVhbGx5LMKgIHRoZXkg
d2lsbCBiZSB0aGUgdmFsdWUgb2YgSyBoZXJlLMKgIGlmIGl0IHdvcmsgYXQgc3BsaXQgbW9kZSh0
d28KPj4KPj4gZWRwIGNvbm5lY3QgdG8gb25lIFZQLCBvbmUgc2hvdyB0aGUgaW1hZ2UgZm9yIGxl
ZnQgaGFsZiwgb25lIGZvciByaWdodCBoYWxmLAo+Pgo+PiBhIGZ1bmN0aW9uIGxpa2UgYSBkdWFs
IGNoYW5uZWwgbWlwaSBkc2kpLgo+Pgo+PiBJIGtub3cgaXQgc3BsaXQgbW9kZSBpcyBub3Qgc3Vw
cG9ydGVkIGJ5IHRoZSBjdXJyZW50IG1haW5saW5lLCBidXQgaSB0aGluayBrZWVwCj4gT2suCj4K
PiBTYXNjaGEKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
