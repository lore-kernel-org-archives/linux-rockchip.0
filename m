Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70FCBC369DC
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 12:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3wKoT8oJXJMe9OziOUF6NNuiMaYBzgjTaLhKxNlhBk=; b=dRF7hUBt9FKplB
	sT0I7ncRQdL32PLdBpfqaeT4DqPHBygk+GLx/z8xcCJTpzgJZ21dDPL+o2qlQO81tsOfQ6u5Ehb87
	7bEXIa7upZu5AJcUqTn85vgslDX4uJTIFX01zHqC6xIdIVAZ/3HAkVwlfFyPoBrhajrapQlDlQ/nO
	deDcsCarK/jmBV1N9lziGnPbAYp06XjVOt7Y4RL26avVR6Y6eKXeLyIKTqpL3rSo+TJ1t6V6zTW1y
	/fmdEtoUQ3GjWHv/Ylp7g6nxUr7gfG47X0yjSmgxKUczCppJuoq4DUeVMG3VD00YeCXdYAjKxGw1K
	75sGMfiACEL64fj2yMOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uATRx-0000000FjxE-23B4;
	Thu, 01 May 2025 12:55:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uATBU-0000000Fi6K-2OHW;
	Thu, 01 May 2025 12:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=TMGzIJ6a/SjyP3jq2ylC0v7lVpVlSTcN9VZFPohtskE=; b=zt4dSXgrVISFWJwXdPVT9vChf2
	lz5BPnDLeDaKPUiNU8qeOeCi0QQVViW7CcQHmefHNLggfwmfIreADmL7bMHG9anLK5GnL6+yKufmr
	XmSSHCMPeN5uiUjkXyAM48vyBoq4vhIc9VFYyGtcMMBkvz/aZ3BkkF2aCGciEz/wr6lD6YvFlKeuz
	toQlnSSZ/oMWzmoM9ldc/v38QRd/zsCW0Ln9VAhapQPXI8Cz/v7P4G2k7az+LX1syCwFvEt0A+gfa
	sR68RMdRcWlp7KTyUqCufKQ1WT0MHz8lEOK2a4kx81hJbkYZtwR8N6fIvFBDBcUU26T3I/A6PGRdF
	ZT5qrTpA==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uATBL-0001C8-5z; Thu, 01 May 2025 14:38:27 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v2 02/11] clk: rockchip: introduce auxiliary GRFs
Date: Thu, 01 May 2025 14:38:25 +0200
Message-ID: <2240109.Mh6RI2rZIc@diego>
In-Reply-To: <20250410-rk3576-sai-v2-2-c64608346be3@collabora.com>
References: <20250410-rk3576-sai-v2-0-c64608346be3@collabora.com>
 <20250410-rk3576-sai-v2-2-c64608346be3@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_053836_606844_2A7A3A77 
X-CRM114-Status: GOOD (  23.45  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTmljb2xhcywKCkFtIERvbm5lcnN0YWcsIDEwLiBBcHJpbCAyMDI1LCAyMTozOTo1NCBNaXR0
ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIE5pY29sYXMgRnJhdHRhcm9saToKPiBU
aGUgTVVYR1JGIGNsb2NrIGJyYW5jaCB0eXBlIGRlcGVuZHMgb24gaGF2aW5nIGFjY2VzcyB0byBz
b21lIHNvcnQgb2YKPiBHUkYgYXMgYSByZWdtYXAgdG8gYmUgcmVnaXN0ZXJlZC4gU28gZmFyLCB3
ZSBjb3VsZCBlYXNpbHkgZ2V0IGF3YXkgd2l0aAo+IG9ubHkgZXZlciBoYXZpbmcgb25lIEdSRiBz
dG93ZWQgYXdheSBpbiB0aGUgY29udGV4dC4KPiAKPiBIb3dldmVyLCBuZXdlciBSb2NrY2hpcCBT
b0NzLCBzdWNoIGFzIHRoZSBSSzM1NzYsIGhhdmUgc2V2ZXJhbCBHUkZzCj4gd2hpY2ggYXJlIHJl
bGV2YW50IGZvciBjbG9jayBwdXJwb3Nlcy4gSXQgYWxyZWFkeSBkZXBlbmRzIG9uIHRoZSBwbXUw
Cj4gR1JGIGZvciBNVVhHUkYgcmVhc29ucywgYnV0IGNvdWxkIGdldCBhd2F5IHdpdGggbm90IHJl
ZmFjdG9yaW5nIHRoaXMKPiBiZWNhdXNlIGl0IGRpZG4ndCBuZWVkIHRoZSBzeXNncmYgYXQgYWxs
LCBzbyBjb3VsZCBvdmVyd3JpdGUgdGhlIHBvaW50ZXIKPiBpbiB0aGUgY2xvY2sgcHJvdmlkZXIg
dG8gdGhlIHBtdTAgZ3JmIHJlZ21hcCBoYW5kbGUuCj4gCj4gSW4gcHJlcGFyYXRpb24gZm9yIG5l
ZWRpbmcgdG8gZmluYWxseSBhY2Nlc3MgbW9yZSB0aGFuIG9uZSBHUkYgcGVyIFNvQywKPiBsZXQn
cyB1bnRhbmdsZSB0aGlzLiBJbnRyb2R1Y2UgYW4gYXV4aWxpYXJ5IEdSRiBoYXNobWFwLCBhbmQg
YSBHUkYgdHlwZQo+IGVudW0uIFRoZSBoYXNtYXAgaXMga2V5ZWQgYnkgdGhlIGVudW0sIGFuZCBj
bG9jayBicmFuY2hlcyBub3cgaGF2ZSBhCj4gc3RydWN0IG1lbWJlciB0byBzdG9yZSB0aGUgdmFs
dWUgb2YgdGhhdCBlbnVtLCB3aGljaCBkZWZhdWx0cyB0byB0aGUKPiBzeXN0ZW0gR1JGLgo+IAo+
IFRoZSBTb0Mtc3BlY2lmaWMgX2Nsa19pbml0IGZ1bmN0aW9uIGNhbiB0aGVuIGluc2VydCBwb2lu
dGVycyB0byBHUkYKPiByZWdtYXBzIGludG8gdGhlIGhhc2htYXAgYmFzZWQgb24gdGhlIGdyZiB0
eXBlLgo+IAo+IER1cmluZyBjbG9jayBicmFuY2ggcmVnaXN0cmF0aW9uLCB3ZSB0aGVuIHBpY2sg
dGhlIHJpZ2h0IEdSRiBmb3IgZWFjaAo+IGJyYW5jaCBmcm9tIHRoZSBoYXNobWFwIGlmIHNvbWV0
aGluZyBvdGhlciB0aGFuIHRoZSBzeXMgR1JGIGlzCj4gcmVxdWVzdGVkLgo+IAo+IFRoZSByZWFz
b24gZm9yIGRvaW5nIGl0IHdpdGggdGhpcyBncmYgdHlwZSBpbmRpcmVjdGlvbiBpbiB0aGUgY2xv
Y2sKPiBicmFuY2hlcyBpcyBzbyB0aGF0IHdlIGRvbid0IG5lZWQgdG8gZGVmaW5lIHRoZSBNVVhH
UkYgYnJhbmNoZXMgaW4gYQo+IHNlcGFyYXRlIHN0ZXAsIGp1c3QgdG8gaGF2ZSBhIGRpcmVjdCBw
b2ludGVyIHRvIGEgcmVnbWFwIGF2YWlsYWJsZQo+IGFscmVhZHkuCj4gCj4gU2lnbmVkLW9mZi1i
eTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4K
Cmxpa2UgdGhlIGNvbmNlcHQgYW5kIGFsc28gaW1wbGVtZW50YXRpb24gOi0pIC4KCj4gLS0tCj4g
IGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMjguYyB8ICA2ICsrKy0tLQo+ICBkcml2ZXJz
L2Nsay9yb2NrY2hpcC9jbGstcmszNTY4LmMgfCAgMiArLQo+ICBkcml2ZXJzL2Nsay9yb2NrY2hp
cC9jbGstcmszNTc2LmMgfCAzMiArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQoKdGhl
IG9ubHkgImhhaXIgaW4gdGhlIHNvdXAiIGFyZSBzb21lIG1pc3Npbmcgc29jcyA7LSkgLgoKQXMg
eW91J3JlIGNoYW5naW5nIHRoZSBNVVhHUkYgdHlwZSwgeW91IHNob3VsZCBhZGFwdCBhbGwgc29j
cyB1c2luZyBpdApwbGVhc2UuIE1pc3NpbmcgcmszMjg4IGFuZCBydjExMjYgaXQgc2VlbXMgLSBB
Uk0zMiwgd2hpY2ggbWF5IGhhdmUgaGVscGVkCnRoZXNlIHNsaXBwaW5nIHRocm91Z2guCgoKSGVp
a28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
