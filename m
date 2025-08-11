Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03D5CC87FD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 07:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1QEuOyx9NG1ehG9yk8KkhEbB+qc0i5B4XhE7nS/pOg=; b=FqV0hNp5WE2StG
	SSuJbk9ro1bWdsjpFfkdfBkWP0UOJLQ2ViUX1pdtAUI9tXdqtZeuoA8KO4eCBpzx7TnC8XnlhbZTv
	A16+DSPDcF6pMGQm8yJKRZiUpyJyHvHmiFJgVeu1KTkM4rdZLRY/78dwShuoD5AbrrK3qPX2PO9un
	UL0vMFbyQnKQAOOZvRVzRVI9CsXDIVDfwilT5Pyt0JY1EcoukzjF5Zz6pd5SW8H3RXcKSOA6HfID9
	SghX05RoK8gqTePbxQGnd7wjwwNXgFIeNDZ6cK0RQmO+9yP2OmHthinhtiVTlmT4xYUUbbjfmwxqs
	eUCdazFyvF62SfU1gMTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMrH-00000006haR-0Joy;
	Mon, 11 Aug 2025 07:22:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMof-00000006hNE-3tJ7;
	Mon, 11 Aug 2025 07:19:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=yCTYvc2Ip+c053RNHSzHAiqexa5hAOSQh9k+/5us8HA=; b=kWvXntYyVQgVlSgXMcsvAiBFlp
	oUv3Ki1sAVUHXt3aWhyc8oFH7PHGRuxgcaZZwdlt+maZD7unEa5JVlDKMfuaagGkRbfuL6OxKWRk7
	W0PwK0ZBVu0gp8Dq+Y7+o+XYE5UpAHTkm60/KSNVi/FtU1CFMWPpVbpGk3AhtpaWSp4l+Gnm34xvd
	e0LcNY38YtA+47Nod4ePky3lwTCXHhbW0D+D/qrng4jXkwxtLuj1z5Yid6X4lAY2Z3cV/iVAEGeTi
	bwHeylJ0KhbIj0oH9gcQ0RtLjSW8npttDDXWgCdmTB/KU7PXnQcWE/Un2d+8Y2mrnFaekSXdEb2vh
	+y1gWBpQ==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulMoc-0007Ef-PO; Mon, 11 Aug 2025 09:19:30 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 damon.ding@rock-chips.com, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: add RK3588 DP carrier from Theobroma
 Systems
Date: Mon, 11 Aug 2025 09:19:29 +0200
Message-ID: <10574731.0AQdONaE2F@diego>
In-Reply-To: <0582b7bc-e5b2-4b5e-821e-8d2c4301579f@cherry.de>
References: <20250723190904.37792-1-heiko@sntech.de>
 <20250723190904.37792-3-heiko@sntech.de>
 <0582b7bc-e5b2-4b5e-821e-8d2c4301579f@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_001933_966967_E7FD0D2A 
X-CRM114-Status: GOOD (  24.46  )
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

QW0gRnJlaXRhZywgMjUuIEp1bGkgMjAyNSwgMTQ6Mjk6MTIgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBRdWVudGluIFNjaHVsejoKPiBIaSBIZWlrbywKPiAKPiBPbiA3LzIz
LzI1IDk6MDkgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gRnJvbTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiA+IAo+ID4gVGhlIERpc3BsYXlQb3J0IGNh
cnJpZXIgaXMgYSB2ZXJ5IHNpbXBsZSBiYXNlYm9hcmQgb25seSBwcm92aWRpbmcgc2VyaWFsLAo+
ID4gZXRoZXJuZXQgYW5kIGEgZGlzcGxheXBvcnQgb3V0cHV0Lgo+ID4gCj4gPiBCdXQgaXRzIG1h
aW4gZnVuY3Rpb25hbGl0eSBpcyB0aGF0IGl0IHJvdXRlcyB0aGUgQW5hbG9naXggZURQIGNvbnRy
b2xsZXIKPiA+IHRvIHRoaXMgRGlzcGxheVBvcnQgb3V0cHV0LCB3aGljaCBhbGxvd3MgdG8gdGVz
dCB0aGF0IGNvbnRyb2xsZXIgc2ltcGx5Cj4gPiBieSBob29raW5nIGl0IHVwIHRvIGEgc3VpdGFi
bGUgbW9uaXRvci4KPiA+IAo+ID4gVGhlIEFuYWxvZ2l4LURQIGNvbnRyb2xsZXIgc3VwcG9ydHMg
ZURQIDEuMyBhbmQgRFAgMS4yLCBzbyBjYW4gZHJpdmUKPiA+IGJvdGggZURQIGRpc3BsYXlzIGFz
IHdlbGwgYXMgZnVsbCBEUCBtb25pdG9ycy4gSXQgZG9lcyBub3Qgc3VwcG9ydCBEUCsKPiA+IHNv
IHBhc3NpdmUgRFAtdG8tSERNSSBhZGFwdGVycyB3b24ndCB3b3JrLgo+ID4gCj4gCj4gSSB0ZXN0
ZWQgdGhpcyBvbiBtYXN0ZXIgKDI5NDIyNDJkZGU4OTYpICsgdjIgb2YgdGhlIGVEUCBkcml2ZXIg
YXMgbGlzdGVkIAo+IGluIHRoZSBjb3ZlciBsZXR0ZXIsIG9yIHdpdGggdjMgb2YgdGhlIGVEUCBk
cml2ZXIgKyAKPiA0OGYwNWMzYjRiNzAxYWU3Njg3ZmQ0NGQ0NjJjODhiN2FjNjdlOTUyIGFuZCBp
biBib3RoIGNhc2VzIEkgaGF2ZSB3ZWlyZCAKPiBiZWhhdmlvcnMuCj4gCj4gRmlyc3QsIGByZWJv
b3RgIGlzIHN0dWNrIGZvciBhIHZlcnkgbG9uZyB0aW1lIGJlZm9yZSBhY3R1YWxseSByZWJvb3Rp
bmcuIAo+IEkgdGhpbmsgeW91IGhhdmUgYSBzdGFja3RyYWNlIHdoZW4geW91IHRyaWVkIHlvdXJz
ZWxmLCBJIGRvbid0IHNvIGNhbm5vdCAKPiBzZW5kIG9uZS4KCkkgdHJhY2tlZCB0aGlzIGRvd24g
bGFzdCB3ZWVrLiBUaGUgaGFuZyBpcyBlYXNpbHkgcmVwcm9kdWNlYWJsZSBhbmQgdGhlCmZhdWx0
IG9mIHRoZSBQQ0llIFNNTVUuIFNlZQogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC80NDAw
MzI5Lm1vZ0I0VHFTR3NAZGllZ28vCmZvciB0aGUgZnVsbCBkZXRhaWwuCgpUTDtEUiBpcywgU01N
VSB3aXRob3V0IHVzZXJzIChhbmQgdGh1cyBjbG9ja3MvcG93ZXItZG9tYWlucy9vciB3aGF0ZXZl
cikKaGFuZ3Mgb24gcmVib290LgoKCj4gQWxzbywgSSB0ZXN0ZWQgb24gdHdvIGRpZmZlcmVudCBE
UCBkaXNwbGF5cywgb25lIGhhcyBhIGdyZWVuIHRpbnQsIHRoZSAKPiBvdGhlciBvbmUgcHVycGxl
LiBXaGVuIHRyeWluZyBvdXQgb3RoZXIgcmVzb2x1dGlvbnMgd2l0aCBtb2RldGVzdCwgdGhlIAo+
IGtlcm5lbCB3b3VsZCBvZnRlbiBjcmFzaCAobm8gdHJhY2UsIGp1c3Qgbm90aGluZyBvbiBjb25z
b2xlLCBTU0ggZGVhZCkuIAo+IE5vdGUgdGhhdCB0aGUgc2FtZSBIVyBzZXR1cCB3aXRoIGRvd25z
dHJlYW0ga2VybmVsIGZyb20gCj4gaHR0cHM6Ly9naXQudGhlb2Jyb21hLXN5c3RlbXMuY29tL3Rp
Z2VyLWxpbnV4LmdpdC9sb2cvP2g9bGludXgtNi4xLXN0YW4tcmtyMy4yLXRpZ2VyIAo+IHdvcmtz
IGp1c3QgZmluZS4gSSB3b3VsZCBhc3N1bWUgdGhpcyBoYXMgbm90aGluZyB0byBkbyB3aXRoIHRo
aXMgRGV2aWNlIAo+IFRyZWUgcGF0Y2ggaGVyZSBidXQgcmF0aGVyIHRoZSBlRFAgcGF0Y2hlcyBt
aXNzaW5nIHNvbWUgYml0cyBtYXliZT8KPiAKPiBARGFtb24gZG8geW91IGhhdmUgc29tZSBpZGVh
Pwo+IAo+IFRoZSBkaXNwbGF5IHdpdGggZ3JlZW4gdGludCBpcyBhIElpeWFtYSBQcm9MaXRlIFhV
MjI5NEhTVSBhbmQgdGhlIG9uZSAKPiB3aXRoIHRoZSBwdXJwbGUgdGludCBpcyBhIERlbGwgUDIz
MTlIIGlmIHRoYXQgaGVscHMuCj4gCj4gbW9kZXRlc3Qgb3V0cHV0OiBodHRwczovL3Bhc3RlLmRl
Ymlhbi5uZXQvMTM4Nzc5Ny8uCj4gbW9kZXRlc3Qgb3V0cHV0IHdpdGggZG93bnN0cmVhbSBrZXJu
ZWw6IGh0dHBzOi8vcGFzdGUuZGViaWFuLm5ldC8xMzg3Nzk4Lwo+IAo+IFRoZSBEZXZpY2UgVHJl
ZSBsb29rcyBnb29kIHRvIG1lIG90aGVyd2lzZS4KPiAKPiBDaGVlcnMsCj4gUXVlbnRpbgo+IAoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
