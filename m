Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E906606A33E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HSFFCLUb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=dPmpj/Gh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rjW4lJ37wne3BkBc5B1T/95eslcfxCZwo/9cpmHURyQ=; b=HSFFCLUbpTqijMHdUPIg3/YGV/
	fE+dTnE3vqs3wlKPuMCrUlYE6UMfVAT4OVukAIssJXtjEH6+fVrFpegOUjvm7zulZY5gGPRUskNfx
	/wGMFkjekWot/DtR7xgteMqCJwadz6GQZ9wVwJRJpbuZJVElzmqdi/RjrbDCNLSIKNzYbb2F6IU07
	xh+qw2K0BzDsbez++SgRNFVfgO/ntpvlepWXMUzx/rk26bA3N4gWyqB8SrJLca4EO9x2IzOsrpfKe
	Da3hnSEunbJsVRkR51AJ/PfiUj2sCU9TKR0HhmC5GWsV+Bep9jPXqLiKULCRymPF1CfqSRKvB32zd
	c8yt5OMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xONDM-00000003siJ-3q2b;
	Tue, 03 Nov 2026 22:42:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xONDK-00000003shh-3osa;
	Tue, 03 Nov 2026 22:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=oZCv3BLFiwyhWSLzcKkJNHbX0W0rZqJRdfbk2LsVS0A=; b=dPmpj/GhuifNakB/0LT3M8p6i6
	7sr/YzfhbS90hVlA/r3eJiIoF2WK0qoCLS3orNC+tgWMikIvDs+MHoz6drDRROpUZb+pmitlEsRZd
	PXwZgU4Qnyp2dK5DwFUYXEAePs/0TBfHX0BEbR0MuLi7wTDVjQBj5FqL5CrFHwQnoeK4O4goGXljp
	U1XSBbX+Y2xr7CU/Q7vTgeINEQPIG/ftwufX/zsYbhyn3HwZcRGwKacJRZU/2rZ2S9QxmJU7BHCrh
	rgiPxVoPS+I4jrjeIl+bvONYjNomvic+0VFURXNS4oJrn0vJ37MY1R+qGmZphUQZgMXGi7jZ+2tao
	Wuah6C3g==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 jeff.hugo@oss.qualcomm.com, rfoss@kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH v15 01/15] accel/rocket: request the core clocks by name
Date: Tue, 03 Nov 2026 23:42:19 +0100
Message-ID: <3188623.WAvfycf1tz@diego>
In-Reply-To: <20261101082307.151957-2-gahing@gahingwoo.com>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-2-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_144246_974089_DAF86AE6 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMDk6MjI6NTMgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IEZyb206IElnb3IgUGF1bm92aWMgPHJv
eWFsbmV0MDI2QGdtYWlsLmNvbT4KPiAKPiByb2NrZXRfY29yZV9pbml0KCkgaGFuZHMgY29yZS0+
Y2xrcyB0byBkZXZtX2Nsa19idWxrX2dldCgpIHdpdGhvdXQgZXZlcgo+IHNldHRpbmcgdGhlIC5p
ZCBtZW1iZXJzLiBUaGUgcm9ja2V0X2NvcmUgYXJyYXkgaXMgYWxsb2NhdGVkIHdpdGgKPiBkZXZt
X2tjYWxsb2MoKSBpbiByb2NrZXRfZGV2aWNlX2luaXQoKSwgYW5kIHJvY2tldF9wcm9iZSgpIG9u
bHkgZmlsbHMgaW4KPiAucmRldiwgLmRldiBhbmQgLmluZGV4LCBzbyBhbGwgZm91ciBjbGtfYnVs
a19kYXRhIGVudHJpZXMgYXJlIHJlcXVlc3RlZAo+IHdpdGggYSBOVUxMIGNvbl9pZCAodW5saWtl
IGNvcmUtPnJlc2V0cywgd2hvc2UgaWRzIGFyZSBzZXQgYSBmZXcgbGluZXMKPiBhYm92ZSkuCj4g
Cj4gY2xrX2dldChkZXYsIE5VTEwpIGVuZHMgdXAgaW4gb2ZfY2xrX2dldF9odyhucCwgMCwgTlVM
TCksIGFuZAo+IG9mX3BhcnNlX2Nsa3NwZWMoKSBvbmx5IGNvbnN1bHRzICJjbG9jay1uYW1lcyIg
d2hlbiBhIG5hbWUgd2FzIHBhc3NlZCwgc28KPiB0aGUgaW5kZXggc3RheXMgMCBmb3IgYWxsIGZv
dXIgZW50cmllcy4gRXZlcnkgZW50cnkgdGhlcmVmb3JlIGVuZHMgdXAKPiBob2xkaW5nIGEgaGFu
ZGxlIHRvIHRoZSAqZmlyc3QqIGNsb2NrIG9mIHRoZSBEVCAiY2xvY2tzIiBwcm9wZXJ0eSwgaS5l
Lgo+IEFDTEtfTlBVbi4gTm90aGluZyBmYWlsczogcHJvYmUgc3VjY2VlZHMgYW5kIHRoZSBkcml2
ZXIgYmVsaWV2ZXMgaXQgb3ducwo+IGZvdXIgZGlmZmVyZW50IGNsb2Nrcy4KPiAKPiBUaGUgY29u
c2VxdWVuY2UgaXMgdGhhdCByb2NrZXRfZGV2aWNlX3J1bnRpbWVfcmVzdW1lKCkgcHJlcGFyZXMg
YW5kIGVuYWJsZXMKPiB0aGUgQVhJIGNsb2NrIGZvdXIgdGltZXMsIHdoaWxlIGhjbGssIHBjbGsg
YW5kIC0gbW9zdCBpbXBvcnRhbnRseSAtIHRoZSBOUFUKPiBjb21wdXRlIGNsb2NrICgibnB1Iiwg
U0NNSV9DTEtfTlBVIG9uIFJLMzU4OCkgYXJlIG5ldmVyIHByZXBhcmVkIG9yIGVuYWJsZWQKPiBi
eSB0aGlzIGRyaXZlciBhdCBhbGwuIFRoZSBOUFUgc3RpbGwgd29ya3Mgb25seSBiZWNhdXNlIHRo
ZSBSb2NrY2hpcAo+IHBvd2VyLWRvbWFpbiBkcml2ZXIgc2V0cyBHRU5QRF9GTEFHX1BNX0NMSyBh
bmQgaXRzIGF0dGFjaF9kZXYoKSBjYWxsYmFjawo+IHdhbGtzIHRoZSBkZXZpY2Ugbm9kZSB3aXRo
IG9mX2Nsa19nZXQoKSBhbmQgYWRkcyBldmVyeSBjbG9jayB0byB0aGUgcG1fY2xrCj4gbGlzdCwg
c28gZ2VucGQgaGFwcGVucyB0byBrZWVwIHRoZSByZW1haW5pbmcgY2xvY2tzIHJ1bm5pbmcuIFRo
ZSBidWcgaXMKPiB0aGVyZWZvcmUgbGF0ZW50IHRvZGF5LCBidXQgaXQgbWVhbnMgdGhlIGRyaXZl
ciBob2xkcyBubyByZWZlcmVuY2UgdG8gdGhlCj4gY2xvY2sgdGhhdCBhY3R1YWxseSBmZWVkcyB0
aGUgTlBVLCB3aGljaCBzdGFuZHMgaW4gdGhlIHdheSBvZiBhbnkgZnV0dXJlCj4gZnJlcXVlbmN5
IHNjYWxpbmcgKE9QUC9kZXZmcmVxKSB3b3JrLgo+IAo+IEZvdW5kIG9uIGFuIE9yYW5nZSBQaSA1
IFBsdXMgKFJLMzU4OCkgYnkgcmVhZGluZyB0aGUgbGl2ZSBjbG9jayB0cmVlOgo+IC9zeXMva2Vy
bmVsL2RlYnVnL2Nsay9jbGtfc3VtbWFyeSBzaG93cyBmb3VyICJmZGFiMDAwMC5ucHUiIGNvbnN1
bWVyCj4gaGFuZGxlcyBvbiBhY2xrX25wdTAgKGFuZCBsaWtld2lzZSBvbiBhY2xrX25wdTEvYWNs
a19ucHUyIGZvciB0aGUgb3RoZXIgdHdvCj4gY29yZXMpLCB3aGlsZSBoY2xrX25wdTAsIHBjbGtf
bnB1X3Jvb3QgYW5kIHNjbWlfY2xrX25wdSBoYXZlIG5vCj4gImZkYWIwMDAwLm5wdSIgY29uc3Vt
ZXIgYXQgYWxsIC0gdGhlaXIgb25seSBjb25zdW1lcnMgYXJlIHRoZQo+ICJucHVAZmRhYjAwMDAi
IGhhbmRsZXMgY3JlYXRlZCBieSB0aGUgcG93ZXItZG9tYWluIGRyaXZlciB2aWEgb2ZfY2xrX2dl
dCgpLgo+IAo+IFNldCB0aGUgaWRzIGV4cGxpY2l0bHksIGluIHRoZSBvcmRlciBtYW5kYXRlZCBi
eSB0aGUgYmluZGluZwo+IChEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3Jv
Y2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCk6Cj4gYWNsaywgaGNsaywgbnB1LCBwY2xrLiBB
ZnRlciB0aGUgY2hhbmdlIHRoZSBkcml2ZXIgaG9sZHMgb25lIGhhbmRsZSBwZXIKPiBkaXN0aW5j
dCBjbG9jayBhbmQgY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUoKSBjb3ZlcnMgYWxsIGZvdXIuCj4g
Cj4gTm90ZSB0aGF0IHRoaXMgaXMgYSB1c2VyLXZpc2libGUgdGlnaHRlbmluZyBmb3Igb3V0LW9m
LXRyZWUgRFRzOiB0aGUgb2xkCj4gTlVMTC1pZCByZXF1ZXN0cyByZXNvbHZlZCBieSBpbmRleCBh
bmQgc3VjY2VlZGVkIG5vIG1hdHRlciB3aGF0Cj4gImNsb2NrLW5hbWVzIiBjb250YWluZWQsIHdo
aWxlIHRoZSBuYW1lZCByZXF1ZXN0cyBmYWlsIHByb2JlIHdpdGggLUVOT0VOVAo+IHdoZW4gb25l
IG9mIHRoZSBmb3VyIG5hbWVzIGlzIG1pc3NpbmcuIFRoYXQgaXMgdGhlIHJpZ2h0IG91dGNvbWUg
Zm9yCj4gaW4tdHJlZSB1c2VycyAtIHRoZSBiaW5kaW5nIHJlcXVpcmVzIGV4YWN0bHkgdGhlc2Ug
Zm91ciBjbG9jay1uYW1lcyBhbmQKPiByazM1ODgtYmFzZS5kdHNpIGNhcnJpZXMgdGhlbSBvbiBh
bGwgdGhyZWUgY29yZXMgLSBidXQgYSBEVCB0aGF0IHJlbGllZCBvbgo+IHRoZSBwZXJtaXNzaXZl
IGxvb2t1cCBnb2VzIGZyb20gc2lsZW50bHkgcnVubmluZyBvbiB0aGUgd3JvbmcgY2xvY2sgaGFu
ZGxlcwo+IHRvIG5vdCBwcm9iaW5nIGF0IGFsbCwgc28gcmVjb3JkIHRoZSBjaGFuZ2UgaGVyZSB3
aGVyZSBnaXQgbG9nIHdpbGwgZmluZAo+IGl0Lgo+IAo+IEZpeGVzOiBlZDk4MjYxYjQxNjggKCJh
Y2NlbC9yb2NrZXQ6IEFkZCBhIG5ldyBkcml2ZXIgZm9yIFJvY2tjaGlwJ3MgTlBVIikKPiBTaWdu
ZWQtb2ZmLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+Cj4gVGVzdGVk
LWJ5OiBTaWRvbmcgWWFuZyA8c2lkb25nLnlhbmdAZnVyaW9zYS5haT4KPiBUZXN0ZWQtYnk6IERp
ZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlrQGNrbm93LXRlY2guY29tPiAgIyBOYW5vUEMtVDYgTFRT
LCBOYW5vUEMtVDYgUGx1cwo+IFJldmlld2VkLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0
aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogSmlheGluZyBIdSA8Z2Fo
aW5nQGdhaGluZ3dvby5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmlheGluZyBIdSA8Z2FoaW5nQGdh
aGluZ3dvby5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4KCm5pdDogdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiBjb3VsZCBiZSB3YXkgc2hvcnRlciwgZm9y
IHRoYXQgc21hbGwgY2hhbmdlLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
