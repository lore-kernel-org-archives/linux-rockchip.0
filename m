Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C436DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 07:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBveHG1H0hekn5yM3kA3O9NJUI/37k0UZTwq9qf89KY=; b=X2Xtx4oURyP/Gf
	C/7efQyjBDdu8GzclP5oZqPPMEOlOdQXmUTzjSp1qOxzUGG+qCKhzrKOSxt2u+VjseClarJ3Teu2N
	u2Vd8pnh2WYQc5CUa/jFunJA32EnhLHPPmrF5HLRDvPxBH5sal+Yt8ZabWp9QJeRaylQd3r5MhtTR
	xJezaCtW06lN5LbRlEwGy0pSEw4AN+Seskyb1muCHBlaqv7jCAOIe4uzQ3o4AVJ/IeIkPJWASLe2S
	j1SV73qcJorqAto3/HvDPqPHQJp2X4mo8bU00KfFgUBoFlqO5gFB5dkzUO0PLCTNg1V9qHWadK/tZ
	9KU8CtQxEaPx+FQSYLVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZSZq-00EXZU-MN; Wed, 30 Mar 2022 07:17:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZSZe-00EXWQ-E5
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 07:17:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7A64BB81B2F;
 Wed, 30 Mar 2022 07:16:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B902CC340F0;
 Wed, 30 Mar 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648624615;
 bh=ztfSgyjlFw/ho0FfXN0FVdU92G7GdXlQfNj5fr0jS50=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=J3Lvxnh6gVEgNTbtGU50+wlt7GwCpqTVqWLeyvndZn6irNFW+qwJ7BEynX/SXZT29
 /VfA1LqLElPHcyuyceEtMnxZ0AX7Z4rVH4oTR6uDWANdJpp7cBkLJTBTmS1uhzsHM5
 /dvpryroBah9N/saW0YkopSDtv/eYBDDh7wOn/rX3TVUUSSJDUN5rBzRpWJ+1fG7+w
 5PO4buPLRKzC0Q5xgbhJnr9pugZ7MDdKAz/qf5djEgm9kYsBbWq+Pg5kY9tIPC66bx
 RiVzljeZ7rYwdF8D3gvceWbM7O0eWtC++8JhjNRQLGOC+TmTuPiOe7l9WZquU0fMjS
 7sOZ8Dxm046kA==
Message-ID: <97582126-1469-ce14-d552-5e2999472c5c@kernel.org>
Date: Wed, 30 Mar 2022 09:16:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: arm/rockchip.yaml - many separate entries instead of enums
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org
References: <ce367384-3d44-b7a9-06cd-1ca1f2ddf7e9@kernel.org>
 <1681233.QkHrqEjB74@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <1681233.QkHrqEjB74@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_001658_658234_6E95ADA4 
X-CRM114-Status: GOOD (  20.38  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjkvMDMvMjAyMiAyMjo1NCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGV5IDotKSAsCj4g
Cj4gQW0gRGllbnN0YWcsIDI5LiBNw6RyeiAyMDIyLCAxOTowNToyNCBDRVNUIHNjaHJpZWIgS3J6
eXN6dG9mIEtvemxvd3NraToKPj4gSGkgSGVpa28sCj4+Cj4+IEkgZm91bmQgdGhhdCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgdXNlcwo+PiBwYXR0
ZXJuIG9mIG9uZSBib2FyZCBwZXIgaXRlbSBpbiBvbmVPZi4KPj4KPj4gVGhpcyBsZWFkcyB0byBx
dWl0ZSBiaWcgZmlsZSwgd2l0aCBtYW55IGVudHJpZXMsIGFsdGhvdWdoIGdpdmVzIG5pY2UKPj4g
ZGVzY3JpcHRpb24gZm9yIGVhY2ggYm9hcmQuCj4gCj4gdGhhdCB3YXMgdGhlIG9yaWdpbmFsIGlu
dGVudGlvbiBpbiBkb2luZyBpdCB0aGlzIHdheSwgcHJlc2VydmluZyB0aGUKPiBub3JtYWwgcmVh
ZGFiaWxpdHkgd2hpbGUgYWRkaW5nIG1hY2hpbmUgcmVhZGFiaWxpdHkgdG8gaXQgOi0pCj4gCj4+
IEkgZmluZCBlbnVtLWJhc2VkIHBhdHRlcm4sIGxpa2UgRlNMIFsxXSwgbXVjaCBtb3JlIHJlYWRh
YmxlIGFuZCBjb21wYWN0Lgo+PiBXaGF0IGRvIHlvdSB0aGluaz8gSSBjb3VsZCByZS1vcmdhbml6
ZSB0aGUgYXJtL3JvY2tjaGlwLnlhbWwsIGJ1dCBJCj4+IGRvbid0IHdhbnQgdG8gbWVzcyB3aXRo
IHlvdXIgcHJlZmVyZW5jZS4KPiAKPiBJIGRvIGxpa2UgdGhlIGN1cnJlbnQgd2F5IGFzIGl0IGRv
ZXMgb25seSBjb250YWlucyBvbmUgd2F5IG9mIGRvaW5nIGl0Lgo+IAo+IEFzIGZhciBhcyBJIGNh
biBzZWUsIHRoZSBmc2wgb25lIGhhcyBtdWx0aXBsZSB0eXBlcywgbGlrZSB0aGUgb25lIHlvdQo+
IHBvaW50ZWQgYXQsIGZvciBhIGxpc3Qgb2YgYm9hcmRzICsgb25lIHNvYyB0aGF0IHdvcmtzIGZv
ciB0aGUgc2ltcGxlCj4gcGxldGhvcmEgb2YgcmVndWxhciBib2FyZHMuCj4gCj4gQnV0IGFsc28g
YWRkaXRpb25hbCB0eXBlcyB0aGF0IGRvIGl0IHNpbWlsYXJseSB0byBSb2NrY2hpcCBsaWtlIHRo
ZSAKPiAJImkuTVg2USBBZHZhbnRlY2ggRE1TLUJBMTYgYm9hcmRzIgo+IGRpcmVjdGx5IGJlbG93
IGl0Lgo+IAo+IAo+IEFzIHdlIGhhdmUgYm90aCBjYXNlcyBoZXJlIGFzIHdlbGwsIEkgcmVhbGx5
IGRvbid0IGxpa2UgdGhpcyBtaXgKPiBidXQgaW5zdGVhZCByZWFsbHkgbGlrZSB0byBoYXZlIG9u
bHkgb25lIGFwcHJvYWNoLCBoZW5jZSB0aGUKPiBvbmUtZW50cnktcGVyLWJvYXJkLWZhbWlseSB3
ZSBkbyBpbiByb2NrY2hpcC55YW1sIFsyXQo+IAo+IEZvciBodW1hbiByZWFkYWJpbGl0eSBJIHJl
YWxseSBkbyBjb25zaWRlciBoYXZpbmcgX29uZV8gd2F5Cj4gb2YgZGVzY3JpYmluZyBib2FyZHMg
c3VwZXJpb3IgdG8gbWl4aW5nIGFwcHJvYWNoZXMgYW5kIHRoZQo+IGF1dG9tYXRlZCBwYXJzaW5n
IGRvZXNuJ3QgY2FyZSwgYXMgbG9uZyBhcyB0aGUgc3ludGF4IGlzIGNvcnJlY3QgOy0pCgpPSywg
dGhhbmtzIGZvciBjbGFyaWZ5aW5nLiBJIHdvbid0IHRvdWNoIHRoZSBvcmRlciB0aGVuLiA6KQoK
CkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
