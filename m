Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51AC4C4725D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 05:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35q+0QMNKhqueUNayaJG8v65jBW//fnqQ1A6j9kuHh0=; b=rXz55nsAleLqWe
	kBIcwn60BrgXJeKUjK2mZXTTet8HPhfRWSsdmtL14BHS8ZR8cqLHyiUELJy5EZOKgtDl/zznIcfhP
	muLJysWyky7XjQlJmVduXck/qSyp2OUnZOtje9Z3hhui7GyhLy/GE4C41DZOpvo/gQ/S5eELm6Uws
	XIW/17Z1JuyDpu07tULtHB97vGdw7W9RpcGiwUt6zEZeL3Kp3Df5Q11wUYAH8kWECe/FrUg4rODZQ
	LmM2CLsFwOXWzEjd4g8faq2uI+33Tr3TxUa2F284Kcz+QXwzHR2NU4tlHXC6aGgFlQslMFauW7SYv
	eDqGBco8QmgNrRUt9hog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRnJL-00AfAR-1d;
	Mon, 22 Jan 2024 05:57:31 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRnJC-00Af84-2d;
	Mon, 22 Jan 2024 05:57:24 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-336c8ab0b20so2779674f8f.1;
        Sun, 21 Jan 2024 21:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705903041; x=1706507841; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7MTYZForVvLZ2hb0Ye49WxTmxEl3DOOa/vhUliBrzGQ=;
        b=ki4QK4QVCkPRZBtIEU6hKXJkInykYMQ2WaMoi4agAezXrZZfb34t9T8FYf5P4obK7v
         WzwGh4kphQaXElGs6c5u0HNLTN7FvJmpaqhhc3dflrf8QhP05ufJfZGJK8DuqAS+fM28
         KEi1LMrRnWXxi5SPZsfpSClh/DOvQ0iGTFWkUNwMweKNNX5wW6JQLW03EAvWZyTVtGJK
         A0tX5nfv8F/tUJsTZDZbbHML3znNz/6RjYfXHwP7Nn+c8jNKs0YbD0ylN6v1B9kjxqF3
         PND9WJ3a8l8rKnotNRqSlDHny9zU5lAVNdbjqOFWWbhSogKH9zddIu97fkfaOpMUzlki
         arBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705903041; x=1706507841;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7MTYZForVvLZ2hb0Ye49WxTmxEl3DOOa/vhUliBrzGQ=;
        b=XibyfQt2tr9XtQagF99thEBi6n/fi7jce2RR3KcakVdASQVvnZam61Ezdt7juulhZ0
         Jc9d9AwpGv0jLhVhOLEE4cXeLEFnNFABomFIVwRGxpwyoCmIPXznfyq5L5hJ4+OeTmNd
         /DHW84COjTtCl+D2duy6dyI/TMB+VakISPQoemrdB0omy0Sr7We5FUi1fEzt8jjNmXXT
         7WxIzajemxEKMWaX6gnwFinPOnKY7f1AqLRtPylekiVfq/K9qp5ulXnkJpg4k0lIhUCs
         ym4AzvBIGs+mPfp3yAbDrby3j1jNtCqpskzv0OJ6H80IrxdH4RV4aRA34a44dqz5jcMr
         w4Ew==
X-Gm-Message-State: AOJu0YzDgk6Jt1+q2BBTxXjNFp45hE/kW8qN8yOMreLnhpEDQoiMRlpX
	PJGZ+lUvwEW+uqlxAfxiCR5TKsMOC3ta6HkHyusCsIXq0LcXfOMBiPPjVddOvsANALtd49Xe0O/
	FzR/XUBQAeeLlaAX8aEDp5pkEs2Y=
X-Google-Smtp-Source: AGHT+IFGYBIivqZ62ulzHX/smTjXQMJkimNwpt40QKZKF3Q0PXUrtMTpMu7iUstJl6HpzLg6Hcm7DHGwZH6T22Pbz5U=
X-Received: by 2002:a05:600c:290c:b0:40e:6ea4:bf57 with SMTP id
 i12-20020a05600c290c00b0040e6ea4bf57mr2212703wmd.126.1705903040462; Sun, 21
 Jan 2024 21:57:20 -0800 (PST)
MIME-Version: 1.0
References: <20240106222357.23835-1-alchark@gmail.com> <20240109192608.5981-1-alchark@gmail.com>
 <c517f26c-34bc-4b99-b744-8e2549cd28b5@linaro.org> <CABjd4YxYpsvf+ghHTn1z8TAZxQb-2dFOQaVSm8zHKSSWOokqww@mail.gmail.com>
 <e45f72c2-0b5b-44dd-ad39-e7e5bd17ae26@linaro.org>
In-Reply-To: <e45f72c2-0b5b-44dd-ad39-e7e5bd17ae26@linaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 22 Jan 2024 09:57:08 +0400
Message-ID: <CABjd4YyL1ZwNOJrWPwZtc7=e4h18a9tQOnuKP6soy=iTHv-WEA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Christopher Obbard <chris.obbard@collabora.com>, =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_215722_874157_3CE1AAB9 
X-CRM114-Status: GOOD (  30.92  )
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

T24gTW9uLCBKYW4gMjIsIDIwMjQgYXQgNDowNOKAr0FNIERhbmllbCBMZXpjYW5vCjxkYW5pZWwu
bGV6Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+Cj4gSGkgQWxleGV5LAo+Cj4KPiBPbiAyMS8w
MS8yMDI0IDIwOjU3LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IE9uIEZyaSwgSmFuIDE5LCAy
MDI0IGF0IDg6MjHigK9QTSBEYW5pZWwgTGV6Y2Fubwo+ID4gPGRhbmllbC5sZXpjYW5vQGxpbmFy
by5vcmc+IHdyb3RlOgo+ID4gSGVsbG8gRGFuaWVsLAo+ID4KPiA+IFRoYW5rcyBhIGxvdCBmb3Ig
eW91ciByZXZpZXcgYW5kIGNvbW1lbnRzISBQbGVhc2Ugc2VlIHNvbWUgcmVmbGVjdGlvbnMgYmVs
b3cuCj4gPgo+ID4+IE9uIDA5LzAxLzIwMjQgMjA6MTksIEFsZXhleSBDaGFya292IHdyb3RlOgo+
ID4+PiBJbmNsdWRlIHRoZXJtYWwgem9uZXMgaW5mb3JtYXRpb24gaW4gZGV2aWNlIHRyZWUgZm9y
IHJrMzU4OCB2YXJpYW50cwo+ID4+PiBhbmQgZW5hYmxlIHRoZSBidWlsdC1pbiB0aGVybWFsIHNl
bnNpbmcgQURDIG9uIFJBRFhBIFJvY2sgNUIKPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQWxl
eGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+ID4+PiAtLS0KPiA+Pj4gQ2hhbmdlcyBp
biB2MjoKPiA+Pj4gICAgLSBEcm9wcGVkIHJlZHVuZGFudCBjb21tZW50cwo+ID4+PiAgICAtIElu
Y2x1ZGVkIGFsbCBDUFUgY29yZXMgaW4gY29vbGluZyBtYXBzCj4gPj4+ICAgIC0gU3BsaXQgY29v
bGluZyBtYXBzIGludG8gbW9yZSBncmFudWxhciBvbmVzIHV0aWxpemluZyBUU0FEQwo+ID4+PiAg
ICAgIGNoYW5uZWxzIDEtMyB3aGljaCBtZWFzdXJlIHRlbXBlcmF0dXJlIGJ5IHNlcGFyYXRlIENQ
VSBjbHVzdGVycwo+ID4+PiAgICAgIGluc3RlYWQgb2YgY2hhbm5lbCAwIHdoaWNoIG1lYXN1cmVz
IHRoZSBjZW50ZXIgb2YgdGhlIFNvQyBkaWUKPiA+Pj4gLS0tCj4gPj4+ICAgIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgICAgICB8ICAgNCArCj4gPj4+ICAgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpICAgICB8IDE1MSArKysrKysrKysr
KysrKysrKysKPiA+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAxNTUgaW5zZXJ0aW9ucygrKQo+ID4+
Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
cm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTVi
LmR0cwo+ID4+PiBpbmRleCBhNWExMDQxMzE0MDMuLmY5ZDU0MDAwMGRlMyAxMDA2NDQKPiA+Pj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+
Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMK
PiA+Pj4gQEAgLTc3MiwzICs3NzIsNyBAQCAmdXNiX2hvc3QxX2VoY2kgewo+ID4+PiAgICAmdXNi
X2hvc3QxX29oY2kgewo+ID4+PiAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4+PiAgICB9Owo+
ID4+PiArCj4gPj4+ICsmdHNhZGMgewo+ID4+PiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4+
ICt9Owo+ID4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhzLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+ID4+
PiBpbmRleCA4YWEwNDk5ZjliMDMuLjhkNTQ5OThkMGVjYyAxMDA2NDQKPiA+Pj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+Pj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+Pj4gQEAgLTEwLDYgKzEwLDcg
QEAKPiA+Pj4gICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzU4OC1j
cnUuaD4KPiA+Pj4gICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4KPiA+Pj4gICAg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2F0YS9haGNpLmg+Cj4gPj4+ICsjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvdGhlcm1hbC90aGVybWFsLmg+Cj4gPj4+Cj4gPj4+ICAgIC8gewo+ID4+PiAgICAgICAg
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgiOwo+ID4+PiBAQCAtMjExMiw2ICsyMTEzLDE1
NiBAQCB0c2FkYzogdHNhZGNAZmVjMDAwMDAgewo+ID4+PiAgICAgICAgICAgICAgICBzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ID4+PiAgICAgICAgfTsKPiA+Pj4KPiA+Pj4gKyAgICAgdGhlcm1hbF96
b25lczogdGhlcm1hbC16b25lcyB7Cj4gPj4+ICsgICAgICAgICAgICAgLyogc2Vuc29yIG5lYXIg
dGhlIGNlbnRlciBvZiB0aGUgd2hvbGUgY2hpcCAqLwo+ID4+PiArICAgICAgICAgICAgIHNvY190
aGVybWFsOiBzb2MtdGhlcm1hbCB7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBwb2xsaW5n
LWRlbGF5LXBhc3NpdmUgPSA8MjA+Owo+ID4+Cj4gPj4gVGhlcmUgaXMgbm8gbWl0aWdhdGlvbiBz
ZXQgZm9yIHRoaXMgdGhlcm1hbCB6b25lLiBJdCBpcyBwb2ludGxlc3MgdG8KPiA+PiBzcGVjaWZ5
IGEgcGFzc2l2ZSBwb2xsaW5nLgo+ID4KPiA+IEluZGVlZCwgaXQgbWFrZXMgc2Vuc2UgdG8gbWUu
IFRoZXJlIHNlZW1zIHRvIGJlIGEgY2F0Y2ggdGhvdWdoIGluIHRoYXQKPiA+IHRoZSBkcml2ZXIg
Y2FsbHMgdGhlIGdlbmVyaWMgdGhlcm1hbF9vZl96b25lX3JlZ2lzdGVyIGR1cmluZyB0aGUKPiA+
IGluaXRpYWwgcHJvYmUsIHdoaWNoIGV4cGVjdHMgYm90aCBvZiB0aG9zZSBwb2xsaW5nIGRlbGF5
cyB0byBiZQo+ID4gcHJlc2VudCBpbiB0aGUgZGV2aWNlIHRyZWUsIG90aGVyd2lzZSBpdCBzaW1w
bHkgcmVmdXNlcyB0byBhZGQgdGhlCj4gPiByZXNwZWN0aXZlIHRoZXJtYWwgem9uZSwgc2VlIGRy
aXZlcnMvdGhlcm1hbC90aGVybWFsX29mLmM6NTAyCj4KPiBVc3VhbGx5Ogo+Cj4gcG9sbGluZy1k
ZWxheS1wYXNzaXZlID0gPDA+Owo+IHBvbGxpbmctZGVsYXkgPSA8MD47Cj4KPiBjZjoKPgo+IGdp
dCBncmVwICJwb2xsaW5nLWRlbGF5ID0gPDA+IiBhcmNoL2FybTY0L2Jvb3QvZHRzCgpJbmRlZWQs
IHRoYW5rcyBhIGxvdCBmb3IgdGhlIHBvaW50ZXIhIFNvbWVob3cgaXQgc2xpcHBlZCBteSBhdHRl
bnRpb24uCldpbGwgdGVzdCBhbmQgYW1lbmQgYWNjb3JkaW5nbHkuCgo+ID4+PiArICAgICAgICAg
ICAgICAgICAgICAgcG9sbGluZy1kZWxheSA9IDwxMDAwPjsKPiA+Pgo+ID4+IFRoZSBkcml2ZXIg
aXMgaW50ZXJydXB0IGRyaXZlbi4gTm8gbmVlZCB0byBwb2xsLgo+ID4KPiA+IFNhbWUgaGVyZSBh
cyBhYm92ZQo+ID4KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHN1c3RhaW5hYmxlLXBvd2Vy
ID0gPDIxMDA+Owo+ID4+Cj4gPj4gVGhlcmUgaXMgbm8gbWl0aWdhdGlvbiB3aXRoIHRoaXMgdGhl
cm1hbCB6b25lLiBTcGVjaWZ5aW5nIGEgc3VzdGFpbmFibGUKPiA+PiBwb3dlciBkb2VzIG5vdCBt
YWtlIHNlbnNlLgo+ID4KPiA+IFRoYW5rcywgd2lsbCBkcm9wIHRoaXMgaW4gdjMhCj4gPgo+ID4+
PiArICAgICAgICAgICAgICAgICAgICAgdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyAwPjsKPiA+
Pj4gKwo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgdHJpcHMgewo+ID4+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzb2NfY3JpdDogc29jLWNyaXQgewo+ID4+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDExNTAwMD47Cj4gPj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaHlzdGVyZXNpcyA9IDwyMDAw
PjsKPiA+Pgo+ID4+IFRoaXMgdHJpcCBwb2ludCBsZWFkcyB0byBhIHN5c3RlbSBzaHV0ZG93biAv
IHJlYm9vdC4gSXQgaXMgbm90IG5lY2Vzc2FyeQo+ID4+IHRvIHNwZWNpZnkgYSBoeXN0ZXJlc2lz
Lgo+ID4KPiA+IFNpbWlsYXIgdG8gdGhlIGFib3ZlLCB0aGUgZ2VuZXJpYyB0aGVybWFsX29mIGNv
ZGUgcmVmdXNlcyB0byBhZGQgdGhlCj4gPiB0cmlwIHBvaW50IGlmIGl0IGhhcyBubyBoeXN0ZXJl
c2lzIHByb3BlcnR5IGRlZmluZWQgKHJlZ2FyZGxlc3Mgb2YgdGhlCj4gPiB0cmlwIHR5cGUpLCBz
ZWUgZHJpdmVycy90aGVybWFsL3RoZXJtYWxfb2YuYzoxMDkKPgo+IGh5c3RlcmVzaXMgPSA8MD47
CgpNYWtlcyBzZW5zZSwgdGhhbmsgeW91ISBXaWxsIGFtZW5kIGFjY29yZGluZ2x5LgoKQmVzdCBy
ZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
