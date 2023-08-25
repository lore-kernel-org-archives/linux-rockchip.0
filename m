Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EB74C3DA66
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 15:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=5ikwGf2u9rB+3hUFLstjSDQZHHT5pKfyLXgxfJI+SBs=; b=WLnGdJ2NYWdyCi
	gGqY2jedYEPwn1sKl2BJZCtDAIv/WbXlYq9tnriQFh+upaEdfVNoCTpvilYw269MnqnTp7xugBuvj
	gmNi1dGthcXzylmBCP7JrTNA+0rUv/NQ4/M4dzJLkzLGL8SxMFFJrn6vsTy9yZoXDE6KFiB/70Xpq
	fdtWEPUpqTZNAwO6rVEVJVTXLLG3W3grqXClExa5vkQItp0KdzrqlF4cngcYiHy6loHlPhaxDSCOs
	jBXxFGJgzIQVfWKR6inSkJl1DtEHSuVZV0NIcLrgvi433bWsMZ9yDeHZsTQPK7sh9kapnDM2IM4Y+
	n+cx5Ut3P9PySKnEkPjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZYO5-005e4z-0F;
	Fri, 25 Aug 2023 15:06:13 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZYNy-005e3s-0c;
	Fri, 25 Aug 2023 15:06:10 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1c:f269::1])
	by madras.collabora.co.uk (Postfix) with ESMTP id 6E9BA6607285;
	Fri, 25 Aug 2023 16:06:01 +0100 (BST)
From: "Helen Mae Koike Fornazier" <helen.koike@collabora.com>
In-Reply-To: <CAF6AEGsdR4XMQ73mwNEE-fntPFLbQrxmzdoWchjReoVXKexdVw@mail.gmail.com>
X-Forward: 127.0.0.1
Date: Fri, 25 Aug 2023 16:06:01 +0100
Cc: "Jani Nikula" <jani.nikula@linux.intel.com>, "Vignesh Raman" <vignesh.raman@collabora.com>, dri-devel@lists.freedesktop.org, emma@anholt.net, linux-doc@vger.kernel.org, david.heidelberg@collabora.com, linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, daniels@collabora.com, martin.blumenstingl@googlemail.com, robclark@freedesktop.org, anholt@google.com, linux-mediatek@lists.infradead.org, mripard@kernel.org, matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com, neil.armstrong@linaro.org, guilherme.gallo@collabora.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de
To: "Rob Clark" <robdclark@gmail.com>
MIME-Version: 1.0
Message-ID: <3f08-64e8c380-3-f083520@11689262>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/6] =?utf-8?q?drm=3A?==?utf-8?q?_ci=3A?= Force 
 db410c to host mode
User-Agent: SOGoMail 5.8.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_080606_487261_8ED8F673 
X-CRM114-Status: GOOD (  37.64  )
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

T24gRnJpZGF5LCBBdWd1c3QgMjUsIDIwMjMgMTE6NDEgLTAzLCBSb2IgQ2xhcmsgPHJvYmRjbGFy
a0BnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBGcmksIEF1ZyAyNSwgMjAyMyBhdCA3OjM04oCvQU0g
SGVsZW4gTWFlIEtvaWtlIEZvcm5hemllcgo+IDxoZWxlbi5rb2lrZUBjb2xsYWJvcmEuY29tPiB3
cm90ZToKPiA+Cj4gPiBPbiBGcmlkYXksIEF1Z3VzdCAyNSwgMjAyMyAxMTozMCAtMDMsIFJvYiBD
bGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gPiBPbiBGcmksIEF1ZyAy
NSwgMjAyMyBhdCA2OjU24oCvQU0gSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBPbiBGcmksIDI1IEF1ZyAyMDIzLCBWaWduZXNo
IFJhbWFuIDx2aWduZXNoLnJhbWFuQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gPiA+ID4gRm9y
Y2UgZGI0MTBjIHRvIGhvc3QgbW9kZSB0byBmaXggbmV0d29yayBpc3N1ZSB3aGljaCByZXN1bHRz
IGluIGZhaWx1cmUKPiA+ID4gPiA+IHRvIG1vdW50IHJvb3QgZnMgdmlhIE5GUy4KPiA+ID4gPiA+
IFNlZSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4Ly0vY29tbWl0
L2NiNzJhNjI5YjhjMTVjODBhNTRkZGE1MTA3NDNjZWZkMWM0YjY1YjgKPiA+ID4gPiA+Cj4gPiA+
ID4gPiBTaW5jZSB0aGlzIGZpeCBpcyBub3Qgc2VudCB1cHN0cmVhbSwgYWRkIGl0IHRvIGJ1aWxk
LnNoIHNjcmlwdAo+ID4gPiA+ID4gYmVmb3JlIGJ1aWxkaW5nIHRoZSBrZXJuZWwgYW5kIGR0cy4g
QmV0dGVyIGFwcHJvYWNoIHdvdWxkIGJlCj4gPiA+ID4gPiB0byB1c2UgZGV2aWNldHJlZSBvdmVy
bGF5cy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWduZXNoIFJhbWFuIDx2
aWduZXNoLnJhbWFuQGNvbGxhYm9yYS5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vY2kvYnVpbGQuc2ggfCA0ICsrKysKPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9jaS9idWlsZC5zaCBiL2RyaXZlcnMvZ3B1L2RybS9jaS9idWlsZC5zaAo+ID4g
PiA+ID4gaW5kZXggN2IwMTQyODdhMDQxLi5jMzk4MzRiZDZiZDcgMTAwNjQ0Cj4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vY2kvYnVpbGQuc2gKPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9jaS9idWlsZC5zaAo+ID4gPiA+ID4gQEAgLTcwLDYgKzcwLDEwIEBAIGlmIFsgLXog
IiRDSV9NRVJHRV9SRVFVRVNUX1BST0pFQ1RfUEFUSCIgXTsgdGhlbgo+ID4gPiA+ID4gICAgICBm
aQo+ID4gPiA+ID4gIGZpCj4gPiA+ID4gPgo+ID4gPiA+ID4gKyMgRm9yY2UgZGI0MTBjIHRvIGhv
c3QgbW9kZSB0byBmaXggbmV0d29yayBpc3N1ZSB3aGljaCByZXN1bHRzIGluIGZhaWx1cmUgdG8g
bW91bnQgcm9vdCBmcyB2aWEgTkZTLgo+ID4gPiA+ID4gKyMgU2VlIGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgvLS9jb21taXQvY2I3MmE2MjliOGMxNWM4MGE1NGRk
YTUxMDc0M2NlZmQxYzRiNjViOAo+ID4gPiA+ID4gK3NlZCAtaSAnLyZ1c2Igey8sL3N0YXR1cyA9
ICJva2F5Ijsvcy9zdGF0dXMgPSAib2theSI7LyZcblx0ZHJfbW9kZSA9ICJob3N0IjsvJyBhcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vYXBxODAxNi1zYmMuZHRzCj4gPiA+ID4gPiArCj4gPiA+ID4K
PiA+ID4gPiBJdCBzZWVtcyBsaWtlIGEgcmVhbGx5IGJhZCBpZGVhIHRvIG1lIHRvIGhhdmUgdGhl
IENJIGJ1aWxkIG1vZGlmeSB0aGUKPiA+ID4gPiBzb3VyY2UgdHJlZSBiZWZvcmUgYnVpbGRpbmcu
Cj4gPiA+ID4KPiA+ID4gPiBUaGUga2VybmVsIGJlaW5nIGJ1aWx0IHdpbGwgaGF2ZSBhIGRpcnR5
IGdpdCByZXBvLCBhbmQgdGhlIGxvY2FsdmVyc2lvbgo+ID4gPiA+IHdpbGwgaGF2ZSAtZGlydHkg
aW4gaXQuCj4gPiA+ID4KPiA+ID4gPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBkbyBv
dXQtb2YtdHJlZSBidWlsZHMgYW5kIGFzc3VtZSB0aGUKPiA+ID4gPiBzb3VyY2UgaXMgcmVhZC1v
bmx5Lgo+ID4gPgo+ID4gPiBXZSBoYXZlIHRoZSAke3RhcmdldF9icmFuY2h9LWV4dGVybmFsLWZp
eGVzIG1lY2hhbmlzbSB0byBtZXJnZQo+ID4gPiBuZWNlc3NhcnkgY2hhbmdlcyBiZWZvcmUgYnVp
bGRpbmcgdGhlIGtlcm5lbCBmb3IgQ0kuICBXaGljaCBpcwo+ID4gPiBuZWNlc3NhcnkgZm9yIGEg
Y291cGxlIG9mIHJlYXNvbnM6Cj4gPgo+ID4gU2hvdWxkIHdlIGNyZWF0ZSBhbiBvZmZpY2lhbCB0
b3BpYy9kcm0tY2ktZXh0ZXJuYWwtZml4ZXMgYnJhbmNoID8KPiAKPiBIbW0sIG1heWJlLi4gSSBn
dWVzcyBhcyB3ZSBleHBhbmQgdGhpcyB0byBtb3JlIGRyaXZlciB0cmVlcywgYW5kIHdhbnQKPiB0
byBiZSBhYmxlIHRvIHJlLXJ1biBDSSBpbiB0aGUgZHJtIHRyZWUgYWZ0ZXIgbWVyZ2VzIHRvCj4g
ZHJtLW5leHQvZHJtLWZpeGVzLCB3ZSBtYXliZSB3YW50IHRvIGhhdmUgY2VudHJhbAo+IGRybS1u
ZXh0LWV4dGVybmFsLWZpeGVzIGFuZCBkcm0tZml4ZXMtZXh0ZXJuYWwtZml4ZXMuICBJIGd1ZXNz
IHdlIGNhbgo+IGtlZXAgdGhvc2UgYmFzZWQgb24gZHJtLW5leHQgYW5kIGRybS1maXhlcz8gIEFu
ZCBpZiB0aGVyZSB3b3VsZCBiZQo+IGNvbmZsaWN0cyBiZWNhdXNlLCBzYXksICR7ZHJpdmVyfS1u
ZXh0IGlzIGJlaGluZCBkcm0tbmV4dCwgdGhlbgo+ICR7ZHJpdmVyfS1uZXh0IGNvdWxkIGJlIHJl
YmFzZWQgb24gZHJtLW5leHQ/Cj4gCgp0YmggdGhpcyBpcyBvbmUgb2YgdGhlIHJlYXNvbnMgSSB3
b3VsZCBwcmVmZXIgaW4tY29kZSBmaXhlcyBpbnN0ZWFkIG9mCmNvbW1pdHMgb24gYSAtZXh0ZXJu
YWwtZml4ZXMgYnJhbmNoLCBzaW5jZSBpdCBzZWVtcyB0aGluZ3Mgc3RhcnQgdG8gYmVjb21lCmNv
bXBsZXggdG8gbWFuYWdlIGFsbCBkaWZmZXJlbnQgdHJlZXMgZm9yIHBlb3BsZSBleGVjdXRpbmcg
Y2kgdGVzdHMKb24gZGlmZmVyZW50IGhpc3RvcnkgcG9pbnRzLCBidXQgSSBkb24ndCBvcHBvc2Ug
Z29pbmcgZm9yIC1leHRlcm5hbC1maXhlcwplaXRoZXIuCgpSZWdhcmRzLApIZWxlbgoKPiBCUiwK
PiAtUgo+IAo+ID4gUmVnYXJkcywKPiA+IEhlbGVuCj4gPgo+ID4gPgo+ID4gPiAxKSBwYXRjaGVz
IGxpa2UgdGhpcyB3aGljaCBhcmVuJ3QgYXBwcm9wcmlhdGUgdXBzdHJlYW0gYnV0IG5lY2Vzc2Fy
eQo+ID4gPiBkdWUgdG8gdGhlIENJIGxhYiBzZXR1cAo+ID4gPiAyKSB0YXJnZXQgYnJhbmNoIGlm
IG9mdGVuIGJhc2VkIG9uIGFuIGVhcmx5IC1yYywgYW5kIGl0IGlzbid0IHVuaGVhcmQKPiA+ID4g
b2YgdG8gbmVlZCBzb21lIGZpeCBmb3Igc29tZSBib2FyZCBvciBhbm90aGVyIHdoaWNoIGlzbid0
IGFwcHJvcHJpYXRlCj4gPiA+IHRvIGxhbmQgdmlhIGRybS1uZXh0Cj4gPiA+Cj4gPiA+IFdlIHNo
b3VsZCB1c2UgdGhlIC1leHRlcm5hbC1maXhlcyBicmFuY2ggbWVjaGFuaXNtIGZvciBwYXRjaGVz
IGxpa2UgdGhpcyBvbmUuCj4gPiA+Cj4gPiA+IEJSLAo+ID4gPiAtUgo+ID4gPgo+ID4gPiA+ID4g
IGZvciBvcHQgaW4gJEVOQUJMRV9LQ09ORklHUzsgZG8KPiA+ID4gPiA+ICAgIGVjaG8gQ09ORklH
XyRvcHQ9eSA+PiBkcml2ZXJzL2dwdS9kcm0vY2kvJHtLRVJORUxfQVJDSH0uY29uZmlnCj4gPiA+
ID4gPiAgZG9uZQo+ID4gPiA+Cj4gPiA+ID4gRGl0dG8gZm9yIHRoZSBjb25maWcgY2hhbmdlcyBp
biB0aGUgY29udGV4dCBoZXJlLiBUaG9zZSBhcmUgZmlsZXMgaW4KPiA+ID4gPiBnaXQsIGRvbid0
IGNoYW5nZSB0aGVtLgo+ID4gPiA+Cj4gPiA+ID4gU2hvdWxkbid0IHRoaXMgdXNlIHNvbWV0aGlu
ZyBsaWtlICdzY3JpcHRzL2NvbmZpZyAtLWVuYWJsZScgb3IKPiA+ID4gPiAnc2NyaXB0cy9jb25m
aWcgLS1kaXNhYmxlJyBvbiB0aGUgLmNvbmZpZyBmaWxlIHRvIGJlIHVzZWQgZm9yIGJ1aWxkaW5n
Cj4gPiA+ID4gaW5zdGVhZD8KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gQlIsCj4gPiA+ID4gSmFu
aS4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gLS0KPiA+ID4gPiBKYW5pIE5pa3VsYSwgSW50ZWwg
T3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCj4gPgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
