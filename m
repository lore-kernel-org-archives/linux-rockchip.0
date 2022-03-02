Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 807EBC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 10:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lryiXzeYaXCBjdoJG4PdvdyjQoiIh5aBcIqjUAcpzY8=; b=k7LkRRaMTeylth
	FPHcLdu4Fj4X3CXHUhFFrnaKGgiUxUlSs7X8YfF3hT35Sb97tYZvJhHIZO1vfBa3Mr9buHptJw/Hb
	hLQXY2Y6cV+IIw8l30LK6I6+gVl3yL6gYlA8R9Malub9c9MZ5/GbhlQo8vivYsDyl/0LlEp6Sverb
	pRsHNFbaMSLXCveZ4mfIXWf31Fs5+dSRUYukLBlau9GUZ6nm2gOuCGHulNB11l54Tw1laivcLwF62
	SUfu7xzm2EH59WrTqgXphmBcbzdYPHRR/PNCMZM/ACHQEwKKP/2fGS6bT2mKvu14QnTxxopr0OFq2
	FUE4KG/ZPd7/3JeabLBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPMHD-002K60-C7; Wed, 02 Mar 2022 10:32:11 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPMHA-002K5L-C9; Wed, 02 Mar 2022 10:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646217098;
 bh=4bdmMEQw8spR517oJ7qXxXX+uJRFnQKrfHpGnboGiZ0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=bZEva4y7ths00ttdO/UooBif6ALksHiAnjBWdqeGUJVbz8jQrDvYJuEHvXrvqxfyR
 YcIgyCblkbuQvqmiJUTfBHI1qLBy21rvqMddhh7LqvFgPlO7NjYE0/N76lRWgmIBr2
 ixMZNaAS5ZwQxLj3wPmNzQdRrqEjyD385c3tQ2Lk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.190] ([80.245.77.190]) by web-mail.gmx.net
 (3c-app-gmx-bap21.server.lan [172.19.172.91]) (via HTTP); Wed, 2 Mar 2022
 11:31:38 +0100
MIME-Version: 1.0
Message-ID: <trinity-80a229fb-42dd-4705-9c55-fe6f3a381a40-1646217098213@3c-app-gmx-bap21>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org, Damien
 Le Moal <damien.lemoal@opensource.wdc.com>, Rob Herring
 <robh+dt@kernel.org>, Hans de Goede <hdegoede@redhat.com>, Jens Axboe
 <axboe@kernel.dk>, linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Michael
 Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: Aw: Re: [PATCH v4 1/5] dt-bindings: Convert ahci-platform DT
 bindings to yaml
Date: Wed, 2 Mar 2022 11:31:38 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <6dae47c3-6083-782e-ecab-7be3f0bca0e1@canonical.com>
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-2-linux@fw-web.de>
 <6dae47c3-6083-782e-ecab-7be3f0bca0e1@canonical.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:4Gpe9DnEZg6/2Us5ng4Vs+x+BJ+VcCuxFPt0OY8/cpI1KL2/NW731L08yXZA2/TTVVk6+
 uDr9F1YWWrAbLuR8Q9PYkpsqbOQSINIMeUd4Jjrgsb/AskZtRQRC8/7tE8fCWyFPpxGKkEQr+IDK
 TQdDJN+At+27aKoUuUxKjxTBfyuyYCuR6Afn4+j+9KUCBuYuu+ALvG33VVtjzO+3ltdwL+EZcJKt
 WhQB2bCv0KWTdWvXFZFD0Na2LQoB07OyyTaxmTl+iAFgEPgCi6m5w/NA5dpzbHsuItcmeX+SnezL
 Fw=
X-UI-Out-Filterresults: notjunk:1;V03:K0:vk4EW4SvWFo=:EpZrOPPl+6CuL2emR4Il5R
 BGbiJ6qZyF4TofkTyyy82OQSw6sHIkaRLVog7OvuuarvArgeogT42vK3ewTSki4nA0o3Y6e7u
 c2rQyEtFpbDmmynGWA79SB6rULKKTfW1rREKEtRRbkl45RPIk5cdUTt3yPEZg1PgBlZ6cC1Zi
 a9Z8zyCSZccjMF8qEq5bGhhe6FXLORRPnphPybhvdR+4uBfsDf43PMptW+7cA7aHU9RcUZxf2
 L9czc6SXo5GxXruLZ0sPiYV0oVXE7lgXHREjYZl2H7VRFGjGA7T/7rE44MWBxCCyz3EKMxcQJ
 iYU0mIsfbDI6aro468K3IE0yIy8zgCbgEaj89mPq11vTGQIv2TQRMXCqUh6JO+HkURxpza6DR
 EaWBo228M78BGsV/8/GMVQpaNGLUGJMuVQXy4O4kn1I5oPI/UleDpcrl4vGFFTzflUdlV7OnH
 5PqmDWpFVOc9SjrDEdWUiK6NpMqGcQymVjhk9IU3NKF4heVWRVg7M0EFpllim3TxIIjpCZhF/
 mQ2SJQH0lnkcHerWGlofe0xJnnGEP43rjFZwmMwi4k36V7mpb8/gbZevht+ndg5fAHM9NRTbW
 5dHdOX/R2abeVpDw+16McJfSQ7qoEKIeU+Tb4g0sPjFvnhCsUaXJNLXKXdehoa8WXRJngIbLo
 xO9m4Xzf7ToIscjeIgvux6YUX5JqzTWMxKvWBMsREufhXpKWwI8eGKJ+OHotuhFkyJHJJV9iA
 CjStIoCuT7D1w6FSVK/GB85hqTTUJAyVHF85xGb89/rjb86Gm7kp++JuNPKagdzL1di3D2rjq
 xcz2wmi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_023208_755709_A5B481E0 
X-CRM114-Status: GOOD (  16.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkKCj4gR2VzZW5kZXQ6IE1pdHR3b2NoLCAwMi4gTcOkcnogMjAyMiB1bSAxMDo0NiBVaHIKPiBW
b246ICJLcnp5c3p0b2YgS296bG93c2tpIiA8a3J6eXN6dG9mLmtvemxvd3NraUBjYW5vbmljYWwu
Y29tPgoKPiBPbiAwMS8wMy8yMDIyIDE2OjI0LCBGcmFuayBXdW5kZXJsaWNoIHdyb3RlOgo+ID4g
RnJvbTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cgo+ID4gK3By
b3BlcnRpZXM6Cj4gPiArICBjb21wYXRpYmxlOgo+ID4gKyAgICBvbmVPZjoKPiA+ICsgICAgICAt
IGl0ZW1zOgo+ID4gKyAgICAgICAgLSBlbnVtOgo+ID4gKyAgICAgICAgICAtIGJyY20saXByb2Mt
YWhjaQo+ID4gKyAgICAgICAgICAtIG1hcnZlbGwsYXJtYWRhLThrLWFoY2kKPiA+ICsgICAgICAg
ICAgLSBtYXJ2ZWxsLGJlcmxpbjJxLWFoY2kKPiA+ICsgICAgICAgIC0gY29uc3Q6IGdlbmVyaWMt
YWhjaQo+ID4gKyAgICAgIC0gZW51bToKPiA+ICsgICAgICAgIC0gYnJjbSxpcHJvYy1haGNpCj4g
Cj4gVGhpcyBvbmUgaXMgYWxyZWFkeSBlYXJsaWVyIGluIGdlbmVyaWMtYWhjaSwgc28geW91IGNh
biBza2lwIGhpbSBoZXJlLgoKT0ssIGkgZHJvcCBpdAoKPiA+ICsgICAgICAgIC0gY2F2aXVtLG9j
dGVvbi03MTMwLWFoY2kKPiA+ICsgICAgICAgIC0gaGlzaWxpY29uLGhpc2ktYWhjaQo+ID4gKyAg
ICAgICAgLSBpYm0sNDc2Z3RyLWFoY2kKPiA+ICsgICAgICAgIC0gbWFydmVsbCxhcm1hZGEtMzcw
MC1haGNpCj4gPiArICAgICAgICAtIG1hcnZlbGwsYXJtYWRhLTM4MC1haGNpCj4gPiArICAgICAg
ICAtIHNucHMsZHdjLWFoY2kKPiA+ICsgICAgICAgIC0gc25wcyxzcGVhci1haGNpCj4gPiArCj4g
PiArICByZWc6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4gPiArICBjbG9ja3M6Cj4gPiAr
ICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAgIENsb2NrIElEcyBhcnJheSBhcyByZXF1aXJlZCBi
eSB0aGUgY29udHJvbGxlci4KPiA+ICsgICAgbWluSXRlbXM6IDEKPiA+ICsgICAgbWF4SXRlbXM6
IDMKPiA+ICsKPiA+ICsgIGludGVycnVwdHM6Cj4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAg
ICAgIHNwZWNpZmllcyB0aGUgaW50ZXJydXB0IG51bWJlciBmb3IgdGhlIGNvbnRyb2xsZXIuCj4g
Cj4gU2tpcCBkZXNjcmlwdGlvbiwgaXQncyBvYnZpb3VzLgoKT0sKCj4gPiArICAgIG1heEl0ZW1z
OiAxCj4gPiArCj4gPiArICBhaGNpLXN1cHBseToKPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiAr
ICAgICAgcmVndWxhdG9yIGZvciBBSENJIGNvbnRyb2xsZXIKPiA+ICsKPiA+ICsgIGNsb2NrLW5h
bWVzOgo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICBOYW1lcyBvZiBjbG9ja3MgY29y
cmVzcG9uZGluZyB0byBJRHMgaW4gdGhlIGNsb2NrIHByb3BlcnR5Lgo+ID4gKyAgICBtaW5JdGVt
czogMQo+ID4gKyAgICBtYXhJdGVtczogMwo+IAo+IFB1dCB0aGUgY2xvY2stbmFtZXMgbmV4dCB0
byBjbG9ja3MuCgpoYWQgbW92ZWQgdGhlbSBkb3duIGFzIHRoZXkgYXJlIG9wdGlvbmFsLCBidXQg
b2ssIGkgbW92ZSB1cAoKPiA+ICsKPiA+ICsgIGRtYS1jb2hlcmVudDoKPiA+ICsgICAgdHJ1ZQo+
IAo+IE5ldyBsaW5lIG5vdCBuZWVkZWQuICJkbWEtY29oZXJlbnQ6IHRydWUiCgpPSwoKPiA+ICsg
IHBvcnRzLWltcGxlbWVudGVkOgo+ID4gKyAgICAkcmVmOiAnL3NjaGVtYXMvdHlwZXMueWFtbCMv
ZGVmaW5pdGlvbnMvdWludDMyJwo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICBNYXNr
IHRoYXQgaW5kaWNhdGVzIHdoaWNoIHBvcnRzIHRoYXQgdGhlIEhCQSBzdXBwb3J0cwo+ID4gKyAg
ICAgIGFyZSBhdmFpbGFibGUgZm9yIHNvZnR3YXJlIHRvIHVzZS4gVXNlZnVsIGlmIFBPUlRTX0lN
UEwKPiA+ICsgICAgICBpcyBub3QgcHJvZ3JhbW1lZCBieSB0aGUgQklPUywgd2hpY2ggaXMgdHJ1
ZSB3aXRoCj4gPiArICAgICAgc29tZSBlbWJlZGRlZCBTb0NzLgo+ID4gKyAgICBtYXhJdGVtczog
MQo+IAo+IG1heEl0ZW1zIGFyZSBpbmNvcnJlY3QgaGVyZSwgdGhpcyBpcyBub3QgYW4gYXJyYXku
CgpyaWdodCwgaSdsbCBjaGFuZ2UgaXQKCj4gPiArcGF0dGVyblByb3BlcnRpZXM6Cj4gPiArICAi
XnNhdGEtcG9ydEBbMC05YS1mXSskIjoKPiA+ICsgICAgdHlwZTogb2JqZWN0Cj4gPiArICAgIGRl
c2NyaXB0aW9uOgo+ID4gKyAgICAgIFN1Ym5vZGUgd2l0aCBjb25maWd1cmF0aW9uIG9mIHRoZSBQ
b3J0cy4KPiA+ICsKPiA+ICsgICAgcHJvcGVydGllczoKPiA+ICsgICAgICByZWc6Cj4gPiArICAg
ICAgICBtYXhJdGVtczogMQo+ID4gKwo+ID4gKyAgICAgIHBoeXM6Cj4gPiArICAgICAgICBtaW5J
dGVtczogMQo+IAo+IG1heEl0ZW1zOiAxCgpvaCwgbWlzc2VkIHRoYXQKCj4gPiArICAgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4gPiArICAg
ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9iZXJsaW4ycS5oPgo+ID4gKyAgICBzYXRhQGY3
ZTkwMDAwIHsKPiA+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1hcnZlbGwsYmVybGluMnEt
YWhjaSIsICJnZW5lcmljLWFoY2kiOwo+ID4gKyAgICAgICAgICAgIHJlZyA9IDwweGU5MDAwMCAw
eDEwMDA+Owo+IAo+IFlvdSBzdGlsbCBoYXZlIHdyb25nIGFkZHJlc3MuCgpvbmx5IHRvb2sgdGhl
IGV4YW1wbGUgZnJvbSB0aGUgdHh0LCBidXQgaSBndWVzcyByZWcgc2hvdWxkIGJlIDwweGY3ZTkw
MDAwIDB4MTAwMD47ID8KCndpbGwgYWxzbyBmaXggYWxsIHN1YmplY3RzIHRvCgoiZHQtYmluZGlu
Z3M6IGF0YTogYWhjaS1wbGF0Zm9ybTogLi4uIgoKVGhhbmtzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
