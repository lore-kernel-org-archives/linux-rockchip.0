Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 792FFC5B543
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 17:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9DaL8+ZIp1EIJFEUc/yZm4VaTImHHqmO+8hefw1ih9A=; b=QT7l52Y+CmyzI4
	qFny4mbBrsbFawlY0+GdJVIanX87stz5FGXhRPRGFZTJuBwKSfwfO4sVJ1o4FfPJk8AeizpZUwtl9
	HmAcxVl4vhiDzYwV+RMqlqM3noi8q7XT6BHMoXRP2TICk86mLhDmqeJXuactAINzSsQJgHF8J45qn
	ZZ1Ytp2mLpUamdeP0s+/Y9Cf9OmDn2hZaEEfMInwJ2oGt12bImlvwAsKYjqRSmQMISDgYlD7mbRZv
	PhpsV7QGDnj42NVhcUAanDArM+4ffDS5hylPYlobo5hmCjVbJ4Y4CAWi32KOjbVn40mECbOxaYAd9
	svFwQVMKBZUuVWEozWqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL3bT-00000001PYr-2Kz0;
	Fri, 30 May 2025 17:33:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL3ON-00000001O0v-1ebt;
	Fri, 30 May 2025 17:19:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 264444A841;
	Fri, 30 May 2025 17:19:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C713BC4CEE9;
	Fri, 30 May 2025 17:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748625579;
	bh=r75gyDrLGguzONHF8H73EFamx8iEhr+JOYtKKCo4xv8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=aBXBtw7hPt5+MiQPWv6+6d/vPcbxlur8A9dvcQsNL1iOU8Z5M8CNWOZhKNYKj/QWv
	 SlgXOWD1Q3pcSYl2PcyR3ZvNrdrWFGuFyeZYBXFFKuXDn/xIGFo3elxaFJgiZOfdHu
	 4y4DcCjdio6aDA2qbFQPz+t0drZhicR7ldwnNouwxEc0XCr4DacokmvfJtxklQr53t
	 vVxnVbbTOhq0lh6+y+KZ43rCs4J4ykIPfdCqy+FYI3jl1CAYNiI1hJqomtBmIr57In
	 9BtyJQX3YzScR0CqjMR4rb6Rm7SDS1lRwJ1RYOSOW6XfvPa2ZFk0HLNTYVsKzF8rr7
	 x0Bm/xt/NSzvw==
Date: Fri, 30 May 2025 12:19:37 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Niklas Cassel <cassel@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Hans Zhang <18255117159@163.com>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <20250530171937.GA198252@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fbvatgydh64wr2z2srivbuurjonxpq46xie3bq57grtosesfti@v6vplhyxc343>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_101939_471311_D6354850 
X-CRM114-Status: GOOD (  29.31  )
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

T24gRnJpLCBNYXkgMzAsIDIwMjUgYXQgMDk6Mjk6NTdQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFdlZCwgTWF5IDI4LCAyMDI1IGF0IDA1OjQyOjUxUE0gLTA1MDAs
IEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiBPbiBUdWUsIE1heSAwNiwgMjAyNSBhdCAwOTozOToz
NkFNICswMjAwLCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+ID4gPiBDb21taXQgZWM5ZmQ0OTliOWM2
ICgiUENJOiBkdy1yb2NrY2hpcDogRG9uJ3Qgd2FpdCBmb3IgbGluayBzaW5jZSB3ZSBjYW4KPiA+
ID4gZGV0ZWN0IExpbmsgVXAiKSBjaGFuZ2VkIHNvIHRoYXQgd2Ugbm8gbG9uZ2VyIGNhbGwgZHdf
cGNpZV93YWl0X2Zvcl9saW5rKCksCj4gPiA+IGFuZCBpbnN0ZWFkIGVudW1lcmF0ZSB0aGUgYnVz
IHdoZW4gcmVjZWl2aW5nIGEgTGluayBVcCBJUlEuCj4gPiA+IAo+ID4gPiBMYXN6bG8gRmlhdCBy
ZXBvcnRlZCAob2ZmLWxpc3QpIHRoYXQgaGlzIFBMRVhUT1IgUFgtMjU2TThQZUdOIE5WTWUgU1NE
IGlzCj4gPiA+IG5vIGxvbmdlciBmdW5jdGlvbmFsLCBhbmQgc2ltcGx5IHJldmVydGluZyBjb21t
aXQgZWM5ZmQ0OTliOWM2ICgiUENJOgo+ID4gPiBkdy1yb2NrY2hpcDogRG9uJ3Qgd2FpdCBmb3Ig
bGluayBzaW5jZSB3ZSBjYW4gZGV0ZWN0IExpbmsgVXAiKSBtYWtlcyBoaXMKPiA+ID4gU1NEIGZ1
bmN0aW9uYWwgYWdhaW4uCj4gPiA+IAo+ID4gPiBJdCBzZWVtcyB0aGF0IHdlIGFyZSBlbnVtZXJh
dGluZyB0aGUgYnVzIGJlZm9yZSB0aGUgZW5kcG9pbnQgaXMgcmVhZHkuCj4gPiA+IEFkZGluZyBh
IG1zbGVlcChQQ0lFX1RfUlJTX1JFQURZX01TKSBiZWZvcmUgZW51bWVyYXRpbmcgdGhlIGJ1cyBp
biB0aGUKPiA+ID4gdGhyZWFkZWQgSVJRIGhhbmRsZXIgbWFrZXMgdGhlIFNTRCBmdW5jdGlvbmFs
IG9uY2UgYWdhaW4uCj4gPiAKPiA+IFRoaXMgc291bmRzIGxpa2UgYSBwcm9ibGVtIHRoYXQgY291
bGQgaGFwcGVuIHdpdGggYW55IGNvbnRyb2xsZXIsIG5vdAo+ID4ganVzdCBkdy1yb2NrY2hpcD8g
IEFyZSB3ZSBtaXNzaW5nIHNvbWUgcmVxdWlyZWQgZGVsYXkgdGhhdCBzaG91bGQgYmUKPiA+IGlu
IGdlbmVyaWMgY29kZT8gIE9yIGlzIHRoaXMgYSBQTEVYVE9SIGRlZmVjdCB0aGF0IGV2ZXJ5Ym9k
eSBoYXMgdG8KPiA+IHBheSB0aGUgcHJpY2UgZm9yPwo+ID4gCj4gPiBEZWxheXMgbGlrZSB0aGlz
IGFyZSByZWFsbHkgaGFyZCB0byBnZXQgcmlkIG9mIG9uY2Ugd2UgYWRkIHRoZW0sIHNvCj4gPiBJ
J20gYSBsaXR0bGUgYml0IGNhdXRpb3VzLgo+IAo+IE9rLCBJIGRpZ2dlZCBpbnRvIHRoZSBzcGVj
IGEgbGl0dGxlIG1vcmUgYW5kIEkgY291bGQgc2VlIGJlbG93Cj4gcGFyYWdyYXBoIGluIHI2LjAs
IHNlYyA2LjYuMSBmb3IgZGV2aWNlcyBub3Qgc3VwcG9ydGluZyBEZXZpY2UKPiBSZWFkaW5lc3Mg
U3RhdHVzIChEUlMpOgo+IAo+ICJXaXRoIGEgRG93bnN0cmVhbSBQb3J0IHRoYXQgZG9lcyBub3Qg
c3VwcG9ydCBMaW5rIHNwZWVkcyBncmVhdGVyCj4gdGhhbiA1LjAgR1Qvcywgc29mdHdhcmUgbXVz
dCB3YWl0IGEgbWluaW11bSBvZiAxMDAgbXMgZm9sbG93aW5nIGV4aXQKPiBmcm9tIGEgQ29udmVu
dGlvbmFsIFJlc2V0IGJlZm9yZSBzZW5kaW5nIGEgQ29uZmlndXJhdGlvbiBSZXF1ZXN0IHRvCj4g
dGhlIGRldmljZSBpbW1lZGlhdGVseSBiZWxvdyB0aGF0IFBvcnQuCj4gCj4gV2l0aCBhIERvd25z
dHJlYW0gUG9ydCB0aGF0IHN1cHBvcnRzIExpbmsgc3BlZWRzIGdyZWF0ZXIgdGhhbiA1LjAKPiBH
VC9zLCBzb2Z0d2FyZSBtdXN0IHdhaXQgYSBtaW5pbXVtIG9mIDEwMCBtcyBhZnRlciBMaW5rIHRy
YWluaW5nCj4gY29tcGxldGVzIGJlZm9yZSBzZW5kaW5nIGEgQ29uZmlndXJhdGlvbiBSZXF1ZXN0
IHRvIHRoZSBkZXZpY2UKPiBpbW1lZGlhdGVseSBiZWxvdyB0aGF0IFBvcnQuICBTb2Z0d2FyZSBj
YW4gZGV0ZXJtaW5lIHdoZW4gTGluawo+IHRyYWluaW5nIGNvbXBsZXRlcyBieSBwb2xsaW5nIHRo
ZSBEYXRhIExpbmsgTGF5ZXIgTGluayBBY3RpdmUgYml0IG9yCj4gYnkgc2V0dGluZyB1cCBhbiBh
c3NvY2lhdGVkIGludGVycnVwdCAoc2VlIMKnIFNlY3Rpb24gNi43LjMuMyApLiBJdAo+IGlzIHN0
cm9uZ2x5IHJlY29tbWVuZGVkIGZvciBzb2Z0d2FyZSB0byB1c2UgdGhpcyBtZWNoYW5pc20gd2hl
bmV2ZXIKPiB0aGUgRG93bnN0cmVhbSBQb3J0IHN1cHBvcnRzIGl0LiIKPiAKPiBXZSBhcmUgbm90
IGNoZWNraW5nIGZvciBEUlMgYWZ0ZXIgdGhlIFBFUlNUIyBkZWFzc2VydCBvciBhZnRlciBsaW5r
Cj4gaXMgdXAsIEkgdGhpbmsgRFJTIGNoZWNrIG9ubHkgYXBwbGllcyB0byBlbnVtZXJhdGVkIGRl
dmljZXMsIGJ1dCBJJ20KPiBub3QgMTAwJSBzdXJlLiBCdXQgaWYgd2UgYXNzdW1lIHRoYXQgdGhl
IGRldmljZXMgZG9lc24ndCBzdXBwb3J0Cj4gRFJTLCB0aGVuIHdlIHNob3VsZCBtYWtlIHN1cmUg
dGhhdCBhbGwgY29udHJvbGxlciBkcml2ZXJzIHdhaXQgZm9yCj4gMTAwbXMgZXZlbiBhZnRlciBs
aW5rIHVwIGV2ZW50IGJlZm9yZSBpc3N1aW5nIHRoZSBjb25maWcgcmVxdWVzdC4KCkkgZG9uJ3Qg
dGhpbmsgd2UgaGF2ZSBhbnkgRFJTIHN1cHBvcnQgeWV0LgoKSSB0aGluayBhbGwgZHJpdmVycyBz
aG91bGQgd2FpdCBQQ0lFX1RfUlJTX1JFQURZX01TICgxMDBtcykgYWZ0ZXIgZXhpdApmcm9tIENv
bnZlbnRpb25hbCBSZXNldCAoaWYgcG9ydCBvbmx5IHN1cHBvcnRzIDw9IDUuMCBHVC9zKSBvciBh
ZnRlcgpsaW5rIHRyYWluaW5nIGNvbXBsZXRlcyAoaWYgcG9ydCBzdXBwb3J0cyA+IDUuMCBHVC9z
KS4KCj4gU28gSSBkb24ndCB0aGluayB0aGlzIGlzIGEgZGV2aWNlIHNwZWNpZmljIGlzc3VlIGJ1
dCByYXRoZXIKPiBjb250cm9sbGVyIHNwZWNpZmljLiAgQW5kIHRoaXMgbWFrZXMgdGhlIFFjb20g
cGF0Y2ggdGhhdCBJIGRyb3BwZWQgYQo+IHZhbGlkIG9uZSAob2ZjIHdpdGggY2hhbmdlIGluIGRl
c2NyaXB0aW9uKS4KClVSTD8KCkJqb3JuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
