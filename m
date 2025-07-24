Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D97DC87FCA
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jul 2025 13:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDXP9tJYhOM6KoqgLk7mmb1TdByafprVx6ZpbmPXt/4=; b=qVDvxWK9hMt9R9
	5ISKCqb+x1/i0Im4zN8XW8z6ja2pENbNNQvtOuy2XMdUy4ScWLb6+8mmz812dpBZvtrraQj5Ffcyw
	H3QMZWOYY4JehKhHpjqD0JCmR6V3YjZWL2DLPyDhWiFTlmsxWX4RHIohElzHAfJOIPSUPpkGrH5rX
	s5uvyW9WpzoK5vBMz/Ake9MnazdzckDOziDJYDSNibNJrolfZd0UVnjAdyF62igURiFPaBhX3UrJa
	jS6TnWIoCNGz13ef8GvUrgPKPypKRayyChAtcAy4t2lP2Rkc9uzk2PbUmvY/HsRYuYdWjMj+BpzcF
	yuDyi9ivgiD92mpCSnvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewNB-00000007ZJg-2got;
	Thu, 24 Jul 2025 13:52:37 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uetFR-00000007DI1-0Vj2;
	Thu, 24 Jul 2025 10:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753353143;
	bh=itHtoJ3M+ZeANRW0vAxkLr2MjBaEu5vwDE7ZADcfbA4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MWaSIdnGoBwiZtZtbKK6XVz7WtAtEYZN8QFphI/pokVgkCFCXOweirTeO9wMLhAjM
	 hbcWaqG8twtORyImZ8qfVHe53KxT9YFsorWXjGY8duDUGYl8leyK1aRWNxuXroMZ8w
	 ANW2H5sexn0CouRfNFEuT08ZNoRGHBOfuSSAefkQ7SwtjeprR1WgVzjxm4OnBZaA4U
	 sle4dpBTPm6ZSXrCz1/8BC9vpk20D73T9kawJm7J0U3AVKKVtISIvaqpc5d54YrZBn
	 PHqJ8xT0SHcXoHWgls97p7ROY28YaFiIYWYiTyNj0f31CCRubYCYtv+GRnvhwm2Fh4
	 uXeOf3YlnXj/Q==
Received: from [192.168.1.90] (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4894F17E046D;
	Thu, 24 Jul 2025 12:32:22 +0200 (CEST)
Message-ID: <230f25cb-52cb-4ae0-81a1-85e8de873891@collabora.com>
Date: Thu, 24 Jul 2025 13:32:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/rockchip: vop2: Add high color depth support
To: Andy Yan <andyshrk@163.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Algea Cao <algea.cao@rock-chips.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250721-rk3588-10bpc-v1-0-e95a4abcf482@collabora.com>
 <20250721-rk3588-10bpc-v1-1-e95a4abcf482@collabora.com>
 <3ceb2c70.2145.1982ff28b9c.Coremail.andyshrk@163.com>
 <c5624dad-93cb-4cc3-88ad-808dcc43274d@collabora.com>
 <12451b41.7627.1983ba589ec.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <12451b41.7627.1983ba589ec.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_033225_349890_DDB84EFA 
X-CRM114-Status: GOOD (  25.38  )
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

SGkgQW5keSwKCk9uIDcvMjQvMjUgMTE6NTYgQU0sIEFuZHkgWWFuIHdyb3RlOgo+IAo+IAo+IAo+
IEhlbGxvIENyaXN0aWFu77yMCj4g5ZyoIDIwMjUtMDctMjIgMTQ6MTY6MjbvvIwiQ3Jpc3RpYW4g
Q2lvY2FsdGVhIiA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+IOWGmemBk++8mgo+
PiBIaSBBbmR5LAo+Pgo+PiBPbiA3LzIyLzI1IDU6MjQgQU0sIEFuZHkgWWFuIHdyb3RlOgo+Pj4K
Pj4+IEhlbGxvIENyaXN0aWFu77yMCj4+Pgo+Pj4gQXQgMjAyNS0wNy0yMiAwMTozOTowNCwgIkNy
aXN0aWFuIENpb2NhbHRlYSIgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPiB3cm90
ZToKPj4+PiBUYWtlIHRoZSBiaXRzIHBlciBjb2xvciBjaGFubmVsIGludG8gY29uc2lkZXJhdGlv
biB3aGVuIGNvbXB1dGluZyBEQ0xLCj4+Pj4gcmF0ZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6
IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4+
Pj4gLS0tCj4+Pj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMg
fCAzICsrKwo+Pj4+IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+Pj4gaW5kZXgg
MTg2ZjY0NTJhN2QzNTlmMDc5NjYyYmM1ODA4NTA5Mjk2MzJlYThmZS4uYTcxNGJjYmIwMmRlMTYy
NjdlN2ZlYmJhZWIxZWIyNzBjNzBhYWVmMiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+Pj4gQEAgLTE3MzEsNiArMTczMSw5IEBA
IHN0YXRpYyB2b2lkIHZvcDJfY3J0Y19hdG9taWNfZW5hYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0
YywKPj4+PiAJCWNsb2NrICo9IDI7Cj4+Pj4gCX0KPj4+Pgo+Pj4+ICsJaWYgKHZjc3RhdGUtPm91
dHB1dF9icGMgPiA4KQo+Pj4+ICsJCWNsb2NrID0gRElWX1JPVU5EX0NMT1NFU1QoY2xvY2sgKiB2
Y3N0YXRlLT5vdXRwdXRfYnBjLCA4KTsKPj4+Cj4+Pgo+Pj4gVGhpcyBzZWVtcyBub3QgcmlnaHQs
ICByZWdhcmRsZXNzIG9mIHRoZSB2YWx1ZSBvZiBicGMsIHRoZSBkY2xrIG9mIFZPUCBtdXN0IGJl
Cj4+PiBjb25zaXN0ZW50IHdpdGggbW9kZS0+Y3J0Y19jbG9jay4KPj4+IElmIHRoZSBkY2xrIG9m
IFZPUCBpcyBpbmNyZWFzZWQgaW4gYWNjb3JkYW5jZSB3aXRoIHRoZSBCUEMgcmF0aW8gaGVyZSwg
dGhlbiB0aGUgcmVmcmVzaCByYXRlIG9mIFZPUCB3aWxsIGFsc28gaW5jcmVhc2UgcHJvcG9ydGlv
bmFsbHkuCj4+PiBUaGlzIHdvdWxkIGJlIGluY29uc2lzdGVudCB3aXRoIHRoZSB0aW1pbmcgZGVz
Y3JpYmVkIGluIHRoZSBtb2RlLgo+Pj4gRm9yIGEgaGlnaHQgY29sb3IgZGVwdGgsICB0aGUgZnJl
cXVlbmN5IG5lZWRzIHRvIGJlIGluY3JlYXNlZCBmb3IgdGhlIEhETUkgUEhZJ3MgY2xvY2suCj4+
Cj4+IFRoZSBIRE1JIFBIWSdzIGNsb2NrIGlzIGFjdHVhbGx5IGNvbXB1dGVkIGF0IEhETUkgY29u
bmVjdG9yIGZyYW1ld29yayBsZXZlbAo+PiBbMV0sIHRha2luZyBpbnRvIGFjY291bnQgdGhlIGN1
cnJlbnQgYnBjIHZhbHVlLCB3aGljaCBpcyBkZXRlcm1pbmVkIGFzIHBhcnQKPj4gb2YgaGRtaV9j
b21wdXRlX2NvbmZpZygpIFsyXS4KPj4KPj4gVGhhdCBtZWFucyBjb25uX3N0YXRlLT5oZG1pLnRt
ZHNfY2hhcl9yYXRlIGluCj4+IGR3X2hkbWlfcXBfcm9ja2NoaXBfZW5jb2Rlcl9hdG9taWNfY2hl
Y2soKSBkb2VzIGFscmVhZHkgaW5jbHVkZSB0aGUgYnBjCj4+IHJlbGF0ZWQgYWRqdXN0bWVudCwg
YW5kIHdlIHBhc3MgdGhhdCBkaXJlY3RseSB0byB0aGUgUEhZIHZpYQo+PiBwaHlfY29uZmlndXJl
KCkuICBOb3RlIHRoZXJlJ3Mgc3RpbGwgdGhlIG5lZWQgdG8gaGFuZGxlIGJwYyBzZXBhcmF0ZWx5
IHZpYQo+PiBwaHlfY29uZmlndXJlX29wdHMgaW4gb3JkZXIgdG8gc2V0dXAgQ01OX1JFRygwMDg2
KSBbM10uCj4+Cj4+IFNpbmNlIFZPUDIgc3dpdGNoZXMgdG8gUEhZIFBMTCBhcyBEQ0xLIHNvdXJj
ZSBmb3IgbW9kZXMgdXAgdG8gNEtANjBIeiwgaXQKPj4gbmVlZHMgdG8gdGFrZSBjb2xvciBkZXB0
aCBpbnRvIGFjY291bnQsIHRvIGtlZXAgdGhlbSBpbiBzeW5jLiAgQXMgYSBtYXR0ZXIKPj4gb2Yg
ZmFjdCwgdGhlIGNsb2NrIGFkanVzdG1lbnQgaW4gVk9QMiBpcyBtYWlubHkgbmVjZXNzYXJ5IGZv
ciBsZWdhY3kKPiAKPiAKPiBUaGVyZSBtaWdodCBiZSBhIG1pc3VuZGVyc3RhbmRpbmcgaGVyZS4g
VGhlIHZhbHVlcyBvZiBoZG1pLnRtZHNfY2hhcl9yYXRlIGFuZCB2b3AgZGNsayBhcmUgbm90IGFs
d2F5cyBlcXVhbCBpbiBhbGwgY2FzZXMuCj4gRm9yIHZvcCBkY2xrIGFsd2F5cyBtYXRjaCBtb2Rl
LT5jbG9jaywgIGhkbWkudG1kc19jaGFyX3JhdGUgd2lsbCBhZGp1c3Qgd2l0aCBicGMuCj4gRm9y
IGV4YW1wbGUsICBmb3IgYSA0S1AzMCBZVVY0NDQgOCBiaXQsICAgdm9wLT5kY2xrID0gaGRtaS50
bWRzX2NoYXJfcmF0ZSA9IDI5N01IWiwKPiBmb3IgNEtQMzAgWVVWNDQ0IDEwIGJpdCwgIGhkbWku
dG1kc19jaGFyX3JhdGUgPSAxLjI1ICogdm9wLT5kY2xrLgo+IAo+IEluIGZhY3QsIGZvciB0aGUg
SERNSSBQSFksIHRoZXJlIGFyZSB0d28gY2xvY2tzLiBPbmUgaXMgYSBjbG9jayB3aXRoIHRoZSBz
YW1lIGZyZXF1ZW5jeSBhcyB0aGUgSERNSSBQTEwsIG5hbWVseS50bWRzX2NoYXJfcmF0ZSwKPiAg
YW5kIHRoZSBvdGhlciBpcyBhIGNsb2NrIG9idGFpbmVkIGJ5IGZ1cnRoZXIgZnJlcXVlbmN5IGRp
dmlzaW9uIG9mIHRoZSBIRE1JIFBMTCwgd2hpY2ggY2FuIGJlIHN1cHBsaWVkIHRvIHRoZSB2b3Ag
ZGNsay4KPiAKPiAgICAgICAgICAgICAgICAgICAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0g
PnRtZHNfY2hhcl9yYXRlIAo+ICAgICAgICAgICAgICAgICAgICAgICB8Cj4gUEhZIFBMTC0tLS0t
LXwKPiAKPiAgICAgICAgICAgICAgICAgICAgICAgfAo+ICAgICAgICAgICAgICAgICAgICAgICAt
LS0tLS1ESVYoUkVHMDA4NlszLTFdKS0tPnZvcCBkY2xrLgoKT2gsIEkgbWlzc2VkIHRoZSBmYWN0
IHRoZXJlJ3MgYSBkaXZpZGVyIGJldHdlZW4gUExMIGFuZCBEQ0xLLgpBbGwgdGhpcyBtYWtlcyBz
ZW5zZSBub3csIHRoYW5rcyBmb3IgY2xhcmlmeWluZyEKClJlZ2FyZHMsCkNyaXN0aWFuCgo+IFNv
IGluIHRoaXMgY2FzZSwgbXkgc3VnZ2VzdGlvbiBpcyBzdGlsbCB0byBmb2xsb3cgdGhlIGltcGxl
bWVudGF0aW9uIG9mIG91ciBCU1Aga2VybmVsOgo+IE9uIHRoZSBjcnRjIHNpZGUsIGl0IHNob3Vk
IHNldCBkY2xrIGFzIHRoZSBtb2RlLT5jbG9jay4KPiBBdCB0aGUgUEhZIHNpZGUocmtfaGRwdHhf
cGh5X2Nsa19zZXRfcmF0ZSkgd2hlbiBzZXQgdGhlIHZvcCBkY2xrLCBpdCBzaG91bGQgYWRqdXN0
IHRoZSBQTEwgY2xvY2sgYWNjb3JkaW5nIHRvIHRoZSBicGM6Cj4gaWYgKGJwYyA+IDgpCj4gICAg
ICAgICAgICAgICAgIGJpdF9yYXRlID0gY2xvY2sgKiAxMCAvIDg7Cj4gCj4gCj4gCj4+IHJlYXNv
bnMsIHNpbmNlIEhEUFRYIFBIWSBhbGxvd2VkIGNoYW5naW5nIFRNRFMgY2hhciByYXRlIHZpYSB0
aGUgQ29tbW9uCj4+IENsb2NrIEZyYW1ld29yayBBUEkuICBXZSBsYW5kZWQgYSBwcm9wZXIgc29s
dXRpb24gZm9yIHRoYXQgdmlhIHRoZSBIRE1JIFBIWQo+PiBBUEksIGhlbmNlIHRoZSBwbGFuIHdv
dWxkIGJlIHRvIG1ha2UgQ0NGIEFQSSByZWFkb25seSBhZnRlciB0aGUgc3dpdGNoIHRvCj4+IFBI
WSBBUEkgaXMgY29tcGxldGVkLCB3aGljaCBtZWFucyBWT1AyIHNob3VsZG4ndCBkZWFsIGFueW1v
cmUgd2l0aCBjbG9jawo+PiBjYWxjdWxhdGlvbnMgd2hlbiB1c2luZyB0aGUgUEhZIFBMTCBhcyBE
Q0xLIHNvdXJjZS4KPj4KPj4gUmVnYXJkbGVzcywgSSBzaG91bGQgcHJvYmFibHkgbW92ZSB0aGlz
IGNsb2NrIGFkanVzdG1lbnQgdG8gdGhlIGNvbmRpdGlvbmFsCj4+IGJsb2NrIGhhbmRsaW5nIERD
TEsgc291cmNlIHN3aXRjaC4KPj4KPj4gWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvZ3B1L2Ry
bS9kaXNwbGF5L2RybV9oZG1pX3N0YXRlX2hlbHBlci5jP2g9djYuMTYtcmM3I241MjUKPj4gWzJd
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRz
L2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9oZG1pX3N0YXRlX2hl
bHBlci5jP2g9djYuMTYtcmM3I242MDgKPj4gWzNdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmM/aD12Ni4xNi1yYzcjbjEwMzQK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
