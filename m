Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0428606A335
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 02:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iHEs5Vdv;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=i0tdbp/K
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tPCktQKWQKdjLhRzhDNGlJEVB/yfdJmNEr5DobpbBQ8=; b=iHEs5Vdv5ZSMmcYlaoSyuBmB0C
	F44spTox7PsAijSNStlsONxI4hQGx+pRO2ZWMTVm++WyNZ4EKv+4NSQCPAYxQBzgRj02/3BNG47df
	bY/dp9CjvxBSWGFmSYekuHfGlx1mkEWAaDavxfO5pqqh6Sd1q4dCQFIY7fEIZ19QCFWLKPeHSlze5
	7PLWZ5EwSXke7RPzVqBg9hzoku8DZiNzI/q4bEKOhe/lOIe2SfPWWHBtfwjDAInGss1M4PRJLIY83
	O94kkLvCwAeoIUfhePGW6qa6UPtJpKIy2E/nWIlua4W/9q/m/WCfKvvw9NwWuRoQA/PaabLdub4pY
	miErSiJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRgoy-0000000BU0L-20UO;
	Fri, 13 Nov 2026 02:15:20 +0000
Received: from mail-m1044.netease.com ([154.81.10.44])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRgou-0000000BTzG-2hG5;
	Fri, 13 Nov 2026 02:15:19 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 54857d4c9;
	Fri, 13 Nov 2026 10:15:12 +0800 (GMT+08:00)
Message-ID: <b961a36f-e7ef-498c-ac4d-efe90f76e289@rock-chips.com>
Date: Fri, 13 Nov 2026 10:15:09 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Describe the Type-C port on RK3576
 EVB1
To: Alexey Charkov <alchark@flipper.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261106-rk3576-evb1-husb311-v1-1-99c2f57ea2a5@flipper.net>
 <dd59d491-82b0-4047-ae98-f8070f6be112@rock-chips.com>
 <CAKTNdwHbxnknob9NdjqWUcGU2fURO5B7V4kTTK+fvEYjNDOLCA@mail.gmail.com>
 <dd25880e-be2d-4adc-8384-fa4a7160a4df@rock-chips.com>
 <CAKTNdwGHS5M4yNKEqfKV8hEJRAYf3wnY1Z6jOWQx7e4cipTF9A@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAKTNdwGHS5M4yNKEqfKV8hEJRAYf3wnY1Z6jOWQx7e4cipTF9A@mail.gmail.com>
X-HM-Tid: 0aa1d2b0016003a7kunmdd9bb254ad509
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGhlMVhgYSBhLSktOGhhDT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=i0tdbp/Kds+rR0Vm/TwItaI+X9++Dl3d3CwCBEFhKDTwiVN2vyiHG5m6TEngBlzppXetupZmxmqDOdz8y12q3NvIHKrGYg8GNBBJxV2g3TNRRBC6SrxEE21pZ9V3lkPpfgwQQjmRPHxETdKlSsbiocadM+SWMj27RiYnYsfFObw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=1GtwLE2dW7ZsjXW/2HfhRMJDb/gDxI8w5UnCKK1RLMU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_181517_310884_C59955E6 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMTIvMjAyNiA5OjI1IFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiBPbiBUaHUsIE5v
diAxMiwgMjAyNiBhdCA1OjAx4oCvQU0gQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hp
cHMuY29tPiB3cm90ZToKPj4KPj4gSGkgQWxleGV5LAo+Pgo+PiBPbiAxMS8xMS8yMDI2IDY6NDUg
UE0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+Pj4gSGkgQ2hhb3lpLAo+Pj4KPj4+IE9uIFdlZCwg
Tm92IDExLCAyMDI2IGF0IDE6MzHigK9QTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1j
aGlwcy5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gSGkgQWxleGV5LAo+Pj4+Cj4+Pj4gT24gMTEvNy8y
MDI2IDE6NTIgQU0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+Pj4+PiBSSzM1NzYgRVZCMSBoYXMg
aXRzIFVTQkRQIFBIWSByb3V0ZWQgdG8gYSBUeXBlLUMgcG9ydCB3aXRoIGEgSFVTQjMxMSBDQwo+
Pj4+PiBjb250cm9sbGVyIGFuZCBhIGZpeGVkLXZvbHRhZ2UgVkJVUyBzdXBwbHkuCj4+Pj4+Cj4+
Pj4+IERlc2NyaWJlIGl0IGluIHRoZSBkZXZpY2UgdHJlZSwgaW5jbHVkaW5nIHRoZSB3aXJpbmcg
Zm9yIGJvdGggdGhlIFVTQiBhbmQKPj4+Pj4gdGhlIERQIHNpZGUuCj4+Pj4+Cj4+Pj4+IFRoaXMg
bWFrZXMgdGhlIGRhdGEgcm9sZXMgZm9sbG93IHRoZSBUeXBlLUMgcG9ydCdzIG5lZ290aWF0aW9u
LCBzbyB0aGUKPj4+Pj4gcG9ydCBzdG9wcyBiZWluZyBob3N0IG9ubHkuIEl0IGFsc28gbGVhdmVz
IHRoZSBWQlVTIHJlZ3VsYXRvciB0byBiZQo+Pj4+PiBtYW5hZ2VkIGJ5IFRDUE0gaW5zdGVhZCBv
ZiBiZWluZyBoYXJkd2lyZWQgdmlhIHRoZSB0YW5nZW50aWFsbHkgcmVsYXRlZAo+Pj4+PiBwaHkt
c3VwcGx5IG9uIGEgVVNCIGNvbnRyb2xsZXIuIERQIGxhbmVzIGFyZSBhbHNvIG11eGVkIGR5bmFt
aWNhbGx5IGJ5Cj4+Pj4+IHRoZSBVU0JEUCBQSFkgYmFzZWQgb24gdGhlIFR5cGUtQyBwb3J0J3Mg
bmVnb3RpYXRpb24sIHNvIHRoZSBoYWNreSBmaXhlZAo+Pj4+PiBsYW5lIG11eGluZyBhbHNvIGdv
ZXMgYXdheS4KPj4+Pj4KPj4+Pgo+Pj4+IEhhdmUgeW91IHRlc3RlZCB0aGlzPyBBcyBmYXIgYXMg
SSBrbm93LCBkdy1kcCBkcml2ZXIgZG9lcyBub3Qgc3VwcG9ydAo+Pj4+IFR5cGUtQyBIUEQgeWV0
Lgo+Pj4KPj4+IEkgZGlkIC0gaXQgd29ya3MgZmluZSBmb3IgbWUgdW5kZXIgTGludXggd2l0aCBT
ZWJhc3RpYW4ncyBwYXRjaGVzLiBNeQo+Pj4gcHJpbWFyeSBtb3RpdmF0aW9uLCBob3dldmVyLCB3
YXMgVS1Cb290LCB3aGVyZSB0aGUgY3VycmVudCBwaHktc3VwcGx5Cj4+PiBoYWNrIGJyZWFrcyBV
U0IgZGF0YSByb2xlIHN3aXRjaGluZywgZHVlIHRvIFZCVVMgYmVpbmcgZm9yY2VkCj4+PiBhbHdh
eXMtb24uIFdpdGggdGhpcyBwYXRjaCBpdCB3b3JrcywgYW5kIG5vdyB0aGUgRFQgYWN0dWFsbHkg
ZGVzY3JpYmVzCj4+PiB0aGUgaGFyZHdhcmUsIGFzIGl0IGlzIHN1cHBvc2VkIHRvLgo+Pj4KPj4K
Pj4gT2gsIEkgYWxtb3N0IGZvcmdvdCBhYm91dCB0aGF0LiBJIHRoaW5rIGl0IHNob3VsZCBiZSB0
aGlzIHBhdGNoIHNlcmllc1swXSwgcmlnaHQ/Cj4+Cj4+IEJ1dCBJIHRoaW5rIHdlIHByb2JhYmx5
IG5lZWQgbW9yZSB0aGFuIGp1c3QgdGhpcyBzZXJpZXMsIGJlY2F1c2UKPj4gcmljaHRlayxydDE3
MTFoIGRvZXMgbm90IHJlZ2lzdGVyIHRoZSBIUEQgYnJpZGdlLCBzbyB3ZSB3aWxsIGdldCB0aGlz
Ogo+Pgo+PiBbICAgMTQuODI4OTgzXSBhdXhpbGlhcnkgYXV4X2JyaWRnZS5hdXhfYnJpZGdlLjA6
IGRlZmVycmVkIHByb2JlIHBlbmRpbmc6IGF1eF9icmlkZ2UuYXV4X2JyaWRnZTogZmFpbGVkIHRv
IGFjcXVpcmUgZHJtX2JyaWRnZQo+Pgo+PiBNYXliZSB5b3UgaGF2ZSBhbHJlYWR5IGFkZGVkIHRo
ZSBjb3JyZXNwb25kaW5nIHBhdGNoIHlvdXJzZWxmPwo+PiBBbm90aGVyIG9wdGlvbiBpcyB0byB1
c2UgdGhlIGdlbmVyaWMgQVVYIEhQRCBwYXRjaFsxXS4gOikKPj4KPj4gWzBdOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDgwNi1zeW5vcHN5cy1kdy1kcC1pbXBy
b3ZlbWVudHMtdjExLTAtMGQ1MDg1MDVmMzgzQGNvbGxhYm9yYS5jb20vCj4+IFsxXTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMDIwMDcyODE2LjE4MC0xLWtlcm5lbEBhaXJreWku
Y29tLwo+IAo+IFllcywgb24gbXkgZGFpbHktdXNlIGJyYW5jaCBbMF0gSSd2ZSBnb3QgYSBsb2Nh
bCBjb21taXQgZW5hYmxpbmcgdGhlCj4gSFBEIGJyaWRnZSBzcGVjaWZpY2FsbHkgZm9yIFRDUENJ
ICg2OWI3YzgwNmIzMzQpLiBCdXQgdGhhdCdzIGFsbAo+IGRyaXZlciB0ZXJyaXRvcnksIHNvIG91
dCBvZiBzY29wZSBmb3IgRFQgZGlzY3Vzc2lvbiA7LSkKPiAKPiBbMF0gaHR0cHM6Ly9naXRodWIu
Y29tL2ZsaXBwZXJkZXZpY2VzL2ZsaXBwZXItbGludXgta2VybmVsCgpHcmVhdCEgQWxzbyB3b3Jr
ZWQgZm9yIG1lLgoKVGVzdGVkLWJ5OiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlw
cy5jb20+CgotLSAKQmVzdCwgCkNoYW95aQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
