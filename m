Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A318CCD18C
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Oct 2025 12:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvPZYMgVkjlBbIELOF3cBug1+4hkOVcDpcw5qr2SBG4=; b=YqA3lXYxeXj3xZ
	8DSWcM4fcDMJibaTTHQez7JNjKZZ+HDCegoPUpmo6469zhyhipnyd+feOiGh4y7kxVy0wf2hIuoS/
	dxPyDS46KtIUJSDdzwAQkJMJbiD74XYfhPI3Eh4kR43ErsHtA4b5VPNPckdP4+b/S9DuiVawgFWTL
	tNDMx7LLCrZ0myr/ygNwdEDMqK6+aeb3+j0FMDuwRn45IMkRaDq5F1YmV+qKtnN+pmx0Z9DFYeizp
	sqLDnc8FKAS3v/+Izo6qpFxTlk4ZFNoUNldxHw/3pLg/1DnBKkLGAJELFmgSahl/B/unhafzaA8/6
	VKUvud2WEm/0gkc4u7RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7C2O-00000008PVK-01n9;
	Fri, 10 Oct 2025 12:15:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7C2L-00000008PUg-3tXb;
	Fri, 10 Oct 2025 12:15:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 574736029F;
	Fri, 10 Oct 2025 12:15:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65215C4CEF1;
	Fri, 10 Oct 2025 12:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760098553;
	bh=hWBv5TGNZvVjCplP/ev/k4nohO6E6ZrobfMvadwzZhY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eA8120haZolGu2WcpY2s4wKkm7jIqYjmTNsW6RQKUhowq4qQyINP9dOJ+ZniDOlSB
	 esvPlGsEZRJKcMHu615Aao5qvsXhrR8i3lOj94g+kVpWkaD0BJNvitbXrVIf6JDwfc
	 nPLSZUIQEP5Y5s1xYp8MG96JJMZbu4kDiT+e+aB7ryAXALV+wUxAzZwoceAe2tbOqM
	 BNiMMSyNPNZZTpKi77b7T7efoeOsvnNtmPov0/7EoQiVrvz1+WOBhhGIxXkfU2h/h/
	 nrC4zLTlRR4SHdXAcqTKu6r57v7q0DEuQDq1ASmTt+HX7DlUvDYzBJ4Bg/SioGE01B
	 4cBdSncQrOx6w==
Message-ID: <88b1dcda-be2d-4c57-b042-c1809ef1dc97@kernel.org>
Date: Fri, 10 Oct 2025 13:15:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 00/17] media: rockchip: add a driver for the rockchip
 camera interface
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <HSTnNzc6MTLHGWih5qjlI2nvVECP8FVdcQVeBON4KlWYLtEaWIlNmEpKTU_vlqitbIIHMpabKnvnmpEQFqHYxQ==@protonmail.internalid>
 <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTcvMDkvMjAyNSAxNjozOCwgTWljaGFlbCBSaWVzY2ggdmlhIEI0IFJlbGF5IHdyb3RlOgo+
IEhhYmlkZXJlLAo+IAo+IFRoaXMgc2VyaWVzIGludHJvZHVjZXMgc3VwcG9ydCBmb3IgdGhlIFJv
Y2tjaGlwIENhbWVyYSBJbnRlcmZhY2UgKENJRiksCj4gd2hpY2ggaXMgZmVhdHVyZWQgaW4gbWFu
eSBSb2NrY2hpcCBTb0NzIGluIGRpZmZlcmVudCB2YXJpYXRpb25zLgo+IEZvciBleGFtcGxlLCB0
aGUgUFgzMCBWaWRlbyBJbnB1dCBQcm9jZXNzb3IgKFZJUCkgaXMgYWJsZSB0byByZWNlaXZlCj4g
dmlkZW8gZGF0YSB2aWEgdGhlIERpZ2l0YWwgVmlkZW8gUG9ydCAoRFZQLCBhIHBhcmFsbGVsIGRh
dGEgaW50ZXJmYWNlKQo+IGFuZCB0cmFuc2ZlciBpdCBpbnRvIHN5c3RlbSBtZW1vcnkgdXNpbmcg
YSBkb3VibGUtYnVmZmVyaW5nIG1lY2hhbmlzbQo+IGNhbGxlZCBwaW5nLXBvbmcgbW9kZS4KPiBU
aGUgUkszNTY4IFZpZGVvIENhcHR1cmUgKFZJQ0FQKSB1bml0LCBvbiB0aGUgb3RoZXIgaGFuZCwg
ZmVhdHVyZXMgYQo+IERWUCBhbmQgYSBNSVBJIENTSS0yIHJlY2VpdmVyIHRoYXQgY2FuIHJlY2Vp
dmUgdmlkZW8gZGF0YSBpbmRlcGVuZGVudGx5Cj4gKGJvdGggdXNpbmcgdGhlIHBpbmctcG9uZyBz
Y2hlbWUpLgo+IFRoZSBkaWZmZXJlbnQgdmFyaWFudHMgbWF5IGhhdmUgYWRkaXRpb25hbCBmZWF0
dXJlcywgc3VjaCBhcyBzY2FsaW5nCj4gYW5kL29yIGNyb3BwaW5nLgo+IEZpbmFsbHksIHRoZSBS
SzM1ODggVklDQVAgdW5pdCBjb25zdGl0dXRlcyBhbiBlc3NlbnRpYWwgcGllY2Ugb2YgdGhlCj4g
Y2FtZXJhIGludGVyZmFjZSB3aXRoIG9uZSBEVlAsIHNpeCBNSVBJIENTSS0yIHJlY2VpdmVycywg
c2NhbGUvY3JvcAo+IHVuaXRzLCBhbmQgYSBkYXRhIHBhdGggbXVsdGlwbGV4ZXIgKHRvIHNjYWxl
ciB1bml0cywgdG8gSVNQLCAuLi4pLgo+IAo+IFRoZSB2MTEgb2YgdGhlIHNlcmllcyBhZGRzIGEg
bWVkaWEgY29udHJvbGxlciBjZW50cmljIFY0TDIgZGV2aWNlIGRyaXZlcgo+IGZvciB0aGUgUm9j
a2NoaXAgQ0lGIHdpdGgKPiAgIC0gc3VwcG9ydCBmb3IgdGhlIFBYMzAgVklQIChub3QgdGVzdGVk
LCB0aG91Z2gsIGR1ZSB0byB0aGUgbGFjayBvZiBIVykKPiAgIC0gc3VwcG9ydCBmb3IgdGhlIFJL
MzU2OCBWSUNBUCwgaW5jbHVkaW5nCj4gICAgICAtIGNhcHR1cmluZyBmcmFtZXMgZnJvbSB0aGUg
RFZQCj4gICAgICAtIGNhcHR1cmluZyBmcmFtZXMgZnJvbSB0aGUgTUlQSSBDU0ktMiByZWNlaXZl
cgo+ICAgLSBhYnN0cmFjdGlvbiBmb3IgdGhlIHBpbmctcG9uZyBzY2hlbWUgdG8gYWxsb3cgZm9y
IGZ1dHVyZSBleHRlbnNpb25zCj4gICAtIGFic3RyYWN0aW9uIGZvciB0aGUgSU5URVJGQUNFIGFu
ZCBDUk9QIHBhcnRzIHRvIGFsbG93IGZvciBmdXR1cmUKPiAgICAgZXh0ZW5zaW9ucwo+ICAgLSBp
bml0aWFsIHN1cHBvcnQgZm9yIGRpZmZlcmVudCB2aXJ0dWFsIGNoYW5uZWxzIChub3QgdGVzdGVk
LCB0aG91Z2gsCj4gICAgIGR1ZSB0byB0aGUgbGFjayBvZiBIVykKPiBhbmQgYSBWNEwyIHN1YmRl
dmljZSBkcml2ZXIgZm9yIHRoZSBSb2NrY2hpcCBNSVBJIENTSS0yIFJlY2VpdmVyLgo+IAo+IFRo
ZSBkcml2ZXIgY2FuIGJlIHJlYWRpbHkgZXh0ZW5kZWQgdG8gcHJvdmlkZSBzdXBwb3J0IGZvciB0
aGUgUkszNTg4Cj4gVklDQVAgdmFyaWFudC4gSW4gb3JkZXIgdG8ga2VlcCB0aGluZ3Mgc2ltcGxl
LCBob3dldmVyLCB0aGlzIGV4dGVuc2lvbgo+IHNoYWxsIGJlIHN1Ym1pdHRlZCBzZXBhcmF0ZWx5
Lgo+IAo+IExvb2tpbmcgZm9yd2FyZCB0byB5b3VyIGNvbW1lbnRzIQo+IAo+IFRvOiBNZWhkaSBE
amFpdDxtZWhkaS5kamFpdEBsaW51eC5pbnRlbC5jb20+Cj4gVG86IE1heGltZSBDaGV2YWxsaWVy
PG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPgo+IFRvOiBUaMOpbyBMZWJydW48dGhlby5s
ZWJydW5AYm9vdGxpbi5jb20+Cj4gVG86IFRob21hcyBQZXRhenpvbmk8dGhvbWFzLnBldGF6em9u
aUBib290bGluLmNvbT4KPiBUbzogR2VyYWxkIExvYWNrZXI8Z2VyYWxkLmxvYWNrZXJAd29sZnZp
c2lvbi5uZXQ+Cj4gVG86IEJyeWFuIE8nRG9ub2dodWU8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5v
cmc+Cj4gVG86IE1hcmt1cyBFbGZyaW5nPE1hcmt1cy5FbGZyaW5nQHdlYi5kZT4KPiBUbzogU2Fr
YXJpIEFpbHVzPHNha2FyaS5haWx1c0Bpa2kuZmk+Cj4gVG86IExhdXJlbnQgUGluY2hhcnQ8bGF1
cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+IFRvOiBNYXVybyBDYXJ2YWxobyBDaGVo
YWI8bWNoZWhhYkBrZXJuZWwub3JnPgo+IFRvOiBSb2IgSGVycmluZzxyb2JoK2R0QGtlcm5lbC5v
cmc+Cj4gVG86IEtyenlzenRvZiBLb3psb3dza2k8a3J6aytkdEBrZXJuZWwub3JnPgo+IFRvOiBD
b25vciBEb29sZXk8Y29ub3IrZHRAa2VybmVsLm9yZz4KPiBUbzogSGVpa28gU3R1ZWJuZXI8aGVp
a29Ac250ZWNoLmRlPgo+IFRvOiBLZXZlciBZYW5nPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+
Cj4gVG86IE5pY29sYXMgRHVmcmVzbmU8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+
IFRvOiBTZWJhc3RpYW4gUmVpY2hlbDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+
IFRvOiBDb2xsYWJvcmEgS2VybmVsIFRlYW08a2VybmVsQGNvbGxhYm9yYS5jb20+Cj4gVG86IFBh
dWwgS29jaWFsa293c2tpPHBhdWxrQHN5cy1iYXNlLmlvPgo+IFRvOiBBbGV4YW5kZXIgU2hpeWFu
PGVhZ2xlLmFsZXhhbmRlcjkyM0BnbWFpbC5jb20+Cj4gVG86IFZhbCBQYWNrZXR0PHZhbEBwYWNr
ZXR0LmNvb2w+Cj4gVG86IFJvYiBIZXJyaW5nPHJvYmhAa2VybmVsLm9yZz4KPiBUbzogUGhpbGlw
cCBaYWJlbDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IENjOmxpbnV4LW1lZGlhQHZnZXIua2Vy
bmVsLm9yZwo+IENjOmRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCj4gQ2M6bGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZwo+IENjOmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IENjOmxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBTaWduZWQtb2ZmLWJ5
OiBNaWNoYWVsIFJpZXNjaDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4KPiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaDxtaWNoYWVsLnJpZXNjaEBjb2xsYWJvcmEuY29tPgo+IAo+
IENoYW5nZXMgaW4gdjExOgo+IC0gcmtjaWY6IHNwbGl0IGxhcmdlIGRyaXZlciBwYXRjaCAoNi8x
MyBvZiB2MTApIGludG8gc21hbGxlcgo+ICAgIHBhdGNoZXMgKDYtMTEvMTcgb2YgdjExKSAoQnJ5
YW4pCj4gLSBya2NzaTogcmVwbGFjZWQgZGV2bV9yZXNldF9jb250cm9sX2FycmF5X2dldF9leGNs
dXNpdmUgd2l0aAo+ICAgIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlIChQaGlsaXBw
KQo+IC0gTGluayB0byB2MTA6aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI0MDIyMC1yazM1
NjgtdmljYXAtIAo+IHYxMC0wLTYyZDhhN2IyMDliNEBjb2xsYWJvcmEuY29tCgpJIGJlbGlldmUg
aXQgaXMgdGhlIGNhc2UgYW5kIHBsZWFzZSBmZWVsIGZyZWUgdG8gY29ycmVjdCBtZSBpZiBJJ20g
d3JvbmcgCnRoYXQgeW91J3ZlIGRyb3BwZWQgYSBsb25nIGxpc3Qgb2Ygc29iL2NvLWRldmVsb3At
YnksIEkgdGhpbmsgd2UgCmRpc2N1c3NlZCB0aGF0IHRvbywgYmVjYXVzZSBvZiB0aGUgbGV2ZWwg
b2YgY2hhbmdlLCBpdCBzZWVtcyByZWFzb25hYmxlIHRvby4KCk9uIHF1ZXN0aW9uIG9uIHRoYXQs
IGFyZSB0aGVzZSBwZW9wbGUgYXdhcmUgb2YgdGhlIGNoYW5nZSBhbmQgY2MnZCBvbiAKdGhlIGxp
c3Qgb2YgcmVjaXBpZW50cy9jb250YWN0YWJsZS9hZ3JlZWFibGUgdG8gdGhlIGNoYW5nZSA/Cgot
LS0KYm9kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
