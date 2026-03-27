Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAF3610AB83B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 01:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMrdo2uhlLXdO3wO+vxzN61BX00VW5AV2wi4JBS2r/I=; b=vXizALXjwyY9uj
	UJjs75dUPsgcvwr9A9sf8lsH2SU0j5JLR5zM4ZoAAbjt+GIIQ/Pq0js8wmJ9NHIOISg8B9kxqfB5f
	XH7NortOL1JA6wAbXgZvABBtscIA13mfIkxsxBNSsgwf6VWs2JFzFBvCOYnS5humEQ35Ikty+GlCd
	5YHLdBH04suA39neo2nj0TngyF4fE03Nn3Cjtn7bwbnhSnqbRHtHfKbdRPNrpfd4XDgWpSXdqMb8E
	nRYzvqyyZbSDko6RPlyKGsaYohIqCjbLerCuUreFa1kImIazylupz0HkHzcRArEiUx2HCNp9IeyT9
	u0CFxlzpnW7BDMMrl0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5vgZ-00000006Sp2-1JD9;
	Fri, 27 Mar 2026 01:08:27 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5vgV-00000006So1-2vK2;
	Fri, 27 Mar 2026 01:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774573700;
	bh=m2NMsfxVcSr9MtrRU9gQuBS277Ks3jmJeTd5rK2rKtI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mJcAZoZ2atTAaWiF972aIKGMTdFFe1etiP7MWYfwy5KCIC2nmatcJY0LGbkQATO19
	 dkc2D5ikQNVLaVUbN81CRCGf3pyLwwyTJ14jlSwwXxtWQ+XZEZWiZH75K5yf7FxzEQ
	 /PSDe2seBIpFBpUjqJZrbxYwAxHqg1NsokAMLmYy4Qq09eNDdVzfreGwwkwgTIPclu
	 pkIcOH0G+7qPHx3h7K8ItyLfmsGj7gTJU1LIyo+n4tvsaf2X+XIznrewxfTdIVOUXX
	 EHXf4VBc0cnlgEQ46Ffx85XL1h8dCjUku76EOIF47IkRgP3ZTtQVz0MbnVDcaQxASh
	 vOrScso0GCK8g==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1A9C917E6130;
	Fri, 27 Mar 2026 02:08:20 +0100 (CET)
Message-ID: <3aec8193-22c4-4c87-8068-5a70f4690047@collabora.com>
Date: Fri, 27 Mar 2026 03:08:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/8] drm/bridge: synopsys: dw-dp: Unregister AUX
 channel on bridge detach
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260310-drm-rk-fixes-v2-0-645ecfb43f49@collabora.com>
 <20260310-drm-rk-fixes-v2-7-645ecfb43f49@collabora.com>
 <2053748.usQuhbGJ8B@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2053748.usQuhbGJ8B@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_180823_886336_2F6BD9C9 
X-CRM114-Status: GOOD (  16.21  )
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

SGVsbG8gSGVpa28sCgpPbiAzLzI2LzI2IDk6MjggUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+
IEFtIE1vbnRhZywgOS4gTcOkcnogMjAyNiwgMjM6NDQ6MzUgTWl0dGVsZXVyb3DDpGlzY2hlIE5v
cm1hbHplaXQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4+IFRoZSBEaXNwbGF5UG9ydCBB
VVggY2hhbm5lbCBnZXRzIGluaXRpYWxpemVkIGFuZCByZWdpc3RlcmVkIGR1cmluZwo+PiBkd19k
cF9iaW5kKCksIGJ1dCBpdCBpcyBuZXZlciB1bnJlZ2lzdGVyZWQsIHdoaWNoIG1heSBsZWFkIHRv
IHJlc291cmNlCj4+IGxlYWtzIGFuZC9vciB1c2UtYWZ0ZXItZnJlZToKPj4KPj4gWyAgMjI0LjY2
MTM3MV0gQlVHOiBLQVNBTjogc2xhYi11c2UtYWZ0ZXItZnJlZSBpbiBkZXZpY2VfaXNfZGVwZW5k
ZW50KzB4ZTAvMHgyYjAKPj4gWyAgMjI0LjY2MjAxNV0gUmVhZCBvZiBzaXplIDggYXQgYWRkciBm
ZmZmMDAwMTFhZWU4NTUwIGJ5IHRhc2sgbW9kcHJvYmUvNjU4Cj4+IC4uLgo+PiBbICAyMjQuNjYy
Nzk2XSAgZGV2aWNlX2lzX2RlcGVuZGVudCsweGUwLzB4MmIwCj4+IFsgIDIyNC42NjI4MDJdICBk
ZXZpY2VfaXNfZGVwZW5kZW50KzB4MTA4LzB4MmIwCj4+IFsgIDIyNC42NjI4MDhdICBkZXZpY2Vf
bGlua19hZGQrMHgxZjgvMHgxMGIwCj4+IFsgIDIyNC42NjI4MTNdICBkZXZtX29mX3BoeV9nZXRf
YnlfaW5kZXgrMHgxMjAvMHgyMDAKPj4gWyAgMjI0LjY2MjgxOV0gIGR3X2RwX2JpbmQrMHgzNGMv
MHhiMTAgW2R3X2RwXQo+PiBbICAyMjQuNjYyODMwXSAgZHdfZHBfcm9ja2NoaXBfYmluZCsweDE5
NC8weDI1MCBbcm9ja2NoaXBkcm1dCj4+IFsgIDIyNC42NjI4NjRdICBjb21wb25lbnRfYmluZF9h
bGwrMHgzYTgvMHg3MjAKPj4gWyAgMjI0LjY2Mjg2OV0gIHJvY2tjaGlwX2RybV9iaW5kKzB4MTIw
LzB4MzkwIFtyb2NrY2hpcGRybV0KPj4gWyAgMjI0LjY2Mjg5OV0gIHRyeV90b19icmluZ191cF9h
Z2dyZWdhdGVfZGV2aWNlKzB4NzZjLzB4ODM4Cj4+IFsgIDIyNC42NjI5MDRdICBjb21wb25lbnRf
bWFzdGVyX2FkZF93aXRoX21hdGNoKzB4MWY0LzB4MjMwCj4+IFsgIDIyNC42NjI5MDldICByb2Nr
Y2hpcF9kcm1fcGxhdGZvcm1fcHJvYmUrMHg0MjAvMHg1MzggW3JvY2tjaGlwZHJtXQo+PiBbICAy
MjQuNjYyOTM5XSAgcGxhdGZvcm1fcHJvYmUrMHhlOC8weDE2OAo+PiBbICAyMjQuNjYyOTQ1XSAg
cmVhbGx5X3Byb2JlKzB4MzQwLzB4ODI4Cj4+IFsgIDIyNC42NjI5NTBdICBfX2RyaXZlcl9wcm9i
ZV9kZXZpY2UrMHgyZTAvMHgzNTAKPj4gWyAgMjI0LjY2Mjk1NF0gIGRyaXZlcl9wcm9iZV9kZXZp
Y2UrMHg4MC8weDE0MAo+PiBbICAyMjQuNjYyOTU5XSAgX19kcml2ZXJfYXR0YWNoKzB4Mzk4LzB4
NDYwCj4+IFsgIDIyNC42NjI5NjRdICBidXNfZm9yX2VhY2hfZGV2KzB4ZTAvMHgxOTgKPj4gWyAg
MjI0LjY2Mjk2OF0gIGRyaXZlcl9hdHRhY2grMHg1MC8weDY4Cj4+IFsgIDIyNC42NjI5NzJdICBi
dXNfYWRkX2RyaXZlcisweDJhMC8weDRjMAo+PiBbICAyMjQuNjYyOTc3XSAgZHJpdmVyX3JlZ2lz
dGVyKzB4Mjk0LzB4MzYwCj4+IFsgIDIyNC42NjI5ODJdICBfX3BsYXRmb3JtX2RyaXZlcl9yZWdp
c3RlcisweDdjLzB4OTgKPj4gWyAgMjI0LjY2Mjk4N10gIHJvY2tjaGlwX2RybV9pbml0KzB4YzQv
MHhmZjggW3JvY2tjaGlwZHJtXQo+PiAuLi4KPj4KPj4gVW5yZWdpc3RlciB0aGUgQVVYIGFkYXB0
ZXIgb24gYnJpZGdlIGRldGFjaC4KPiAKPiB0aGF0IHNvdW5kcyBzb3J0IG9mIGFzeW1tZXRyaWNh
bCB0aG91Z2guIGRybV9icmlkZ2VfZnVuY3MgaGFzIGF0dGFjaCBhbmQKPiBkZXRhY2ggY2FsbGJh
Y2tzIGFuZCB0aGUgY29tcG9uZW50LWZyYW1ld29yayBhbHNvIGhhcyBiaW5kIGFuZCB1bmJpbmQK
PiBjYWxsYmFja3MuCj4gCj4gVGhpcyBtaWdodCBjYXVzZSBjb25mdXNpb24gbGF0ZXIgb24gSSBn
dWVzcywgZXNwZWNpYWxseSBhcyBJIGRvbid0IGtub3cKPiBpZiB0aGVyZSBjb3VsZCBiZSBhIGJy
aWRnZSBhdHRhY2gsIGFmdGVyIHRoZSBkZXRhY2ggdGhhdCB1bnJlZ2lzdGVycyB0aGUKPiBhdXgg
YWRhcHRlci4KPiAKPiBMb29raW5nIGF0IHRoZSBBbmFsb2dpeERQIGZvciBleGFtcGxlLCBpdCBk
b2VzIHRoZSB0aGUgcmVnaXN0ZXIgYW5kCj4gdW5yZWdpc3RlciBpbiB0aGUgYmluZC91bmJpbmQg
Y2FsbGJhY2tzIG9mIHRoZSBjb3JlIGRyaXZlci4KPiAKPiBTbyBJIGd1ZXNzIHRoZSBpbiBteSBl
eWVzIGNsZWFuZXIgd2F5IHdvdWxkIGJlIHRvIGludHJvZHVjZSBhCj4gZHdfZHBfdW5iaW5kKCkg
ZnVuY3Rpb24gYW5kIHB1dCB0aGUgYXV4IHVucmVnaXN0ZXIgdGhlcmU/Cj4gCj4gQXQgbGVhc3Qg
dGhhdCB3YXksIGV2ZXJ5dGhpbmcgd291bGQgYmUgYXQgdGhlIHNhbWUgImxldmVsIi4KCllvdSBh
cmUgcmlnaHQuICBBcyBhIG1hdHRlciBvZiBmYWN0IGV4cG9ydGluZyB0aGUgKl91bmJpbmQoKSBp
biB0aGUgbGlicmFyeSB3YXMKbXkgZmlyc3QgdGhvdWdodCwgYnV0IGZvciBzb21lIHJlYXNvbiBJ
IHdlbnQgd2l0aCB0aGUgImF1dG8iIGFwcHJvYWNoLgoKSSd2ZSBqdXN0IGhhbmRsZWQgdGhpcyBp
biB2MyBbMV0uCgpUaGFua3MgZm9yIHJldmlld2luZyBhbmQgcGlja2luZyB0aGUgcmVzdCBvZiB0
aGUgcGF0Y2hlcyEKClJlZ2FyZHMsCkNyaXN0aWFuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjYwMzI3LWRybS1yay1maXhlcy12My0wLWZkMmU2OTAwYzA4Y0Bjb2xsYWJvcmEu
Y29tLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
