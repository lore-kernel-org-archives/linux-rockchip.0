Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EDBACD342C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWsdWyjKn2Y2j1ff2BliIFXgpZGsFonjehAX2nLTiWQ=; b=r9F8OurGYjydo2
	5GL/bNWplIMONUKFxkMlkjyiKSEOBEhZEM3PZveP0jwIovU6X5dr3mvGMf34BjYRJh/Qkmb6lD0dl
	qvcVOX4XGdp3LimyiPSMEXDTjtp3If2RO7NjNUPim1HPduRfkBsyyB+xiN5ta+IgVUSTez2zjwTrT
	tjT+daCPt/Vimiuy62SD5tMLFJkJBF14wtf1Tm4qvJP2o3kquYYgunLk6GahZD5+G5pF5V8cZNSmQ
	xzunqUKk4q83sOl4WMeEmmDZ0ATY5WNTvv6MdX8FXWYx7CrCcuKr+OS8j2i1yPCrI9Z6rkAkHUORr
	IjrtAByoGtLAD7gzIuKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKcno-00000000zFC-3Czi;
	Wed, 06 May 2026 14:00:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKcnn-00000000zE7-1JlP;
	Wed, 06 May 2026 14:00:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1A4B9401AB;
	Wed,  6 May 2026 14:00:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0B25C2BCB0;
	Wed,  6 May 2026 14:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778076038;
	bh=3ABq0vmLnrToEl3embQcbEbCFFAlngxTw8HcWTYfpyQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lbbRqzsHEvuSkXGa4Rq5zx+PXjsv9/714dfoVAo7p5j+HQdbVor0KXnElBQ4b/Xal
	 PiXiGmTODUQOu3x3zRDyPM3eHLpMmqcJBmgyz1WIio5CPxG35X1OlkckWcoE/no36v
	 Ut3/ZcCjRTyc+Jj5F2Efp3PIaLh4oiaIrshTXG8ZS8syUYP6SUkVyzXeupWAml3r2N
	 +YOf6WdB1pFgwaZrybzDsYRUyIVerbufJTdirhipRIXKfIj/YQvE6FwbwHZ0/K2FLQ
	 +E6XjYuV3ytgHjZ8zOAcEEEVHeE0RYiQ71TdguOZSPBSH2/A/plVO6PZsyZptYT2yo
	 hFH7PAMulrExQ==
Date: Wed, 6 May 2026 19:30:27 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: helgaas@kernel.org, bhelgaas@google.com, 
	Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, heiko@sntech.de, 
	yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, cassel@kernel.org, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 0/2] PCI: Configure Root Port MPS during host probing
Message-ID: <vpuzlzry7uulctur7kwtlogniuhogd5ybmrwjtos2v7yryf47v@yj2ocobbog6s>
References: <20251127170908.14850-1-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251127170908.14850-1-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_070039_396340_51F02C23 
X-CRM114-Status: GOOD (  22.32  )
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

T24gRnJpLCBOb3YgMjgsIDIwMjUgYXQgMDE6MDk6MDZBTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiBDdXJyZW50IFBDSWUgaW5pdGlhbGl6YXRpb24gZXhoaWJpdHMgYSBrZXkgb3B0aW1pemF0
aW9uIGdhcDogUm9vdCBQb3J0cwo+IG1heSBvcGVyYXRlIHdpdGggbm9uLW9wdGltYWwgTWF4aW11
bSBQYXlsb2FkIFNpemUgKE1QUykgc2V0dGluZ3MuIFdoaWxlCj4gZG93bnN0cmVhbSBkZXZpY2Ug
Y29uZmlndXJhdGlvbiBpcyBoYW5kbGVkIGR1cmluZyBidXMgZW51bWVyYXRpb24sIFJvb3QKPiBQ
b3J0IE1QUyB2YWx1ZXMgaW5oZXJpdGVkIGZyb20gZmlybXdhcmUgb3IgaGFyZHdhcmUgZGVmYXVs
dHMgb2Z0ZW4gZmFpbAo+IHRvIHV0aWxpemUgdGhlIGZ1bGwgY2FwYWJpbGl0aWVzIHN1cHBvcnRl
ZCBieSBjb250cm9sbGVyIGhhcmR3YXJlLiBUaGlzCj4gcmVzdWx0cyBpbiBzdWJvcHRpbWFsIGRh
dGEgdHJhbnNmZXIgZWZmaWNpZW5jeSB0aHJvdWdob3V0IHRoZSBQQ0llCj4gaGllcmFyY2h5Lgo+
IAo+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHJlc3NlcyB0aGlzIGJ5Ogo+IAo+IDEuIENvcmUgUENJ
IGVuaGFuY2VtZW50IChQYXRjaCAxKToKPiAtIFByb2FjdGl2ZWx5IGNvbmZpZ3VyZXMgUm9vdCBQ
b3J0IE1QUyBkdXJpbmcgaG9zdCBjb250cm9sbGVyIHByb2JpbmcKPiAtIFNldHMgaW5pdGlhbCBN
UFMgdG8gaGFyZHdhcmUgbWF4aW11bSAoMTI4IDw8IGRldi0+cGNpZV9tcHNzKQo+IC0gQ29uZGl0
aW9uYWwgb24gUENJZSBidXMgdHVuaW5nIGJlaW5nIGVuYWJsZWQgKFBDSUVfQlVTX1RVTkVfT0ZG
IHVuc2V0KQo+ICAgYW5kIG5vdCBpbiBQQ0lFX0JVU19QRUVSMlBFRVIgbW9kZSAod2hpY2ggcmVx
dWlyZXMgZGVmYXVsdCAxMjggYnl0ZXMpCj4gLSBNYWludGFpbnMgYmFja3dhcmQgY29tcGF0aWJp
bGl0eSB2aWEgUENJRV9CVVNfVFVORV9PRkYgY2hlY2sKPiAtIFByZXNlcnZlcyBzdGFuZGFyZCBN
UFMgbmVnb3RpYXRpb24gZHVyaW5nIGRvd25zdHJlYW0gZW51bWVyYXRpb24KPiAKPiAyLiBEcml2
ZXIgY2xlYW51cCAoUGF0Y2ggMik6Cj4gLSBSZW1vdmVzIHJlZHVuZGFudCBNUFMgY29uZmlndXJh
dGlvbiBmcm9tIE1lc29uIFBDSWUgY29udHJvbGxlciBkcml2ZXIKPiAtIEZ1bmN0aW9uYWxpdHkg
aXMgbm93IGNlbnRyYWxpemVkIGluIFBDSSBjb3JlCj4gLSBTaW1wbGlmaWVzIGRyaXZlciBtYWlu
dGVuYW5jZSBsb25nLXRlcm0KPiAKCkZvciB0aGUgc2VyaWVzLAoKUmV2aWV3ZWQtYnk6IE1hbml2
YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKQmpvcm46IENvdWxkIHlvdSBwbGVh
c2UgdGFrZSBhIGxvb2s/IFRoaXMgc2VyaWVzIGhhcyBiZWVuIGZsb2F0aW5nIGZvciBhCndoaWxl
Li4uCgotIE1hbmkKCj4gLS0tCj4gQ2hhbmdlcyBpbiB2NzoKPiAtIEV4Y2x1ZGUgUENJRV9CVVNf
UEVFUjJQRUVSIG1vZGUgZnJvbSBSb290IFBvcnQgTVBTIGNvbmZpZ3VyYXRpb24KPiAtIFJlbW92
ZSByZWR1bmRhbnQgY2hlY2sgZm9yIHVwc3RyZWFtIGJyaWRnZSAoUm9vdCBQb3J0cyBkb24ndCBo
YXZlIG9uZSkKPiAtIEltcHJvdmUgY29tbWl0IG1lc3NhZ2UgYW5kIGNvZGUgY29tbWVudHMgYXMg
cGVyIEJqb3JuLgo+IAo+IENoYW5nZXMgZm9yIHY2Ogo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcHJvamVjdC9saW51eC1wY2kvcGF0Y2gvMjAyNTExMDQxNjUxMjUuMTc0MTY4LTEtMTgy
NTUxMTcxNTlAMTYzLmNvbS8KPiAKPiAtIE1vZGlmeSB0aGUgY29tbWl0IG1lc3NhZ2UgYW5kIGNv
bW1lbnRzLiAoQmpvcm4pCj4gLSBQYXRjaCAxLzIgY29kZSBsb2dpYzogQWRkICFicmlkZ2UgY2hl
Y2sgdG8gY29uZmlndXJlIE1QUyBvbmx5IGZvciBSb290IFBvcnRzCj4gICB3aXRob3V0IGFuIHVw
c3RyZWFtIGJyaWRnZSAocm9vdCBicmlkZ2VzKSwgYXZvaWRpbmcgaW5jb3JyZWN0IGhhbmRsaW5n
IG9mCj4gICBub24tcm9vdC1icmlkZ2UgUm9vdCBQb3J0cyAoTmlrbGFzKS4KPiAKPiBDaGFuZ2Vz
IGZvciB2NToKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNp
L3BhdGNoLzIwMjUwNjIwMTU1NTA3LjEwMjIwOTktMS0xODI1NTExNzE1OUAxNjMuY29tLwo+IAo+
IC0gVXNlIHBjaWVfc2V0X21wcyBkaXJlY3RseSBpbnN0ZWFkIG9mIHBjaWVfd3JpdGVfbXBzLgo+
IC0gVGhlIHBhdGNoIDEgY29tbWl0IG1lc3NhZ2Ugd2VyZSBtb2RpZmllZC4KPiAKPiBDaGFuZ2Vz
IGZvciB2NDoKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNp
L3BhdGNoLzIwMjUwNTEwMTU1NjA3LjM5MDY4Ny0xLTE4MjU1MTE3MTU5QDE2My5jb20vCj4gCj4g
LSBUaGUgcGF0Y2ggW3Y0IDEvMl0gYWRkIGEgY29tbWVudCB0byBleHBsYWluIHdoeSBpdCB3YXMg
ZG9uZSB0aGlzIHdheS4KPiAtIFRoZSBwYXRjaCBbdjQgMi8yXSBoYXZlIG5vdCBiZWVuIG1vZGlm
aWVkLgo+IC0gRHJvcCBwYXRjaCBbdjMgMy8zXS4gVGhlIE1haW50YWluZXIgb2YgdGhlIHBjaS1h
YXJkdmFyay5jIGZpbGUgc3VnZ2VzdHMKPiAgIHRoYXQgdGhpcyBwYXRjaCBjYW5ub3QgYmUgc3Vi
bWl0dGVkLiBJbiBhZGRpdGlvbiwgTWFuaSBhbHNvIHN1Z2dlc3RzCj4gICBkcm9wcGluZyB0aGlz
IHBhdGNoIHVudGlsIHRoaXMgc2VyaWVzIG9mIGlzc3VlcyBpcyByZXNvbHZlZC4KPiAKPiBDaGFu
Z2VzIGZvciB2MzoKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgt
cGNpL3BhdGNoLzIwMjUwNTA2MTczNDM5LjI5MjQ2MC0xLTE4MjU1MTE3MTU5QDE2My5jb20vCj4g
Cj4gLSBUaGUgbmV3IHNwbGl0IGlzIHBhdGNoIDIvMyBhbmQgMy8zLgo+IC0gTW9kaWZ5IHRoZSBw
YXRjaCAxLzMgYWNjb3JkaW5nIHRvIE5pa2xhcycgc3VnZ2VzdGlvbi4KPiAKPiBDaGFuZ2VzIGZv
ciB2MjoKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNpL3Bh
dGNoLzIwMjUwNDI1MDk1NzA4LjMyNjYyLTEtMTgyNTUxMTcxNTlAMTYzLmNvbS8KPiAKPiAtIEFj
Y29yZGluZyB0byB0aGUgTWFpbnRhaW5lcidzIHN1Z2dlc3Rpb24sIGxpbWl0IHRoZSBzZXR0aW5n
IG9mIE1QUwo+ICAgY2hhbmdlcyB0byBwbGF0Zm9ybXMgd2l0aCBjb250cm9sbGVyIGRyaXZlcnMu
Cj4gLSBEZWxldGUgdGhlIE1QUyBjb2RlIHNldCBieSB0aGUgU09DIG1hbnVmYWN0dXJlci4KPiAt
LS0KPiAKPiBIYW5zIFpoYW5nICgyKToKPiAgIFBDSTogQ29uZmlndXJlIFJvb3QgUG9ydCBNUFMg
ZHVyaW5nIGhvc3QgcHJvYmluZwo+ICAgUENJOiBkd2M6IFJlbW92ZSByZWR1bmRhbnQgTVBTIGNv
bmZpZ3VyYXRpb24KPiAKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLW1lc29uLmMg
fCAxNyAtLS0tLS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL3BjaS9wcm9iZS5jICAgICAgICAgICAg
ICAgICAgICB8IDEyICsrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlv
bnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IAo+IAo+IGJhc2UtY29tbWl0OiA3NjVlNTZlNDFhNWFm
MmQ0NTZkZGRhNmNiZDYxN2I5ZDMyOTVhYjRlCj4gLS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
