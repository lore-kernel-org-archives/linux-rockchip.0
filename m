Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BED97C47422
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jan 2024 19:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAMw3CW7XNVWdrJDPntGZKhOHHvjh0sKd8ZPgwYFcbY=; b=Lbe4ymPUeAfqtU
	1DakjySNSWencqZicbDuiIaHoJZt4vrgrmrBH46ZSn3+zMPOaYSGu/J8xZMRRF9mF1NvUF5IZgbr0
	szUmPbS0hH+1yisHaYIMrFKs3VTWG43YklUCYfIopweGFRPUZpu6Od713eXfbmQ2tUq4VD7BIoUSt
	4O8FtnqvpxwEklo7HQmUlxjDqMYhRqiSP2MMl8k83SggYgX9aJloTbDLcnljKngZ4UsylnpQ/yZiW
	ZWTmAgF9vbwTVLwfeaAUimSywuqaFnqzcHGZQeZ5OHyR6Npg67GVD74qSFDlTsEzDAkqy7t9gsiY7
	Zb82yr9OrMVLmfRvlJSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRdxS-009xix-2B;
	Sun, 21 Jan 2024 19:58:18 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRdxN-009xhf-0o;
	Sun, 21 Jan 2024 19:58:15 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso231880066b.2;
        Sun, 21 Jan 2024 11:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705867090; x=1706471890; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wAbQEDdwZsefO9D8MBU/Wh50sFP9LP0OeG4eEpAp404=;
        b=DldbEa3xvlg0m+4HKEZnNX0dYaNdNhj4uYHBmCPcA4avc9cXJwj1WxvDyfrF9NBkGS
         qAiTO//hH/ZCiPvq97fnyfB+KRxc6IpTZ15aBltIgZOurJXm7mB6+K0U473wP6ALGCa7
         7NtaBdsjWDZ0bNL4y5DLSi+kl+tVfLV3/5h9uGgwS1tOWxsTv0LgSveMIPjXDc19QNhI
         quPkYXhejm+Y74iN/XtYjzthNoLFfodaBrRUbFKed2asHaZRW0rUGTl/5c2Oh1skHf1I
         JaaiphcdZ/ymw67YM0HbiWeJAtxKZRnX77FuDSe0XyJ22wn2PNRun9rpxfipaekuossp
         lV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705867090; x=1706471890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wAbQEDdwZsefO9D8MBU/Wh50sFP9LP0OeG4eEpAp404=;
        b=XH3MCWlwbsHN2MQcjP4+1nB6JvwZVcY0+JmR6o4zPucjDIzEDsTBHeJUwYAO/lTPOg
         xB6aMjMNypYKzx9FjYkOVvdEiyfepud/SMpIiFiA38lkp7YCL9VrOFs9K/H2udrZDEoV
         AZ4xbvoZrBFgSm63zS/x4TJfoNoKlZn25ecNfi9pijh7GfFpvRU2XLf7TtnwRKHN5uGp
         As0OEHCcxS4kVeULay+g0jD6wPZHP+2QZZt9EjoZsId2HDGniJ29M09xy0Uu7G0n33nV
         iWHSMZqp3fxwV8waXZAelBMJ25hT0b1WWy9x4uUkUhGS2I9RpQS4Qc2gpvNNxUqvT54Y
         qF3w==
X-Gm-Message-State: AOJu0YyMU8IAhRt6Atxg8mdh1kizLWdCIRfNv48Bed7r7RhAuJKX4tvm
	OPLW9PZic9cu8KMp+paHK9cPqv0n07xEQ5PEgmFxL+hcbZdjzbTmU88TuxKkDm58HdKO6nlOfhi
	hTMRZ3fOhVLvnJemhehZvrm6+wEI=
X-Google-Smtp-Source: AGHT+IFAB701dJZ0Vxsg39wC+sKGpZzi4at9ikNgixHnT4wOU6IVvrCQEVtymp3cVHsHzzUsMeRc+pitO0uPv3yt37k=
X-Received: by 2002:a17:906:6852:b0:a2f:62c3:5322 with SMTP id
 a18-20020a170906685200b00a2f62c35322mr1924685ejs.120.1705867090551; Sun, 21
 Jan 2024 11:58:10 -0800 (PST)
MIME-Version: 1.0
References: <20240106222357.23835-1-alchark@gmail.com> <20240109192608.5981-1-alchark@gmail.com>
 <c517f26c-34bc-4b99-b744-8e2549cd28b5@linaro.org>
In-Reply-To: <c517f26c-34bc-4b99-b744-8e2549cd28b5@linaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Sun, 21 Jan 2024 23:57:58 +0400
Message-ID: <CABjd4YxYpsvf+ghHTn1z8TAZxQb-2dFOQaVSm8zHKSSWOokqww@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240121_115813_328299_BA53FF82 
X-CRM114-Status: GOOD (  30.12  )
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

T24gRnJpLCBKYW4gMTksIDIwMjQgYXQgODoyMeKAr1BNIERhbmllbCBMZXpjYW5vCjxkYW5pZWwu
bGV6Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKSGVsbG8gRGFuaWVsLAoKVGhhbmtzIGEgbG90IGZv
ciB5b3VyIHJldmlldyBhbmQgY29tbWVudHMhIFBsZWFzZSBzZWUgc29tZSByZWZsZWN0aW9ucyBi
ZWxvdy4KCj4gT24gMDkvMDEvMjAyNCAyMDoxOSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiBJ
bmNsdWRlIHRoZXJtYWwgem9uZXMgaW5mb3JtYXRpb24gaW4gZGV2aWNlIHRyZWUgZm9yIHJrMzU4
OCB2YXJpYW50cwo+ID4gYW5kIGVuYWJsZSB0aGUgYnVpbHQtaW4gdGhlcm1hbCBzZW5zaW5nIEFE
QyBvbiBSQURYQSBSb2NrIDVCCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3Yg
PGFsY2hhcmtAZ21haWwuY29tPgo+ID4gLS0tCj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4gICAtIERy
b3BwZWQgcmVkdW5kYW50IGNvbW1lbnRzCj4gPiAgIC0gSW5jbHVkZWQgYWxsIENQVSBjb3JlcyBp
biBjb29saW5nIG1hcHMKPiA+ICAgLSBTcGxpdCBjb29saW5nIG1hcHMgaW50byBtb3JlIGdyYW51
bGFyIG9uZXMgdXRpbGl6aW5nIFRTQURDCj4gPiAgICAgY2hhbm5lbHMgMS0zIHdoaWNoIG1lYXN1
cmUgdGVtcGVyYXR1cmUgYnkgc2VwYXJhdGUgQ1BVIGNsdXN0ZXJzCj4gPiAgICAgaW5zdGVhZCBv
ZiBjaGFubmVsIDAgd2hpY2ggbWVhc3VyZXMgdGhlIGNlbnRlciBvZiB0aGUgU29DIGRpZQo+ID4g
LS0tCj4gPiAgIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgICAgICB8
ICAgNCArCj4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpICAg
ICB8IDE1MSArKysrKysrKysrKysrKysrKysKPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNTUgaW5z
ZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWIuZHRzCj4gPiBpbmRleCBhNWExMDQxMzE0MDMuLmY5ZDU0MDAwMGRlMyAxMDA2
NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIu
ZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTVi
LmR0cwo+ID4gQEAgLTc3MiwzICs3NzIsNyBAQCAmdXNiX2hvc3QxX2VoY2kgewo+ID4gICAmdXNi
X2hvc3QxX29oY2kgewo+ID4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gICB9Owo+ID4gKwo+
ID4gKyZ0c2FkYyB7Cj4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gPiBpbmRleCA4YWEwNDk5Zjli
MDMuLjhkNTQ5OThkMGVjYyAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OHMuZHRzaQo+ID4gQEAgLTEwLDYgKzEwLDcgQEAKPiA+ICAgI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzU4OC1jcnUuaD4KPiA+ICAgI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL3BoeS9waHkuaD4KPiA+ICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2F0YS9haGNpLmg+
Cj4gPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3RoZXJtYWwvdGhlcm1hbC5oPgo+ID4KPiA+ICAg
LyB7Cj4gPiAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OCI7Cj4gPiBAQCAtMjEx
Miw2ICsyMTEzLDE1NiBAQCB0c2FkYzogdHNhZGNAZmVjMDAwMDAgewo+ID4gICAgICAgICAgICAg
ICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gICAgICAgfTsKPiA+Cj4gPiArICAgICB0aGVybWFs
X3pvbmVzOiB0aGVybWFsLXpvbmVzIHsKPiA+ICsgICAgICAgICAgICAgLyogc2Vuc29yIG5lYXIg
dGhlIGNlbnRlciBvZiB0aGUgd2hvbGUgY2hpcCAqLwo+ID4gKyAgICAgICAgICAgICBzb2NfdGhl
cm1hbDogc29jLXRoZXJtYWwgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVs
YXktcGFzc2l2ZSA9IDwyMD47Cj4KPiBUaGVyZSBpcyBubyBtaXRpZ2F0aW9uIHNldCBmb3IgdGhp
cyB0aGVybWFsIHpvbmUuIEl0IGlzIHBvaW50bGVzcyB0bwo+IHNwZWNpZnkgYSBwYXNzaXZlIHBv
bGxpbmcuCgpJbmRlZWQsIGl0IG1ha2VzIHNlbnNlIHRvIG1lLiBUaGVyZSBzZWVtcyB0byBiZSBh
IGNhdGNoIHRob3VnaCBpbiB0aGF0CnRoZSBkcml2ZXIgY2FsbHMgdGhlIGdlbmVyaWMgdGhlcm1h
bF9vZl96b25lX3JlZ2lzdGVyIGR1cmluZyB0aGUKaW5pdGlhbCBwcm9iZSwgd2hpY2ggZXhwZWN0
cyBib3RoIG9mIHRob3NlIHBvbGxpbmcgZGVsYXlzIHRvIGJlCnByZXNlbnQgaW4gdGhlIGRldmlj
ZSB0cmVlLCBvdGhlcndpc2UgaXQgc2ltcGx5IHJlZnVzZXMgdG8gYWRkIHRoZQpyZXNwZWN0aXZl
IHRoZXJtYWwgem9uZSwgc2VlIGRyaXZlcnMvdGhlcm1hbC90aGVybWFsX29mLmM6NTAyCgo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkgPSA8MTAwMD47Cj4KPiBUaGUgZHJp
dmVyIGlzIGludGVycnVwdCBkcml2ZW4uIE5vIG5lZWQgdG8gcG9sbC4KClNhbWUgaGVyZSBhcyBh
Ym92ZQoKPiA+ICsgICAgICAgICAgICAgICAgICAgICBzdXN0YWluYWJsZS1wb3dlciA9IDwyMTAw
PjsKPgo+IFRoZXJlIGlzIG5vIG1pdGlnYXRpb24gd2l0aCB0aGlzIHRoZXJtYWwgem9uZS4gU3Bl
Y2lmeWluZyBhIHN1c3RhaW5hYmxlCj4gcG93ZXIgZG9lcyBub3QgbWFrZSBzZW5zZS4KClRoYW5r
cywgd2lsbCBkcm9wIHRoaXMgaW4gdjMhCgo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHRoZXJt
YWwtc2Vuc29ycyA9IDwmdHNhZGMgMD47Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAg
dHJpcHMgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc29jX2NyaXQ6IHNvYy1j
cml0IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1
cmUgPSA8MTE1MDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aHlzdGVyZXNpcyA9IDwyMDAwPjsKPgo+IFRoaXMgdHJpcCBwb2ludCBsZWFkcyB0byBhIHN5c3Rl
bSBzaHV0ZG93biAvIHJlYm9vdC4gSXQgaXMgbm90IG5lY2Vzc2FyeQo+IHRvIHNwZWNpZnkgYSBo
eXN0ZXJlc2lzLgoKU2ltaWxhciB0byB0aGUgYWJvdmUsIHRoZSBnZW5lcmljIHRoZXJtYWxfb2Yg
Y29kZSByZWZ1c2VzIHRvIGFkZCB0aGUKdHJpcCBwb2ludCBpZiBpdCBoYXMgbm8gaHlzdGVyZXNp
cyBwcm9wZXJ0eSBkZWZpbmVkIChyZWdhcmRsZXNzIG9mIHRoZQp0cmlwIHR5cGUpLCBzZWUgZHJp
dmVycy90aGVybWFsL3RoZXJtYWxfb2YuYzoxMDkKCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHR5cGUgPSAiY3JpdGljYWwiOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gKyAgICAgICAg
ICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAvKiBzZW5zb3IgYmV0d2VlbiBBNzYgY29y
ZXMgMCBhbmQgMSAqLwo+ID4gKyAgICAgICAgICAgICBiaWdjb3JlMF90aGVybWFsOiBiaWdjb3Jl
MC10aGVybWFsIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBwb2xsaW5nLWRlbGF5LXBhc3Np
dmUgPSA8MjA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkgPSA8MTAw
MD47Cj4KPiBUaGUgZHJpdmVyIGlzIGludGVycnVwdCBkcml2ZW4uIE5vIG5lZWQgdG8gcG9sbC4K
Pgo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwtc2Vuc29ycyA9IDwmdHNhZGMgMT47
Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgdHJpcHMgewo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYmlnY29yZTBfYWxlcnQ6IGJpZ2NvcmUwLWFsZXJ0IHsKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8ODUwMDA+
Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0g
PDIwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0eXBlID0g
InBhc3NpdmUiOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGJpZ2NvcmUwX2NyaXQ6IGJpZ2NvcmUwLWNyaXQgewo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0ZW1wZXJhdHVyZSA9IDwx
MTUwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJl
c2lzID0gPDIwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0
eXBlID0gImNyaXRpY2FsIjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb29s
aW5nLW1hcHMgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWFwMCB7Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRyaXAgPSA8JmJpZ2NvcmUwX2Fs
ZXJ0PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29vbGluZy1k
ZXZpY2UgPQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwmY3B1X2IwIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcHVfYjEgVEhFUk1BTF9O
T19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY29udHJpYnV0aW9uID0gPDEwMjQ+Owo+Cj4gSWYgeW91IHNwZWNpZnkgdGhl
IGNvbnRyaWJ1dGlvbiwgdGhhdCBtZWFucyBpdCBpcyBleHBlY3RlZCB0byB1c2UgdGhlCj4gSVBB
IGdvdmVybm9yLiBIb3dldmVyLCB0aGlzIG9uZSBuZWVkcyBhbiBleHRyYSB0cmlwIHBvaW50IGJl
Zm9yZSAnYWxlcnQnCj4gdG8gYmVnaW4gY29sbGVjdGluZyB0ZW1wZXJhdHVyZXMgaW4gb3JkZXIg
dG8gaW5pdGlhbGl6ZSB0aGUgUElEIGxvb3Agb2YKPiB0aGUgSVBBLgoKVGhhbmsgeW91ISBXaWxs
IGFkZCBleHRyYSBwYXNzaXZlIGNvb2xpbmcgdHJpcCBwb2ludHMgYXQgNzVDIHRvIGFsbAp0aHJl
ZSBDUFUgY2x1c3RlcnMuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
