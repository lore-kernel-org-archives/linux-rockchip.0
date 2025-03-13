Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E7E2C28B28
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 00:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMuEFL5Oc/A5ZMQ80ciGVsOQXn2o1pid0q4GXK6CH7k=; b=kbensmxTWgzwRw
	U88l30HGOIKsQlJ5ZCI755eOinQZ9py/f1L2u5BPEifWaPT+Bz4CU6vBVYJywDQ8Ye1xs3p/bNGTf
	lAGoS3Rsv/JTw3vkxtInayzISKR8eB71CYLWp+4EM+flMBV70TowFVSWc9XK8EsIwvhDXXSiZN6J7
	x+PTCgDc2n4x3n2z6K5Sd2DdG/yxUYIHkkWjPJZNRreV8RAvyTyqB8gFkNZ0hptCs9ckigT6DEPGA
	Kut3SwLEJfrX9VQaeE2ppyptvxZyn4O+VxigRbiSGMA2J5FbmEUdWLzV22I4KJX7mOCDXwjXh0qF+
	4dSAJqke/o2xAa6djvZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsWMw-00000009oei-1k0k;
	Thu, 13 Mar 2025 00:24:14 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsWMt-00000009odb-3YB3;
	Thu, 13 Mar 2025 00:24:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=LUIRGjiYhkymirwUyamzHMkT7+5Pwd4TLQYbSIfYGWI=; b=j
	wfirBU4GfIJ6MqCBg3yhHr1WoFm0jK4ShM5ATtANfyx47SSDyJeZXTbtN5uhiIXj
	/M6ZDO1Y2ZSUDw3nXJSPIRg83JGXVtxbOtNBUX0ZfVFOIUEZoxzNfwGYn4dpTsdc
	2Gdmb9j3M2uToA01+Rw2ElbZSZtj/X3ipKlqNGjqPY=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-123 (Coremail) ; Thu, 13 Mar 2025 08:23:43 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 13 Mar 2025 08:23:43 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Piotr Oniszczuk" <piotr.oniszczuk@gmail.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com, lumag@kernel.org,
	devicetree@vger.kernel.org, hjc@rock-chips.com, mripard@kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org,
	"Andy Yan" <andy.yan@rock-chips.com>, krzk+dt@kernel.org,
	robh@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH v2 2/7] drm/bridge: synopsys: Add DW DPTX Controller
 support library
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <61E9B36C-8568-4C0E-A9A7-07FF612912AA@gmail.com>
References: <20250312104214.525242-1-andyshrk@163.com>
 <20250312104214.525242-3-andyshrk@163.com>
 <61E9B36C-8568-4C0E-A9A7-07FF612912AA@gmail.com>
X-NTES-SC: AL_Qu2fA/SZukwp5SOcYOlSyjNW+7xfHKv6+qRChMQvQtsqqTHr9T0KcVtuP1XR3//fv0njXmWodzM39rfUa5fI
MIME-Version: 1.0
Message-ID: <381bbdeb.342.1958ce2b7f8.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eygvCgCnT4CPJdJnmyl9AA--.21746W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAgPXmfSHTa4sgABsk
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_172412_269863_B7747479 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

CkhpIFBpb3RyLArlnKggMjAyNS0wMy0xMiAyMjoyMzoxNe+8jCJQaW90ciBPbmlzemN6dWsiIDxw
aW90ci5vbmlzemN6dWtAZ21haWwuY29tPiDlhpnpgZPvvJoKPgo+Cj4+IFdpYWRvbW/Fm8SHIG5h
cGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPiB3IGRuaXUgMTIgbWFyIDIw
MjUsIG8gZ29kei4gMTE6NDI6Cj4+IAo+PiBGcm9tOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1j
aGlwcy5jb20+Cj4+IAo+PiBUaGUgRFcgRFAgVFggQ29udHJvbGxlciBpcyBjb21wbGlhbnQgd2l0
aCB0aGUgRGlzcGxheVBvcnQgU3BlY2lmaWNhdGlvbgo+PiBWZXJzaW9uIDEuNCB3aXRoIHRoZSBm
b2xsb3dpbmcgZmVhdHVyZXM6Cj4+IAo+PiAqIERpc3BsYXlQb3J0IDEuNGEKPj4gKiBNYWluIExp
bms6IDEvMi80IGxhbmVzCj4+ICogTWFpbiBMaW5rIFN1cHBvcnQgMS42MkdicHMsIDIuN0dicHMs
IDUuNEdicHMgYW5kIDguMUdicHMKPj4gKiBBVVggY2hhbm5lbCAxTWJwcwo+PiAqIFNpbmdsZSBT
dHJlYW0gVHJhbnNwb3J0KFNTVCkKPj4gKiBNdWx0aXN0cmVhbSBUcmFuc3BvcnQgKE1TVCkKPj4g
KiBUeXBlLUMgc3VwcG9ydCAoYWx0ZXJuYXRlIG1vZGUpCj4+ICogSERDUCAyLjIsIEhEQ1AgMS4z
Cj4+ICogU3VwcG9ydHMgdXAgdG8gOC8xMCBiaXRzIHBlciBjb2xvciBjb21wb25lbnQKPj4gKiBT
dXBwb3J0cyBSQkcsIFlDYkNyNDo0OjQsIFlDYkNyNDoyOjIsIFlDYkNyNDoyOjAKPj4gKiBQaXhl
bCBjbG9jayB1cCB0byA1OTRNSHoKPj4gKiBJMlMsIFNQRElGIGF1ZGlvIGludGVyZmFjZQo+PiAK
Pj4gQWRkIGxpYnJhcnkgd2l0aCBjb21tb24gaGVscGVycyB0byBtYWtlIGl0IGNhbiBiZSBzaGFy
ZWQgd2l0aAo+PiBvdGhlciBTb0MuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8YW5k
eS55YW5Acm9jay1jaGlwcy5jb20+Cj4+IAo+PiAtLS0KPj4gCj4+IENoYW5nZXMgaW4gdjI6Cj4+
IC0gRml4IGNvbXBpbGUgZXJyb3Igd2hlbiBidWlsZCBhcyBtb2R1bGUKPj4gLSBBZGQgcGh5IGlu
aXQKPj4gLSBPbmx5IHVzZSBvbmUgZHdfZHBfbGlua190cmFpbl9zZXQKPj4gLSBpbmxpbmUgZHdf
ZHBfcGh5X3VwZGF0ZV92c19lbXBoCj4+IC0gVXNlIGRwX3NkcAo+PiAtIENoZWNrIHJldHVybiB2
YWx1ZSBvZiBkcm1fbW9kZXNldF9sb2NrCj4+IC0gTWVyZ2UgY29kZSBpbiBhdG9taWNfcHJlX2Vu
YWJsZS9tb2RlX2ZpeHVwIHRvIGF0b21pY19jaGVjawo+PiAtIFJldHVybiBOVUxMIGlmIGNhbid0
IGZpbmQgYSBzdXBwb3J0ZWQgb3V0cHV0IGZvcm1hdAo+PiAtIEZpeCBtYXhfbGlua19yYXRlIGZy
b20gcGxhdF9kYXRhCj4+IAo+Cj5BbmR5LAo+Cj5KdXN0IHNtYWxsIFE6IGRvIHYyIG5lZWRzIHNv
bWV0aGluZyBleHRyYSB0byBnZXQgaXQgd29ya2luZyAocGFydGljdWxhciBrZXJuZWwgdmVyIG9y
IGV4dHJhIGRlcGVuZGVuY3kgcGF0Y2hlcyk/Cj5JIGp1c3QgcmVwbGFjZWQgdjEgdG8gdjIgYW5k
IGRwIHN0b3BwZWQgdG8gd29yayBmb3IgbWUuCgpUaGlzIHNlcmllcyBzdGlsbCAgYmFzZWQgb24g
TGludXggNi4xNCByYzQuCgpEaWQgeW91IGFwcGx5IHRoZSB0aHJlZSBkZXBlbmRlbmN5IHBhdGNo
IG1lbnRpb25lZCBpbiBteSBjb3ZlciBsZXR0ZXI/CgoKPgo+ZS5nLiBvbiByb2NrNWEgaeKAmW0g
Z2V0dGluZzoKPgo+cm9vdEBteXRoLWZyb250ZW5kLWZhZmM1M2I1OTFhNjp+ICMgZG1lc2cgfCBn
cmVwIGRybQo+WyAgICA5LjI0NTI4NF0gcGFudGhvciBmYjAwMDAwMC5ncHU6IFtkcm1dIGNsb2Nr
IHJhdGUgPSAxOTgwMDAwMDAKPlsgICAgOS4yNDk0NjRdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBb
ZHJtXSBtYWxpLWc2MTAgaWQgMHhhODY3IG1ham9yIDB4MCBtaW5vciAweDAgc3RhdHVzIDB4NQo+
WyAgICA5LjI0OTQ3Ml0gcGFudGhvciBmYjAwMDAwMC5ncHU6IFtkcm1dIEZlYXR1cmVzOiBMMjow
eDcxMjAzMDYgVGlsZXI6MHg4MDkgTWVtOjB4MzAxIE1NVToweDI4MzAgQVM6MHhmZgo+WyAgICA5
LjI0OTQ3NF0gcGFudGhvciBmYjAwMDAwMC5ncHU6IFtkcm1dIHNoYWRlcl9wcmVzZW50PTB4NTAw
MDUgbDJfcHJlc2VudD0weDEgdGlsZXJfcHJlc2VudD0weDEKPlsgICAgOS4yNTc5NzldIHBhbnRo
b3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBGaXJtd2FyZSBwcm90ZWN0ZWQgbW9kZSBlbnRyeSBub3Qg
YmUgc3VwcG9ydGVkLCBpZ25vcmluZwo+WyAgICA5LjI1ODAzMF0gcGFudGhvciBmYjAwMDAwMC5n
cHU6IFtkcm1dIEZpcm13YXJlIGdpdCBzaGE6IDgxNGI0N2I1NTExNTkwNjdiNjdhMzdjNGU5YWRk
YTQ1OGFkOWQ4NTIKPlsgICAgOS4yNTg2MDRdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBD
U0YgRlcgdXNpbmcgaW50ZXJmYWNlIHYxLjEuMCwgRmVhdHVyZXMgMHgwIEluc3RydW1lbnRhdGlv
biBmZWF0dXJlcyAweDcxCj5bICAgIDkuMjU5NjcxXSBbZHJtXSBJbml0aWFsaXplZCBwYW50aG9y
IDEuMy4wIGZvciBmYjAwMDAwMC5ncHUgb24gbWlub3IgMAo+WyAgICA5LjMyNDM1M10gcm9ja2No
aXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZGQ5MDAwMC52b3AgKG9wcyB2b3AyX2Nv
bXBvbmVudF9vcHMpCj5bICAgIDkuMzI0NjE3XSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0
ZW06IGJvdW5kIGZkZTUwMDAwLmRwIChvcHMgZHdfZHBfcm9ja2NoaXBfY29tcG9uZW50X29wcykK
PlsgICAgOS4zMjUyMDJdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogYm91bmQgZmRl
ODAwMDAuaGRtaSAob3BzIGR3X2hkbWlfcXBfcm9ja2NoaXBfb3BzKQo+WyAgICA5LjMyNTUwNl0g
W2RybV0gSW5pdGlhbGl6ZWQgcm9ja2NoaXAgMS4wLjAgZm9yIGRpc3BsYXktc3Vic3lzdGVtIG9u
IG1pbm9yIDEKPlsgICAgOS4zMjU1MzFdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTog
W2RybV0gQ2Fubm90IGZpbmQgYW55IGNydGMgb3Igc2l6ZXMKPlsgICAgOS4zMjU1OTRdIHJvY2tj
aGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogW2RybV0gQ2Fubm90IGZpbmQgYW55IGNydGMgb3Ig
c2l6ZXMgIAo+Cj5kcCBzdGF0dXMgaXMgIm5vdCBjb25uZWN0ZWQiCj4KPnJlcGxhY2luZyBvbmx5
IHRoaXMgcGF0Y2ggYmFjayB0byB2MSBicmluZ3MgZHAgYmFjayB0byB3b3JrLgo+Cj4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
