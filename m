Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE727606A323
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 11:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=URWQbGUd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=OSaTdmrs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=e28F/pdf+gfcA5zSw3WhliCPgp2NvcMJQo7lhbfRVyU=; b=URWQbGUdQ8/LG207t1uDAEmNUX
	yCNfZCp6E2hfN9n1m55SmPJqNy2AoqftAR/qNJ/CjqoHeLWS8qXnmm9jbEYZvdvrAiVMMmtIt2Kq+
	kE9H0e/f2Tu177N3wHCt1c4ePNnIFV+DR6EIIu3HibasZAmCiqZFU1/RIvAmnseug/AbPZ3HYMR6i
	r/2L15zuj7r2gHUgzdiJpKpsLtYe3uosLNNi90zwU9gErDZXGjw+WOUXu12sMH+6OdGxyn+06r9+S
	62Kh2KNgyrecMr3FmMrv1oBQ2QvqcDz9spHiOXhRZPxRBFRr2mXt9bYhHtrBOHNIsOGAVot+IVJFl
	7CZzyVnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpLX-0000000CWaI-11fH;
	Fri, 13 Nov 2026 11:21:31 +0000
Received: from [185.11.138.130] (helo=gloria.sntech.de)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpLQ-0000000CWY2-0k9A;
	Fri, 13 Nov 2026 11:21:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=mjN4hKl8SZCnggTdQE/osHNBOqV/bOAuXS+3kFnGekU=; b=OSaTdmrsXG6euJjcDtSqEZ2XXg
	/2qSvPa+c+gtuDqRWKdELNeGglrM3GztfOxKHWFmcXONOhgqrwJg+rFY8/4PhqRKbs/mtGfJidRLV
	OTGJy9KTr/+P8hMnMpKkWqqogBS1XRuV+Lt8kbnFPm98EECK8eWul43bshAWOdGukBn844mUlc2Vd
	+Rl9Gg9w/uVY9WAmw/vg2999cTMdav+v9v74tdoCKKZPeHyuPLLVhP+ZiOoPUwLrI2dPbsQP7lAIs
	0EaS1AiPL6Regn8h8vRtSugJM8y0pEcDc4F1TFSxbvn9d8xtHC/jhuxhKMLlmfbe724lp6wbtJCto
	xbgdf5iQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org,
 zhangqing@rock-chips.com, Jiaxing Hu <gahing@gahingwoo.com>,
 dri-devel@lists.freedesktop.org
Cc: royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
 u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 jeff.hugo@oss.qualcomm.com, rfoss@kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH v15 01/15] accel/rocket: request the core clocks by name
Date: Fri, 13 Nov 2026 12:20:44 +0100
Message-ID: <_opdasI6SNGgBs3mkZrEzQ@sntech.de>
In-Reply-To: <3188623.WAvfycf1tz@diego>
References: <20261101082307.151957-1-gahing@gahingwoo.com>
 <20261101082307.151957-2-gahing@gahingwoo.com> <3188623.WAvfycf1tz@diego>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_032124_248957_C42C2642 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: -1.3 (-)
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

QW0gRGllbnN0YWcsIDMuIE5vdmVtYmVyIDIwMjYsIDIzOjQyOjE5IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4gQW0gU29ubnRhZywgMS4gTm92
ZW1iZXIgMjAyNiwgMDk6MjI6NTMgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2Nocmll
YiBKaWF4aW5nIEh1Ogo+ID4gRnJvbTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwu
Y29tPgo+ID4gCj4gPiByb2NrZXRfY29yZV9pbml0KCkgaGFuZHMgY29yZS0+Y2xrcyB0byBkZXZt
X2Nsa19idWxrX2dldCgpIHdpdGhvdXQgZXZlcgo+ID4gc2V0dGluZyB0aGUgLmlkIG1lbWJlcnMu
IFRoZSByb2NrZXRfY29yZSBhcnJheSBpcyBhbGxvY2F0ZWQgd2l0aAo+ID4gZGV2bV9rY2FsbG9j
KCkgaW4gcm9ja2V0X2RldmljZV9pbml0KCksIGFuZCByb2NrZXRfcHJvYmUoKSBvbmx5IGZpbGxz
IGluCj4gPiAucmRldiwgLmRldiBhbmQgLmluZGV4LCBzbyBhbGwgZm91ciBjbGtfYnVsa19kYXRh
IGVudHJpZXMgYXJlIHJlcXVlc3RlZAo+ID4gd2l0aCBhIE5VTEwgY29uX2lkICh1bmxpa2UgY29y
ZS0+cmVzZXRzLCB3aG9zZSBpZHMgYXJlIHNldCBhIGZldyBsaW5lcwo+ID4gYWJvdmUpLgo+ID4g
Cj4gPiBjbGtfZ2V0KGRldiwgTlVMTCkgZW5kcyB1cCBpbiBvZl9jbGtfZ2V0X2h3KG5wLCAwLCBO
VUxMKSwgYW5kCj4gPiBvZl9wYXJzZV9jbGtzcGVjKCkgb25seSBjb25zdWx0cyAiY2xvY2stbmFt
ZXMiIHdoZW4gYSBuYW1lIHdhcyBwYXNzZWQsIHNvCj4gPiB0aGUgaW5kZXggc3RheXMgMCBmb3Ig
YWxsIGZvdXIgZW50cmllcy4gRXZlcnkgZW50cnkgdGhlcmVmb3JlIGVuZHMgdXAKPiA+IGhvbGRp
bmcgYSBoYW5kbGUgdG8gdGhlICpmaXJzdCogY2xvY2sgb2YgdGhlIERUICJjbG9ja3MiIHByb3Bl
cnR5LCBpLmUuCj4gPiBBQ0xLX05QVW4uIE5vdGhpbmcgZmFpbHM6IHByb2JlIHN1Y2NlZWRzIGFu
ZCB0aGUgZHJpdmVyIGJlbGlldmVzIGl0IG93bnMKPiA+IGZvdXIgZGlmZmVyZW50IGNsb2Nrcy4K
PiA+IAo+ID4gVGhlIGNvbnNlcXVlbmNlIGlzIHRoYXQgcm9ja2V0X2RldmljZV9ydW50aW1lX3Jl
c3VtZSgpIHByZXBhcmVzIGFuZCBlbmFibGVzCj4gPiB0aGUgQVhJIGNsb2NrIGZvdXIgdGltZXMs
IHdoaWxlIGhjbGssIHBjbGsgYW5kIC0gbW9zdCBpbXBvcnRhbnRseSAtIHRoZSBOUFUKPiA+IGNv
bXB1dGUgY2xvY2sgKCJucHUiLCBTQ01JX0NMS19OUFUgb24gUkszNTg4KSBhcmUgbmV2ZXIgcHJl
cGFyZWQgb3IgZW5hYmxlZAo+ID4gYnkgdGhpcyBkcml2ZXIgYXQgYWxsLiBUaGUgTlBVIHN0aWxs
IHdvcmtzIG9ubHkgYmVjYXVzZSB0aGUgUm9ja2NoaXAKPiA+IHBvd2VyLWRvbWFpbiBkcml2ZXIg
c2V0cyBHRU5QRF9GTEFHX1BNX0NMSyBhbmQgaXRzIGF0dGFjaF9kZXYoKSBjYWxsYmFjawo+ID4g
d2Fsa3MgdGhlIGRldmljZSBub2RlIHdpdGggb2ZfY2xrX2dldCgpIGFuZCBhZGRzIGV2ZXJ5IGNs
b2NrIHRvIHRoZSBwbV9jbGsKPiA+IGxpc3QsIHNvIGdlbnBkIGhhcHBlbnMgdG8ga2VlcCB0aGUg
cmVtYWluaW5nIGNsb2NrcyBydW5uaW5nLiBUaGUgYnVnIGlzCj4gPiB0aGVyZWZvcmUgbGF0ZW50
IHRvZGF5LCBidXQgaXQgbWVhbnMgdGhlIGRyaXZlciBob2xkcyBubyByZWZlcmVuY2UgdG8gdGhl
Cj4gPiBjbG9jayB0aGF0IGFjdHVhbGx5IGZlZWRzIHRoZSBOUFUsIHdoaWNoIHN0YW5kcyBpbiB0
aGUgd2F5IG9mIGFueSBmdXR1cmUKPiA+IGZyZXF1ZW5jeSBzY2FsaW5nIChPUFAvZGV2ZnJlcSkg
d29yay4KPiA+IAo+ID4gRm91bmQgb24gYW4gT3JhbmdlIFBpIDUgUGx1cyAoUkszNTg4KSBieSBy
ZWFkaW5nIHRoZSBsaXZlIGNsb2NrIHRyZWU6Cj4gPiAvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xr
X3N1bW1hcnkgc2hvd3MgZm91ciAiZmRhYjAwMDAubnB1IiBjb25zdW1lcgo+ID4gaGFuZGxlcyBv
biBhY2xrX25wdTAgKGFuZCBsaWtld2lzZSBvbiBhY2xrX25wdTEvYWNsa19ucHUyIGZvciB0aGUg
b3RoZXIgdHdvCj4gPiBjb3JlcyksIHdoaWxlIGhjbGtfbnB1MCwgcGNsa19ucHVfcm9vdCBhbmQg
c2NtaV9jbGtfbnB1IGhhdmUgbm8KPiA+ICJmZGFiMDAwMC5ucHUiIGNvbnN1bWVyIGF0IGFsbCAt
IHRoZWlyIG9ubHkgY29uc3VtZXJzIGFyZSB0aGUKPiA+ICJucHVAZmRhYjAwMDAiIGhhbmRsZXMg
Y3JlYXRlZCBieSB0aGUgcG93ZXItZG9tYWluIGRyaXZlciB2aWEgb2ZfY2xrX2dldCgpLgo+ID4g
Cj4gPiBTZXQgdGhlIGlkcyBleHBsaWNpdGx5LCBpbiB0aGUgb3JkZXIgbWFuZGF0ZWQgYnkgdGhl
IGJpbmRpbmcKPiA+IChEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tj
aGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCk6Cj4gPiBhY2xrLCBoY2xrLCBucHUsIHBjbGsuIEFm
dGVyIHRoZSBjaGFuZ2UgdGhlIGRyaXZlciBob2xkcyBvbmUgaGFuZGxlIHBlcgo+ID4gZGlzdGlu
Y3QgY2xvY2sgYW5kIGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKCkgY292ZXJzIGFsbCBmb3VyLgo+
ID4gCj4gPiBOb3RlIHRoYXQgdGhpcyBpcyBhIHVzZXItdmlzaWJsZSB0aWdodGVuaW5nIGZvciBv
dXQtb2YtdHJlZSBEVHM6IHRoZSBvbGQKPiA+IE5VTEwtaWQgcmVxdWVzdHMgcmVzb2x2ZWQgYnkg
aW5kZXggYW5kIHN1Y2NlZWRlZCBubyBtYXR0ZXIgd2hhdAo+ID4gImNsb2NrLW5hbWVzIiBjb250
YWluZWQsIHdoaWxlIHRoZSBuYW1lZCByZXF1ZXN0cyBmYWlsIHByb2JlIHdpdGggLUVOT0VOVAo+
ID4gd2hlbiBvbmUgb2YgdGhlIGZvdXIgbmFtZXMgaXMgbWlzc2luZy4gVGhhdCBpcyB0aGUgcmln
aHQgb3V0Y29tZSBmb3IKPiA+IGluLXRyZWUgdXNlcnMgLSB0aGUgYmluZGluZyByZXF1aXJlcyBl
eGFjdGx5IHRoZXNlIGZvdXIgY2xvY2stbmFtZXMgYW5kCj4gPiByazM1ODgtYmFzZS5kdHNpIGNh
cnJpZXMgdGhlbSBvbiBhbGwgdGhyZWUgY29yZXMgLSBidXQgYSBEVCB0aGF0IHJlbGllZCBvbgo+
ID4gdGhlIHBlcm1pc3NpdmUgbG9va3VwIGdvZXMgZnJvbSBzaWxlbnRseSBydW5uaW5nIG9uIHRo
ZSB3cm9uZyBjbG9jayBoYW5kbGVzCj4gPiB0byBub3QgcHJvYmluZyBhdCBhbGwsIHNvIHJlY29y
ZCB0aGUgY2hhbmdlIGhlcmUgd2hlcmUgZ2l0IGxvZyB3aWxsIGZpbmQKPiA+IGl0Lgo+ID4gCj4g
PiBGaXhlczogZWQ5ODI2MWI0MTY4ICgiYWNjZWwvcm9ja2V0OiBBZGQgYSBuZXcgZHJpdmVyIGZv
ciBSb2NrY2hpcCdzIE5QVSIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lh
bG5ldDAyNkBnbWFpbC5jb20+Cj4gPiBUZXN0ZWQtYnk6IFNpZG9uZyBZYW5nIDxzaWRvbmcueWFu
Z0BmdXJpb3NhLmFpPgo+ID4gVGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bj
a25vdy10ZWNoLmNvbT4gICMgTmFub1BDLVQ2IExUUywgTmFub1BDLVQ2IFBsdXMKPiA+IFJldmll
d2VkLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNv
bT4KPiA+IFJldmlld2VkLWJ5OiBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5nd29vLmNvbT4KPiA+
IFNpZ25lZC1vZmYtYnk6IEppYXhpbmcgSHUgPGdhaGluZ0BnYWhpbmd3b28uY29tPgo+IAo+IFJl
dmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+IAo+IG5pdDogdGhl
IGNvbW1pdCBkZXNjcmlwdGlvbiBjb3VsZCBiZSB3YXkgc2hvcnRlciwgZm9yIHRoYXQgc21hbGwg
Y2hhbmdlLgoKY2l0aW5nIG15c2VsZiBmcm9tCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8x
MzcwMTI4MS5aWW01bUxjNmtOQGRpZWdvLwoKYWRkaXRpb25hbGx5LCB3aGlsZSByZWFkaW5nIHRo
ZSBmb2xsb3d1cCBwYXRjaGVzLCBwbGVhc2UgaW50cm9kdWNlIHNvbWUKY29uc3RhbnRzIGZvciB0
aGUgaW5kaWNlcy4gUk9DS0VUX0NMS19BQ0xLLCAuLi4gb3Igc29tZSBvdGhlciBuYW1lLgpCZWNh
dXNlIHdoZW4geW91IGFjY2VzcyB0aGVtIGxhdGVyIGJ5IGluZGV4LCB0aGF0IG1ha2VzIHRoaW5n
cyBoYXJkZXIKdG8gcmVhZCBhbmQgZm9sbG93IChlc3BlY2lhbGx5IGluIHRoZSBmdXR1cmUpCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
