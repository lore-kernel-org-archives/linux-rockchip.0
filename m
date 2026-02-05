Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0685CE9128B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 07:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktq4Sk8Yj6n5eu72EbW0caL8ulz+v+T8p9qtpsbytcM=; b=kJV6j4bCEb89Hv
	wZ5IHggHUIvucvkxnouLYVsG4fwt+PHuonaPvYW/vC+88DBCsG41Q/o8i12PcctRQK9VulHMMD4r8
	5FvCHyaqK+UFhMCONUhNAJ/nKu1KS4OM5zZ6nWkRwtyeUjp1V6IkRvQY3yR9E09noy3STjhTR2wkI
	f4Pw4MTRFvPxdFzl8VZEuI8CtwBQjILFDdOex5wLFMzfzXxf/+8oqCm7pWo2ryMFyIXBG8I/MsW8y
	vLqPJ/ABKPR/qVL4J+p0KPPIZs7ZRjji2TTu123hcOAqfs9tmZ9Kbvy+2YuB/sI/MPGnZ4SpO04DV
	rgkc3i4Chmc0x2XoHsTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnu2N-00000009Zos-2Mmh;
	Thu, 05 Feb 2026 07:44:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnu2I-00000009ZnJ-3xk6;
	Thu, 05 Feb 2026 07:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Ntdpc/kmU25S8F1eDNB57650TuUB4jKAVLcNz3WP428=; b=JD9cFskb0ndPxsKG6mTXNaig4G
	AjzKOFM/uI2N0j2aUVwUgcC3SwPYbKsfsc1pabUNvUYnLLVx209LS6nhZAnvXY5BX8ICUrdVb19fB
	wewmjBHYAs1usCTPHRkN+XodwpBydq99GjSElbGrZ60yAKYLCsDkDcI2lDDLpJbL4ceI7O3CDkc9e
	gcwDxAN6xJeO50QVSckVR8cfFj13SswOLKmnJ2uunwIVKPVIny+RCf1Dqu85I4ryNCdQe+UbEhdnH
	/3DMcq2+DuBck+ZT3iQb9/jkiVArfTRJLr/lktcrqnP/yb2Z08mPU/+Yf0zqn1Ed+RylgHGgzBWXu
	ch73Pyqg==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnu28-0074Ju-66; Thu, 05 Feb 2026 08:44:12 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 5/6] net: stmmac: rk: use rk_encode_wm16() for clock
 selection
Date: Thu, 05 Feb 2026 08:44:11 +0100
Message-ID: <3561842.ZfL8zNpBrT@diego>
In-Reply-To: <aYPHjS0wrtXlRb1a@shell.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk> <20297648.sWSEgdgrri@diego>
 <aYPHjS0wrtXlRb1a@shell.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_234423_041382_0C7AA8C4 
X-CRM114-Status: GOOD (  33.18  )
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

SGkgUnVzc2VsbCwKCkFtIE1pdHR3b2NoLCA0LiBGZWJydWFyIDIwMjYsIDIzOjI2OjIxIE1pdHRl
bGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgUnVzc2VsbCBLaW5nIChPcmFjbGUpOgo+
IE9uIFdlZCwgRmViIDA0LCAyMDI2IGF0IDExOjAzOjUxUE0gKzAxMDAsIEhlaWtvIFN0w7xibmVy
IHdyb3RlOgo+ID4gQW0gTWl0dHdvY2gsIDQuIEZlYnJ1YXIgMjAyNiwgMTA6MTQ6MzggTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBSdXNzZWxsIEtpbmcgKE9yYWNsZSk6Cj4g
PiA+IFVzZSBya19lbmNvZGVfd20xNigpIGZvciBSTUlJIGNsb2NrIGdhdGluZyBjb250cm9sLCBh
bmQgYWxzbyBmb3IgdGhlCj4gPiA+IGlvX2Nsa3NlbCBiaXQgdXNlZCB0byBzZWxlY3QgdGhlIHRy
YW5zbWl0IGNsb2NrIGJldHdlZW4gQ1JVLWRlcml2ZWQKPiA+ID4gYW5kIElPLWRlcml2ZWQgY2xv
Y2sgc291cmNlcy4KPiA+ID4gCj4gPiA+IEJvdGggb2YgdGhlc2Ugd2VyZSBjb25maWd1cmVkIHZp
YSB0aGUgInNldF9jbG9ja19zZWxlY3Rpb24iIG1ldGhvZCBpbgo+ID4gPiB0aGUgU29DIHNwZWNp
ZmljIG9wZXJhdGlvbnMsIGJ1dCB0aGVyZSBpcyBubyByZXF1aXJlbWVudCB0byBjaGFuZ2UgdGhl
Cj4gPiA+IGlvX2Nsa3NlbCBleGNlcHQgd2hlbiBlbmFibGluZyBjbG9ja3MuCj4gPiA+IAo+ID4g
PiBJdCBpcyBhbHNvIHBvc3NpYmxlIHRoYXQgd2UgZG9uJ3QgbmVlZCB0byB1bmdhdGUgdGhlIFJN
SUkgY2xvY2sgaWYgd2UKPiA+ID4gYXJlIG9wZXJhdGluZyBpbiBSR01JSSBtb2RlLCBidXQgdGhp
cyBjb21taXQgbWFrZXMgbm8gY2hhbmdlIHRoZXJlLgo+ID4gPiAKPiA+ID4gU3BsaXQgdXAgdGhl
IGNvbmZpZ3VyYXRpb24gb2YgdGhlc2UgYXMgc2VwYXJhdGUgZnVuY3Rpb25zLCBhbmQgcmVtb3Zl
Cj4gPiA+IHRoZSBzZXRfY2xvY2tfc2VsZWN0aW9uKCkgbWV0aG9kLiBTaW5jZSB0aGVzZSBjbG9j
a2luZyBiaXRzIGFyZSBpbiB0aGUKPiA+ID4gc2FtZSByZWdpc3RlciB0aGF0IHdlIGNhbGwgdGhl
ICJzcGVlZCIgcmVnaXN0ZXIsIG1vdmUgdGhlIGxvZ2ljIGZvcgo+ID4gPiB3cml0aW5nIHRoYXQg
cmVnaXN0ZXIgaW50byBya193cml0ZV9zcGVlZF9ncmZfcmVnKCkuCj4gPiA+IAo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgPHJtaytrZXJuZWxAYXJtbGludXgub3Jn
LnVrPgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdt
YWMtcmsuYyAgICB8IDE3NCArKysrKysrKy0tLS0tLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA3NSBpbnNlcnRpb25zKCspLCA5OSBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+ID4gPiBpbmRleCA0
MDk5Y2JjNWQwZGUuLmVkOWFkYWM3MGYwYSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+ID4gPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jCj4gPiA+IEBAIC0yNyw4ICsyNywx
NyBAQAo+ID4gPiAgc3RydWN0IHJrX3ByaXZfZGF0YTsKPiA+ID4gIAo+ID4gPiAgc3RydWN0IHJr
X2Nsb2NrX2ZpZWxkcyB7Cj4gPiA+ICsJLyogaW9fY2xrc2VsX2NydV9tYXNrIC0gaW9fY2xrc2Vs
IGJpdCBpbiBjbG9jayBHUkYgcmVnaXN0ZXIgd2hpY2gsCj4gPiA+ICsJICogd2hlbiBzZXQsIHNl
bGVjdHMgdGhlIHR4IGNsb2NrIGZyb20gQ1JVLgo+ID4gPiArCSAqLwo+ID4gPiArCXUxNiBpb19j
bGtzZWxfY3J1X21hc2s7Cj4gPiA+ICsJLyogaW9fY2xrc2VsX2lvX21hc2sgLSBpb19jbGtzZWwg
Yml0IGluIGNsb2NrIEdSRiByZWdpc3RlciB3aGljaCwKPiA+ID4gKwkgKiB3aGVuIHNldCwgc2Vs
ZWN0cyB0aGUgdHggY2xvY2sgZnJvbSBJTy4KPiA+ID4gKwkgKi8KPiA+IAo+ID4gbml0OiBjb21t
ZW50IHN0aWxlIGRvZXMgbm90IHNlZW0gdG8gZm9sbG93IHRoZSBrZXJuZWwgY29kaW5nIHN0eWxl
Cj4gPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3MvY29kaW5nLXN0eWxlLnJz
dCNuNjIyCj4gCj4gbmV0ZGV2IGhhcyBoaXN0b3JpY2FsbHkgaGFkIHRoaXMgc3R5bGUgd2hpY2gg
aXMgc2VwYXJhdGUgZnJvbSB0aGUgcmVzdAo+IG9mIHRoZSBrZXJuZWwuIFRoZSBmaWxlIGFscmVh
ZHkgdXNlcyB0aGlzIGNvbW1lbnQgc3R5bGUsIHNvIGl0IGlzCj4gZW50aXJlbHkgY29ycmVjdCB0
byBrZWVwIHRvIHRoZSBzdHlsZSB3aGljaCBhbHJlYWR5IGV4aXN0cyBpbiB0aGlzCj4gZmlsZSwg
cmF0aGVyIHRoYW4gbWl4aW5nIHN0eWxlcyBhbmQgdHVybmluZyBpdCBpbnRvIGEgbWVzcy4KCnRo
YW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uIFRoZW4gdGhlIGNvbW1lbnQgc3R5bGUgaXMgb2J2
aW91c2x5IGZpbmUuCgpSZWdhcmRzCkhlaWtvCgoKPiA+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVl
Ym5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gVGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPiAjcHgzMCxyazMzMjgscmszNTY4LHJrMzU4OAo+IAo+IAoKCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
