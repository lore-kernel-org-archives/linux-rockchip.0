Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353D0606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 18:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TJQYRtsK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=DbuIQ72q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KpSbWsOK4SV92yVKU+i5PEH4KnFx13Mi8V5ew/tRqXU=; b=TJQYRtsKby1GCfdRADJqDPQykb
	lbWxCAebH1iHOXvD/jqh64ITdhbTbZ8fO1FMDaHsH6m+EVwaqqMDm3/T4WzolI+OoYCEDKzcKsRSu
	hwnGahm3OW7qq7dIevPJDm0b4cBa6+gZVDK5GDy+qY9gsd/MLG9OpNz5ozrl3ZSdg+7mVl8Jy9lI/
	SKt30Gs02PGcmpnyYBWL/tCsOMOAjqF1wp+yO3wSL1sKgvIgjRTolt9809zzBRW2fnV0Vo4+/rn3H
	khXyt5P2NWPY+7tTV9XGng6EEB3u7bJabj1Gd8wFzmBAR/54fQCnHPa9wXrc8gk943gU8b+QYgl3f
	niyzugDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrkN-0000000CQx6-1Qqm;
	Fri, 30 Oct 2026 18:54:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrkK-0000000CQvy-3PhU
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 18:54:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Brr2h/G8F5sm++eAkQE0x5CfsLRj1KRFkWsNsX6gqL4=; b=DbuIQ72qIeNFwJ6zGY+YCqzgId
	pZr+fUdvq2MaFQHXsS6SbE8eaXlbw89CsEJz7eAkGcWLBLmIfNWfuDNLXRGWhTlRL5MVZAKl3qmYn
	lmwsfKMx5iT0xcc3KpFtWOyUoCQKsgmaSRh/sXRXkTBwrJMUrxAn1oD3aUfGXX4dO0QhyDBNcsFEW
	ahtxF9PiZxVxEMh9/G/X56ywg1tzpvBekjhYbM2uoF2kk85ZmBvkQGEsjhednGw+j1q9zfb2/4IEE
	vqVoZvr8/1bElk7XzW1n6pT1mJrArgI3Ss3kQekCxYygL02olfBH5fd6rJCtNeMDROmX2DtYYaZLc
	h+hqFRyA==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Cc: linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
 dario.binacchi@amarulasolutions.com,
 Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Axelera Embedded 111c
Date: Fri, 30 Oct 2026 19:54:32 +0100
Message-ID: <10806856.0AQdONaE2F@phil>
In-Reply-To: <20261020113717.189082-4-patrick.barsanti@amarulasolutions.com>
References: <20261020113717.189082-1-patrick.barsanti@amarulasolutions.com>
 <20261020113717.189082-4-patrick.barsanti@amarulasolutions.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_115436_879962_645CA007 
X-CRM114-Status: GOOD (  13.94  )
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
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDIwLiBPa3RvYmVyIDIwMjYsIDEzOjM3OjE3IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgUGF0cmljayBCYXJzYW50aToKPiBBZGQgbWluaW1hbCBkZXZp
Y2UgdHJlZSBmb3IgdGhlIEF4ZWxlcmEgRW1iZWRkZWQgMTExYwo+IChyazM1ODgtZW1iZWRkZWQt
MTExYykuCj4gCj4gSXQgb2ZmZXJzIGVmZmljaWVudCBBSSBjb21wdXRlIGZvciBtdWx0aS1zdHJl
YW0gY29tcHV0ZXIgdmlzaW9uIGFuZAo+IEdlbkFJIGFwcGxpY2F0aW9ucyBpbiBhIGNvbXBhY3Qg
ZGVzaWduLiBJdCBmZWF0dXJlcyBhIHF1YWQtY29yZQo+IEF4ZWxlcmEgQUkgTWV0aXMgQUlQVSBh
bmQgYW4gUkszNTg4IFNvQyBwcm9jZXNzb3IuCj4gCj4gVGhpcyBiYXNpYyB2ZXJzaW9uIG9mIHRo
ZSBkdHMgc3VwcG9ydHM6Cj4gLSBDb25zb2xlCj4gLSBlTU1DCj4gLSBIRE1JCj4gLSA0eCBVU0It
QQo+IC0gMnggR2lnYWJpdCBFdGhlcm5ldAo+IC0gUlRDCj4gLSBFbnVtZXJhdGlvbiBvZiBvbi1i
b2FyZCBBeGVsZXJhIE1ldGlzIEFJUFUKPiAKPiBMaW5rOiBodHRwczovL2F4ZWxlcmEuYWkvYXhl
bGVyYS1wcm9kdWN0cy9lbWJlZGRlZC8xMTFjCj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBUcmlt
YXJjaGkgPG1pY2hhZWxAYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGFy
aW8gQmluYWNjaGkgPGRhcmlvLmJpbmFjY2hpQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFBhdHJpY2sgQmFyc2FudGkgPHBhdHJpY2suYmFyc2FudGlAYW1hcnVsYXNvbHV0
aW9ucy5jb20+Cgp0aGF0IFNpZ25lZC1vZmYgY2hhaW4gaXMgbm90IGNvcnJlY3QuCgpBcyBpdCBz
dGFuZHMsIHRoZSBmaXJzdCBzaWduZWQtb2ZmIHdvdWxkIGluZGljYXRlIE1pY2hhZWwgYXMgdGhl
IGF1dGhvci4KCklmIGFsbCAzIG9mIHlvdSB3b3JrZWQgb24gdGhpcywgdGhpcyBuZWVkcyBDby1k
ZXZlbG9wZWQtYnkgdGFncywgdGhvdWdoCjMgcGVvcGxlIGZvciBvbmUgZGV2aWNldHJlZT8KCgoK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZW1iZWRk
ZWQtMTExYy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1lbWJlZGRl
ZC0xMTFjLmR0cwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5h
OTY0YjQ2ZTVjMTIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtZW1iZWRkZWQtMTExYy5kdHMKCnBsZWFzZSBuYW1lIHRoaXMgcmszNTg4
LWF4ZWxlcmEtZW1iZWRkZWQtMTExYy5kdHMKClRoZSBuYW1lIGlzIG90aGVyd2lzZSB3YXkgdG9v
IGdlbmVyaWMuCgoKPiArCQkJdmRkX2xvZ19zMDogZGNkYy1yZWczIHsKPiArCQkJCXJlZ3VsYXRv
ci1hbHdheXMtb247Cj4gKwkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiArCQkJCXJlZ3VsYXRvci1t
aW4tbWljcm92b2x0ID0gPDY3NTAwMD47Cj4gKwkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9
IDw4MDAwMDA+Owo+ICsJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkX2xvZ19zMCI7Cj4gKwkJCQly
ZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwxMjUwMD47Cj4gKwo+ICsJCQkJcmVndWxhdG9yLXN0YXRl
LW1lbSB7Cj4gKwkJCQkJcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kOwo+ICsJCQkJCXJlZ3VsYXRv
ci1zdXNwZW5kLW1pY3Jvdm9sdCA9IDw3NTAwMDA+OwoKcmVndWxhdG9yLXN1c3BlbmQtbWljcm92
b2x0IGlzIGRlcHJlY2F0ZWQsIHNvIHNob3VsZCBub3QgYmUgdXNlZCBpbgpuZXcgZGV2aWNldHJl
ZXMuIFNhbWUgZm9yIGFsbCBvdGhlciBvY2N1cmVuY2VzLgoKCnJlc3QgbG9va3Mgb2sgOi0pCgoK
VGhhbmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
