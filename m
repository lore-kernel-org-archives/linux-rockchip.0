Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FEA606A31D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 22:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ooOdUQ+r;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=rojer.me header.i=@rojer.me header.a=rsa-sha256 header.s=main header.b=DHD9ZAWd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HPhZLDzIRBzOytOt/1Ov9uoys+7/8HUr+1iVEIyuHsQ=; b=ooOdUQ+rPR9d7fzr311q+Ops/i
	2RXldkzf2rpl1/1pKl72jo7LeZDUqhsdAtauNv7D5K2ml21IbuD4ShQINu9Z+GbggktgAJ51LegGK
	ypEzVsIYoJQlG85EQqNyFs9JULJelMi9GRl/rIBf3W4Y1QQTnu0FOCJzoPeAzdKhgZIZMQWcMK0IC
	wAo7vsyOKJ2GPwKIoPNxpO6ys0d/j6mn83CBDiiurs/fwk/Q5HOm0bzF1GPLA5oMHd91Sg4Hnrweg
	QqiFYzr4lE49EMbsJRfiUHB1FWSpwJwBEBxpQEbDOj2R9hHsk7vF51m7gufEHF36nJsEaEnWHsqdj
	kW1899ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLpNd-00000005pp8-17eB;
	Tue, 27 Oct 2026 22:10:53 +0000
Received: from mail1.rojer.cloud ([2a01:4f8:192:336a::3])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLpNZ-00000005poT-48S2
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 22:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rojer.me; s=main;
	t=1793139044; bh=y6y5Y1QJ5LEzAXEEvEIOfN3dlwUpLEs6mRHVPK5l9wg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=DHD9ZAWdlMQrJGsXgSieQctSZjGbLjRTJGVuKaqNRfbMCMG3hh7BaG3ujAOt5CEfy
	 6Yx+Uavjq6OBz6FGstPmMHXQAewNBlpl8KZRtPYX2IMICMnNneZaUJ3AyshZe7hinu
	 d+X1rVLIuWlG9SGFnyA+f1vcXMVyPz03vzAACuI91HjDAyA3yiPF2mHNvbObd0zwHT
	 iCZhx4XCyAGYgQqNvmOXXwKpvdKRzH3lRDb1OGldppCMx6+LLtygtUdGt1EybQAl1t
	 QnQG1aMA27CxJ48y4mDJ4b1jZg/O9HR5Dj972fCsNGj3jwEZtEEOnsbJJj/73HalDD
	 EC55j9EgERK3Q==
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (P-256) server-digest SHA256)
	(No client certificate requested)
	by mail1.rojer.cloud (Postfix) with ESMTPSA id A34E1127211
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 22:10:44 +0000 (UTC)
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-70b875f6f1fso309973eaf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 15:10:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBydQF8rc+JaSRX+xwnmCLKvJDzebDnaBa5uuyxJpOuIGLzffH972xV8ePfET9THMnY/AI4FDdhxVnJMlMS2vw==@lists.infradead.org
X-Gm-Message-State: AFq9FYL1ip/UF4sJ2JkgeLAtYOcOmYO9BmoEcph8ToGJju2Yf5cCIHin
	QpomVJX+72DCcocJN0KQDzq32lE8RrUrqX/URdyMAJF67rqBCSUDZTYwHJp5bU0GCD8e43NNWNI
	v/JbHwUEWLwT1JTr2PssLMqwmCgCQQA==
X-Received: by 2002:a05:6820:1c88:b0:70a:c89b:d12d with SMTP id
 006d021491bc7-713eaf5ad71mr348646eaf.11.1793139043070; Tue, 27 Oct 2026
 15:10:43 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261023235959.2988087-1-rojer@rojer.me> <20261023235959.2988087-3-rojer@rojer.me>
 <38baaf87-4d5c-48bc-a11f-a5b6c04c20a8@rock-chips.com>
In-Reply-To: <38baaf87-4d5c-48bc-a11f-a5b6c04c20a8@rock-chips.com>
From: "Deomid \"rojer\" Ryabkov" <rojer@rojer.me>
Date: Wed, 28 Oct 2026 00:10:31 +0200
X-Gmail-Original-Message-ID: <CABFmFwrWL1sej-=xCK-opxn3B9VVy=TaCyRQU43sw=6PY7bcmQ@mail.gmail.com>
X-Gm-Features: AclHuK9ygSoBB9eZyXuz1KFNk_TaXqdwq3xhUt4O0wFduajwOmgNHGsigYcfU5Q
Message-ID: <CABFmFwrWL1sej-=xCK-opxn3B9VVy=TaCyRQU43sw=6PY7bcmQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable SDIO Wi-Fi on NanoPi R2S Plus
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sergey Bostandzhyan <jin@mediatomb.cc>, 
	Jensen Huang <jensenhuang@friendlyarm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_151050_372974_D6C050BD 
X-CRM114-Status: GOOD (  24.14  )
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
X-Spam-Status: No, score=-19.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgU2hhd24sCgphZ3JlZWQsIGl0IG1ha2VzIG5vIHNlbnNlIGhlcmUuIHdpbGwgZHJvcCBpbiB2
MiwgaG9sZGluZyBvbiBmb3IKZmVlZGJhY2sgb24gcGF0Y2ggMS4KCk9uIFR1ZSwgMjcgT2N0IDIw
MjYgYXQgMTU6NTgsIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToK
Pgo+IEhpIERlb21pZAo+Cj4g5ZyoIDIwMjYvMTAvMjQg5pif5pyf5YWtIDc6NTksIERlb21pZCBy
b2plciBSeWFia292IOWGmemBkzoKPiA+IFRoZSBOYW5vUGkgUjJTIFBsdXMgaGFzIGFuIE0uMiBF
LWtleSBzbG90IHdpcmVkIHRvIHRoZSBzZG1tY19leHQKPiA+IGNvbnRyb2xsZXIgaW4gNC1iaXQg
U0RJTyBtb2RlLCB3aGVyZSBGcmllbmRseUVsZWMgZml0IGFuIG9wdGlvbmFsCj4gPiBGbi1MaW5r
IDYyMjJCLVNSQyAoUmVhbHRlayBSVEw4ODIyQ1MpIG1vZHVsZToKPiA+Cj4gPiAgICAtIFNESU8g
c2lnbmFsbGluZyBhdCBhIGZpeGVkIDEuOFYgKFZDQ18xOCkKPiA+ICAgIC0gV0lGSV9SRUdfT04g
b24gR1BJTzNfQjAsIDMya0h6IHNsZWVwIGNsb2NrIGZyb20gdGhlIFJLODA1IENMS09VVDIKPiA+
Cj4gPiBFbmFibGUgdGhlIGNvbnRyb2xsZXIgYW5kIGFkZCB0aGUgcG93ZXIgc2VxdWVuY2UuIFRo
ZSBTRElPIHBpbnMgbmVlZAo+ID4gOG1BIGRyaXZlIHN0cmVuZ3RoIGZvciBTRFIxMDQgdHVuaW5n
IHRvIHN1Y2NlZWQsIGFzIGluIHRoZSB2ZW5kb3IKPiA+IGRldmljZSB0cmVlIFsxXTsgd2l0aCB0
aGUgU29DIGRlZmF1bHQgb2YgNG1BIG5vIHNhbXBsZSBwaGFzZSB3b3Jrcy4KPiA+Cj4gPiBPbiBi
b2FyZHMgd2l0aG91dCB0aGUgbW9kdWxlIHRoZSBjb250cm9sbGVyIGdpdmVzIHVwIGFmdGVyIGFi
b3V0IDAuMnMKPiA+ICgibW1jMjogRmFpbGVkIHRvIGluaXRpYWxpemUgYSBub24tcmVtb3ZhYmxl
IGNhcmQiKTsgbm90aGluZyBlbHNlIGlzCj4gPiBhZmZlY3RlZC4KPiA+Cj4gPiBXaXRoIHRoZSBt
bWMgY29yZSBjaGFuZ2UgZm9yIHRoZSBtb2R1bGUncyBDTUQxMSBoYW5kbGluZyBhdCBhIGZpeGVk
Cj4gPiAxLjhWIFsyXSwgdGhlIG1vZHVsZSBpcyB0dW5lZCB0byBTRFIxMDQgYXQgMTUwIE1IeiBh
bmQgd29ya3Mgd2l0aCB0aGUKPiA+IHJ0dzg4Xzg4MjJjcyBkcml2ZXI7IHdpdGhvdXQgaXQsIGl0
IHJ1bnMgaW4gaGlnaC1zcGVlZCBtb2RlIGF0IDUwIE1Iei4KPiA+Cj4gPiBbMV0gaHR0cHM6Ly9n
aXRodWIuY29tL2ZyaWVuZGx5YXJtL2tlcm5lbC1yb2NrY2hpcC9ibG9iLzkyMzhkZjlkMjFlODM1
YmJhMzVjOGJhNTI0ODc4NDM4NzkzNmNiMmUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzMjgtbmFub3BpLXIyLXJldjI0LmR0cyNMMTQ0LUwxNzIKPiA+IFsyXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1tbWMvMjAyNjEwMjMyMzI4MTMuMjk4MzM2OC0xLXJvamVyQHJvamVy
Lm1lLwo+ID4gU2lnbmVkLW9mZi1ieTogRGVvbWlkIHJvamVyIFJ5YWJrb3YgPHJvamVyQHJvamVy
Lm1lPgo+ID4gLS0tCj4gPiAgIC4uLi9kdHMvcm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMnMtcGx1
cy5kdHMgICB8IDU2ICsrKysrKysrKysrKysrKysrKysKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDU2
IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzMjgtbmFub3BpLXIycy1wbHVzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMnMtcGx1cy5kdHMKPiA+IGluZGV4IDZiYTRhNzRjYjFm
Li5kYjE5YTE4YWU0NSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzI4LW5hbm9waS1yMnMtcGx1cy5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzI4LW5hbm9waS1yMnMtcGx1cy5kdHMKPiA+IEBAIC0xNyw2ICsxNywx
NSBAQCAvIHsKPiA+ICAgICAgIGFsaWFzZXMgewo+ID4gICAgICAgICAgICAgICBtbWMxID0gJmVt
bWM7Cj4gPiAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgc2Rpb19wd3JzZXE6IHNkaW8tcHdyc2Vx
IHsKPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtbWMtcHdyc2VxLXNpbXBsZSI7Cj4g
PiArICAgICAgICAgICAgIGNsb2NrcyA9IDwmcms4MDUgMT47Cj4gPiArICAgICAgICAgICAgIGNs
b2NrLW5hbWVzID0gImV4dF9jbG9jayI7Cj4gPiArICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4gPiArICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmd2lmaV9yZWdfb25f
aD47Cj4gPiArICAgICAgICAgICAgIHJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjAgR1BJT19B
Q1RJVkVfTE9XPjsKPiA+ICsgICAgIH07Cj4gPiAgIH07Cj4gPgo+ID4gICAmZW1tYyB7Cj4gPiBA
QCAtMzQsMyArNDMsNTAgQEAgJmlvX2RvbWFpbnMgewo+ID4gICAgICAgdmNjaW80LXN1cHBseSA9
IDwmdmNjX2lvXzMzPjsKPiA+ICAgICAgIHZjY2lvNi1zdXBwbHkgPSA8JnZjY18xOD47Cj4gPiAg
IH07Cj4gPiArCj4gPiArJnBpbmN0cmwgewo+ID4gKyAgICAgd2lmaSB7Cj4gPiArICAgICAgICAg
ICAgIHdpZmlfcmVnX29uX2g6IHdpZmktcmVnLW9uLWggewo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIHJvY2tjaGlwLHBpbnMgPSA8MyBSS19QQjAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9u
ZT47Cj4gPiArICAgICAgICAgICAgIH07Cj4gPiArICAgICB9Owo+ID4gK307Cj4gPiArCj4gPiAr
LyoKPiA+ICsgKiBTRFIxMDQgdHVuaW5nIGZhaWxzIHdpdGggdGhlIGRlZmF1bHQgNG1BIGRyaXZl
IHN0cmVuZ3RoLCB1c2UgOG1BIGxpa2UgdGhlCj4gPiArICogdmVuZG9yIGRldmljZSB0cmVlLgo+
ID4gKyAqLwo+ID4gKyZzZG1tYzBleHRfYnVzNCB7Cj4gPiArICAgICByb2NrY2hpcCxwaW5zID0K
PiA+ICsgICAgICAgICAgICAgPDMgUktfUEE0IDMgJnBjZmdfcHVsbF91cF84bWE+LAo+ID4gKyAg
ICAgICAgICAgICA8MyBSS19QQTUgMyAmcGNmZ19wdWxsX3VwXzhtYT4sCj4gPiArICAgICAgICAg
ICAgIDwzIFJLX1BBNiAzICZwY2ZnX3B1bGxfdXBfOG1hPiwKPiA+ICsgICAgICAgICAgICAgPDMg
UktfUEE3IDMgJnBjZmdfcHVsbF91cF84bWE+Owo+ID4gK307Cj4gPiArCj4gPiArJnNkbW1jMGV4
dF9jbGsgewo+ID4gKyAgICAgcm9ja2NoaXAscGlucyA9IDwzIFJLX1BBMiAzICZwY2ZnX3B1bGxf
bm9uZV84bWE+Owo+ID4gK307Cj4gPiArCj4gPiArJnNkbW1jMGV4dF9jbWQgewo+ID4gKyAgICAg
cm9ja2NoaXAscGlucyA9IDwzIFJLX1BBMCAzICZwY2ZnX3B1bGxfdXBfOG1hPjsKPiA+ICt9Owo+
ID4gKwo+ID4gKy8qIE9wdGlvbmFsIE0uMiBFLWtleSBTRElPIFdpLUZpIG1vZHVsZSAoRm4tTGlu
ayA2MjIyQi1TUkMsIFJUTDg4MjJDUykgKi8KPiA+ICsmc2RtbWNfZXh0IHsKPiA+ICsgICAgIGJ1
cy13aWR0aCA9IDw0PjsKPiA+ICsgICAgIGNhcC1zZC1oaWdoc3BlZWQ7Cj4gPiArICAgICBjYXAt
c2Rpby1pcnE7Cj4gPiArICAgICBkaXNhYmxlLXdwOwo+Cj4gRHJvcCBkaXNhYmxlLXdwLgo+Cj4g
T3RoZXJ3aXNlLAo+Cj4gUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hp
cHMuY29tPgo+Cj4gPiArICAgICBrZWVwLXBvd2VyLWluLXN1c3BlbmQ7Cj4gPiArICAgICBtbWMt
cHdyc2VxID0gPCZzZGlvX3B3cnNlcT47Cj4gPiArICAgICBuby1tbWM7Cj4gPiArICAgICBuby1z
ZDsKPiA+ICsgICAgIG5vbi1yZW1vdmFibGU7Cj4gPiArICAgICBwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+ID4gKyAgICAgcGluY3RybC0wID0gPCZzZG1tYzBleHRfY2xrICZzZG1tYzBleHRf
Y21kICZzZG1tYzBleHRfYnVzND47Cj4gPiArICAgICBzZC11aHMtc2RyMTA0Owo+ID4gKyAgICAg
dm1tYy1zdXBwbHkgPSA8JnZjY19pb18zMz47Cj4gPiArICAgICB2cW1tYy1zdXBwbHkgPSA8JnZj
Y18xOD47Cj4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPgoKCi0tIApEZW9taWQg
InJvamVyIiBSeWFia292CnJvamVyQHJvamVyLm1lCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
