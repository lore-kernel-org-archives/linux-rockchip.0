Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC821C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 16:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vGPsoej5ssFDhq8uGwI2EZ4QB2cc6iwmH/+V/pGZ5U=; b=k3MAYvalXPsOhd
	xkCBqBvCkMfsFFA6ZgzFzfUXDF9EOJz05a6SWHLbdlPxIF4yUCQ/OApDH59z4r1c1O4xsOFxbrI7E
	ZFmSHNYLsd6Qs/Z8UYTN+UUgT9DEfZByx+WAKrk2gnuxN4F03wM+r9sR9nCX9zLGloJ3qBpqWqz6c
	d34L3JAB7u55KdBlm4a9bQPL4+Dm0HCB5Vdff2sA2jdoZt9WuuoWoutn35eKjwzQUDgzFkZuRxtV2
	E1EZusWxXWuuH6weVTQqAn/Qc+5/PZ4BQwf3/ByIz24qHMkwf/yu7vKbUcI99JfR9xOch1v0VhASY
	JCqKWvzWLFSvU61aHwgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEtNy-00000006pmC-3inA;
	Wed, 05 Jun 2024 16:21:14 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEtNu-00000006pio-1VX8
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 16:21:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EBC8ECE131A;
	Wed,  5 Jun 2024 16:21:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 097BEC2BD11;
	Wed,  5 Jun 2024 16:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717604465;
	bh=zwJLTD2CKFW1aLoNhdS/VADNNg91H/7mXSDG6BYpASc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nHle5QaIojs18EAkRzbzPcpPdxDMyMsptm3kn7DPZshaQd5LiM98xXr37vclVhzT1
	 HhUDJCM+LOS0kzUVm1516MB8mmM0Wz+29V4sqdUP8RsyDJiGIa+oQ+P+W+PxyQMCwx
	 Di8iGQNHbQSq0KonbpDpJGdqWwDGfy/SZx8BKgKyAlEb0DuM27+UprXzSQ0VflT4gv
	 SuVBgwSnAmA3u/9v5+AhT5HMaqB/rn0gsZ/bU0kNh8YrXA0TdDaA/RS7LPZQ3JjwSv
	 euEHxEPH8Uwcp3cIrjZtoUyUTMD9Q6X5dHKvM36nKJVDXWJlbQjxcd/8DZUGQK0RJ7
	 K+lxFtUvAUxmQ==
Date: Wed, 5 Jun 2024 18:20:58 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 03/13] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
Message-ID: <ZmCQak-m7RWRxiix@ryzen.lan>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-3-3dc00fe21a78@kernel.org>
 <20240605073402.GE5085@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240605073402.GE5085@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_092110_860785_57C9A053 
X-CRM114-Status: GOOD (  29.51  )
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

T24gV2VkLCBKdW4gMDUsIDIwMjQgYXQgMDE6MDQ6MDJQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFdlZCwgTWF5IDI5LCAyMDI0IGF0IDEwOjI4OjU3QU0gKzAyMDAs
IE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gPiBUaGUgRFdDIGNvcmUgaGFzIGZvdXIgaW50ZXJydXB0
IHNpZ25hbHM6IHR4X2ludGEsIHR4X2ludGIsIHR4X2ludGMsIHR4X2ludGQKPiA+IHRoYXQgYXJl
IHRyaWdnZXJlZCB3aGVuIHRoZSBQQ0llIGNvbnRyb2xsZXIgKHdoZW4gcnVubmluZyBpbiBFbmRw
b2ludCBtb2RlKQo+ID4gaGFzIHNlbnQgYW4gQXNzZXJ0X0lOVEEgTWVzc2FnZSB0byB0aGUgdXBz
dHJlYW0gZGV2aWNlLgo+ID4KPiA+IFNvbWUgRFdDIGNvbnRyb2xsZXJzIGhhdmUgdGhlc2UgaW50
ZXJydXB0IGluIGEgY29tYmluZWQgaW50ZXJydXB0IHNpZ25hbC4KPiA+Cj4gPiBBZGQgdGhlIGRl
c2NyaXB0aW9uIG9mIHRoZXNlIGludGVycnVwdHMgdG8gdGhlIGRldmljZSB0cmVlIGJpbmRpbmcu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+
Cj4KPiBOaXQ6IFdlIHJlY2VudGx5IGNoYW5nZWQgdGhlIGRyaXZlciBpbnN0YW5jZXMgb2YgJ0xF
R0FDWScgdG8gJ0lOVFgnLiBCdXQgdGhlCj4gYmluZGluZyBpdCBzdGlsbCB1c2luZyAnbGVnYWN5
Jy4gQ29uc2lkZXJpbmcgdGhhdCB0aGUgJ2xlZ2FjeScgSVJRIGFkZGVkIHRvIHRoZQo+IFJDIGJp
bmRpbmcgcmVjZW50bHkgKGViY2U5ZjY2MjNhNyksIHNob3VsZCB3ZSByZW5hbWUgaXQ/Cj4KPiBU
aGlzIHdpbGwgZm9yY2UgdGhlIGRyaXZlciB0byBzdXBwb3J0IGJvdGggJ2xlZ2FjeScgYW5kICdp
bnR4JyBmb3IgYmFja3dhcmRzCj4gY29tcGF0aWJpbGl0eS4KCkkgZG9uJ3QgdGhpbmsgdGhpcyBp
cyB0cnVlLgoKCkxvb2sgYXQgc25wcyxkdy1wY2llLnlhbWwgaW4gNi4xMC1yYzI6CgpUaGUgaW5k
aXZpZHVhbCBpbnRlcnJ1cHRzIGFyZSBjYWxsZWQ6CiAgICAgICAgICAgIExlZ2FjeSBBL0IvQy9E
IGludGVycnVwdCBzaWduYWwuIEJhc2ljYWxseSBpdCdzIHRyaWdnZXJlZCBieQogICAgICAgICAg
ICByZWNlaXZpbmcgYSBBc3NlcnRfSU5Ue0EsQixDLER9L0Rlc2Fzc2VydF9JTlR7QSxCLEMsRH0g
bWVzc2FnZQogICAgICAgICAgICBmcm9tIHRoZSBkb3duc3RyZWFtIGRldmljZS4KICAgICAgICAg
IHBhdHRlcm46ICJeaW50KGF8YnxjfGQpJCIKClRoZSBjb21iaW5lZCBpbnRlcnJ1cHQgaXMgY2Fs
bGVkOgogICAgICAgICAgICBDb21iaW5lZCBMZWdhY3kgQS9CL0MvRCBpbnRlcnJ1cHQgc2lnbmFs
LiBTZWUgIl5pbnQoYXxifGN8ZCkkIiBmb3IKICAgICAgICAgICAgZGV0YWlscy4KICAgICAgICAg
IGNvbnN0OiBsZWdhY3kKClNvIHlvdSB1c2UgJ2ludGEnLCAnaW50YicsICdpbnRjJywgJ2ludGQn
IGlmIHlvdXIgU29DIGhhcyBhIGRlZGljYXRlZAppbnRlcnJ1cHQgbGluZSBmb3IgZWFjaCBvZiB0
aGVzZSBpcnFzLgoKSWYgdGhlIFNvQyBzaW1wbHkgaGFzIGEgc2luZ2xlIGNvbWJpbmVkIGludGVy
cnVwdCBsaW5lIGZvciB0aGVzZSBpcnFzLAp0aGVuIHlvdSB1c2UgJ2xlZ2FjeScKCgpUaGlzIHBh
dGNoIHNpbXBseSBhZGRzOgondHhfaW50YScsICd0eF9pbnRiJywgJ3R4X2ludGMnLCAndHhfaW50
ZCcgYXMgaW5kaXZpZHVhbCBpbnRlcnJ1cHRzCmFuZCB0aGUgY29tYmluZWQgaW50ZXJydXB0ICds
ZWdhY3knIHRvIHNucHMsZHctcGNpZS1lcC55YW1sLgoKClBhdGNoIGViY2U5ZjY2MjNhNyBzaW1w
bHkgYWxsb3dlZCB0aGUgY29tYmluZWQgaW50ZXJydXB0IGxpbmUgJ2xlZ2FjeScKdG8gYmUgdXNl
ZCBieSB0aGUgcm9ja2NoaXAtZHctcGNpZS55YW1sIGJpbmRpbmcuClRoaXMgaXMgYmVjYXVzZSB0
aGUgd2F5IHRoYXQgZGV2aWNlIHRyZWUgaXMgZGVzaWduZWQuIFlvdSBuZWVkIHRvIHNwZWNpZnkK
c29tZXRoaW5nIGJvdGggaW4gdGhlIGdlbmVyaWMgYmluZGluZyAod2hpY2ggc3BlY2lmaWVzIGV2
ZXJ5dGhpbmcpLAphbmQgaW4gdGhlIGdsdWUgZHJpdmVyIGJpbmRpbmcsIHRvIHNwZWNpZnkgdGhl
IHN1YnNldCB0aGF0IGlzIGFsbG93ZWQgYnkKdGhlIGdsdWUgZHJpdmVyLgoKClNpbmNlIGEgY29u
dHJvbGxlciBjYW5ub3QgcnVuIGluIGJvdGggRVAgYW5kIFJDIG1vZGUgYXQgdGhlIHNhbWUgdGlt
ZSwKSSB0aGluayB0aGF0IGl0IGlzIGZpbmUgdGhhdCB0aGlzIHBhdGNoIHJldXNlcyB0aGUgbmFt
ZSAnbGVnYWN5JyBmb3IgdGhlCmNvbWJpbmVkIGludGVycnVwdC4KCkFuZCBhcyB5b3UgY2FuIHNl
ZSBpbiBwYXRjaCA1IGluIHRoaXMgc2VyaWVzLCByazM1ODggYWN0dWFsbHkgdXNlcyBhIHNpbmds
ZQpjb21iaW5lZCBJUlEgKGNhbGxlZCBsZWdhY3kpIGZvciAnaW50YScsICdpbnRiJywgJ2ludGMn
LCAnaW50ZCcsICd0eF9pbnRhJywKJ3R4X2ludGInLCAndHhfaW50YycsICd0eF9pbnRkJy4KCgpL
aW5kIHJlZ2FyZHMsCk5pa2xhcwoKCj4KPiBCdXQgaXJyZXNwZWN0aXZlIG9mIHRoYXQsCj4KPiBS
ZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1A
bGluYXJvLm9yZz4KPgo+IC0gTWFuaQo+Cj4gPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgKEFy
bSkgPHJvYmhAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLWVwLnlhbWwgfCA5ICsrKysrKysrKwo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUtZXAueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLWVwLnlhbWwK
PiA+IGluZGV4IGY1ZjEyY2JjMmNiMy4uZjQ3NGI5ZTNmYzdlIDEwMDY0NAo+ID4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUtZXAueWFtbAo+
ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBj
aWUtZXAueWFtbAo+ID4gQEAgLTE1MSw2ICsxNTEsMTUgQEAgcHJvcGVydGllczoKPiA+ICAgICAg
ICAgICAgICBBcHBsaWNhdGlvbi1zcGVjaWZpYyBJUlEgcmFpc2VkIGRlcGVuZGluZyBvbiB0aGUg
dmVuZG9yLXNwZWNpZmljCj4gPiAgICAgICAgICAgICAgZXZlbnRzIGJhc2lzLgo+ID4gICAgICAg
ICAgICBjb25zdDogYXBwCj4gPiArICAgICAgICAtIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAgICAg
ICAgIEludGVycnVwdHMgdHJpZ2dlcmVkIHdoZW4gdGhlIGNvbnRyb2xsZXIgaXRzZWxmIChpbiBF
bmRwb2ludCBtb2RlKQo+ID4gKyAgICAgICAgICAgIGhhcyBzZW50IGFuIEFzc2VydF9JTlR7QSxC
LEMsRH0vRGVzYXNzZXJ0X0lOVHtBLEIsQyxEfSBtZXNzYWdlIHRvCj4gPiArICAgICAgICAgICAg
dGhlIHVwc3RyZWFtIGRldmljZS4KPiA+ICsgICAgICAgICAgcGF0dGVybjogIl50eF9pbnQoYXxi
fGN8ZCkkIgo+ID4gKyAgICAgICAgLSBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICAgICAgICBDb21i
aW5lZCBpbnRlcnJ1cHQgc2lnbmFsIHJhaXNlZCB3aGVuIHRoZSBjb250cm9sbGVyIGhhcyBzZW50
IGFuCj4gPiArICAgICAgICAgICAgQXNzZXJ0X0lOVHtBLEIsQyxEfSBtZXNzYWdlLiBTZWUgIl50
eF9pbnQoYXxifGN8ZCkkIiBmb3IgZGV0YWlscy4KPiA+ICsgICAgICAgICAgY29uc3Q6IGxlZ2Fj
eQo+ID4gICAgICAgICAgLSBkZXNjcmlwdGlvbjoKPiA+ICAgICAgICAgICAgICBWZW5kb3Itc3Bl
Y2lmaWMgSVJRIG5hbWVzLiBDb25zaWRlciB1c2luZyB0aGUgZ2VuZXJpYyBuYW1lcyBhYm92ZQo+
ID4gICAgICAgICAgICAgIGZvciBuZXcgYmluZGluZ3MuCj4gPgo+ID4gLS0KPiA+IDIuNDUuMQo+
ID4KPgo+IC0tCj4g4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+Cu
teCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
