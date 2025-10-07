Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE837CCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSWcvic0GAx8wTZBbFA1vAdQZwtwNsuSU1u5KatURNs=; b=15lTk4CVg0Un6j
	fbq2dSkhr4tMTW+TB/8LdcyuPWaln9uMab4kX+R45gRjbeXH9G2UM5DI1xbWZ9do9wmkdHGMRRVNy
	2e+4Jd7jpOHjw1XM3+6xVyIiRAyXxVd5LQd4V5dAidykUJl4Jaj44jNDuV1PQgFK9ALC9guefOsSf
	weKiHPUbWHhntiv4F0mcZPxt2k7Qgfnok2clWI7jbgJr4746tcc8/Qfusvw4uXHvBkh0ER5U/9RqZ
	Hgny4ntOO2OEEq3urHUolTirpiYfhET/qMWZds6Qn8OlBhwUxDgMayh0f5GwO//wfI2Zb4hU5RrpR
	Hgze6aj7FKyxcf+OoNvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6AVz-00000002OtI-0pBY;
	Tue, 07 Oct 2025 16:26:15 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6AVs-00000002Osf-35CN;
	Tue, 07 Oct 2025 16:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sux+G8UYuTe6OpX0yXYNFv4IijM8dkNkYRTT0OHVyw0=; b=Yt+zyzdaOOyvXP4CN8scOQIvB7
	hMr62mIPLsssoXyHhcgac7K4DzmccMDIDSjxxYEeR/8RneyHCtA0Inha4T4G6cc99kLkMBLuYp9mE
	GaJ+IVuQgqMWNgnetTmMcsMSASET8pF08TRHopxw9XugNyFZ1Bg8dmIT/Wn9yqx8sAZN8rKQCcetI
	+D46UgqmLdVqetuBPV745ZPMCeWNxSYEKrWmXD2vvkzCUD9a4doViK4QyD94QWfQHRpu45gB4SlcC
	APYp4cD7U9E/tg6+sYz0/8sUk4Q25qD4ZqDY0LLWdjvnzN3/Iyg65K8KMd+kTIzjy9hMxRlyAEngO
	Nj8ev45w==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58244)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1v6AVR-000000005LF-197N;
	Tue, 07 Oct 2025 17:25:41 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1v6AVK-0000000032Z-2vLE;
	Tue, 07 Oct 2025 17:25:34 +0100
Date: Tue, 7 Oct 2025 17:25:34 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: jjm2473 <jjm2473@gmail.com>, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com,
	inindev@gmail.com, ivan8215145640@gmail.com,
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
	jbx6244@gmail.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
Message-ID: <aOU-_tPOmkyuw_kx@shell.armlinux.org.uk>
References: <20250929065714.27741-1-jjm2473@gmail.com>
 <20250929065714.27741-4-jjm2473@gmail.com>
 <d8ad476c-d0c7-4e97-9e76-540a539ffb52@lunn.ch>
 <CAP_9mL4ofig-X-w9wx1A5D_eVXROo6AVFBSwp4mh=kj7webpPA@mail.gmail.com>
 <7e219aef-88a0-4184-9553-30dcbc8dbd79@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e219aef-88a0-4184-9553-30dcbc8dbd79@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_092609_045943_AFF8FEE9 
X-CRM114-Status: GOOD (  17.10  )
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

T24gVHVlLCBPY3QgMDcsIDIwMjUgYXQgMDQ6NTc6MzJQTSArMDIwMCwgQW5kcmV3IEx1bm4gd3Jv
dGU6Cj4gT24gVHVlLCBPY3QgMDcsIDIwMjUgYXQgMTA6MzI6MjZQTSArMDgwMCwgamptMjQ3MyB3
cm90ZToKPiA+IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4g5LqOMjAyNeW5tDEw5pyINuaX
peWRqOS4gCAyMzo1MeWGmemBk++8mgo+ID4gPiBQbGVhc2UgY2hhbmdlIGl0IHRvIHJnbWlpLWlk
LCBhbmQgc21hbGxlciB0eC9yeF9kZWxheSB2YWx1ZXMuIE9yIHNob3cKPiA+ID4gdXMgdGhlIHNj
aGVtYXRpY3Mgd2hpY2ggY2xlYXJseSBzaG93IGV4dHJhIGxvbmcgY2xvY2sgbGluZXMuCj4gPiAK
PiA+IEluIGZhY3QsIHRoZSBSVEw4MjExRidzIFJYRExZIGFuZCBUWERMWSBzaWduYWxzIGFyZSBi
b3RoIHB1bGxlZCBsb3csCj4gPiBqdXN0IGxpa2UgdGhlIEJhbmFuYSBQaSBCUEktUjIgUHJvLCBz
byB0aGUgY29uZmlndXJhdGlvbiBpcyBhbHNvIHJlZmVyZW5jZWQ6Cj4gPiBodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS9saW51eC92Ni4xNS9zb3VyY2UvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtYnBpLXIyLXByby5kdHMjTDIzNwo+IAo+IFB1bGwgbG93IG1ha2VzIG5vIGRp
ZmZlcmVuY2UgdG8gdGhlIDJucyBSR01JSSBkZWxheXMuCgpUbyBiZSBjbGVhciwgd2hpbGUgdGhl
IFJYRExZIGFuZCBUWERMWSBhcmUgaGFyZHdhcmUgc3RyYXBwaW5nIGNvbnRyb2xzCnRoZSBoYXJk
d2FyZSBjb25maWd1cmF0aW9uIG9mIHRoZSAybnMgUkdNSUkgY2xvY2sgZGVsYXlzLCB0aGUgcmVh
bHRlawpkcml2ZXIgY2FuIChhbmQgZG9lcykgb3ZlcnJpZGUgdGhpcyBhY2NvcmRpbmcgdG8gdGhl
IHBoeS1tb2RlIHByb3BlcnR5LgpUaHVzIGhhcmR3YXJlIHN0cmFwcGluZyBtYWtlcyBubyBkaWZm
ZXJlbmNlIHRvIExpbnV4LgoKU28sIHdoYXQgd2UgZ2V0IGF0IHRoZSBSVEw4MjExRiBQSFkgaXM6
CgoJcGh5LW1vZGUJcmVjZWl2ZSBjbG9jayBkZWxheQl0cmFuc21pdCBjbG9jayBkZWxheQoJInJn
bWlpIgkJMG5zCQkJMG5zCgkicmdtaWktcnhpZCIJMm5zCQkJMG5zCgkicmdtaWktdHhpZCIJMG5z
CQkJMm5zCgkicmdtaWktaWQiCTJucwkJCTJucwoKaXJyZXNwZWN0aXZlIG9mIFJYRExZIC8gVFhE
TFkgaGFyZHdhcmUgc3RyYXBwaW5nLgoKPiA+IFRoZSB0eF9kZWxheSBhbmQgcnhfZGVsYXkgdmFs
dWVzIHdlcmUgb2J0YWluZWQgdXNpbmcgUm9ja2NoaXAncwo+ID4gYXV0b21hdGljIHNjYW5uaW5n
IHRvb2w6Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vaXN0b3Jlb3MvaXN0b3Jlb3MvYmxvYi81NDc0
NmRmZGI1YmQzNGQxZjI4MWNmNDFkMWQxNjIwZDBjM2VlNjg2L3RhcmdldC9saW51eC9yb2NrY2hp
cC9maWxlcy9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay10b29s
LmMKPiA+IGh0dHBzOi8vZ2l0bGFiLmNvbS9maXJlZmx5LWxpbnV4L2RvY3MvLS9ibG9iL3JrMzU2
eC9maXJlZmx5L0NvbW1vbi9HTUFDL1JvY2tjaGlwX0RldmVsb3Blcl9HdWlkZV9MaW51eF9HTUFD
X1JHTUlJX0RlbGF5bGluZV9FTi5wZGYKPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9heGxyb3NlL3Jr
ZG9jcy9ibG9iL21haW4vQ29tbW9uL0dNQUMvUm9ja2NoaXBfRGV2ZWxvcGVyX0d1aWRlX0xpbnV4
X0dNQUNfUkdNSUlfRGVsYXlsaW5lX0VOLnBkZgo+IAo+IFZlbmRvcnMgZ2V0IHRoaW5ncyB3cm9u
ZywgaW5jbHVkaW5nIHRoaXMuICdyZ21paScgbWVhbnMgdGhlIFBDQiBhZGRzCj4gdGhlIDJucyBk
ZWxheS4gTmVhcmx5IGV2ZXJ5IFJvY2tjaGlwIGJvYXJkIGZvbGxvd3MgUm9ja2NoaXAgYnJva2Vu
Cj4gdmVuZG9yIHJlY29tbWVuZGF0aW9ucywgYW5kIHRoZW4gaSBjb21lIGFsb25nLCBwb2ludCBv
dXQgaG93IGl0IGlzCj4gd3JvbmcsIGFuZCBhc2sgZm9yIGl0IHRvIGJlIGZpeGVkLCBiZWZvcmUg
YmVpbmcgbWVyZ2VkIHRvIE1haW5saW5lLgoKQ2FuIHdlIGF0IGxlYXN0IGdldCB0aGUgInR4X2Rl
bGF5IiBhbmQgInJ4X2RlbGF5IiBEVCBwcm9wZXJ0aWVzICh3aGljaAphcmUgcmVnaXN0ZXIgdmFs
dWVzKSBwcm9wZXJseSBkb2N1bWVudGVkIGluIHRoZSBEVCBiaW5kaW5nIGRvY3VtZW50PwpJIGtu
b3cgZnJvbSB0aGUgZHJpdmVyIGNvZGUgdGhhdCBhIHZhbHVlIG9mIDAgbWVhbnMgIm5vIGRlbGF5
Ii4gT3RoZXIKdmFsdWVzIGFkZCBhbiB1bnNwZWNpZmllZCBkZWxheSAtIGl0IGlzIG5vdCBvYnZp
b3VzIHdoYXQgYW55IG5vbi16ZXJvCnZhbHVlIG1lYW5zLCBvciB3aGF0IHRoZSBkZWZhdWx0IG1l
YW5zLgoKVGhpcyB3b3VsZCBoZWxwIHVzIHVuZGVyc3RhbmQgd2hhdCB2YWx1ZXMgc3VjaCBhczoK
Cgl0eF9kZWxheSA9IDB4M2Mgb3IgMHg0ZgoKYW5kCgoJcnhfZGVsYXkgPSAweDJmIG9yIDB4MjYK
CmFjdHVhbGx5IG1lYW4gaW4gdGVybXMgb2YgdGhlIHJlc3VsdGluZyBkZWxheSBhdCB0aGUgTUFD
LgoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2Rl
dmVsb3Blci9wYXRjaGVzLwpGVFRQIGlzIGhlcmUhIDgwTWJwcyBkb3duIDEwTWJwcyB1cC4gRGVj
ZW50IGNvbm5lY3Rpdml0eSBhdCBsYXN0IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
