Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B669BF3026E
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Mar 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQHwNp76RY76QKZxunz6bn4aJaTLKKx6lqzSyQ2kcX0=; b=OteAw/IC1UmRY3
	9a98aBeAfjRmAfZbGI1qmWZbVICJ+1Jxo8eNj68WG6Wu9gvyj2NdvQGvknRoOZ0a/ulQ79x547cgh
	mM2Tp103CMgDd05K9ww7QMDPYwXf/BpComErPR855UV3AFv/L/xVntk2Mg32HF+hKgf8kzYv8pwkR
	XcwUlCWxGCzg1RsejZa8c6hdAZK9EkO8Xne4ryzq0a64Bp85hzKNxS0v9ejBnYYWa7sXTz+SWxfKd
	OpomJPfUugtX4xUOdL2dz8X9/hyNep6d4lT6hPLTl+Li0mnsdGVavjKtGuFOcmd9mNJpzA6jLD0te
	aH1nC5lgD5kAVtqdc16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1oU0-00000002jeU-2ghM;
	Sun, 15 Mar 2026 16:38:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1oTy-00000002jeK-3n7y;
	Sun, 15 Mar 2026 16:38:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 64AD2600CB;
	Sun, 15 Mar 2026 16:38:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A308C4CEF7;
	Sun, 15 Mar 2026 16:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773592705;
	bh=WrNeMYsAA03DHVECs98FC7knzVMNjLmWyKvwlzN4Krw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ODlndx/l2BTSbPjRspV9GLT7+5T3/4XNm1uJzTAR5k+bHedYGFbm7JcgrzbAMgwWW
	 h3t+0iwi22VFwi/vk45Kz2w9HYLdExgXOq8xBGIQKNkp/kZKGRqwYWpyQfSimyVgB7
	 WrKPZMlYKJl6FxwhgiR9lK+Hi0KC8ofixzUzYoWcVFS2xLl6FqTtVBCdp6trj9wHFZ
	 G1cjoMWJmWsNxRMB0F4r6FJFjTbPCymS+hka/0zDBbmt7PBcrnAvIG9To3of5IcfVp
	 JWhdazvUhIMZ2QhFYQA0dxWVuzXyQyBnyelMGJ1ME9cZe/XmLRTuJJVXnFz+VDnPI7
	 1D2bXfJj7EFFg==
Date: Sun, 15 Mar 2026 22:08:06 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Minghuan Lian <minghuan.Lian@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>, 
	Jesper Nilsson <jesper.nilsson@axis.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Srikanth Thokala <srikanth.thokala@intel.com>, 
	Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Christian Bruel <christian.bruel@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Manikanta Maddireddy <mmaddireddy@nvidia.com>, Koichiro Den <den@valinux.co.jp>, 
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v4 00/10] PCI: endpoint: Differentiate between disabled
 and reserved BARs
Message-ID: <skfqxnugt4t7eidfny5ojczq3wpu4u5yjfd6wdk3ikjmbgru7t@63nfqvrl5mvs>
References: <20260312130229.2282001-12-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260312130229.2282001-12-cassel@kernel.org>
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

T24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMDI6MDI6MjhQTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBIZWxsbyBhbGwsCj4gCj4gVGhpcyBzZXJpZXMgd2FzIG9yaWdpbmFsbHkgd3JpdHRl
biBpbiByZXNwb25zZSB0byB0aGUgcGF0Y2ggc2VyaWVzIGZyb20KPiBNYW5pa2FudGEgTWFkZGly
ZWRkeSB0aGF0IHdhcyBwb3N0ZWQgaGVyZToKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1wY2kvMjkxZGFiNjUtM2ZhNi00ZmM4LTkwYTItNGFkNjA4Y2EwMTVjQG52aWRpYS5jb20vVC8j
dAo+IAo+IE1hbmlrYW50YSBoYXMgcmV2aWV3ZWQgdGhpcyBzZXJpZXMgYW5kIHdpbGwgc2VuZCBh
IHNtYWxsIHNlcmllcyBvbiB0b3Agb2YKPiB0aGlzIG9uZS4KPiAKCkFwcGxpZWQgdG8gcGNpL2Vu
ZHBvaW50LCB0aGFua3MhCgotIE1hbmkKCj4gCj4gQ2hhbmdlcyBzaW5jZSB2MzoKPiAtTW9kaWZp
ZWQgcGF0Y2ggMSB0byBzaW1wbHkgZHJvcCBCQVJfUkVTRVJWRUQgZm9yIGEgQkFSIGZvbGxvd2lu
ZyBhbgo+ICBvbmx5XzY0Yml0IEJBUiAoTWFuaXZhbm5hbikuCj4gLUFkZGVkIGEgcGF0Y2ggZnJv
bSBNYW5pa2FudGEsIHRvIG1ha2UgaGlzIGZvbGxvdy11cCBzZXJpZXMgc21hbGxlciwKPiAgc2lu
Y2UgdGhpcyBzZXJpZXMgdG91Y2hlcyB0aGUgc2FtZSBsaW5lcyBhbnl3YXkuCj4gCj4gTGluayB0
byB2MzoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvMjAyNjAzMDIwOTU5MTMu
NDgxNTUtMTEtY2Fzc2VsQGtlcm5lbC5vcmcvCj4gCj4gCj4gS29pY2hpcm8gRGVuICgyKToKPiAg
IFBDSTogZW5kcG9pbnQ6IERlc2NyaWJlIHJlc2VydmVkIHN1YnJlZ2lvbnMgd2l0aGluIEJBUnMK
PiAgIFBDSTogZHctcm9ja2NoaXA6IERlc2NyaWJlIFJLMzU4OCBCQVI0IERNQSBjdHJsIHdpbmRv
dwo+IAo+IE1hbmlrYW50YSBNYWRkaXJlZGR5ICgxKToKPiAgIFBDSTogZW5kcG9pbnQ6IEFsbG93
IG9ubHlfNjRiaXQgb24gQkFSX1JFU0VSVkVECj4gCj4gTmlrbGFzIENhc3NlbCAoNyk6Cj4gICBQ
Q0k6IGVuZHBvaW50OiBEbyBub3QgbWFyayB0aGUgQkFSIHN1Y2NlZWRpbmcgYSA2NC1iaXQgQkFS
IGFzCj4gICAgIEJBUl9SRVNFUlZFRAo+ICAgUENJOiBlbmRwb2ludDogSW50cm9kdWNlIHBjaV9l
cGNfYmFyX3R5cGUgQkFSX0RJU0FCTEVECj4gICBQQ0k6IGR3YzogUmVwbGFjZSBjZXJ0YWluIEJB
Ul9SRVNFUlZFRCB3aXRoIEJBUl9ESVNBQkxFRCBpbiBnbHVlCj4gICAgIGRyaXZlcnMKPiAgIFBD
STogZHdjOiBEaXNhYmxlIEJBUnMgaW4gY29tbW9uIGNvZGUgaW5zdGVhZCBvZiBpbiBlYWNoIGds
dWUgZHJpdmVyCj4gICBQQ0k6IGVuZHBvaW50OiBwY2ktZXBmLXRlc3Q6IEFkdmVydGlzZSByZXNl
cnZlZCBCQVJzCj4gICBtaXNjOiBwY2lfZW5kcG9pbnRfdGVzdDogR2l2ZSByZXNlcnZlZCBCQVJz
IGEgZGlzdGluY3QgZXJyb3IgY29kZQo+ICAgc2VsZnRlc3RzOiBwY2lfZW5kcG9pbnQ6IFNraXAg
cmVzZXJ2ZWQgQkFScwo+IAo+ICBkcml2ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3QuYyAgICAg
ICAgICAgICAgfCAyMSArKysrKysrKy0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
LWRyYTd4eC5jICAgICAgIHwgIDQgLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
LWlteDYuYyAgICAgICAgIHwgMjIgKysrLS0tLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaS1rZXlzdG9uZS5jICAgICB8IDEyICsrKysrCj4gIC4uLi9wY2kvY29udHJvbGxlci9k
d2MvcGNpLWxheWVyc2NhcGUtZXAuYyAgICB8ICA2IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWFydHBlYzYuYyAgICAgfCAgNCAtLQo+ICAuLi4vcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jICAgfCAyNCArKysrKysrKysrCj4gIC4uLi9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLXBsYXQuYyB8IDEwIC0tLS0KPiAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgMjMgKysrKysrLS0tLQo+ICBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWtlZW1iYXkuYyAgICAgfCAgMyAtLQo+ICBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYyAgICAgfCAxMiAtLS0tLQo+
ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXJjYXItZ2VuNC5jICAgfCAxNiArKy0t
LS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtc3RtMzItZXAuYyAgICB8IDEw
IC0tLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS10ZWdyYTE5NC5jICAgIHwg
MTkgKystLS0tLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS11bmlwaGllci1l
cC5jIHwgMTkgKy0tLS0tLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJjYXItZXAu
YyAgICAgICAgIHwgIDMgLS0KPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1l
cGYtdGVzdC5jIHwgMjQgKysrKysrKysrKwo+ICBkcml2ZXJzL3BjaS9lbmRwb2ludC9wY2ktZXBj
LWNvcmUuYyAgICAgICAgICAgfCAgNSArLQo+ICBpbmNsdWRlL2xpbnV4L3BjaS1lcGMuaCAgICAg
ICAgICAgICAgICAgICAgICAgfCA0NiArKysrKysrKysrKysrKystLS0tCj4gIC4uLi9wY2lfZW5k
cG9pbnQvcGNpX2VuZHBvaW50X3Rlc3QuYyAgICAgICAgICB8ICA0ICsrCj4gIDIwIGZpbGVzIGNo
YW5nZWQsIDE1NCBpbnNlcnRpb25zKCspLCAxMzMgZGVsZXRpb25zKC0pCj4gCj4gCj4gYmFzZS1j
b21taXQ6IDBiNzRmN2Q3MjM5OWQ0YzQ0MjJlZDNkNjhlZjI4YjM2MTJmNzFlNzQKPiAtLSAKPiAy
LjUzLjAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
