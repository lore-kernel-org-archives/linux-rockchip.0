Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E15C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 06:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WrdwHkz6gp4HZrwfqRRHObL2t46Q7ChdzsgeQSOYkac=; b=nDdEmbCpcjd9h4URkhH2/VU5Zq
	VC5v9vVppsGxZ63kNHfq+3V+sJttLX8QayKgCjyE2bJONPvvIqlqSTxKfAhO+59stTPDq0M8o6oNm
	iveV8TZfIKmrwT8+R/rY/vrr9U4y5NELRK6dvaxBEaICdw/agXiTJ/wvxJPq/q1JeAF1JwTg5OJdJ
	c1XQdwnqfako/hWuNgYJK8ZyzlWFYta6ml8AmCWwJS29Wr9pviPcLFmUjkNdr01pDdMllp9NKT8Q0
	K8jS2AuFhtBhJSsabIZ4Ku0BQqUsCtArE9gJ8emZjG0829xnzo16L2jhKg7n9Coe2kBDnVz6VqDj+
	/Sx9Jumg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSo7-0000000DtZC-2NGq;
	Tue, 18 Jun 2024 06:59:07 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSo3-0000000DtXn-13NB;
	Tue, 18 Jun 2024 06:59:04 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-70109d34a16so4505048b3a.2;
        Mon, 17 Jun 2024 23:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718693942; x=1719298742; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t9F6u6IJmEFG4P2YU5LD36dj4+mI/cyeimKQjVCUWlE=;
        b=ZEWOBUibik97KrPnH8TKO/iV5EXGmX19FLltQGWZBjyIi3dGWOph617a/6qrSe/5xv
         d9L3MYuwyJmSOFDUTFULlh+eMQW3EoEInHreCKTh5Yu5ecXwlYKgAV3Lr0PxgjZm6C4V
         /9hy1/fWTycFsXfCJVJfrPsUn+l5avgvQ0UiLMbdTlARYhBqu2oI8QBqcM9qtdKOryLd
         DwoH9iYktvbnE0yllA0V/VOOk1lOWTxjUxtlnYbxTtE8JxLnl2MeBjtl/4e36D+3Trt8
         CDjKD2KSuJehLOoafcelX7su2j6qn+dADLnvEz59l7WVtqcvVmxntv1jZFjWWc3WzBjP
         tCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718693942; x=1719298742;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t9F6u6IJmEFG4P2YU5LD36dj4+mI/cyeimKQjVCUWlE=;
        b=Vzblz4wrU7hQUUWAOA8GBxGoOqG3EAMbi2Z5NimOi24Q4cmKQrVcBJLYVjcxpkFuSA
         FsquAci0DD6eGxGjgaGGRlbbHx296OKP9fe/TJHzWhsrZYqtnpq9mfUBFtzUvxyy+ABK
         fpUj0MPUBptR9x2rouhAAB09RPD00U9D4SXVKgPfIVdSRvkN1QswC+cKuFFeNEHgYPqR
         7yZAf2jjbo6u23gEqU/6ztMi/zBK9Cg49ZJG4lSe79cTV6qxjsNYIRNkTK/FLv/p6v8F
         +XAfTIm2t9BpkTmJQGah/bifkt4W2TEnr+yRnm2zrsuQ9YOXyGUwcurS8MGlwLgR20Cm
         ubaA==
X-Forwarded-Encrypted: i=1; AJvYcCVOWgU7sppBbSQ/2wqnfWgIC0eu4lWR5t8X7RgyRx/SCei5Vi/axBaEDlNecmMDI5vHphoOerjQM6/HQCM5lBb/WjEtHlHtnFZkV+8pk/9khtPGOA4MPoEymA3R3oUvRI2VhQpzZ/Cl0H6pD4/5twrCMNSeYWsUUby8+bYAswN5VZLAYDcx60E8R+m2mF/h7HKWRV5GFfqi
X-Gm-Message-State: AOJu0YxzoA78BxXUa853kw/hp4zKW2W+6vXjzwaiTDK+OFh9UmatUrZj
	ojFxyubqxew/DoZ5Bx17wkmqPcyL8yGkZRYjNFiqzVOlOzU4w+0E
X-Google-Smtp-Source: AGHT+IEX9TfGGQ/S5B0tqGgdQQ9ZVCt+0dUpnuU5ru1HCrVIQoO7l66wIP5ByO9l79JqEaPnUT5ODg==
X-Received: by 2002:a05:6a20:3946:b0:1b6:dffa:d6ec with SMTP id adf61e73a8af0-1bae823dbd6mr14600662637.46.1718693942175;
        Mon, 17 Jun 2024 23:59:02 -0700 (PDT)
Received: from [127.0.0.1] ([122.161.50.215])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f993eae952sm6720865ad.267.2024.06.17.23.58.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 23:59:01 -0700 (PDT)
Date: Tue, 18 Jun 2024 12:28:48 +0530 (GMT+05:30)
From: Shresth Prasad <shresthprasad7@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de,
	sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
	s.hauer@pengutronix.de, jbx6244@yandex.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	javier.carrasco.cruz@gmail.com, skhan@linuxfoundation.org
Message-ID: <b7363a2e-7c49-4716-a43b-41d420a10438@gmail.com>
In-Reply-To: <79f3ae72-e733-433c-a577-e0092e3ce20e@kernel.org>
References: <20240617085341.34332-2-shresthprasad7@gmail.com> <f691c7f9-cd81-4bdf-a794-95118cb26686@kernel.org> <CAE8VWiLqBUq=-PzT2XVKB_C9nvEERM0x-maWU5qt0+aK1Rd-kg@mail.gmail.com> <79f3ae72-e733-433c-a577-e0092e3ce20e@kernel.org>
Subject: Re: [PATCH v4] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
MIME-Version: 1.0
X-Correlation-ID: <b7363a2e-7c49-4716-a43b-41d420a10438@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_235903_324200_F781794F 
X-CRM114-Status: GOOD (  17.23  )
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

MTggSnVuZSAyMDI0IDExOjUwOjQx4oCvYW0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJu
ZWwub3JnPjoKCj4gT24gMTcvMDYvMjAyNCAyMDoxNCwgU2hyZXN0aCBQcmFzYWQgd3JvdGU6Cj4g
Cj4+Pj4gK2V4YW1wbGVzOgo+Pj4+ICvCoCAtIHwKPj4+PiArwqDCoMKgIGdyZjogc3lzY29uQGZm
NzcwMDAwIHsKPj4+IAo+Pj4gRHJvcCBsYWJlbC4uLiBhY3R1YWxseSBlbnRpcmUgbm9kZSBsb29r
cyBub3QgbmVlZGVkLgo+PiAKPj4gRnJvbSB3aGF0IEkgdW5kZXJzdGFuZCwgdGhpcyBgcGh5YCBu
b2RlIHNob3VsZCBiZSBhIHN1Yi1ub2RlIG9mIGEgYGdyZmAKPj4gbm9kZSB3aGljaCBpcyB3aHkg
aXQgaXMgcGFydCBvZiB0aGUgZXhhbXBsZS4KPj4gCj4+PiAKPj4+PiArwqDCoMKgwqDCoCBjb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1ncmYiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOwo+
Pj4gCj4+PiBEcm9wCj4+PiAKPj4+PiArwqDCoMKgwqDCoCByZWcgPSA8MHhmZjc3MDAwMCAweDEw
MDAwPjsKPj4+IAo+Pj4gRHJvcAo+PiAKPj4gUmVtb3ZpbmcgYHJlZ2AgY2F1c2VzIHRoZSBmb2xs
b3dpbmcgd2FybmluZzoKPj4gV2FybmluZyAodW5pdF9hZGRyZXNzX3ZzX3JlZyk6IC9leGFtcGxl
LTAvc3lzY29uQGZmNzcwMDAwOiBub2RlIGhhcyBhCj4+IHVuaXQgbmFtZSwgYnV0IG5vIHJlZyBv
ciByYW5nZXMgcHJvcGVydHkKPj4gCj4+IFBsZWFzZSBsZXQgbWUga25vdyB3aGF0IHRoZSBwcmVm
ZXJlZCBzb2x1dGlvbiB3b3VsZCBiZSBoZXJlLgo+IAo+IE9idmlvdXNseSB5b3UgbmVlZCB0byBk
cm9wIGVudGlyZSBub2RlLi4uIFlvdSBjYW5ub3QganVzdCBkcm9wIHJlZyBhbmQKPiBsZWF2ZSB1
bml0IGFkZHJlc3MuCj4gCj4+IAo+Pj4gCj4+PiAKPj4+PiArwqDCoMKgwqDCoCAjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPj4+PiArwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwxPjsKPj4+PiArCj4+
Pj4gK8KgwqDCoMKgwqAgZW1tY3BoeTogcGh5QGY3ODAgewo+Pj4gCj4+PiBEcm9wIGxhYmVsCj4+
PiAKPj4+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktZW1t
Yy1waHkiOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHhmNzgwIDB4MjA+Owo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JnNkaGNpPjsKPj4+PiArwqDCoMKgwqDCoMKgwqAgY2xv
Y2stbmFtZXMgPSAiZW1tY2NsayI7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGRyaXZlLWltcGVkYW5j
ZS1vaG0gPSA8NTA+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAjcGh5LWNlbGxzID0gPDA+Owo+Pj4+
ICvCoMKgwqDCoMKgIH07Cj4+Pj4gK8KgwqDCoCB9Owo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWVtbWMtcGh5LnR4dCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtZW1tYy1waHkudHh0
Cj4+Pj4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cj4+Pj4gaW5kZXggNTdkMjhjMGQ1Njk2Li4w
MDAwMDAwMDAwMDAKPj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3JvY2tjaGlwLWVtbWMtcGh5LnR4dAo+Pj4+ICsrKyAvZGV2L251bGwKPj4+PiBAQCAtMSw0
MyArMCwwIEBACj4+Pj4gLVJvY2tjaGlwIEVNTUMgUEhZCj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4+Pj4gLQo+Pj4+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOgo+Pj4+IC0gLSBjb21wYXRp
YmxlOiByb2NrY2hpcCxyazMzOTktZW1tYy1waHkKPj4+PiAtIC0gI3BoeS1jZWxsczogbXVzdCBi
ZSAwCj4+Pj4gLSAtIHJlZzogUEhZIHJlZ2lzdGVyIGFkZHJlc3Mgb2Zmc2V0IGFuZCBsZW5ndGgg
aW4gImdlbmVyYWwKPj4+PiAtwqDCoCByZWdpc3RlciBmaWxlcyIKPj4+PiAtCj4+Pj4gLU9wdGlv
bmFsIHByb3BlcnRpZXM6Cj4+Pj4gLSAtIGNsb2NrLW5hbWVzOiBTaG91bGQgY29udGFpbiAiZW1t
Y2NsayIuwqAgQWx0aG91Z2ggdGhpcyBpcyBsaXN0ZWQgYXMgb3B0aW9uYWwKPj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIChiZWNhdXNlIG1vc3QgYm9hcmRzIGNhbiBnZXQgYmFzaWMgZnVu
Y3Rpb25hbGl0eSB3aXRob3V0IGhhdmluZwo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
YWNjZXNzIHRvIGl0KSwgaXQgaXMgc3Ryb25nbHkgc3VnZ2VzdGVkLgo+Pj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgU2VlIC4uL2Nsb2NrL2Nsb2NrLWJpbmRpbmdzLnR4dCBmb3IgZGV0YWls
cy4KPj4+PiAtIC0gY2xvY2tzOiBTaG91bGQgaGF2ZSBhIHBoYW5kbGUgdG8gdGhlIGNhcmQgY2xv
Y2sgZXhwb3J0ZWQgYnkgdGhlIFNESENJIGRyaXZlci4KPj4+PiAtIC0gZHJpdmUtaW1wZWRhbmNl
LW9obTogU3BlY2lmaWVzIHRoZSBkcml2ZSBpbXBlZGFuY2UgaW4gT2htLgo+Pj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBvc3NpYmxlIHZhbHVlcyBh
cmUgMzMsIDQwLCA1MCwgNjYgYW5kIDEwMC4KPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJZiBub3Qgc2V0LCB0aGUgZGVmYXVsdCB2YWx1ZSBvZiA1
MCB3aWxsIGJlIGFwcGxpZWQuCj4+Pj4gLSAtIHJvY2tjaGlwLGVuYWJsZS1zdHJvYmUtcHVsbGRv
d246IEVuYWJsZSBpbnRlcm5hbCBwdWxsLWRvd24gZm9yIHRoZSBzdHJvYmUKPj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBsaW5lLsKgIElmIG5vdCBzZXQsIHB1bGwtZG93biBpcyBub3QgdXNlZC4KPj4+PiAt
IC0gcm9ja2NoaXAsb3V0cHV0LXRhcGRlbGF5LXNlbGVjdDogU3BlY2lmaWVzIHRoZSBwaHljdHJs
X290YXBkbHlzZWMgcmVnaXN0ZXIuCj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSWYgbm90IHNldCwgdGhl
IHJlZ2lzdGVyIGRlZmF1bHRzIHRvIDB4NC4KPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNYXhpbXVtIHZh
bHVlIDB4Zi4KPj4+PiAtCj4+Pj4gLUV4YW1wbGU6Cj4+Pj4gLQo+Pj4+IC0KPj4+PiAtZ3JmOiBz
eXNjb25AZmY3NzAwMDAgewo+Pj4+IC3CoMKgwqDCoCBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJr
MzM5OS1ncmYiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOwo+Pj4+IC3CoMKgwqDCoCAjYWRkcmVz
cy1jZWxscyA9IDwxPjsKPj4+PiAtwqDCoMKgwqAgI3NpemUtY2VsbHMgPSA8MT47Cj4+Pj4gLQo+
Pj4+IC0uLi4KPj4+PiAtCj4+Pj4gLcKgwqDCoMKgIGVtbWNwaHk6IHBoeUBmNzgwIHsKPj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LWVt
bWMtcGh5IjsKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweGY3ODAgMHgy
MD47Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JnNkaGNpPjsKPj4+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gImVtbWNjbGsiOwo+Pj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJpdmUtaW1wZWRhbmNlLW9obSA9IDw1MD47Cj4+
Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcGh5LWNlbGxzID0gPDA+Owo+Pj4+IC3CoMKg
wqDCoCB9Owo+Pj4+IC19Owo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+Pj4+IGluZGV4IDc5Nzk4Yzc0NzQ3
Ni4uNmUxYjFjZGVhNjgwIDEwMDY0NAo+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwKPj4+PiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sCj4+Pj4gQEAgLTE3Niw5
ICsxNzYsMTIgQEAgYWxsT2Y6Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtcGNpZS1waHkudHh0Cj4+Pj4g
Cj4+Pj4gwqDCoMKgwqDCoMKgIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+Pj4+IC3CoMKgwqDCoMKgwqDC
oCAicGh5QFswLTlhLWZdKyQiOgo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgZGVzY3JpcHRpb246
Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9yb2NrY2hpcC1lbW1jLXBoeS50eHQKPj4+PiArwqDCoMKgwqDCoMKgwqAgIl5w
aHlAWzAtOWEtZl0rJCI6Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCB0eXBlOiBvYmplY3QKPj4+
PiArCj4+PiAKPj4+IERyb3AgYmxhbmsgbGluZQo+Pj4gCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oCAkcmVmOiAvc2NoZW1hcy9waHkvcm9ja2NoaXAscmszMzk5LWVtbWMtcGh5LnlhbWwjCj4+Pj4g
Kwo+Pj4gCj4+PiBEcm9wIGJsYW5rIGxpbmUKPj4gCj4+IFRoZSByZXN0IG9mIHRoZSBkb2N1bWVu
dCBhbHNvIGhhcyB0aGVzZSBibGFuayBsaW5lcywgd2hpY2ggaXMgd2h5IEkndmUKPj4gYWxzbyBr
ZXB0IHRoZW0gaGVyZS4gQXJlIHlvdSBzdXJlIEkgc2hvdWxkIHJlbW92ZSB0aGVtPwo+IAo+IFll
cwo+IAo+PiAKPj4+IAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgdW5ldmFsdWF0ZWRQcm9wZXJ0
aWVzOiBmYWxzZQo+Pj4+IAo+Pj4+IMKgwqAgLSBpZjoKPj4+PiDCoMKgwqDCoMKgwqAgcHJvcGVy
dGllczoKPj4+IAo+Pj4gTm90aGluZyBpbiBleGFtcGxlPyBJc24ndCB0aGUgZXhhbXBsZSBmb3Ig
MzM5OT8KPj4+IAo+Pj4gV2Ugd2FudCBvbmx5IG9uZSBjb21wbGV0ZSBleGFtcGxlIG9mIHN1Y2gg
bXVsdGktY2hpbGRyZW4gZGV2aWNlcywgc28gdGhlCj4+PiBleGFtcGxlIGNhbiBiZSBtb3ZlZCBh
bmQgaW5jbHVkZWQgaW4gZXhpc3Rpbmcgb25lIGhlcmUuCj4+IAo+PiBUaGUgZXhhbXBsZSBpbiB0
aGlzIGZpbGUgaXMgYWN0dWFsbHkgZm9yIGByb2NrY2hpcCxyazMzOTktdXNiMnBoeWAgYW5kCj4+
IG5vdCBgcm9ja2NoaXAscmszMzk5LWVtbWMtcGh5YCB3aGljaCBpcyB3aHkgSSBoYXZlbid0IHRv
dWNoZWQgaXQuCj4gCj4gV2hhdD8gVGhhdCdzIGdyZWYsIG5vdCB1c2IycGh5Lgo+IAo+IFRoaXMg
cGF0Y2ggYW5kIHlvdXIgZXhwbGFuYXRpb25zIGFyZSB2ZXJ5IGNvbmZ1c2luZy4KPiAKPiAKPiAK
PiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgpTb3JyeSBhYm91dCB0aGlzLCBJJ20gc3RpbGwg
cXVpdGUgbmV3IHRvIGRvaW5nIHRoaXMuCkkgYXNrIHRoYXQgeW91IGJlIGEgYml0IG1vcmUgcGF0
aWVudCB3aXRoIG1lLCBJJ20gc3RpbGwgdHJ5aW5nIHRvIGxlYXJuCmhvdyB0aGluZ3Mgd29yayBo
ZXJlLi4uCgpSZWdhcmRzLApTaHJlc3RoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
