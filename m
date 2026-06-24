Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69DECCDE002
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 11:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62cy8vHxr9GnNFBfToxybBXSVtCeazSMUe/tO2ChHQI=; b=Kjd1OOcsxMmyW/
	bYvkyoTVhvGI/sYDayrcsFMUR3wZcMeZEsSeq/1/JVrL3s9SENgGQ6G+nTdfwGc/fNYq4dxbFMeL+
	RRTbQ62eFFstksSVB3pCIT903fM/huPZobTWmn5ZvMrx9jWAShFT6IHfYFMR7LLMt4ZZyx7HwHs06
	k9omDsX1psZzOmd8mnN7n14QhM5TkQdzMC8sJHxuKo3LsEMYfJ9AFpcjHMKhHRcLT0/6u9JcrqsK0
	KMd8ETJSg+SH3cK4AqdvMd9cUCAl/Zk05JKFEgvJ3kslNP3wuT3UqDTU2SCAqtFTPcwFIpI5K/oYt
	EZT4mQkF1mGn42LoMa8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcM37-00000007hXJ-2aC1;
	Wed, 24 Jun 2026 11:45:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcM33-00000007hWW-0i0B;
	Wed, 24 Jun 2026 11:45:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=425jpoUA3Tt1bWmkrOSFNWHphFjZunbpgGFQD4aSpdk=; b=HwpDwOU/UQBrzXup3v/4wCO3K7
	zCJ7IIJaNRAveaToemqT9Rm33qC2yoq6kgTe2qtMtHgKZqPa4v07jlFRW4YuHCc5FerIo7rjalVAo
	mLceUYW8JZDM3ObrEFORrFNx8WeJS86BFf7n0D4HoZfGB74CH7p3GXWsWxbomDFIRm/hGpJ6k/c8X
	AcEzqVQPcfq7lbf9EnV/MwaW8Hr/GSnVw85NCnZxwDFkHv6RVtGoTuW77yfA9FCVceAaYve9jWY/d
	+mMFYaGajGkDVtAwwhK1t1tnE4Vaage37RZPRnx4ZYFlkUatkgW4UCiRG4ij0WZwJLq+BbA3tjSV+
	CRLniJYg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Daniele Briguglio <hello@superkali.me>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ricardo Pardini <ricardo@pardini.net>
Subject: Re: [PATCH v4 5/5] clk: rockchip: rk3588: add GATE_GRF clocks for I2S MCLK
 output to IO
Date: Wed, 24 Jun 2026 13:45:22 +0200
Message-ID: <2008560.6tgchFWduM@diego>
In-Reply-To: <DJGM4D19H31O.4I5N79CG5Z8C@cknow-tech.com>
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
 <20260623140958.4181297-1-hello@superkali.me>
 <DJGM4D19H31O.4I5N79CG5Z8C@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_044542_068762_05CB3AB0 
X-CRM114-Status: GOOD (  11.42  )
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

QW0gRGllbnN0YWcsIDIzLiBKdW5pIDIwMjYsIDE5OjQyOjA1IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgRGllZGVyaWsgZGUgSGFhczoKPiBIaSwKPiAKPiBPbiBUdWUgSnVu
IDIzLCAyMDI2IGF0IDQ6MTAgUE0gQ0VTVCwgRGFuaWVsZSBCcmlndWdsaW8gd3JvdGU6Cj4gPj4g
U28gSUlVQyB0aGF0IG1lYW5zIEknZCBiZSB0ZXN0aW5nIGJvdGggdmFyaWFudHMuCj4gPgo+ID4g
UmlnaHQsIHRoYXQgY292ZXJzIGJvdGg6IHRoZSBtdXggcGF0aCBhbmQgdGhlIGNvbnN1bWVyIHBh
dGguIExvb2tpbmcKPiA+IGZvcndhcmQgdG8gdGhlIHJlc3VsdHMuCj4gCj4gQW5hbG9nIGF1ZGlv
IHdvcmtzIG9uIGJvdGguIFBsdXMgd2l0aCBfVE9fSU8gYW5kIExUUyB3aXRob3V0IGluIHRoZWly
Cj4gcmVzcGVjdGl2ZSBEVFMncy4gU28gSSBndWVzcyBDTEtfSUdOT1JFX1VOVVNFRCB3b3Jrcy4g
Cj4gV2hldGhlciBpdCdzIGEgZ29vZC9yaWdodCBmaXgsIEknbGwgbGVhdmUgdXAgdG8gb3RoZXJz
LgoKSXQgaXMgdGhlIGNvcnJlY3QgZml4LCBhcyBpdCByZXR1cm5zIHRoZSBvcmlnaW5hbCB3YXkg
dGhpbmdzIHdvcmtlZCBmb3IKYm9hcmRzIG5vdCBhY3Rpdmx5IGhhbmRsaW5nIHRoYXQgY2xvY2su
CgpTbyB3aGlsZSBib2FyZHMgc2hvdWxkIGRvIHRoYXQsIHRoaXMgbWFrZXMgdGhlIGNsb2NrLWFk
ZGl0aW9uCmJhY2t3YXJkcyBjb21wYXRpYmxlLgoKQ2FyZSB0byBzZW5kIGEgcGF0Y2ggZm9yIHRo
YXQgY2hhbmdlPyA6LSkKCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
