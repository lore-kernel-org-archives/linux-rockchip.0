Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A47DEDE99A
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 15:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwX+Jcs1V4mnIFsV4tki9wxgWpbNT50iVZqIVun57Sg=; b=S29vRFL6r0je5H
	JWYRZ7khJjaQtzOwKq7HWhJUFFOq8xzzYtf6UfacgrRetdenTR02OwK3uXN2+9J06GJa6xpYqRO2M
	O+sBBBOMirBK+kiJ9uG26RvVXeyfAnQRH2Q5KGU8VU0auNxz5HhI9M7GGNSDqJtVq6AqEaX9251I5
	VDI9y9GAd7xb5C52Iyma8sK+zql7ylyI/F0a2wnOjLHu369ro2DJnUV1GsFQqvVU5/IyNsCQpFx/9
	FPIs/3ZoXhbHj8LE9F6LN+1PFGvZoRWyM6zGxE9np8WMOn/BgjZINSwTrxyTwVmhLzMIsCeDkC+Km
	KL09wtnUjzJ/pH/6whiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so37f-00000006Dvt-2HL6;
	Tue, 10 Sep 2024 15:49:43 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so2zy-00000006AtX-2mPX;
	Tue, 10 Sep 2024 15:41:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725982904;
	bh=0B1PDY3GCupfeN+oTs51y74KV9zPbrTetLqMbCSteDQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lhIA/mW+1/LsTKLcV8vmZtyf+2GHfDpxcuGkMFlIj8n/D1VIiLjuWBdOftjlb7tRR
	 VfhwtBXGmJnL/Wcp0zaFVUEGB4qvy91T1mR/7iMqqsa7rgLS8mMgk2fleXF9Z5z3DU
	 SXY1XOd7GIDAmrLZuXGP96Wb59yw2OI+Md6Gr6b0SldkSGpQrQtIMPF6egTAgVNBDK
	 eOOKAX34RIQ0HvSRGkhc5pZHb1rSqoLs2UDdJ+wcSXyiUVAVvP517sEpa6m9TctYLG
	 n3THdc/CFDgm9ZcegfRA1HFjq3Du/fF0F25sIEpPRrYTQhlI8Ve7UV0BU+l3KfqrHj
	 VAes9eaUbqMqw==
Received: from [192.168.1.90] (unknown [188.27.55.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7DDC717E35CB;
	Tue, 10 Sep 2024 17:41:43 +0200 (CEST)
Message-ID: <324b12ea-805a-499c-909d-3723f0bca7cb@collabora.com>
Date: Tue, 10 Sep 2024 18:41:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
 <1785617.Ii9rTq9gLj@diego> <1899262.u6TykanW85@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <1899262.u6TykanW85@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_084146_883681_C159A615 
X-CRM114-Status: GOOD (  12.66  )
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

T24gOS8xMC8yNCA2OjIxIFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBEaWVuc3RhZywg
MTAuIFNlcHRlbWJlciAyMDI0LCAxNzowNzo1NyBDRVNUIHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6
Cj4+IEFtIEZyZWl0YWcsIDYuIFNlcHRlbWJlciAyMDI0LCAwMzoxNzo0MiBDRVNUIHNjaHJpZWIg
Q3Jpc3RpYW4gQ2lvY2FsdGVhOgo+Pj4gVGhlIFJLMzU4OCBTb0MgZmFtaWx5IGludGVncmF0ZXMg
dGhlIG5ld2VyIFN5bm9wc3lzIERlc2lnbldhcmUgSERNSSAyLjEKPj4+IFF1YWQtUGl4ZWwgKFFQ
KSBUWCBjb250cm9sbGVyIElQIGFuZCBhIEhETUkvZURQIFRYIENvbWJvIFBIWSBiYXNlZCBvbiBh
Cj4+PiBTYW1zdW5nIElQIGJsb2NrLgo+Pj4KPj4+IEFkZCBqdXN0IHRoZSBiYXNpYyBzdXBwb3J0
IGZvciBub3csIGkuZS4gUkdCIG91dHB1dCB1cCB0byA0S0A2MEh6LAo+Pj4gd2l0aG91dCBhdWRp
bywgQ0VDIG9yIGFueSBvZiB0aGUgSERNSSAyLjEgc3BlY2lmaWMgZmVhdHVyZXMuCj4+Pgo+Pj4g
Q28tZGV2ZWxvcGVkLWJ5OiBBbGdlYSBDYW8gPGFsZ2VhLmNhb0Byb2NrLWNoaXBzLmNvbT4KPj4+
IFNpZ25lZC1vZmYtYnk6IEFsZ2VhIENhbyA8YWxnZWEuY2FvQHJvY2stY2hpcHMuY29tPgo+Pj4g
VGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+Pj4gU2lnbmVkLW9m
Zi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNv
bT4KPj4KPj4gSSBoYWQgc3dpdGNoZWQgZnJvbSB0aGUgdjMgdG8gdGhpcyB2NiBpbiBteSBwbGF5
Z3JvdW5kLWtlcm5lbCB0b2RheSwKPj4gd2l0aCB2MyBJJ3ZlIG5ldmVyIHNlZW4gdGhvc2UsIGJ1
dCBub3cgd2l0aCB2NiBJIGhhdmUgZ290dGVuIG11bHRpcGxlCj4+IHRpbWVzOgo+Pgo+PiBbICA4
MDUuNzMwNjA4XSBJbnRlcm5hbCBlcnJvcjogc3luY2hyb25vdXMgZXh0ZXJuYWwgYWJvcnQ6IDAw
MDAwMDAwOTYwMDAwMTAgWyMxXSBQUkVFTVBUIFNNUAo+PiBbICA4MDUuNzM5NzY0XSBNb2R1bGVz
IGxpbmtlZCBpbjogc25kX3NvY19zaW1wbGVfY2FyZCBjcmN0MTBkaWZfY2Ugc25kX3NvY19zaW1w
bGVfY2FyZF91dGlscyBwYW50aG9yIGRybV9ncHV2bSBkcm1fZXhlYyBmdXNlCj4+IFsgIDgwNS43
NTIwMzFdIENQVTogMyBVSUQ6IDAgUElEOiA3NzUgQ29tbTogWG9yZyBOb3QgdGFpbnRlZCA2LjEx
LjAtcmM3LTAwMDk5LWc0NTkzMDJmMWY5MDgtZGlydHkgIzkzNAo+PiBbICA4MDUuNzYyMTQzXSBI
YXJkd2FyZSBuYW1lOiBUaGVvYnJvbWEgU3lzdGVtcyBSSzM1ODgtUTcgU29NIG9uIEhhaWtvdSBk
ZXZraXQgKERUKQo+PiBbICA4MDUuNzcwNDA3XSBwc3RhdGU6IDIwNDAwMGM5IChuekN2IGRhSUYg
K1BBTiAtVUFPIC1UQ08gLURJVCAtU1NCUyBCVFlQRT0tLSkKPj4gWyAgODA1Ljc3ODE4Nl0gcGMg
OiByZWdtYXBfbW1pb19yZWFkMzJsZSsweDgvMHgyMAo+PiBbICA4MDUuNzgzMTU1XSBsciA6IHJl
Z21hcF9tbWlvX3JlYWQrMHg0NC8weDcwCj4+IFsgIDgwNS43ODc4MjhdIHNwIDogZmZmZjgwMDA4
MjkzYjgzMAo+PiBbICA4MDUuNzkxNTE2XSB4Mjk6IGZmZmY4MDAwODI5M2I4MzAgeDI4OiBmZmZm
ODAwMDgyOTNiY2U4IHgyNzogZmZmZjAwMDFmMjBhYjA4MAo+PiBbICA4MDUuNzk5NDk1XSB4MjY6
IGZmZmY4MDAwODExMzk1MDAgeDI1OiAwMDAwMDAwMDAwMDAwMDAwIHgyNDogMDAwMDAwMDAwMDAw
MDAxMAo+PiBbICA4MDUuODA3NDcyXSB4MjM6IDAwMDAwMDAwMDAwMDAwMDAgeDIyOiBmZmZmMDAw
MWY1YTRiNDAwIHgyMTogZmZmZjgwMDA4MjkzYjhjNAo+PiBbICA4MDUuODE1NDUwXSB4MjA6IDAw
MDAwMDAwMDAwMDA5NjggeDE5OiBmZmZmMDAwMWY1YTI3YTgwIHgxODogMDAwMDAwMDAwMDAwMDA3
MAo+PiBbICA4MDUuODIzNDI4XSB4MTc6IDAwMDI0NDE0MDAwMDAwMDUgeDE2OiAwMDAwMDQ2NTA0
NDEwNDNjIHgxNTogMDQzODAwMDAwODk4MDgwNAo+PiBbICA4MDUuODMxNDA2XSB4MTQ6IDA3ZDgw
ODk4MDc4MDA3ODAgeDEzOiAwNDM4MDAwMDA4OTgwODA0IHgxMjogZmZmZjgwMDA4MTEzMzYzMAo+
PiBbICA4MDUuODM5Mzg0XSB4MTE6IDAwMDI0NDE0MDAwMDAwMDUgeDEwOiAwMDAwMDQ2NTA0NDEw
NDNjIHg5IDogZmZmZjgwMDA4MWE1OTAwMAo+PiBbICA4MDUuODQ3MzYxXSB4OCA6IDA3ZDgwODk4
MDc4MDA3ODAgeDcgOiAwMDAwMDAwMDAwMDAwMDAwIHg2IDogZmZmZjAwMDFmNWI0NTNjMAo+PiBb
ICA4MDUuODU1MzM5XSB4NSA6IGZmZmY4MDAwODA3NTBkYzAgeDQgOiAwMDAwMDAwMDAwMDAwOTY4
IHgzIDogMDAwMDAwMDAwMDAwMDk2OAo+PiBbICA4MDUuODYzMzE2XSB4MiA6IGZmZmY4MDAwODA3
NTE1MjAgeDEgOiAwMDAwMDAwMDAwMDAwOTY4IHgwIDogZmZmZjgwMDA4M2IyMDk2OAo+PiBbICA4
MDUuODcxMjk0XSBDYWxsIHRyYWNlOgo+PiBbICA4MDUuODc0MDEyXSAgcmVnbWFwX21taW9fcmVh
ZDMybGUrMHg4LzB4MjAKPj4gWyAgODA1Ljg3ODU4OF0gIF9yZWdtYXBfYnVzX3JlZ19yZWFkKzB4
NmMvMHhhYwo+PiBbICA4MDUuODgzMjYyXSAgX3JlZ21hcF9yZWFkKzB4NjAvMHhkOAo+PiBbICA4
MDUuODg3MTU5XSAgX3JlZ21hcF91cGRhdGVfYml0cysweGY0LzB4MTQwCj4+IFsgIDgwNS44OTE4
MzJdICByZWdtYXBfdXBkYXRlX2JpdHNfYmFzZSsweDY0LzB4YTAKPj4gWyAgODA1Ljg5Njc5N10g
IGR3X2hkbWlfcXBfYnJpZGdlX2F0b21pY19lbmFibGUrMHgxMzQvMHgyMjAKPj4gWyAgODA1Ljkw
MjczNF0gIGRybV9hdG9taWNfYnJpZGdlX2NoYWluX2VuYWJsZSsweDU0LzB4YzgKPj4gWyAgODA1
LjkwODM4MF0gIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMrMHgxOTQv
MHgyODAKPj4gWyAgODA1LjkxNTE5MF0gIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsX3Jw
bSsweDUwLzB4YTAKPj4gWyAgODA1LjkyMTEyNV0gIGNvbW1pdF90YWlsKzB4YTAvMHgxYTAKPj4g
WyAgODA1LjkyNTAyMV0gIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdCsweDE3Yy8weDFiMAo+PiBb
ICA4MDUuOTMwMjc2XSAgZHJtX2F0b21pY19jb21taXQrMHhiOC8weDEwMAo+PiBbICA4MDUuOTM0
NzU0XSAgZHJtX2F0b21pY19jb25uZWN0b3JfY29tbWl0X2RwbXMrMHhlMC8weDExMAo+PiBbICA4
MDUuOTQwNjkwXSAgZHJtX21vZGVfb2JqX3NldF9wcm9wZXJ0eV9pb2N0bCsweDFjMC8weDQyMAo+
PiBbICA4MDUuOTQ2NjI2XSAgZHJtX2Nvbm5lY3Rvcl9wcm9wZXJ0eV9zZXRfaW9jdGwrMHgzYy8w
eDY4Cj4+IFsgIDgwNS45NTI0NjVdICBkcm1faW9jdGxfa2VybmVsKzB4YzAvMHgxMzAKPj4gWyAg
ODA1Ljk1Njg0Nl0gIGRybV9pb2N0bCsweDIxNC8weDRhMAo+PiBbICA4MDUuOTYwNjQzXSAgX19h
cm02NF9zeXNfaW9jdGwrMHhhYy8weGY4Cj4+IFsgIDgwNS45NjUwMjVdICBpbnZva2Vfc3lzY2Fs
bCsweDQ4LzB4MTA0Cj4+IFsgIDgwNS45NjkyMTRdICBlbDBfc3ZjX2NvbW1vbi5jb25zdHByb3Au
MCsweDQwLzB4ZTAKPj4gWyAgODA1Ljk3NDQ3MF0gIGRvX2VsMF9zdmMrMHgxYy8weDI4Cj4+IFsg
IDgwNS45NzgxNzFdICBlbDBfc3ZjKzB4MzQvMHhlMAo+PiBbICA4MDUuOTgxNTgyXSAgZWwwdF82
NF9zeW5jX2hhbmRsZXIrMHgxMjAvMHgxMmMKPj4gWyAgODA1Ljk4NjQ0OV0gIGVsMHRfNjRfc3lu
YysweDE5MC8weDE5NAo+PiBbICA4MDUuOTkwNTQwXSBDb2RlOiBkNTAzMjAxZiBkNTAzMjAxZiBm
OTQwMDAwMCA4YjIxNDAwMCAoYjk0MDAwMDApCj4+Cj4+IEkgZ3Vlc3MgdGhhdCBtaWdodCBiZSBz
b21lIGNsb2NraW5nIGlzc3VlPwo+IAo+IEZvcmdvdCB0byBhZGQsIHRoaXMgaGFwcGVucyB3aGVu
IHRoZSBkaXNwbGF5IGhhcyBibGFua2VkIGFuZCB0aGVuIGlzCj4gc3VwcG9zZWQgdG8gdW5ibGFu
ayBhZ2Fpbi4KCkhtbSwgSSd2ZSBuZXZlciBlbmNvdW50ZXJlZCB0aGlzIHdoaWxlIHRlc3Rpbmcg
d2l0aCBteSB2Ni4xMS1yYzEgYmFzZWQKdHJlZS4gIFdoYXQgaXMgeW91ciBjdXJyZW50IGtlcm5l
bCBiYXNlPyAgRGlkIHlvdSBjaGFuZ2UgaXQgd2hpbGUKc3dpdGNoaW5nIGZyb20gdjMgdG8gdjY/
CgpJJ2xsIHJlYmFzZSBteSB0cmVlIG9udG8gbGF0ZXN0IGxpbnV4LW5leHQgYW5kIHNlZSBpZiBJ
IGNhbiByZXByb2R1Y2UuCgpUaGFua3MgZm9yIHJlcG9ydGluZyB0aGlzIQoKUmVnYXJkcywKQ3Jp
c3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
