Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7E3BC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 11:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qf0WqlXmUxQzaxrUcvckml3+/WRgO76l5PJLlqZdatc=; b=ka+1mRCTDcvJTx
	eFHrmVYjfA1x74R47NOglJjj/daObptqq/E2765y3APM82B/W389ZPwqDD/9xJ7VJ5k8KiwKhOAxA
	J/KzLpPL7SJCKTUxgJizcffYq7YzOvEgVNWi5PW5FD4fgpHn/zGYekPV51OeqvXqk25Llf7u34nUR
	LKU61iQ08KMbyVbgQKYCWkLFJoCRogeEqtF+VTF9rcG9WzaLcHADlW+sivdgUHR2D3Gnzp00pYSRV
	WsKJ3d0yk5GE5PDC/mZV+v4pZ6rPXFNTyc8ma9mqJajWLeV+nAM7GktOsM2icGxGWGRZG+pGba9rp
	vag9KhvNgchNHVAvIT0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEoge-00000005h4a-1b8B;
	Wed, 05 Jun 2024 11:20:12 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEoga-00000005h42-3hMw;
	Wed, 05 Jun 2024 11:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717586407;
	bh=PwQ4nkZTr13w8UmaT1MKqhoIOXEfRekN9y/JnHclfHg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jdysX0/4ybigksWBmqW//DS7kvXK9T6TJtlC12uc9ncXxCRwkj94WL/YGMZ3yI8yS
	 cJSXO8PRfPYaH9PLkcypJ5Yk0LwdDq0mFjAKGGuMKJl1iNwumAWABsIa/38t7X9wA6
	 Xg0rrmyxAo1I4+BzVymWmRvH1ayicWsyK1T7p5HrJAaV++FGn+88CBcvqVPuzZPie2
	 u714gEXpF9+naABQI5EqL8w6d8KVvs0/kQLDNOezF3ivl83InzkOPbY4BWdzgpKemm
	 JMHZU+ivgCir23aBkMui6jFnw8WxUrFyRPiu7c2zmeXrdT+DWn/IVYckYMWQDXr13g
	 DNyBFclf4uQdQ==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A23DC3781139;
	Wed,  5 Jun 2024 11:20:05 +0000 (UTC)
Message-ID: <d17341c2-3f97-41d6-8125-bff838149798@collabora.com>
Date: Wed, 5 Jun 2024 14:20:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
To: Andy Yan <andyshrk@163.com>, Maxime Ripard <mripard@kernel.org>
Cc: neil.armstrong@linaro.org, Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
 <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
 <11359776.NyiUUSuA9g@phil> <ef60403f-078f-411a-867b-9b551e863f56@linaro.org>
 <b8066150-c147-4eb6-9f7a-2bd0268c274e@collabora.com>
 <4456bc5a.9b2d.18fe7b76790.Coremail.andyshrk@163.com>
 <01bde68a-88a7-46eb-860c-1375aa730bec@linaro.org>
 <20240605-logical-piculet-of-democracy-6bc732@houat>
 <6328b7e5.a1dd.18fe7ce019d.Coremail.andyshrk@163.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <6328b7e5.a1dd.18fe7ce019d.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_042009_087228_3B965A3D 
X-CRM114-Status: GOOD (  25.92  )
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

T24gNi81LzI0IDEyOjQ5IFBNLCBBbmR5IFlhbiB3cm90ZToKPiAKPiBIaSwKPiBBdCAyMDI0LTA2
LTA1IDE3OjM5OjQ4LCAiTWF4aW1lIFJpcGFyZCIgPG1yaXBhcmRAa2VybmVsLm9yZz4gd3JvdGU6
Cj4+IE9uIFdlZCwgSnVuIDA1LCAyMDI0IGF0IDExOjI4OjQxQU0gR01ULCBuZWlsLmFybXN0cm9u
Z0BsaW5hcm8ub3JnIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4gT24gMDUvMDYvMjAyNCAxMToyNSwg
QW5keSBZYW4gd3JvdGU6Cj4+Pj4KPj4+PiBIaSwKPj4+Pgo+Pj4+IEF0IDIwMjQtMDYtMDUgMDQ6
MzM6NTcsICJDcmlzdGlhbiBDaW9jYWx0ZWEiIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3Jh
LmNvbT4gd3JvdGU6Cj4+Pj4+IE9uIDYvMy8yNCA0OjA4IFBNLCBuZWlsLmFybXN0cm9uZ0BsaW5h
cm8ub3JnIHdyb3RlOgo+Pj4+Pj4gSGksCj4+Pj4+Pgo+Pj4+Pj4gT24gMDMvMDYvMjAyNCAxNTow
MywgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+Pj4+Pj4gQW0gTW9udGFnLCAzLiBKdW5pIDIwMjQs
IDE0OjE0OjE3IENFU1Qgc2NocmllYiBBbmR5IFlhbjoKPj4+Pj4+Pj4gSGkgTmVpbDoKPj4+Pj4+
Pj4KPj4+Pj4+Pj4gT24gNi8zLzI0IDE2OjU1LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+Pj4+
Pj4+IEhpIENocmlzdGlhbiwKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBPbiAwMS8wNi8yMDI0IDE1OjEy
LCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+Pj4+Pj4+Pj4gVGhlIFJLMzU4OCBTb0MgZmFt
aWx5IGludGVncmF0ZXMgYSBRdWFkLVBpeGVsIChRUCkgdmFyaWFudCBvZiB0aGUKPj4+Pj4+Pj4+
PiBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgVFggY29udHJvbGxlciB1c2VkIGluIHRoZSBwcmV2
aW91cyBTb0NzLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gSXQgaXMgSERNSSAyLjEgY29tcGxpYW50
IGFuZCBzdXBwb3J0cyB0aGUgZm9sbG93aW5nIGZlYXR1cmVzLCBhbW9uZwo+Pj4+Pj4+Pj4+IG90
aGVyczoKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IC4uCj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+ICogU0NEQyBJMkMgRERDIGFjY2Vzcwo+Pj4+Pj4+Pj4+ICogVE1EUyBT
Y3JhbWJsZXIgZW5hYmxpbmcgMjE2MHBANjBIeiB3aXRoIFJHQi9ZQ2JDcjQ6NDo0Cj4+Pj4+Pj4+
Pj4gKiBZQ2JDcjQ6MjowIGVuYWJsaW5nIDIxNjBwQDYwSHogYXQgbG93ZXIgSERNSSBsaW5rIHNw
ZWVkcwo+Pj4+Pj4+Pj4+ICogTXVsdGktc3RyZWFtIGF1ZGlvCj4+Pj4+Pj4+Pj4gKiBFbmhhbmNl
ZCBBdWRpbyBSZXR1cm4gQ2hhbm5lbCAoRUFSQykKPj4+Pj4+Pj4+IC0+IFRob3NlIGZlYXR1cmVz
IHdlcmUgYWxyZWFkeSBzdXBwb3J0ZWQgYnkgdGhlIEhETUkgMi4wYSBjb21wbGlhbnQKPj4+Pj4+
Pj4+IEhXLCBqdXN0Cj4+Pj4+Pj4+PiBsaXN0IHRoZSBfbmV3XyBmZWF0dXJlcyBmb3IgSERNSSAy
LjEKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBJIGRpZCBhIHF1aWNrIHJldmlldyBvZiB5b3VyIHBhdGNo
c2V0IGFuZCBJIGRvbid0IHVuZGVyc3RhbmQgd2h5IHlvdQo+Pj4+Pj4+Pj4gbmVlZAo+Pj4+Pj4+
Pj4gdG8gYWRkIGEgc2VwYXJhdGUgZHctaGRtaS1xcC5jIHNpbmNlIHlvdSBvbmx5IG5lZWQgc2lt
cGxlIHZhcmlhbnRzCj4+Pj4+Pj4+PiBvZiB0aGUgSTJDCj4+Pj4+Pj4+PiBidXMsIGluZm9mcmFt
ZSBhbmQgYnJpZGdlIHNldHVwLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IENhbiB5b3UgZWxhYm9yYXRl
IGZ1cnRoZXIgPyBpc24ndCB0aGlzIFF1YWQtUGl4ZWwgKFFQKSBUWCBjb250cm9sbGVyCj4+Pj4+
Pj4+PiB2ZXJzaW9uCj4+Pj4+Pj4+PiBkZXRlY3RhYmxlIGF0IHJ1bnRpbWUgPwo+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+IEkgd291bGQgcHJlZmVyIHRvIGtlZXAgYSBzaW5nbGUgZHctaGRtaSBkcml2ZXIg
aWYgcG9zc2libGUuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoZSBRUCBI
RE1JIGNvbnRyb2xsZXIgaXMgYSBjb21wbGV0ZWx5IGRpZmZlcmVudCB2YXJpYW50IHdpdGggdG90
YWxseQo+Pj4+Pj4+PiBkaWZmZXJlbnQKPj4+Pj4+Pj4gcmVnaXN0ZXJzIGxheW91dCwgc2VlIFBB
VENIIDEzLzE0Lgo+Pj4+Pj4+PiBJIHRoaW5rIG1ha2UgaXQgYSBzZXBhcmF0ZSBkcml2ZXIgd2ls
bCBiZSBlYXNpZXIgZm9yIGRldmVsb3BtZW50IGFuZAo+Pj4+Pj4+PiBtYWludGVuYW5jZS4KPj4+
Pj4+Pgo+Pj4+Pj4+IEknbSB3aXRoIEFuZHkgaGVyZS4gVHJ5aW5nIHRvIG5hdmlnYXRlIGEgZHJp
dmVyIGZvciB0d28gSVAgYmxvY2tzIHJlYWxseQo+Pj4+Pj4+IHNvdW5kcyB0YXhpbmcgZXNwZWNp
YWxseSB3aGVuIGJvdGggYXJlIHNvIGRpZmZlcmVudC4KPj4+Pj4KPj4+Pj4gVGhhbmsgeW91IGFs
bCBmb3IgdGhlIHZhbHVhYmxlIGZlZWRiYWNrIQo+Pj4+Pgo+Pj4+Pj4gSSBhZ3JlZSwgSSBqdXN0
IHdhbnRlZCBtb3JlIGRldGFpbHMgdGhhbiAidmFyaWFudCBvZiB0aGUKPj4+Pj4+IFN5bm9wc3lz
IERlc2lnbldhcmUgSERNSSBUWCBjb250cm9sbGVyIiwgaWYgdGhlIHJlZ2lzdGVyIG1hcHBpbmcg
aXMgMTAwJQo+Pj4+Pj4gZGlmZmVyZW50LCBhbmQgZG9lcyBub3QgbWF0Y2ggYXQgYWxsIHdpdGgg
dGhlIG9sZCBJUCwgdGhlbiBpdCdzIGluZGVlZCB0aW1lCj4+Pj4+PiB0byBtYWtlIGEgYnJhbmQg
bmV3IGRyaXZlciwgYnV0IGluc3RlYWQgb2YgZG9pbmcgYSBtaXggdXAsIGl0J3MgdGltZSB0bwo+
Pj4+Pj4gZXh0cmFjdAo+Pj4+Pj4gdGhlIGR3LWhkbWkgY29kZSB0aGF0IGNvdWxkIGJlIGNvbW1v
biBoZWxwZXJzIGludG8gYSBkdy1oZG1pLWNvbW1vbiBtb2R1bGUKPj4+Pj4+IGFuZCB1c2UgdGhl
bS4KPj4+Pj4KPj4+Pj4gU291bmRzIGdvb2QsIHdpbGwgaGFuZGxlIHRoaXMgaW4gdjIuCj4+Pj4+
Cj4+Pj4+PiBBcyBJIHNlZSwgbm8gImRyaXZlciIgY29kZSBjYW4gYmUgc2hhcmVkLCBvbmx5IERS
TSBwbHVtYmluZ3MsIHNvIHBlcmhhcHMKPj4+Pj4+IHRob3NlCj4+Pj4+PiBwbHVtYmluZyBjb2Rl
IHNob3VsZCBnbyBpbnRvIHRoZSBEUk0gY29yZSA/Cj4+Pj4+Pgo+Pj4+Pj4gSW4gYW55IGNhc2Us
IHBsZWFzZSBhZGQgbW9yZSBkZXRhaWxzIG9uIHRoZSBjb3ZlciBsZXR0ZXIsIGluY2x1ZGluZyB0
aGUKPj4+Pj4+IGRldGFpbGVkCj4+Pj4+PiBIVyBkaWZmZXJyZW5jZSBhbmQgdGhlIGRlc2lnbiB5
b3UgY2hvc2Ugc28gc3VwcG9ydCB0aGlzIG5ldyBJUC4KPj4+Pj4KPj4+Pj4gQW5keSwgY291bGQg
eW91IHBsZWFzZSBoZWxwIHdpdGggYSBzdW1tYXJ5IG9mIHRoZSBIVyBjaGFuZ2VzPwo+Pj4+PiBU
aGUgaW5mb3JtYXRpb24gSSBjb3VsZCBwcm92aWRlIGlzIHJhdGhlciBsaW1pdGVkLCBzaW5jZSBJ
IGRvbid0IGhhdmUKPj4+Pj4gYWNjZXNzIHRvIGFueSBEVyBJUCBkYXRhc2hlZXRzIGFuZCBJJ20g
YWxzbyBub3QgZmFtaWxpYXIgZW5vdWdoIHdpdGggdGhlCj4+Pj4+IG9sZCB2YXJpYW50Lgo+Pj4+
Pgo+Pj4+ICAgQWNjdXJhdGVseSwgd2Ugc2hvdWxkIHJlZmVyIHRvIGl0IGFzIGFuIGVudGlyZWx5
IG5ldyBJUO+8jGl0IGhhcyBub3RoaW5nIGluIGNvbW1vbiB3aXRoCj4+Pj4gdGhlIGN1cnJlbnQg
bWFpbmxpbmUgZHctaGRtaeOAgiBUaGUgb25seSAgY29tbW9uYWxpdHkgaXMgdGhhdCB0aGV5IGJv
dGggY29tZSBmcm9tCj4+Pj4gU3lub3BzeXMgRGVzaWduV2FyZe+8mgo+Pj4+IO+8iDHvvIlJdCBo
YXMgYSAxMDAlIGRpZmZlcmVudCByZWdpc3RlciBtYXBwaW5nCj4+Pj4g77yIMu+8iUl0IHN1cHBv
cnRzIEZSTCBhbmQgRFNDCj4+Pj4g77yIM++8iWRpZmZlcmVudCBjb25maWd1cmF0aW9uIGZsb3cg
aW4gbWFueSBwbGFjZXPjgIIKPj4+Pgo+Pj4+IFNvIEkgaGF2ZSB0aGUgc2FtZSBmZWVsaW5nIHdp
dGggSGVpa28gYW5kIE1heGltZe+8mgo+Pj4+IFRoZSBEV19IRE1JX1FQIHNob3VsZCBoYXZlIGEg
IHNlcGFyYXRlIGRyaXZlciBhbmQgd2l0aCBpdCdzICBvd24gQ09ORklHICBzdWNoIGFzIERSTV9E
V19IRE1JX1FQICBpbiBLY29uZmlnLgo+Pj4+IGFuZCB0aGUgcm9ja2NoaXAgcGFydCBzaG91bGQg
YWxzbyBiZSBzcGxpdCBmcm9tIGR3X2hkbWktcm9ja2NoaXAuYy4KPj4+PiBJIGFtIHNvcnJ5IHdl
IG1peGVkIHRoZW0gaW4gZHdfaGRtaS1yb2NrY2hpcC5jIHdoZW4gd2UgZGV2ZWxvcCB0aGUgYnNw
IGRyaXZlcu+8jGJ1dCB3ZSByZWFsbHkgcmVncmV0dGVkIHRoaXMgZGVjaXNpb24KPj4+PiB3aGVu
ICB3ZSByZXBlYXRlZGx5IGJyb2tlIGNvbXBhdGliaWxpdHkgd2l0aCBkdy1oZG1pIG9uIG90aGVy
IHNvY3PjgIIKPj4+Cj4+PiBZZXMgcGxlYXNlLCBhbmQgYXMgSSBzYXksIGlmIHRoZXJlJ3MgY29k
ZSBjb21tb24gd2l0aCB0aGUgb2xkIGR3LWhkbWksIHBsZWFzZSBhZGQgYSBjb21tb24KPj4+IG1v
ZHVsZSBpZiB0aGlzIGNvZGUgY2FuJ3QgYmUgbW92ZWQgaW4gY29yZSBicmlkZ2UgaGVscGVycy4K
Pj4KPj4gQW5kIGNoYW5jZXMgYXJlIHRoYXQgdGhlIGNvbW1vbiBjb2RlIGlzIGFjdHVhbGx5IHRo
ZXJlIHRvIGRlYWwgd2l0aCBIRE1JCj4+IHNwZWMgaXRzZWxmIGFuZCBub3QgcmVhbGx5IHRoZSBo
YXJkd2FyZSwgd2hpY2ggaXMgc29sdmVkIGJ5IG1vdmluZyBib3RoCj4+IGRyaXZlcnMgdG8gdGhl
IEhETUkgaGVscGVycyB0aGF0IGp1c3QgZ290IG1lcmdlZC4KCkkgd2lsbCBtYWtlIHVzZSBvZiB0
aGUgbmV3IEhETUkgaGVscGVycyBhbmQgc2VlIGlmIHRoZXJlIGlzIGFueXRoaW5nCmVsc2UgcmVt
YWluaW5nIGluIHRlcm1zIG9mIGNvbW1vbiBjb2RlLgoKPiBZZXMsICsxLgo+IEkgZG9uJ3QgdGhp
bmsgd2UgbmVlZCB0byBzaGFyZSBzb21lIGNvbW1vbiBjb2RlIHdpdGggZHctaGRtaSBoZXJlLgoK
T2ssIEkgd2lsbCBjb21wbGV0ZWx5IHNlcGFyYXRlIHRoZSBuZXcgZHJpdmVyJ3MgY29kZSwgaW5j
bHVkaW5nIHRoZQpSb2NrY2hpcCBnbHVlIGxheWVyLgoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
