Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1085EC282EC
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ff/SH6aZOU4FiRGdr03RSS6t0c0EConHZHWjAMRmZMU=; b=jESAWaMnCBsE73
	tl97sBIBHVq8M6y05qSXNxBc5GiARcjIuOPhLpOly68uunjxmXaJjaqTHVqxfMG+vQRmVkQnu0EuC
	IWIQ6IlDgbN8dwqmDXdd60IeFAvGdkuWDAo1BgpE0SPxymGpQQ9teWCQ5yjKBQQljrCYkTiTP4wOh
	P/7+UtlqPFYR296JNnkqlIlG7X5EPiNlYUCSscjoCKj32Blb1I2XeWkiqudjgtL9r1+731nY6dFw+
	OeEuhKZY7b4bVQeOw3/dJavOyJsn7vpTTKZbeFQOq7j1sBGS31d19UREBKL++GOJysK8Yf3k8Dxe5
	NlxbXRjOa5EQp1mxd0cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7mC-0000000AWYg-09wP;
	Thu, 06 Mar 2025 09:44:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7mB-0000000AWY0-29G0
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 09:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=A+AoCpj+mam2Hv7JmuwsRJRor7A216pIOlHe7OyVTl8=; b=cvpxPjaaH8Si7lASHsYDmNn+gf
	HqMIK5VN9PZ3iKIQU9Ja8i61FyDh9utfd8iOz7UBk52mf3TcPMGJmi/gcjtHH02HP4Cw04aAqZT3S
	Byq/lHlXWapBgIm5A6QL0eEih02g/rOxbFez8h7k9ce3Jh+hVdycNs+oFqEFt4XPJvKBE59Sn7ITN
	J+OB6Cj8qDQ9UlxyVNRQ1q4MvPWh911p+QPQIsUM6gJEkB+Zmz3b4Hmr4Ka710nsP7599ZcGfaoDQ
	ku+eOggF9xP56Z2kvcce27Q443swtAIQuU5ZiLwI8PiPe352pEfB2krMkZ6xWBPt3CF+HPyZ9eZL7
	T4ufYAgw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7m8-00000000zxh-1hbd
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 09:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=A+AoCpj+mam2Hv7JmuwsRJRor7A216pIOlHe7OyVTl8=; b=x0KlARKkaEwkEYUQAlmMaZ6OaQ
	DWuU+6P0xe9DEu+abQ7xh4VNXtyfY/Ea7IjpIr3fpklDXjFuOG12udhbCwKdck6RB1XCZ1G1/Kf2e
	h64oPx9KJkm/93PVKb3/59Ae8kDAoM0tlhhY3kqMNZ3p5tFlxfdhAqx1ebdW6wG1TGRsIWITGFzHV
	AI3KVKYHQ8x6VNjDwWWT1T1qfPjCbT8PmOCMDuWXZaA2lHHJalSmb2Dw/VsMCp/jyTauklU0GzY3t
	tl6q7ncsda64gfzzZGUIFACAX7gDkEjsosnf/H9W/YUTEcntgYoks2HFpQjtognUBMrhBtwsjYyGV
	9bZvFCJw==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tq7lu-0001tC-By; Thu, 06 Mar 2025 10:44:06 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Hans Verkuil <hverkuil@xs4all.nl>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v14 0/3] Enable HDMI RX controller on RK3588
Date: Thu, 06 Mar 2025 10:44:05 +0100
Message-ID: <14706072.uLZWGnKmhe@diego>
In-Reply-To: <1105cde1-7557-4104-9652-3527f8d9b599@xs4all.nl>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
 <2906773.tdWV9SEqCh@diego> <1105cde1-7557-4104-9652-3527f8d9b599@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_094420_544225_27F9343F 
X-CRM114-Status: GOOD (  25.52  )
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

SGkgSGFucywKCkFtIERvbm5lcnN0YWcsIDYuIE3DpHJ6IDIwMjUsIDEwOjQxOjQ2IE1FWiBzY2hy
aWViIEhhbnMgVmVya3VpbDoKPiBPbiAwNi8wMy8yMDI1IDEwOjI2LCBIZWlrbyBTdMO8Ym5lciB3
cm90ZToKPiA+IEhpIERtaXRyeSwKPiA+IAo+ID4gQW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAy
NSwgMDg6Mjg6MzkgTUVaIHNjaHJpZWIgRG1pdHJ5IE9zaXBlbmtvOgo+ID4+IFRoaXMgaXMgYSBm
b2xsb3cgdXAgdG8gdGhlIHYxMyBvZiBIRE1JIFJYIHBhdGNoZXMgWzFdLiBIYW5zIHF1ZXVlZCB0
aGUKPiA+PiBkcml2ZXIgaW50byB0aGUgbWVkaWEgdHJlZS4gTm93IHRoZSBEVCBwYXRjaGVzIGFy
ZSBsZWZ0IHRvIGFwcGx5LCBjb3VsZAo+ID4+IHlvdSBwbGVhc2UgdGFrZSBjYXJlIG9mIHRoaXMg
c2VyaWVzIGlmIGl0J3MgZ29vZCB0byB5b3U/IFRoYW5rcwo+ID4+Cj4gPj4gWzFdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjUwMzA0MDg1ODE5LjEwODA2Ny0xLWRtaXRy
eS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tLwo+ID4gCj4gPiBMaW51eC1NZWRpYSwgaGFzIHRoaXMg
c3RyYW5nZSAiYXBwbGllZCIgcmVwb3J0aW5nIHRoaW5nIGdvaW5nLCBzbyBuZWl0aGVyCj4gPiB0
aGUgdGhyZWFkIHJlcG9ydHMgdGhhdCBub3IgZG9lcyBodHRwczovL2dpdC5saW51eHR2Lm9yZy8g
c2hvdyB0aGUgY29tbWl0cwo+ID4geWV0Lgo+ID4gCj4gPiBJZiB5b3Ugc2VlIHRoZSBkcml2ZXIg
cGF0Y2hlcyBhcHBlYXIgb24gaHR0cHM6Ly9naXQubGludXh0di5vcmcvIGJlZm9yZSBJIGRvLAo+
ID4gcGxlYXNlIHBpbmcgdGhpcyB0aHJlYWQgOi0pCj4gCj4gUGF0Y2hlcyBhcmUgbWVyZ2VkIGhl
cmUgZmlyc3Q6Cj4gCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2xpbnV4LW1lZGlh
L21lZGlhLWNvbW1pdHRlcnMKCmFhYWFoLCB0aGF0IHdhcyB0aGUgbWlzc2luZyBwaWVjZSBvZiB0
aGUgcHV6emxlLgoKSSByZW1lbWJlciByZWFkaW5nIHRoYXQgbWVkaWEgYWxzbyBzd2l0Y2hlZCB0
byBhIG11bHRpLWNvbWl0dGVyIG1vZGVsLApidXQgZGlkbid0IHJlYWxpemUgdGhhdCB0aGlzIG1p
Z2h0IGVudGFpbCBhIGRpZmZlcmVudCBob3N0LgoKU28gdGhhbmtzIGZvciB0aGUgcG9pbnRlci4K
CkhlaWtvCgoKPiAKPiBUaGF0J3Mgd2hlcmUgYWxsIHRoZSBuZXcgY29kZSBsYW5kcy4KPiAKPiBX
aXRoIGEgdHdvIGRheSBkZWxheSAoaWYgSSBhbSBub3QgbWlzdGFrZW4pIHRoZXkgd2lsbCBhcnJp
dmUgb24gdGhlCj4gaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWEuZ2l0LyB0cmVlLgo+IAo+
IElmIGl0IGlzIGluIHRoZSBtZWRpYS1jb21taXR0ZXJzIHRyZWUsIHRoZW4gaXQgaXMgT0sgdG8g
dGFrZSBkdHMgZXRjLgo+IHBhdGNoZXMuCj4gCj4gUmVnYXJkcywKPiAKPiAJSGFucwo+IAo+ID4g
Cj4gPiAKPiA+IFRoYW5rcyBhIGxvdAo+ID4gSGVpa28KPiA+IAo+ID4gCj4gPj4KPiA+PiBDaGFu
Z2Vsb2c6Cj4gPj4KPiA+PiB2MTQ6IC0gUmUtZW5hYmxlZCBMT0FEX0RFRkFVTFRfRURJRD15IG9w
dGlvbiBpbiB0aGUgZGVmY29uZmlnIGFuZAo+ID4+ICAgICAgICBhZGRlZCBhY2sgZnJvbSBIYW5z
IFZlcmt1aWwgZm90IHRoYXQgcGF0Y2guCj4gPj4KPiA+PiBTZWJhc3RpYW4gUmVpY2hlbCAoMik6
Cj4gPj4gICBhcm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxlIEhETUkgcmVjZWl2ZXIgb24gcm9j
ay01Ygo+ID4+ICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIFN5bm9wc3lzIEhETUkgcmVjZWl2
ZXIKPiA+Pgo+ID4+IFNocmVleWEgUGF0ZWwgKDEpOgo+ID4+ICAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IEFkZCBkZXZpY2UgdHJlZSBzdXBwb3J0IGZvciBIRE1JIFJYIENvbnRyb2xsZXIKPiA+Pgo+
ID4+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLXBpbmN0cmwuZHRzaSAgICAgfCAxNCAr
KysrKwo+ID4+ICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kg
fCA1NyArKysrKysrKysrKysrKysrKysrCj4gPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01Yi5kdHMgICAgICB8IDE4ICsrKysrKwo+ID4+ICBhcmNoL2FybTY0L2NvbmZpZ3Mv
ZGVmY29uZmlnICAgICAgICAgICAgICAgICAgfCAgMiArCj4gPj4gIDQgZmlsZXMgY2hhbmdlZCwg
OTEgaW5zZXJ0aW9ucygrKQo+ID4+Cj4gPj4KPiA+IAo+ID4gCj4gPiAKPiA+IAo+IAo+IAoKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
