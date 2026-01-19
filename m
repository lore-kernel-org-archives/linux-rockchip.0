Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FA90D29C2D
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 13:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLqmPQ5ccJVgf91uXeCOSGPa1v/fx2lHLG6SazW/VIg=; b=JFzm6sU1VXgjF1
	8PDpIacKQy7Sm3DyPBlO0xiNXXROpCfDKPVMByGkzXTxgfKOwkfFhvxCkB0ZyG7vCejeo6SpJLC5j
	Sy0qmvV9vBQ5n9XxO1W1IvqhwZjazYFjEWG2KilBgVGbi3lHjY89T484S8QOQ7DuljiifUv1pSKaZ
	p/hDnA3ze4AwHYAakoRduRWeiknPKbtDPdUsTjzSJB5MI+RtAOrZ4BPOt/3lKJEu2Qi1PBYZR6yt6
	eqm+zF3HgvloumdhcRFrQ/FZLzxgmFswdJOKlvHnf25i0KFhs6mPQBQqfwH/j1UpXLT8wzLMGSSK4
	hZa6icnxJE+A6hmH12Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpXP-00000002BHz-2UUJ;
	Mon, 19 Jan 2026 13:43:23 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpXM-00000002BHK-1Xrq
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 13:43:22 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-502a98c66f7so23374071cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 05:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768830198; x=1769434998; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chB5b0rt82JcysgedumeHVaiY8n8X+8y2Qmtz5rmwLo=;
        b=H6kzGEl5AK3KlUScz0UTBdeq9Bv43kattHcoFhP4sIbiQhnLTfmQL4g+yG6NhyCwjE
         gSKIssCpnvP78F0SU54348Q/zAbKmx668XFuP4HSjh+jL2wdFLsI73GtHNX3BTDtJHyf
         fCGksdD/gAg1QXR3eE5WandQXymBHZPAACTUR8bnsuUm9sufTZXEtWeiLV4JIMKn3D6n
         LbIVNtXtcv3uK6yelEx8TmS4Bpj/xc9kTxKmfhkzAeAn8M62wG1/C8ZLP0tm8T8eg1+I
         YctlaXEoObWL8344Bnmj0TbDi/ohQDnFERAhWj+PXUk+pGlz6oW1McS+mDxPtt82a0F1
         uM2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768830198; x=1769434998;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=chB5b0rt82JcysgedumeHVaiY8n8X+8y2Qmtz5rmwLo=;
        b=m7UzlxTz4ibaRmlvTCIqZheADY1E4xwJxuCBXkJOVHprD3rrQxeGGD8sJboi8H/rlj
         4oSgWV7gKUVobbP5ZSx2US3oqgilrTmwup9f8eNPoIxaSUiWw13dle1S27NmKdHQCOhE
         iPNVeiKWXlpWxuXGB/cN7GKBn1vSgHRhiCc4RU/BsshOvkJVSzQVU9UrnGTKkEd4gInt
         BRaSpnni/MSH4kgNS5uV5dh/9IFAj5wfYXM0JWjJ6M8cCGoTZPNBTAVduMvyw3284H5Z
         IuJ/hKoug4bt3o/6Cgrqu9m2mC+FylTBTg31EAjJfyw+LdEkd0XlQw8VkkvD+NGUteie
         8jrw==
X-Forwarded-Encrypted: i=1; AJvYcCWHPn6GQXe3hFYS6grg2KJ5Fjlh4EirGlcGxfRCLSybnWDg374opWfYlEn0pKol3sIAwaqu19/XCdiIOMzSew==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdT38j3F/HXP+5KrjRZC83Hbe4+AMxXs5AktT5ojuLs+SY7mbO
	eEwssQ1nfnb03McMNmBmdldZKLj8PX+V15peE1PcIBLKUoOoFfdOh2SXnyOJOJ/ER9/XPVjjqUp
	cokipy1QjABpXd/6MOp3fvhD06bBX/YM=
X-Gm-Gg: AY/fxX7cwrnO8L95RPRiFZIvGQM+2yqp76JuFjyjI3czXpyQ8mXV6FPpzE4Y7hi2NR9
	8qX4vWSsZnCmvT9WsV0rOgZp3r6e8dZYr/0zPPZclR+XcdzLfoy5tZtDFBy0oQXThzNVqOnSXy+
	XWF1GIt79ighQ1yqozfG5JrFeZoIQFmp24ostFnCwqhVDbHVeEsPl629AHW7Sff3LGYijIHaX6S
	VBGGkOQ3FcO7f8Z7nUlHBjZWQ90iLW6WNIuoNCzhARnUXHEqx4jGjE7sjVfk7y+Y8hW3mtBVzDF
	dFN1gnmu52dM78Jmo0srx7kRIGxnaSxWGLkaLA==
X-Received: by 2002:ac8:5a93:0:b0:4ee:1f22:3613 with SMTP id
 d75a77b69052e-502a179b7d7mr149743011cf.62.1768830197715; Mon, 19 Jan 2026
 05:43:17 -0800 (PST)
MIME-Version: 1.0
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com> <b0904cb5-3659-41cc-8395-79eec9e82f01@cherry.de>
In-Reply-To: <b0904cb5-3659-41cc-8395-79eec9e82f01@cherry.de>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 19 Jan 2026 17:43:09 +0400
X-Gm-Features: AZwV_Qg3fDBDn37sLa59WhlzNgabNqw_H45Z3ujw8yrw_76pBFKSvwfPEz_39iE
Message-ID: <CABjd4YzJud4ZZQ_GrOOSnfEVG7wgHmPSf9w8oQhLVSx6WXgN5A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_054320_955390_6BCA10F5 
X-CRM114-Status: GOOD (  34.03  )
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

SGkgUXVlbnRpbiwKCk9uIE1vbiwgSmFuIDE5LCAyMDI2IGF0IDM6MDjigK9QTSBRdWVudGluIFNj
aHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPiB3cm90ZToKPgo+IEhpIEFsZXhleSwKPgo+
IE9uIDEvMTkvMjYgMTA6MjIgQU0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gUm9ja2NoaXAg
UkszNTc2IFVGUyBjb250cm9sbGVyIHVzZXMgYSBkZWRpY2F0ZWQgcGluIHRvIHJlc2V0IHRoZSBj
b25uZWN0ZWQKPiA+IFVGUyBkZXZpY2UsIHdoaWNoIGNhbiBvcGVyYXRlIGVpdGhlciBpbiBhIGhh
cmR3YXJlIGNvbnRyb2xsZWQgbW9kZSBvciBhcyBhCj4gPiBHUElPIHBpbi4KPiA+Cj4gPiBQb3dl
ci1vbiBkZWZhdWx0IGlzIEdQSU8gbW9kZSwgYnV0IHRoZSBib290IFJPTSByZWNvbmZpZ3VyZXMg
aXQgdG8gYQo+ID4gaGFyZHdhcmUgY29udHJvbGxlZCBtb2RlIGlmIGl0IHVzZXMgVUZTIHRvIGxv
YWQgdGhlIG5leHQgYm9vdCBzdGFnZS4KPiA+Cj4gPiBHaXZlbiB0aGF0IGV4aXN0aW5nIGJpbmRp
bmdzIChhbmQgcmszNTc2LmR0c2kpIGV4cGVjdCBhIEdQSU8tY29udHJvbGxlZAo+ID4gZGV2aWNl
IHJlc2V0LCByZXF1ZXN0IHRoZSByZXF1aXJlZCBwaW4gY29uZmlnIGV4cGxpY2l0bHkuCj4gPgo+
ID4gVGhpcyBkb2Vzbid0IGFwcGVhciB0byBhZmZlY3QgTGludXgsIGJ1dCBpdCBkb2VzIGFmZmVj
dCBVLWJvb3Q6Cj4gPgo+ID4gQmVmb3JlOgo+ID4gPT4gbWQubCAweDI2MDRiMzk4Cj4gPiAyNjA0
YjM5ODogMDAwMDAwMTEgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgIC4uLi4uLi4uLi4uLi4u
Li4KPiA+IDwgLi4uIHNuaXAgLi4uID4KPiA+ID0+IHVmcyBpbml0Cj4gPiB1ZnNoY2Qtcm9ja2No
aXAgdWZzaGNAMmEyZDAwMDA6IFtSWCwgVFhdOiBnZWFyPVszLCAzXSwgbGFuZVsyLCAyXSwgcHdy
W0ZBU1RBVVRPX01PREUsIEZBU1RBVVRPX01PREVdLCByYXRlID0gMgo+ID4gPT4gbWQubCAweDI2
MDRiMzk4Cj4gPiAyNjA0YjM5ODogMDAwMDAwMTEgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAg
IC4uLi4uLi4uLi4uLi4uLi4KPiA+Cj4gPiBBZnRlcjoKPiA+ID0+IG1kLmwgMHgyNjA0YjM5OAo+
ID4gMjYwNGIzOTg6IDAwMDAwMDExIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAuLi4uLi4u
Li4uLi4uLi4uCj4gPiA8IC4uLiBzbmlwIC4uLj4KPiA+ID0+IHVmcyBpbml0Cj4gPiB1ZnNoY2Qt
cm9ja2NoaXAgdWZzaGNAMmEyZDAwMDA6IFtSWCwgVFhdOiBnZWFyPVszLCAzXSwgbGFuZVsyLCAy
XSwgcHdyW0ZBU1RBVVRPX01PREUsIEZBU1RBVVRPX01PREVdLCByYXRlID0gMgo+ID4gPT4gbWQu
bCAweDI2MDRiMzk4Cj4gPiAyNjA0YjM5ODogMDAwMDAwMTAgMDAwMDAwMDAgMDAwMDAwMDAgMDAw
MDAwMDAgIC4uLi4uLi4uLi4uLi4uLi4KPiA+Cj4gPiAoMHgyNjA0YjM5OCBpcyB0aGUgcmVzcGVj
dGl2ZSBwaW4gbXV4IHJlZ2lzdGVyLCB3aXRoIGl0cyBCSVQwIGRyaXZpbmcgdGhlCj4gPiBtb2Rl
IG9mIFVGU19SU1Q6IHVuc2V0ID0gR1BJTywgc2V0ID0gaGFyZHdhcmUgY29udHJvbGxlZCBVRlNf
UlNUKQo+ID4KPiA+IFRoaXMgaGVscHMgZW5zdXJlIHRoYXQgR1BJTy1kcml2ZW4gZGV2aWNlIHJl
c2V0IGFjdHVhbGx5IGZpcmVzIHdoZW4gdGhlCj4gPiBzeXN0ZW0gcmVxdWVzdHMgaXQsIG5vdCB3
aGVuIHdoYXRldmVyIGJsYWNrIGJveCBtYWdpYyBpbnNpZGUgdGhlIFVGU0hDCj4gPiBkZWNpZGVz
IHRvIHJlc2V0IHRoZSBmbGFzaCBjaGlwLgo+ID4KPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnCj4gPiBGaXhlczogYzc1ZTVlMDEwZmVmICgic2NzaTogYXJtNjQ6IGR0czogcm9ja2NoaXA6
IEFkZCBVRlMgc3VwcG9ydCBmb3IgUkszNTc2IFNvQyIpCj4gPiBSZXBvcnRlZC1ieTogUXVlbnRp
biBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KPiA+IFNpZ25lZC1vZmYtYnk6IEFs
ZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gVGhpcyBoYXMgb3Jp
Z2luYWxseSBzdXJmYWNlZCBkdXJpbmcgdGhlIHJldmlldyBvZiBVRlMgcGF0Y2hlcyBmb3IgVS1i
b290Cj4gPiBhdCBbMV0sIHdoZXJlIGl0IHdhcyBmb3VuZCB0aGF0IHRoZSBVRlMgcmVzZXQgbGlu
ZSBpcyBub3QgcmVxdWVzdGVkIHRvIGJlCj4gPiBjb25maWd1cmVkIGFzIEdQSU8gYnV0IHVzZWQg
YXMgc3VjaC4gVGhpcyBsZWFkcyBpbiBzb21lIGNhc2VzIHRvIHRoZSBVRlMKPiA+IGRyaXZlciBh
cHBlYXJpbmcgdG8gY29udHJvbCBkZXZpY2UgcmVzZXRzLCB3aGlsZSBpbiBmYWN0IGl0IGlzIHRo
ZQo+ID4gaW50ZXJuYWwgY29udHJvbGxlciBsb2dpYyB0aGF0IGRyaXZlcyB0aGUgcmVzZXQgbGlu
ZSAocGVyaGFwcyBpbgo+ID4gdW5leHBlY3RlZCB3YXlzKS4KPiA+Cj4gPiBUaGFua3MgUXVlbnRp
biBTY2h1bHogZm9yIHNwb3R0aW5nIHRoaXMgaXNzdWUuCj4gPgo+ID4gWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3UtYm9vdC8yNTlmYzM1OC1mNzJiLTRhMjQtOWE3MS1hZDkwZjIwODEzMzVA
Y2hlcnJ5LmRlLwo+ID4gLS0tCj4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTc2LXBpbmN0cmwuZHRzaSB8IDcgKysrKysrKwo+ID4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU3Ni5kdHNpICAgICAgICAgfCAyICstCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LXBpbmN0cmwuZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LXBpbmN0cmwuZHRzaQo+ID4gaW5kZXggMGIwODUxYTdl
NGVhLi4yMGNmZDMzOTNhNzUgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU3Ni1waW5jdHJsLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTc2LXBpbmN0cmwuZHRzaQo+ID4gQEAgLTUyMjgsNiArNTIyOCwxMyBAQCB1
ZnNfcnN0OiB1ZnMtcnN0IHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIHVm
c19yc3RuICovCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8NCBSS19QRDAgMSAm
cGNmZ19wdWxsX25vbmU+Owo+ID4gICAgICAgICAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAg
ICAgICAvb21pdC1pZi1uby1yZWYvCj4gPiArICAgICAgICAgICAgIHVmc19yc3RfZ3BpbzogdWZz
LXJzdC1ncGlvIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIHVmc19yc3RuICovCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA8NCBSS19QRDAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxf
bm9uZT47Cj4KPiBUaGUgU29DIGRlZmF1bHQgaXMgcHVsbC1kb3duIGFjY29yZGluZyB0byB0aGUg
VFJNLiBDYW4geW91IGNoZWNrIHBsZWFzZT8KPiBGb3IgZXhhbXBsZSwgdGhlIFJvY2sgNEQgZG9l
c24ndCBzZWVtIHRvIGhhdmUgYSBoYXJkd2FyZSBwdWxsLXVwIG9yCj4gcHVsbC1kb3duIG9uIHRo
ZSBsaW5lIGFuZCB0aGUgVUZTIG1vZHVsZSBvbmx5IHNlZW1zIHRvIGhhdmUgYSBkZWJvdW5jZXIK
PiAoY2FwYWNpdG9yIGJldHdlZW4gdGhlIGxpbmUgYW5kIGdyb3VuZCkuIFNvIGV4Y2VwdCBpZiB0
aGUgY2hpcCBpdHNlbGYKPiBoYXMgYSBQVS9QRCwgdGhpcyBtYXkgYmUgYW4gaXNzdWU/CgpUaGUg
U29DIGRlZmF1bHQgaXMgaW5kZWVkIHB1bGwtZG93biAoYXMgc3RhdGVkIGJvdGggaW4gdGhlIFRS
TSBhbmQgaW4KdGhlIHJlZmVyZW5jZSBzY2hlbWF0aWMgZnJvbSBSSzM1NzYgRVZCMSkuIFdoaWNo
IEkgYmVsaWV2ZSBtZWFucyB0aGF0CnRoZSBhdHRhY2hlZCBkZXZpY2Ugc2hvdWxkIGJlIGhlbGQg
aW4gYSByZXNldCBzdGF0ZSB1bnRpbCB0aGUgZHJpdmVyCnRha2VzIG92ZXIgdGhlIGNvbnRyb2wg
b2YgdGhlIEdQSU8gbGluZSAod2hpY2gsIGluIHR1cm4sIGlzIGNvbnNpc3RlbnQKd2l0aCB0aGUg
b2JzZXJ2ZWQgYmVoYXZpb3Igd2hlbiByZXNldCBoYW5kbGluZyBpcyBub3QgZW5hYmxlZCBpbiB0
aGUKZHJpdmVyIGJ1dCB0aGUgcmVzZXQgcGluIGlzIGluIEdQSU8gbW9kZSkuCgpBcmUgeW91IGNv
bmNlcm5lZCB0aGF0IHRoZSBjaGlwIG1pZ2h0IHVuaW50ZW50aW9uYWxseSBnbyBpbiBvciBvdXQg
b2YKcmVzZXQgYmV0d2VlbiB0aGUgbW9tZW50IHRoZSBwaW5jdHJsIHN1YnN5c3RlbSBjbGFpbXMg
dGhlIHBpbiBhbmQgdGhlCm1vbWVudCB0aGUgZHJpdmVyIHN0YXJ0cyBvdXRwdXR0aW5nIGEgc3Rh
dGUgaXQgZGVzaXJlcz8gVGhpcyBoYXNuJ3QKY2F1c2VkIGFueSBvYnNlcnZhYmxlIGlzc3VlcyBp
biBteSB0ZXN0aW5nLCBidXQgSSBndWVzcyB3ZSBjb3VsZApleHBsaWNpdGx5IHNldCBpdCB0byAm
cGNmZ19wdWxsX2Rvd24gZm9yIG1vcmUgcHJlZGljdGFibGUgYmVoYXZpb3IgaW4KbGluZSB3aXRo
IHdoYXQncyBwcmludGVkIG9uIHRoZSBzY2hlbWF0aWMuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
