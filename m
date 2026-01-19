Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D937D29C2A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 14:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMnZ+dmIlCLYhzNftG2fTixVHUbXwqTKBNGmCP4b6HU=; b=Rdpn97hr72r0Qg
	LmteY+Sb+x7Tjq7yvQI6jqLir3n2BhEhurXeOdwzI6JW3ZO35ssP9UUhUGPG8WhaJ5+X1y3Vq9ZiH
	0VvGwDN3/w/RA+pIOaqAMSagK7252WGlRNUaxmtSbtGT/j3w4KedAufdGmYOiEl+fzkhxX4bGAVQS
	etQK/dEpCZztUmnJAMZ4QtRrs+dX7kHs0XriVVwRQ5yQQE0/mxCydk85sbW22tOMyETVnndJqqCoR
	mD4+pHp14jUMJYxK3v9Ikk7LdbAyctlqVkv+dhUPF+2PjL82zMmZ6SKtWjMyscEDh+kDlMAmEXoK4
	Ec9MlVFe9rYR5GaM3SKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpsq-00000002Dj3-2qHi;
	Mon, 19 Jan 2026 14:05:33 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpsk-00000002Dh2-0VEM
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 14:05:28 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-8c5265d06c3so529558485a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 06:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768831525; x=1769436325; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hF78wptD7ld1V2LGnCYp+bLK7K2nBtHmiHSnMfpqB8c=;
        b=YZgBnK9ThIsjaqlWNtoBv6BwfPJB/Hup4s/o9xHcl2K7BDoWqZ9EUa7I5MFmzhoZz7
         egos695nFIPGQx+yfnOXmR8C46KO+zdvAYy2noOkdFzyaZtl3Q9rAYkT436mQabWM88K
         MY2GkTuRhUqg+TG6Qypb7bHUyNYVF73BHST5RsrhYMjwM0lEbpJ/P0YjVq3gBb3T0l0B
         mvvA0tUMaDPXkB7R2UFkmBrfFrLCgzg+zxUdkkvuFBOtkPeXCzZcaAHog/g+cHz2s0DT
         LuXTtvw2slQP41FbBCu24NwWdZ2K2RU9Ue7PCVeTOUD8HMlZ8HqWdece0OrAVRqRclos
         49wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768831525; x=1769436325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hF78wptD7ld1V2LGnCYp+bLK7K2nBtHmiHSnMfpqB8c=;
        b=DwT+kR+NqDqLIW9OT+zxsiF+FJmRCupsdaRLSA0wGeSJNmLtLgTgqZAIynJbzMUBg1
         ZLCIr9v+H3K1nxUB6GKGHk9o9+QsZoHD+lJkdxhixm1c4zotX7daHAZmr2v3Zm4VjyfM
         pbsmzlbE490hEZJdG53AuQHvVouPmdQ1kgJtkiIOwFxN7iQF24oZWwNgtsNDXyN1fN4Z
         ReR5c3O9w8XU4y9IR8zHWb/rlp9sk0ZiRQbKN+Qv/E6WM4Hz6jWbVGn/2tk6qYXumjhe
         WiCmOGDg+8X8B2uEJGIhixv3WAAlXBqqwGSC0jyMaKlPy4qOEO6VouagMw8NFJWagJII
         /x9A==
X-Forwarded-Encrypted: i=1; AJvYcCX6oD7jsQU6TyQn1p89RzjPLaEG3hWKH0WLxIz1jxu+pvOlFI2R/IhPmhUnIZlUb3xvGthPad7Sm0eLpvp2ug==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHQX3C+jDUAL01yHuBDxz/6C//ZvG2iNCp8RuKNuyrnLGnKPRS
	omKviDqCNuaOt8HVSFORIJvXMD2K8bhiq2LAm5gN/AknY4hYtK602iJwmVphbxLQqbtaMk8w0tj
	W6wT7GVjJo6hc7DjafGmagJqfpXxJkfI=
X-Gm-Gg: AY/fxX7e/zNFep4AdBa8HMYcjaHgdpxoztQg/P79Hgld0NwMeWQSKzKDUqN86XZLSx1
	fU1GDEi5MeCDFCjzBZhG2DHr5cRUYK4EGHIYqHwDNJGhcpQAJWBVeeU5TICHOslkxjOhjlloNLf
	TIlSC7hABw5MOIE9wZpnHZ1TekTiib+MvUGkgP2He9pWzaBIOeIygIm9gaZkix2vAnJwsjvsUNo
	xUtLevEjaQOY/x4PFTomBMP8W9kNEgWbL/IQbpP0rqIyL7SChQcST7ZQPGwWLenZq/JHDOhBhmI
	6Cz7xtlxv5UYj9WBMJRd6kZmx5s=
X-Received: by 2002:ac8:7f54:0:b0:4f1:de87:ad90 with SMTP id
 d75a77b69052e-501982dcb8bmr201855631cf.4.1768831524345; Mon, 19 Jan 2026
 06:05:24 -0800 (PST)
MIME-Version: 1.0
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com> <b0904cb5-3659-41cc-8395-79eec9e82f01@cherry.de>
 <CABjd4YzJud4ZZQ_GrOOSnfEVG7wgHmPSf9w8oQhLVSx6WXgN5A@mail.gmail.com> <d3b5f622-36ec-42ea-90da-3c056e1b6461@cherry.de>
In-Reply-To: <d3b5f622-36ec-42ea-90da-3c056e1b6461@cherry.de>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 19 Jan 2026 18:05:16 +0400
X-Gm-Features: AZwV_QjYhPBrmB-HzyDxfoEaeqoxWE1URl6xYqQ4XwLXLh3YQ3UlufJql0dky0Q
Message-ID: <CABjd4YympEqbiN9-Kwv40YtaCh6bu=3PBQPyvvGgKCQbLeZmZw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_060526_850967_A9991FFD 
X-CRM114-Status: GOOD (  43.93  )
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

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgNTo1OOKAr1BNIFF1ZW50aW4gU2NodWx6IDxxdWVudGlu
LnNjaHVsekBjaGVycnkuZGU+IHdyb3RlOgo+Cj4gSGkgQWxleGV5LAo+Cj4gT24gMS8xOS8yNiAy
OjQzIFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IEhpIFF1ZW50aW4sCj4gPgo+ID4gT24g
TW9uLCBKYW4gMTksIDIwMjYgYXQgMzowOOKAr1BNIFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNj
aHVsekBjaGVycnkuZGU+IHdyb3RlOgo+ID4+Cj4gPj4gSGkgQWxleGV5LAo+ID4+Cj4gPj4gT24g
MS8xOS8yNiAxMDoyMiBBTSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPj4+IFJvY2tjaGlwIFJL
MzU3NiBVRlMgY29udHJvbGxlciB1c2VzIGEgZGVkaWNhdGVkIHBpbiB0byByZXNldCB0aGUgY29u
bmVjdGVkCj4gPj4+IFVGUyBkZXZpY2UsIHdoaWNoIGNhbiBvcGVyYXRlIGVpdGhlciBpbiBhIGhh
cmR3YXJlIGNvbnRyb2xsZWQgbW9kZSBvciBhcyBhCj4gPj4+IEdQSU8gcGluLgo+ID4+Pgo+ID4+
PiBQb3dlci1vbiBkZWZhdWx0IGlzIEdQSU8gbW9kZSwgYnV0IHRoZSBib290IFJPTSByZWNvbmZp
Z3VyZXMgaXQgdG8gYQo+ID4+PiBoYXJkd2FyZSBjb250cm9sbGVkIG1vZGUgaWYgaXQgdXNlcyBV
RlMgdG8gbG9hZCB0aGUgbmV4dCBib290IHN0YWdlLgo+ID4+Pgo+ID4+PiBHaXZlbiB0aGF0IGV4
aXN0aW5nIGJpbmRpbmdzIChhbmQgcmszNTc2LmR0c2kpIGV4cGVjdCBhIEdQSU8tY29udHJvbGxl
ZAo+ID4+PiBkZXZpY2UgcmVzZXQsIHJlcXVlc3QgdGhlIHJlcXVpcmVkIHBpbiBjb25maWcgZXhw
bGljaXRseS4KPiA+Pj4KPiA+Pj4gVGhpcyBkb2Vzbid0IGFwcGVhciB0byBhZmZlY3QgTGludXgs
IGJ1dCBpdCBkb2VzIGFmZmVjdCBVLWJvb3Q6Cj4gPj4+Cj4gPj4+IEJlZm9yZToKPiA+Pj4gPT4g
bWQubCAweDI2MDRiMzk4Cj4gPj4+IDI2MDRiMzk4OiAwMDAwMDAxMSAwMDAwMDAwMCAwMDAwMDAw
MCAwMDAwMDAwMCAgLi4uLi4uLi4uLi4uLi4uLgo+ID4+PiA8IC4uLiBzbmlwIC4uLiA+Cj4gPj4+
ID0+IHVmcyBpbml0Cj4gPj4+IHVmc2hjZC1yb2NrY2hpcCB1ZnNoY0AyYTJkMDAwMDogW1JYLCBU
WF06IGdlYXI9WzMsIDNdLCBsYW5lWzIsIDJdLCBwd3JbRkFTVEFVVE9fTU9ERSwgRkFTVEFVVE9f
TU9ERV0sIHJhdGUgPSAyCj4gPj4+ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4+PiAyNjA0YjM5ODog
MDAwMDAwMTEgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgIC4uLi4uLi4uLi4uLi4uLi4KPiA+
Pj4KPiA+Pj4gQWZ0ZXI6Cj4gPj4+ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4+PiAyNjA0YjM5ODog
MDAwMDAwMTEgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgIC4uLi4uLi4uLi4uLi4uLi4KPiA+
Pj4gPCAuLi4gc25pcCAuLi4+Cj4gPj4+ID0+IHVmcyBpbml0Cj4gPj4+IHVmc2hjZC1yb2NrY2hp
cCB1ZnNoY0AyYTJkMDAwMDogW1JYLCBUWF06IGdlYXI9WzMsIDNdLCBsYW5lWzIsIDJdLCBwd3Jb
RkFTVEFVVE9fTU9ERSwgRkFTVEFVVE9fTU9ERV0sIHJhdGUgPSAyCj4gPj4+ID0+IG1kLmwgMHgy
NjA0YjM5OAo+ID4+PiAyNjA0YjM5ODogMDAwMDAwMTAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAw
MDAgIC4uLi4uLi4uLi4uLi4uLi4KPiA+Pj4KPiA+Pj4gKDB4MjYwNGIzOTggaXMgdGhlIHJlc3Bl
Y3RpdmUgcGluIG11eCByZWdpc3Rlciwgd2l0aCBpdHMgQklUMCBkcml2aW5nIHRoZQo+ID4+PiBt
b2RlIG9mIFVGU19SU1Q6IHVuc2V0ID0gR1BJTywgc2V0ID0gaGFyZHdhcmUgY29udHJvbGxlZCBV
RlNfUlNUKQo+ID4+Pgo+ID4+PiBUaGlzIGhlbHBzIGVuc3VyZSB0aGF0IEdQSU8tZHJpdmVuIGRl
dmljZSByZXNldCBhY3R1YWxseSBmaXJlcyB3aGVuIHRoZQo+ID4+PiBzeXN0ZW0gcmVxdWVzdHMg
aXQsIG5vdCB3aGVuIHdoYXRldmVyIGJsYWNrIGJveCBtYWdpYyBpbnNpZGUgdGhlIFVGU0hDCj4g
Pj4+IGRlY2lkZXMgdG8gcmVzZXQgdGhlIGZsYXNoIGNoaXAuCj4gPj4+Cj4gPj4+IENjOiBzdGFi
bGVAdmdlci5rZXJuZWwub3JnCj4gPj4+IEZpeGVzOiBjNzVlNWUwMTBmZWYgKCJzY3NpOiBhcm02
NDogZHRzOiByb2NrY2hpcDogQWRkIFVGUyBzdXBwb3J0IGZvciBSSzM1NzYgU29DIikKPiA+Pj4g
UmVwb3J0ZWQtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4g
Pj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+
Pj4gLS0tCj4gPj4+IFRoaXMgaGFzIG9yaWdpbmFsbHkgc3VyZmFjZWQgZHVyaW5nIHRoZSByZXZp
ZXcgb2YgVUZTIHBhdGNoZXMgZm9yIFUtYm9vdAo+ID4+PiBhdCBbMV0sIHdoZXJlIGl0IHdhcyBm
b3VuZCB0aGF0IHRoZSBVRlMgcmVzZXQgbGluZSBpcyBub3QgcmVxdWVzdGVkIHRvIGJlCj4gPj4+
IGNvbmZpZ3VyZWQgYXMgR1BJTyBidXQgdXNlZCBhcyBzdWNoLiBUaGlzIGxlYWRzIGluIHNvbWUg
Y2FzZXMgdG8gdGhlIFVGUwo+ID4+PiBkcml2ZXIgYXBwZWFyaW5nIHRvIGNvbnRyb2wgZGV2aWNl
IHJlc2V0cywgd2hpbGUgaW4gZmFjdCBpdCBpcyB0aGUKPiA+Pj4gaW50ZXJuYWwgY29udHJvbGxl
ciBsb2dpYyB0aGF0IGRyaXZlcyB0aGUgcmVzZXQgbGluZSAocGVyaGFwcyBpbgo+ID4+PiB1bmV4
cGVjdGVkIHdheXMpLgo+ID4+Pgo+ID4+PiBUaGFua3MgUXVlbnRpbiBTY2h1bHogZm9yIHNwb3R0
aW5nIHRoaXMgaXNzdWUuCj4gPj4+Cj4gPj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy91
LWJvb3QvMjU5ZmMzNTgtZjcyYi00YTI0LTlhNzEtYWQ5MGYyMDgxMzM1QGNoZXJyeS5kZS8KPiA+
Pj4gLS0tCj4gPj4+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LXBpbmN0
cmwuZHRzaSB8IDcgKysrKysrKwo+ID4+PiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU3Ni5kdHNpICAgICAgICAgfCAyICstCj4gPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1waW5jdHJsLmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1waW5jdHJsLmR0c2kKPiA+Pj4gaW5kZXggMGIwODUx
YTdlNGVhLi4yMGNmZDMzOTNhNzUgMTAwNjQ0Cj4gPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTc2LXBpbmN0cmwuZHRzaQo+ID4+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1waW5jdHJsLmR0c2kKPiA+Pj4gQEAgLTUyMjgsNiArNTIy
OCwxMyBAQCB1ZnNfcnN0OiB1ZnMtcnN0IHsKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC8qIHVmc19yc3RuICovCj4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8NCBSS19QRDAgMSAmcGNmZ19wdWxsX25vbmU+Owo+ID4+PiAgICAgICAgICAgICAgICB9Owo+
ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgL29taXQtaWYtbm8tcmVmLwo+ID4+PiArICAgICAg
ICAgICAgIHVmc19yc3RfZ3BpbzogdWZzLXJzdC1ncGlvIHsKPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgIHJvY2tjaGlwLHBpbnMgPQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAvKiB1ZnNfcnN0biAqLwo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8NCBS
S19QRDAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gPj4KPiA+PiBUaGUgU29DIGRl
ZmF1bHQgaXMgcHVsbC1kb3duIGFjY29yZGluZyB0byB0aGUgVFJNLiBDYW4geW91IGNoZWNrIHBs
ZWFzZT8KPiA+PiBGb3IgZXhhbXBsZSwgdGhlIFJvY2sgNEQgZG9lc24ndCBzZWVtIHRvIGhhdmUg
YSBoYXJkd2FyZSBwdWxsLXVwIG9yCj4gPj4gcHVsbC1kb3duIG9uIHRoZSBsaW5lIGFuZCB0aGUg
VUZTIG1vZHVsZSBvbmx5IHNlZW1zIHRvIGhhdmUgYSBkZWJvdW5jZXIKPiA+PiAoY2FwYWNpdG9y
IGJldHdlZW4gdGhlIGxpbmUgYW5kIGdyb3VuZCkuIFNvIGV4Y2VwdCBpZiB0aGUgY2hpcCBpdHNl
bGYKPiA+PiBoYXMgYSBQVS9QRCwgdGhpcyBtYXkgYmUgYW4gaXNzdWU/Cj4gPgo+ID4gVGhlIFNv
QyBkZWZhdWx0IGlzIGluZGVlZCBwdWxsLWRvd24gKGFzIHN0YXRlZCBib3RoIGluIHRoZSBUUk0g
YW5kIGluCj4gPiB0aGUgcmVmZXJlbmNlIHNjaGVtYXRpYyBmcm9tIFJLMzU3NiBFVkIxKS4gV2hp
Y2ggSSBiZWxpZXZlIG1lYW5zIHRoYXQKPiA+IHRoZSBhdHRhY2hlZCBkZXZpY2Ugc2hvdWxkIGJl
IGhlbGQgaW4gYSByZXNldCBzdGF0ZSB1bnRpbCB0aGUgZHJpdmVyCj4gPiB0YWtlcyBvdmVyIHRo
ZSBjb250cm9sIG9mIHRoZSBHUElPIGxpbmUgKHdoaWNoLCBpbiB0dXJuLCBpcyBjb25zaXN0ZW50
Cj4gPiB3aXRoIHRoZSBvYnNlcnZlZCBiZWhhdmlvciB3aGVuIHJlc2V0IGhhbmRsaW5nIGlzIG5v
dCBlbmFibGVkIGluIHRoZQo+ID4gZHJpdmVyIGJ1dCB0aGUgcmVzZXQgcGluIGlzIGluIEdQSU8g
bW9kZSkuCj4gPgo+ID4gQXJlIHlvdSBjb25jZXJuZWQgdGhhdCB0aGUgY2hpcCBtaWdodCB1bmlu
dGVudGlvbmFsbHkgZ28gaW4gb3Igb3V0IG9mCj4gPiByZXNldCBiZXR3ZWVuIHRoZSBtb21lbnQg
dGhlIHBpbmN0cmwgc3Vic3lzdGVtIGNsYWltcyB0aGUgcGluIGFuZCB0aGUKPiA+IG1vbWVudCB0
aGUgZHJpdmVyIHN0YXJ0cyBvdXRwdXR0aW5nIGEgc3RhdGUgaXQgZGVzaXJlcz8gVGhpcyBoYXNu
J3QKPgo+IEV4YWN0bHkgdGhhdC4KPgo+IEltYWdpbmUgZm9yIHNvbWUgcmVhc29uIHRoZSBkcml2
ZXIgRVBST0JFX0RFRkVSLCB0aGVyZSBjYW4gYmUgYSBsb3Qgb2YKPiB0aW1lIGJldHdlZW4gdGhl
IG9yaWdpbmFsIHBpbmNvbmYvcGlubXV4IGFuZCB0aGUgdGltZSB0aGUgR1BJTyBpcwo+IGFjdHVh
bGx5IGRyaXZlbi4KPgo+IEF0IHRoZSBzYW1lIHRpbWUuLiBJIGd1ZXNzIGl0IG1heSBub3QgbWF0
dGVyIG11Y2ggaWYgdGhlIFVGUyBjaGlwIGdldHMKPiBvdXQgb2YgcmVzZXQgdGVtcG9yYXJpbHkg
YXMgKEkgYXNzdW1lKSB3aGVuIHRoZSBVRlMgY29udHJvbGxlciBwcm9iZXMKPiBwcm9wZXJseSwg
aXQnbGwgZG8gYSBmdWxsIHJlc2V0IG9mIHRoZSBVRlMgY2hpcCB2aWEgdGhlIHJlc2V0IEdQSU8u
Cj4gRG9uJ3Qga25vdyBhbnl0aGluZyBhYm91dCBVRlMsIHNvIG1heWJlIHRoZXJlIGNvdWxkIGJl
IGRhbWFnZSBpZiB0aGUgVUZTCj4gY2hpcCBnZXRzIG91dCBvZiByZXNldCBpZiBpdHMgc3VwcGxp
ZXMgb3IgSU8gbGluZXMgYXJlIGluIGFuIGlsbGVnYWwgc3RhdGU/Cj4KPiA+IGNhdXNlZCBhbnkg
b2JzZXJ2YWJsZSBpc3N1ZXMgaW4gbXkgdGVzdGluZywgYnV0IEkgZ3Vlc3Mgd2UgY291bGQKPiA+
IGV4cGxpY2l0bHkgc2V0IGl0IHRvICZwY2ZnX3B1bGxfZG93biBmb3IgbW9yZSBwcmVkaWN0YWJs
ZSBiZWhhdmlvciBpbgo+ID4gbGluZSB3aXRoIHdoYXQncyBwcmludGVkIG9uIHRoZSBzY2hlbWF0
aWMuCj4gPgo+Cj4gcy9zY2hlbWF0aWNzL1RSTS8KPgo+IEknbGwgbGV0IEhlaWtvIGRlY2lkZSBi
dXQgSSB3b3VsZCBwZXJzb25hbGx5IGdvIGZvciBhIFBEIHRvIG1hdGNoIHRoZQo+IGRlZmF1bHQg
c3RhdGUgb2YgdGhlIFNvQyBhY2NvcmRpbmcgdG8gdGhlIFRSTS4KCkhhcHB5IHRvIG1ha2UgYSB2
MiB3aXRoIGFuIGV4cGxpY2l0IHB1bGwtZG93bi4gV2lsbCB3YWl0IGEgYml0IGZvciBhbnkKb3Ro
ZXIgcG90ZW50aWFsIGZlZWRiYWNrIHRob3VnaC4KClRoYW5rcyBhIGxvdCwKQWxleGV5CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
