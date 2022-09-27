Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59023C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 21:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utW7/fYvZzdW5mg6MBKNpu1fMG0/LurasVyHh+q6qzQ=; b=jT3xCu1TyyLY0+
	qUIHhs2ErBaqXqD+5VtGzHIIngLYANCzx7g7qAz2l4W4YS6OlaMwImw+igmKeHs0yTrlfFaruCkvW
	S/PuFs8zftOJU1yVYb2MUiYSWvusS2t73vUqAU5Kx+syaNka2IWvu2srqpcd7LGkjjD0cvQhKDXaX
	oFn60CeMo9wNHh9cpW0tAzef/Lsfaj/xO3IaH9ydKo/puzqb8KqvChi1VTM+kpYSt7qed3eYsSSEL
	XgV7Md2kSnr/iJruKMMNzNwSlYVbG1vnIgGIxqkKHp2nhA1NFfB3Od3uWFGwXvydnYt8hozQuTAiJ
	WYmUddq5pD6txzIDkTzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odIIc-00Cl5r-Ur; Tue, 27 Sep 2022 21:39:30 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odIIZ-00Cl4N-Vo
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 21:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=DPYju4UlrsNG5SoXMWeppqqTGHjGy6TmKutDfna9o1U=; b=CNJUM2005XPaqlP9SugZU2blwO
	NZi2KpZqaG8DT8fSrD20aOas6nr2FdSN3QpeRZzI9rEOwtDRoTru7EoERB4Z2R5mQXhrAf4AyPZOD
	LRofPE50ju7Dj6kV7a51ijmnOeSclMi1cD/DK6bgQIcFSGEmWwRzYb14DMCTfyxUxD3PSxVrWmmVt
	RCCWAXxO9kVhswg7xu8iZtoOSqVqk3fMrt0uK1E36CIxp9QNNtQwYaRdTp5QC1VFH1NA1N8zzAg6H
	dpUQm7OPhuv6jHzSaI0QeRs3zh+ft2K2kBjsIX+3RdqxxSWrCQlEaYGMXiQZ6or1/ioX6mtULcAOl
	ySBNfN/Q==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1odIIP-00C1hU-ME; Tue, 27 Sep 2022 23:39:17 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1odIIP-000VSG-0F;
	Tue, 27 Sep 2022 23:39:17 +0200
Date: Tue, 27 Sep 2022 23:39:17 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: LABBE Corentin <clabbe@baylibre.com>
Cc: Robin Murphy <robin.murphy@arm.com>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Message-ID: <YzNthZ0MtfwjIqdH@aurel32.net>
Mail-Followup-To: LABBE Corentin <clabbe@baylibre.com>,
	Robin Murphy <robin.murphy@arm.com>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
 <YzMm4d3sZBHpitm9@aurel32.net>
 <YzNTB+RQK6yITi7/@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzNTB+RQK6yITi7/@Red>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_143928_042129_7E77CA3E 
X-CRM114-Status: GOOD (  22.84  )
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

T24gMjAyMi0wOS0yNyAyMTo0NiwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgVHVlLCBTZXAg
MjcsIDIwMjIgYXQgMDY6Mzc6NTNQTSArMDIwMCwgQXVyZWxpZW4gSmFybm8gYSDDqWNyaXQgOgo+
ID4gT24gMjAyMi0wOS0yMCAxMDozNSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+ID4gPiBPbiAyMDIy
LTA5LTE5IDIyOjAwLCBKYXNvbiBBLiBEb25lbmZlbGQgd3JvdGU6Cj4gPiA+ID4gVGhlIFJvY2tj
aGlwIGRyaXZlciBoYXMgbG9uZyBleGlzdGVkIG91dCBvZiB0cmVlLCBidXQgbm90IHVwc3RyZWFt
Lgo+ID4gPiA+IFRoZXJlIGlzIHN1cHBvcnQgZm9yIGl0IHVwc3RyZWFtIGluIHUtYm9vdCwgYnV0
IG5vdCBpbiBMaW51eCBwcm9wZXIuCj4gPiA+ID4gVGhpcyBjb21taXQgaW1wb3J0cyB0aGUgR1BM
djIgZHJpdmVyIHdyaXR0ZW4gYnkgTGluIEppbmhhbiwgdG9nZXRoZXIKPiA+ID4gPiB3aXRoIHRo
ZSBEVFMgYW5kIGNvbmZpZyBibG9icyBmcm9tIFdldnN0eS4KPiA+ID4gCj4gPiA+IE5vdGUgdGhh
dCBDb3JlbnRpbiBoYXMgYSBzZXJpZXMgZW5hYmxpbmcgdGhlIGZ1bGwgY3J5cHRvIGRyaXZlciBm
b3IgCj4gPiA+IFJLMzMyOCBhbmQgUkszMzk5WzFdLCBzbyBpdCB3b3VsZCBzZWVtIG1vcmUgc2Vu
c2libGUgdG8gYWRkIFRSTkcgc3VwcG9ydCAKPiA+ID4gdG8gdGhhdC4gSGF2aW5nIGNvbmZsaWNp
dGluZyBjb21wYXRpYmxlcyBmb3IgdGhlIHNhbWUgaGFyZHdhcmUgdGhhdCAKPiA+ID4gZm9yY2Ug
dGhlIHVzZXIgdG8gY2hhbmdlIHRoZWlyIERUIHRvIGNob29zZSBvbmUgZnVuY3Rpb25hbGl0eSBv
ciB0aGUgCj4gPiA+IG90aGVyIGlzbid0IGdvb2QgKHBsdXMgdGhlcmUncyBhbHNvIG5vIGJpbmRp
bmcgZm9yIHRoaXMgb25lKS4KPiA+IAo+ID4gSXQgbWlnaHQgbWFrZSBzZW5zZSBmb3IgdGhlIGNy
eXB0b3YxLXJuZyBkcml2ZXIgKEkgaGF2ZW4ndCBjaGVja2VkKS4gRm9yCj4gPiB0aGUgY3J5cHRv
djItcm5nIGRyaXZlciwgSSBsb29rZWQgYXQgdGhlIFJLMzU2OCBUUk0gKEkgY2FuJ3QgZmluZCB0
aGUKPiA+IFJLMzU4OCBvbmUpLCBhbmQgZnJvbSB3aGF0IEkgdW5kZXJzdGFuZCBjcnlwdG8gYW5k
IFRSTkcgYXJlIHR3bwo+ID4gZGlmZmVyZW50IGRldmljZXMsIHVzaW5nIGRpZmZlcmVudCBhZGRy
ZXNzIHNwYWNlcywgY2xvY2ssIHJlc2V0IGFuZAo+ID4gaW50ZXJydXB0cy4gVGhlIHZlbmRvciBr
ZXJuZWwgdXNlcyB0d28gZGlmZmVyZW50IGRyaXZlcnMuCj4gPiAKPiAKPiBJIGNvbmZpcm0gdGhh
dCBUUk5HIGlzIG5vdCBvbiB0aGUgc2FtZSBJUCBvbiByazM1NjgsIHNvbWV0aGluZyBJIGRpZG50
IHJlbWFyayB3aGVuIGRvaW5nIG15IFYyIGRyaXZlci4gKEkgbmVlZCB0byByZW1vdmUgcm5nIGNs
b2NrIGZyb20gcmszNTY4IGR0KS4KPiBCdXQgdGhlIHJrMzU4OCBjcnlwdG8gSVAgYW5kIHRoZSBU
Uk5HIGFyZSBpbiB0aGUgc2FtZSBkZXZpY2UuCgpPaywgdGhhbmtzIGZvciBjb25maXJtaW5nIGFi
b3V0IHRoZSByazM1NjguIEl0IHNlZW1zIHRoZSBvbmx5IG9uZSBpbiB0aGUKZmFtaWx5IHdpdGgg
c2VwYXJhdGUgZGV2aWNlcyBmb3IgVFJORyBhbmQgY3J5cHRvLiBEb2VzIGl0IG1lYW5zIHdlIG5l
ZWQKYSBzZXBhcmF0ZSBUUk5HIGRyaXZlciBvbmx5IGZvciBpdD8gT3IgY291bGQgd2UgaGFuZGxl
IGl0IHRoZSBzYW1lIHdheQp0aGFuIGZvciBpbnN0YW5jZSByazM1ODggYW55d2F5PwoKLS0gCkF1
cmVsaWVuIEphcm5vICAgICAgICAgICAgICAgICAgICAgICAgICBHUEc6IDQwOTZSLzFEREQ4QzlC
CmF1cmVsaWVuQGF1cmVsMzIubmV0ICAgICAgICAgICAgICAgICBodHRwOi8vd3d3LmF1cmVsMzIu
bmV0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
