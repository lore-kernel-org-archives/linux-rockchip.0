Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B4C606A330
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 19:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ARmRI1sR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=xaqU/oDJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VZYm9CDOQIQ9lR2P5VhNTSmHUHYcDMc4ZLFMXyOxGHw=; b=ARmRI1sRoHPHYEi2nI/PpqBc6l
	1LcDk/Av1KeUY6t2GnmSMnNc3r8psMZzRU7EI4PFZE2SMskyFNaQzrFN1pnzhcvpH92aaaCuQGDh4
	U1gsCYuuhZYkx9yQIa4Rg16DLgRgQE50K1bEE9tbGDPDAujVSnpLgshMab5US8QQqeONt3Zp7UxMz
	At2P9QE/ZafUrQW9NwAznu4iE5b2pGZR9AVM2DG3OmURUNNLGCzPT373K4MNssq+YUVSQs5MpvugX
	1o69fTrDOAViaEyO/O6YcEC2lEzCW0nMGhKidup5DKTbWG12hfVtAM3eMHbHFn8/K+pKDKY8EW0NY
	A5zH21yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRwp8-0000000E97a-3fu7;
	Fri, 13 Nov 2026 19:20:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRwp1-0000000E94x-09p2;
	Fri, 13 Nov 2026 19:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=iZJjvOCw+Qz7RTPFaPuatB3TKmf+mxhm32nAlNzRBg4=; b=xaqU/oDJTujHMusxbk+DNWU3G4
	4p+uDpNECLpDeko4WUqLozh+GtW8IQ2X4+PtMGG4McdvDNPQfCqE2Fa/wgsjf3bnaRLcHTSBA4f57
	5B7FElsTObCdFy2f2ZLQe4bs2q0uB53b1d2c/Fwe68nExV3jffhRabIGqLSNve8CEGGFl65oqFBMc
	8IZR9s4T9EQVz+bvU1Pn7Z1n5J9rOZModPtsN9g6Ya0HBfrZwAUiN51F4N8b7jCxAOulSIxs1tYWG
	SDBEnH4CTxn+WZPhCu++OrxoGDCnAqNnUl/L2JDJHI5gKR1UkhScCZYX0jZkZtEy13JNTOw3bhnX+
	6vYNeZsQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Coia Prant <coiaprant@gmail.com>,
 Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: Ulf Hansson <ulfh@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] pmdomain: rockchip: mark PD_PIPE as active wakeup on RK3568
Date: Fri, 13 Nov 2026 20:20:17 +0100
Message-ID: <gZu9MXL8T6qhkNXh4okAaA@sntech.de>
In-Reply-To: <CAPx+jO-+uwxMN3-LZn4nH4HSXu6GCnvdrUb9ff79W5EeCU4SZA@mail.gmail.com>
References: <20260925041751.495818-1-coiaprant@gmail.com>
 <CALj3r0jMLFbz+oa_z6kySDg-3aLaFWtFoKv9VB_qHhQZDpemfw@mail.gmail.com>
 <CAPx+jO-+uwxMN3-LZn4nH4HSXu6GCnvdrUb9ff79W5EeCU4SZA@mail.gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_112027_100324_0F4EEBAB 
X-CRM114-Status: GOOD (  25.38  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRnJlaXRhZywgMTMuIE5vdmVtYmVyIDIwMjYsIDE4OjQ4OjAwIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgVWxmIEhhbnNzb246Cj4gT24gVGh1LCBPY3QgMjIsIDIwMjYg
YXQgNTowNOKAr0FNIENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+IHdyb3RlOgo+ID4K
PiA+IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+IOS6jjIwMjblubQxMOaciDbml6Xl
kajkuowgMDc6MjflhpnpgZPvvJoKPiA+ID4KPiA+ID4gT24gU2VwdGVtYmVyIDI1LCAyMDI2IDEy
OjE3OjUxIFBNIEdNVCswODowMCwgQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4gd3Jv
dGU6Cj4gPiA+ID5UaGUgUERfUElQRSBwb3dlciBkb21haW4gb24gUkszNTY4IGhvc3RzIHRoZSBY
UENTLCB0aGUgUENJZQo+ID4gPiA+Y29udHJvbGxlcnMgYW5kIHRoZSBTQVRBIGNvbnRyb2xsZXJz
LiAgQWxsIG9mIHRoZW0gY2FuIGFjdCBhcwo+ID4gPiA+d2FrZXVwIHNvdXJjZXMgZm9yIHRoZSBz
eXN0ZW06Cj4gPiA+ID4KPiA+ID4gPiAgLSB0aGUgWFBDUyBmb3IgTUFDIFdvTCwgdGhyb3VnaCB0
aGUgU0dNSUkgbGluawo+ID4gPiA+ICAtIHRoZSBQQ0llIGNvbnRyb2xsZXJzIGZvciBQTUUjCj4g
PiA+ID4gIC0gdGhlIFNBVEEgY29udHJvbGxlcnMgZm9yIGhvdHBsdWcgd2FrZQo+ID4gPiA+Cj4g
PiA+ID5UaGUgZG9tYWluIGlzIHJlZ2lzdGVyZWQgd2l0aCBhY3RpdmVfd2FrZXVwID0gZmFsc2Us
IHNvIGdlbnBkIHBvd2Vycwo+ID4gPiA+aXQgZG93biBkdXJpbmcgc3lzdGVtIHN1c3BlbmQgZXZl
biB3aGVuIGEgY29uc3VtZXIgaXMgb24gdGhlIHdha2V1cAo+ID4gPiA+cGF0aC4gIFRoYXQga2ls
bHMgdGhlIFhQQ1MgYW5kIHRoZSBTZXJEZXMsIHdoaWNoIGJyZWFrcyBNQUMgV29MIG9uCj4gPiA+
ID5SSzM1NjggU0dNSUkgYm9hcmRzLCBhbmQgaXQgYWxzbyBwb3dlcnMgZG93biB0aGUgUENJZSBh
bmQgU0FUQQo+ID4gPiA+Y29udHJvbGxlcnMgd2hpbGUgdGhlaXIgZHJpdmVycyBzdGlsbCBleHBl
Y3QgdGhlIGxpbmsgdG8gYmUgYWxpdmUuCj4gPiA+ID4KPiA+ID4gPk1hcmsgUERfUElQRSBhcyBh
Y3RpdmVfd2FrZXVwIHNvIHRoYXQgZ2VucGQgaG9ub3VycyB0aGUgd2FrZXVwIHBhdGgKPiA+ID4g
Pm9mIGl0cyBjb25zdW1lcnMuICBDb25zdW1lcnMgdGhhdCBjYWxsIGRldmljZV9zZXRfd2FrZXVw
X3BhdGgoKSBrZWVwCj4gPiA+ID50aGUgZG9tYWluIHBvd2VyZWQ7IGNvbnN1bWVycyB0aGF0IGRv
IG5vdCBtYXJrIHRoZW1zZWx2ZXMgYXMgd2FrZXVwCj4gPiA+ID5zb3VyY2VzIGFyZSB1bmFmZmVj
dGVkIGFuZCB0aGUgZG9tYWluIGlzIHN0aWxsIHBvd2VyZWQgZG93biB3aGVuCj4gPiA+ID5ub3Ro
aW5nIG5lZWRzIGl0Lgo+ID4gPiA+Cj4gPiA+ID5TZXZlcmFsIG90aGVyIFJvY2tjaGlwIFNvQ3Mg
YWxyZWFkeSBtYXJrIHRoZWlyIFBDSWUgYW5kIFVTQiBwb3dlcgo+ID4gPiA+ZG9tYWlucyBhcyBh
Y3RpdmUgd2FrZXVwLCBmb3IgZXhhbXBsZSBSSzM1ODgncyBwY2llIGFuZCB1c2IgZG9tYWlucwo+
ID4gPiA+YW5kIFJLMzU3NidzIHVzYiBkb21haW4uICBQRF9QSVBFIGhvc3RzIHRoZSBzYW1lIGtp
bmQgb2YKPiA+ID4gPndha2V1cC1jYXBhYmxlIGNvbnRyb2xsZXJzIG9uIFJLMzU2OCwgc28gdGhp
cyBmb2xsb3dzIHRoZSBzYW1lCj4gPiA+ID5wYXR0ZXJuLgo+ID4gPiA+Cj4gPiA+ID5TaWduZWQt
b2ZmLWJ5OiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+ID4KPiA+IEhpIFVsZiwK
PiA+Cj4gPiBHZW50bGUgcGluZyBvbiB0aGlzIHBhdGNoLiBJdCB3YXMgc2VudCBvbiBTZXAgMjUg
YW5kIFBhdGNod29yayBzaG93cyBpdAo+ID4gYXMgIkhhbmRsZWQgRWxzZXdoZXJlIiwgYnV0IEkg
Y2FuJ3QgZmluZCBpdCBtZXJnZWQgaW4gbGludXgtcG0sCj4gPiBsaW51eC1yb2NrY2hpcCwgbGlu
dXgtbmV4dCBvciBtYWlubGluZSwgYW5kIEkgaGF2ZW4ndCByZWNlaXZlZCBhbnkKPiA+IHJldmll
dyBmZWVkYmFjay4KPiA+Cj4gPiBTaW5jZSB0aGVuLCB0aGUgWFBDUyBkcml2ZXIgYW5kIERUUyB0
aGF0IGRlcGVuZCBvbiBQRF9QSVBFIHN0YXlpbmcKPiA+IHBvd2VyZWQgYWNyb3NzIHN1c3BlbmQg
aGF2ZSBiZWVuIG1lcmdlZCBhbmQgc2VudCB1cHN0cmVhbToKPiA+Cj4gPiAtIFhQQ1MgZHJpdmVy
IGluIG5ldC1uZXh0OiBodHRwczovL2dpdC5rZXJuZWwub3JnL25ldGRldi9uZXQtbmV4dC9jLzVl
OTFlZGZiMGU0NQo+ID4KPiA+IENvdWxkIHlvdSBsZXQgbWUga25vdyB3aGljaCB0cmVlIHRoaXMg
c2hvdWxkIGdvIHRocm91Z2gsIG9yIHdoZXRoZXIgaXQKPiA+IHdhcyBhbHJlYWR5IHBpY2tlZCBz
b21ld2hlcmU/IElmIGl0IG5lZWRzIHRvIGJlIHJvdXRlZCBkaWZmZXJlbnRseSwgSSdtCj4gPiBo
YXBweSB0byByZXNlbmQgaXQuCj4gPgo+ID4gVGhhbmtzLAo+ID4gQ29pYQo+IAo+IEFwb2xvZ2l6
ZSBmb3IgdGhlIGh1Z2UgZGVsYXkuIEkgd2FzIHdhaXRpbmcgZm9yIGFuIGFjayBmcm9tIHNvbWUg
b2YKPiB0aGUgcm9ja2NoaXAgbWFpbnRhaW5lcnMuCj4gCj4gQW55d2F5LCB0aGlzIGxvb2tzIGZp
bmUgdG8gbWUgc28sIGFwcGxpZWQgZm9yIG5leHQsIHRoYW5rcyEKCmdvdCBsb3N0IGluIG15IGlu
Ym94IC4uLiBhbmQgZm9yIHRoZSByZWNvcmQgeWVwLCBsb29rcyBjb3JyZWN0CgoKSGVpa28KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
