Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED374D10F51
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 13:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bR6QyxgachbOooP2h3R0skDIK31ER3PCAyv5F+lkC20=; b=1fBOiD692zeq2v
	qLLYUtxSSlOvtnuxMBLX5J4aC2cPye9pd2y4XYmm0rqiN0C7OexwXl1g7yJiQoCMNnbcbNssH0j8s
	nurpvkrvSIQxNgiETto8x81w30W6eQXfqQ7IOcVhTLJQ/OD3plYLABO87iwo7DMVFjoFOUCzJM2OL
	bHrARqghAdYzbsGE9kID22hz3JvFDQVhLDy8mI/QFYeboWQcWMqTFXBKrNSlJNhq2EdTRelLGiltI
	uJ/14PJyMQ4kWom4az4ZgP02jDK+r+TfeWA+paHSv9ltq+Kz+Ca3u0XqXmThOs6AsVv0rcZA86wgX
	XFCcItyEBI/+YtuhbkAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOFyZ-0000000F3zi-2NO9;
	Wed, 26 Nov 2025 13:54:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOFyW-0000000F3zS-2K0a;
	Wed, 26 Nov 2025 13:54:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EFB17601A6;
	Wed, 26 Nov 2025 13:54:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A41F0C4CEF7;
	Wed, 26 Nov 2025 13:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764165267;
	bh=65eP/lbRfzZhiS3efIMJ0dY3HA+WW/ppdXfaAdFXkXw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rXGloj682brw4JG9ho9TLCbP6OZOgbIAdWrbM83Y1+iW88vaXKENgqq87df2en3mV
	 +8zv1bQG2I92tKoSuoDzMUTC0uzlqs0tFHYm/1G4Q8R80bu9glzVIUJxoT5dOhHSgA
	 TosUxL9eSMeVVtz+265ZiVNcigHqDJYGsIJgVhaBN+YRQazc37LvJi244kGJgE+0do
	 vdj919xaDkRYIVCDIA9ty+Uf7wRSuDV4neXBF3SF85fUW4cKfwiJpuhQDAGVKrHMJd
	 hFHbaWSq0DUpb50dhfWyT2CVMJgqqBm9mLuUTVxa0+kaELIPv4FxRmvul8D5zk2ZXt
	 +fbUEcZH5JRvw==
Date: Wed, 26 Nov 2025 19:24:15 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Niklas Cassel <cassel@kernel.org>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 0/6] PCI: dwc: Revert Link Up IRQ support
Message-ID: <pbcemex3hdu4ryw2r7iy6xxt3chwaytlm2eina7mm4ukjfcagt@x4777z7ral26>
References: <20251111105100.869997-8-cassel@kernel.org>
 <mt7miqkipr4dvxemftq6octxqzauueln252ncrcwy6i2t7wfhi@jtwokeilhwsi>
 <aSRli_Mb6qoQ9TZO@ryzen>
 <7667E818D7D31A4E+cf7c83d4-b99c-469d-8d46-588fc95b843f@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7667E818D7D31A4E+cf7c83d4-b99c-469d-8d46-588fc95b843f@radxa.com>
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

T24gV2VkLCBOb3YgMjYsIDIwMjUgYXQgMTA6MzA6MDZQTSArMDkwMCwgRlVLQVVNSSBOYW9raSB3
cm90ZToKPiBIaSBOaWtsYXMsCj4gCj4gSSBhcG9sb2dpemUgZm9yIHRoZSBkZWxheWVkIHJlc3Bv
bnNlLgo+IAo+IE9uIDExLzI0LzI1IDIzOjAyLCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+ID4gT24g
TW9uLCBOb3YgMjQsIDIwMjUgYXQgMDY6MDc6NDRQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRoYXNp
dmFtIHdyb3RlOgo+ID4gPiBXaGlsZSBJIHN1Z2dlc3RlZCB0byByZXZlcnQgdGhlIGxpbmsgdXAg
SVJRIHBhdGNoIGZvciByb2NrY2hpcCBlYXJsaWVyLCBJIGRpZG4ndAo+ID4gPiBleHBlY3QgdG8g
ZHJvcCB0aGUgc3VwcG9ydCBmb3IgUWNvbS4gVGhlIHJlYXNvbiBpcywgb24gUWNvbSBTb0NzLCB3
ZSBoYXZlIG5vdAo+ID4gPiBzZWVuIGEgY2FzZSB3aGVyZSBwZW9wbGUgY29ubmVjdCBhIHJhbmRv
bSBQQ0llIHN3aXRjaCBhbmQgc2F3IGZhaWx1cmVzLiBNb3N0IG9mCj4gPiA+IHRoZSBRY29tIHVz
ZWNhc2VzIHdlcmUgYXJvdW5kIHRoZSBNLjIgYW5kIG90aGVyIHByb3ByaWV0YXJ5IGNvbm5lY3Rv
cnMuIFRoZXJlIGlzCj4gPiA+IG9ubHkgb25lIGluLWhvdXNlIFBDSWUgc3dpdGNoIHRoYXQgaXMg
YmVpbmcgYWN0aXZlbHkgdXNlZCBpbiBvdXIgcHJvZHVjdHMsIGJ1dAo+ID4gPiBzbyBmYXIsIG5v
bmUgb2YgdGhlIGJvb3Rsb2FkZXJzIGhhdmUgdHVybmVkIHRoZW0gT04gYmVmb3JlIGtlcm5lbCBi
b290aW5nLiBTbwo+ID4gPiBrZXJuZWwgcmVsaWVzIG9uIHRoZSBuZXdseSBtZXJnZWQgcHdyY3Ry
bCBkcml2ZXIgdG8gZG8gdGhlIGpvYi4gRXZlbiB0aG91Z2ggaXQKPiA+ID4gYWxzbyBzdWZmZXJz
IGZyb20gdGhlIHNhbWUgcmVzb3VyY2UgYWxsb2NhdGlvbiBpc3N1ZSwgdGhpcyBzZXJpZXMgd29u
J3QgaGVscCBpbgo+ID4gPiBhbnkgd2F5IGFzIHB3cmN0cmwgY29yZSBwZXJmb3JtcyByZXNjYW4g
YWZ0ZXIgdGhlIHN3aXRjaCBwb3dlciBPTiwgYW5kIGJ5IHRoYXQKPiA+ID4gdGltZSwgaXQgd2ls
bCBiZSB2ZXJ5IGxhdGUgYW55d2F5Lgo+ID4gPiAKPiA+ID4gU28gSSdtIGhhcHB5IHRvIHRha2Ug
dGhlIHJvY2toaXAgcGF0Y2hlcyBmcm9tIHRoaXMgc2VyaWVzIGFzIHRoZXkgZml4IHRoZSByZWFs
Cj4gPiA+IGlzc3VlIHRoYXQgcGVvcGxlIGhhdmUgcmVwb3J0ZWQuIEJ1dCBvbmNlIHRoZSBwd3Jj
dHJsIHJld29yayBzZXJpZXMgZ2V0cyBtZXJnZWQsCj4gPiA+IGFuZCB0aGUgcm9ja2NoaXAgZHJp
dmVycyBzdXBwb3J0IHRoZW0sIHdlIGNhbiBicmluZyBiYWNrIHRoZSByZXZlcnRlZCBjaGFuZ2Vz
Lgo+ID4gCj4gPiBGVUtBVU1JIE5hb2tpLCBqdXN0IHRvIGNvbmZpcm06Cj4gPiAKPiA+IE5laXRo
ZXIgbXkgc3VnZ2VzdGVkIGFwcHJvYWNoOgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcGNpL2FSSGRlVkNZM3JSbXhlODBAcnl6ZW4vCj4gPiAKPiA+IG5vciBTaGF3bidzIHN1Z2dl
c3RlZCBhcHByb2FjaDoKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS9kYzkz
Mjc3My1hZjViLTRhZjctYTBkMC04Y2M3MmRmYmQzYzdAcm9jay1jaGlwcy5jb20vCj4gPiAKPiA+
IHdvcmtlZCBmb3IgeW91Pwo+IAo+IFllcywgSSByZS10ZXN0ZWQgdGhlIHR3byBtZXRob2RzIG1l
bnRpb25lZCBhYm92ZSwgc2VwYXJhdGVseSwgb24gdjYuMTgtcmM3LAo+IGJ1dCBuZWl0aGVyIG9m
IHRoZW0gcmVzb2x2ZWQgdGhlIGlzc3VlIGluIG15IGVudmlyb25tZW50IChST0NLIDVDICsKPiBB
U00yODA2KS4KPiAKPiA+IElmIHNvLCBJIGRvbid0IHNlZSBtYW55IGFsdGVybmF0aXZlIGJ1dCBm
b3IgTWFuaSB0byBhcHBseSBwYXRjaCAxIGFuZAo+ID4gcGF0Y2ggMiBmcm9tIHRoaXMgc2VyaWVz
Lgo+IAo+IEkgYmVsaWV2ZSBhcHBseWluZyBwYXRjaCAxIGFuZCBwYXRjaCAyIHNob3VsZCBiZSBz
dWZmaWNpZW50Lgo+IAo+IC0tLS0KPiAKPiBJbmNpZGVudGFsbHksIChwcm9iYWJseSkgd2hpbGUg
YXBwbHlpbmcgcGF0Y2ggMSBhbmQgcGF0Y2ggMiwgSSBoYXZlCj4gZW5jb3VudGVyZWQgdGhlIGZv
bGxvd2luZyBpc3N1ZSBzZXZlcmFsIHRpbWVzOgo+CgpEbyB5b3Ugc2VlIHRoZSBiZWxvdyBpc3N1
ZSAqYWZ0ZXIqIGFwcGx5aW5nIHRoZSBwYXRjaGVzPyBJIGRvbid0IGtub3cgaG93IHRvCmludGVy
cHJldCAid2hpbGUgYXBwbHlpbmciLgogCj4gWyAgICAxLjcwOTYxNF0gcGNpZXBvcnQgMDAwNDo0
MTowMC4wOiBvZl9pcnFfcGFyc2VfcGNpOiBmYWlsZWQgd2l0aCByYz0xMzQKPiBbICAgIDEuNzEw
MjA4XSBwY2llcG9ydCAwMDA0OjQxOjAwLjA6IFVuYWJsZSB0byBjaGFuZ2UgcG93ZXIgc3RhdGUg
ZnJvbQo+IEQzY29sZCB0byBEMCwgZGV2aWNlIGluYWNjZXNzaWJsZQo+IAoKTG9va3MgbGlrZSB0
aGUgZGV2aWNlIHdhcyBzZWVuIGR1cmluZyBidXMgc2NhbiwgYnV0IHRoZW4gaXQgd2VudCBkb3du
CmFmdGVyd2FyZHMuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
