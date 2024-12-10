Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E12BBE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 13:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+R7M2GzU1F50y/T23xi402gGft9YTn0YONQS0x1nELo=; b=GxPkSWW4HmFkTv
	3LU9ximrlRDwYVxt1GTK4JlLlZCR2w3pZCs20Fu1fm0bqxyLZhxST81UvooYPpdNiXJouwKCm7tSQ
	U/YnC0lrBwr8eUFkuAnozNYKkDAT8peZcHTdBOostG/1oHaFDwJIzJsmui7eY3lhFPYhHwUUiCCJL
	oqIR1nDUQjXom0R63/2YI2+i35TxFE2LDEIs1hHe6Wz9Eq0O63KzwvY8jehUyqpYmFMDxBYPWsYtm
	egpR69j24NIrl0uqBSWHoffqSWwXQMJmRcnhYiknoZpEgc01K28UUjOElO/QpK/GDLBc9doef33D1
	5b8U6LLdj/DDtfeWVIow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL05G-0000000BYSR-1gW6;
	Tue, 10 Dec 2024 13:15:26 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL042-0000000BY7m-1Xfq;
	Tue, 10 Dec 2024 13:14:11 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5d3d74363cbso5600050a12.2;
        Tue, 10 Dec 2024 05:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733836449; x=1734441249; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NTo1WlZxDcXuwYlzN2yAn2e/Fnhdn41jTbwJ9a++r3U=;
        b=MiABauBhFkXi4kjl+Iht+sdl/L6MBFGm/cPKRv7MsKzyGxMSYM2vb1XXhxg7qODnsF
         Daj3ZCpeiolCigyet+YiocF1mJIOijrGftgg+Fftyadf4KI7EWMXB7BG/YeT75bTaiMx
         geA/E/ZoYUdNpxNf+tB75DEkOGF4ZHur3EF7cPeNYEnxFM6ls4UwmY+v1C/TIi+vKX+Q
         PzlfOexOcrsPB74kRw/hOffcM3ZBaEpQZQ0GUNktXSS6hrmCLEW7kyLX+T0wKkuyZ2EQ
         NLLtz/nb1Jk/gnvfukI5fsfs3Mhy4WEVdeCfbBRRprpVIaHEAi0dkaC4tvoDU5Y0epXO
         Bu1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733836449; x=1734441249;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NTo1WlZxDcXuwYlzN2yAn2e/Fnhdn41jTbwJ9a++r3U=;
        b=rDO7rnxp8gGOnMwnqMnN4a0Ri1UV+y+RRogZT3tBgJT/BaupECaxU+zOA0Fpyi3J8z
         MWGhpgT3q1eVW0A3SidSqCgIaMe538IRjNc9vcpfiDT0GfJjpzx/hFgmJLMHKHTSEKoV
         503uar7lzr/4HmQjSI2o7sKaz8nLHO+zQq7lRV/rc8/9c2fIf7/wF+jZDOXYe6GXJSij
         c/lU1pFvW0GnA+D9BpN78XpPvOsL5oU7ozhh87/ovBrU3/CoMWnBe00zZCr+Ri2R21Av
         SIfS57JYs+J+8M2nlqM9eYbfNShw2DmLdCGcKwrD7PsJykNEogON9MPKrsxelCBz4if8
         gWjg==
X-Forwarded-Encrypted: i=1; AJvYcCVuxJidHwIPJX4fZy5MAFgqo5bShSw7ZtdAUVJnbq1z7Wb8XkLD1a3sl7WBERrpDTbyedfVvb80eb+VNN7UVbU=@lists.infradead.org, AJvYcCX+H9LBzOY54P3ZuB6uLFYz94xSQrpWntRW3SwagiR9XckD8VCa2iLbw6JXsyn88oFUF1+F7Rz6Llw13adnim2N@lists.infradead.org
X-Gm-Message-State: AOJu0YyBV0czTphlqGIHudJpxBGymeIxHHGpOo724Op0/TQgvw8HYFBK
	IoGEpZsgZKMfOur+Zp7bMJxlsdTrfBUSbvlQwbffVtoqf/1mmsukbIsIOe9V9EuNT/VRNcSN/Y/
	0Ed/cP9pxgUw/rjj3OaH7854arYU=
X-Gm-Gg: ASbGnctmdpurqiFJ/spzinHP3EKcnt1XRXkdXDI15Li1cr2pz9oTRfyaltIjhPRXxi4
	JWTSm1p6YmfSiQqsAIyNLFDvcGI7UKfO4N4Ltuof1b+kjXcIalhgR0MUazMU=
X-Google-Smtp-Source: AGHT+IHVzXa45twYUZopjBlz3Jtr4P+Wzu5Go0KaAZG4d/AM8XCVGszRXr/gWupt2mkcpi97dJ9ZGq0TBZUR5kCx85s=
X-Received: by 2002:a05:6402:350f:b0:5d0:b455:36ad with SMTP id
 4fb4d7f45d1cf-5d4185faa5emr5425785a12.27.1733836448713; Tue, 10 Dec 2024
 05:14:08 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-5-pgwipeout@gmail.com>
 <e32fa593abfa6d08202b4f929e0b4bdb@manjaro.org>
In-Reply-To: <e32fa593abfa6d08202b4f929e0b4bdb@manjaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 08:13:59 -0500
Message-ID: <CAMdYzYp+MQVYr1tOMEOn62vXZGVEYrtd1p9vn6YQzXdrJgSdyA@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: add hevc power domain clock to rk3328
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Johan Jonker <jbx6244@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	shironeko <shironeko@tesaguri.club>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_051410_405562_9001A59A 
X-CRM114-Status: GOOD (  24.52  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgNTowNOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFBldGVyLAo+Cj4gT24gMjAyNC0xMi0xMCAwMjoz
MCwgUGV0ZXIgR2VpcyB3cm90ZToKPiA+IFRoZXJlIGlzIGEgcmFjZSBjb25kaXRpb24gYXQgc3Rh
cnR1cCBiZXR3ZWVuIGRpc2FibGluZyBwb3dlciBkb21haW5zCj4gPiBub3QKPiA+IHVzZWQgYW5k
IGRpc2FibGluZyBjbG9ja3Mgbm90IHVzZWQgb24gdGhlIHJrMzMyOC4gV2hlbiB0aGUgY2xvY2tz
IGFyZQo+ID4gZGlzYWJsZWQgZmlyc3QsIHRoZSBoZXZjIHBvd2VyIGRvbWFpbiBmYWlscyB0byBz
aHV0IG9mZiBsZWFkaW5nIHRvIGEKPiA+IHNwbGF0IG9mIGZhaWx1cmVzLiBBZGQgdGhlIGhldmMg
Y29yZSBjbG9jayB0byB0aGUgcmszMzI4IHBvd2VyIGRvbWFpbgo+ID4gbm9kZSB0byBwcmV2ZW50
IHRoaXMgY29uZGl0aW9uLgo+ID4KPiA+IHJjdTogSU5GTzogcmN1X3NjaGVkIGRldGVjdGVkIGV4
cGVkaXRlZCBzdGFsbHMgb24gQ1BVcy90YXNrczogeyAzLS4uLi4KPiA+IH0KPiA+IDEwODcgamlm
ZmllcyBzOiA4OSByb290OiAweDgvLgo+ID4gcmN1OiBibG9ja2luZyByY3Vfbm9kZSBzdHJ1Y3R1
cmVzIChpbnRlcm5hbCBSQ1UgZGVidWcpOgo+ID4gU2VuZGluZyBOTUkgZnJvbSBDUFUgMCB0byBD
UFVzIDM6Cj4gPiBOTUkgYmFja3RyYWNlIGZvciBjcHUgMwo+ID4gQ1BVOiAzIFVJRDogMCBQSUQ6
IDg2IENvbW06IGt3b3JrZXIvMzozIE5vdCB0YWludGVkIDYuMTIuMC1yYzUrICM1Mwo+ID4gSGFy
ZHdhcmUgbmFtZTogRmlyZWZseSBST0MtUkszMzI4LUNDIChEVCkKPiA+IFdvcmtxdWV1ZTogcG0g
Z2VucGRfcG93ZXJfb2ZmX3dvcmtfZm4KPiA+IHBzdGF0ZTogMjA0MDAwMDUgKG56Q3YgZGFpZiAr
UEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0tKQo+ID4gcGMgOiByZWdtYXBfdW5sb2Nr
X3NwaW5sb2NrKzB4MTgvMHgzMAo+ID4gbHIgOiByZWdtYXBfcmVhZCsweDYwLzB4ODgKPiA+IHNw
IDogZmZmZjgwMDA4MTEyM2MwMAo+ID4geDI5OiBmZmZmODAwMDgxMTIzYzAwIHgyODogZmZmZjJm
YTRjNjJjYWQ4MCB4Mjc6IDAwMDAwMDAwMDAwMDAwMDAKPiA+IHgyNjogZmZmZmQ3NGU2ZTY2MGVi
OCB4MjU6IGZmZmYyZmE0YzYyY2FlMDAgeDI0OiAwMDAwMDAwMDAwMDAwMDQwCj4gPiB4MjM6IGZm
ZmZkNzRlNmQyZjNhYjggeDIyOiAwMDAwMDAwMDAwMDAwMDAxIHgyMTogZmZmZjgwMDA4MTEyM2M3
NAo+ID4geDIwOiAwMDAwMDAwMDAwMDAwMDAwIHgxOTogZmZmZjJmYTRjMDQxMjAwMCB4MTg6IDAw
MDAwMDAwMDAwMDAwMDAKPiA+IHgxNzogNzcyMDJjMzEyMDNkMjA2NSB4MTY6IDZjNjQ2OTIwM2E3
MjY1NmMgeDE1OiA2YzZmNzI3NDZlNmY2MzJkCj4gPiB4MTQ6IDcyNjU3NzZmNzAzYTZlNmYgeDEz
OiAyMDYzNzY2NTY4MjA2ZTY5IHgxMjogNjE2ZDZmNjQyMDJjMzQzMQo+ID4geDExOiAzNDc4MzAy
MDZmNzQyMDMwIHgxMDogMzQzMDMwMzAzNDc4MzAyMCB4OSA6IGZmZmZkNzRlNmM3MzY5ZTAKPiA+
IHg4IDogMzAzMDMxNjY2NjIwNmU2OSB4NyA6IDIwNWQzODM3MzgzNTM3MzMgeDYgOiAzMzJlMzEy
MDIwMjAyMDViCj4gPiB4NSA6IGZmZmZkNzRlNmM3M2ZjODggeDQgOiBmZmZmZDc0ZTZjNzNmY2Q0
IHgzIDogZmZmZmQ3NGU2Yzc0MGI0MAo+ID4geDIgOiBmZmZmODAwMDgwMDE1NDg0IHgxIDogMDAw
MDAwMDAwMDAwMDAwMCB4MCA6IGZmZmYyZmE0YzA0MTIwMDAKPiA+IENhbGwgdHJhY2U6Cj4gPiBy
ZWdtYXBfdW5sb2NrX3NwaW5sb2NrKzB4MTgvMHgzMAo+ID4gcm9ja2NoaXBfcG11X3NldF9pZGxl
X3JlcXVlc3QrMHhhYy8weDJjMAo+ID4gcm9ja2NoaXBfcGRfcG93ZXIrMHgxNDQvMHg1ZjgKPiA+
IHJvY2tjaGlwX3BkX3Bvd2VyX29mZisweDFjLzB4MzAKPiA+IF9nZW5wZF9wb3dlcl9vZmYrMHg5
Yy8weDE4MAo+ID4gZ2VucGRfcG93ZXJfb2ZmLnBhcnQuMC5pc3JhLjArMHgxMzAvMHgyYTgKPiA+
IGdlbnBkX3Bvd2VyX29mZl93b3JrX2ZuKzB4NmMvMHg5OAo+ID4gcHJvY2Vzc19vbmVfd29yaysw
eDE3MC8weDNmMAo+ID4gd29ya2VyX3RocmVhZCsweDI5MC8weDRhOAo+ID4ga3RocmVhZCsweGVj
LzB4ZjgKPiA+IHJldF9mcm9tX2ZvcmsrMHgxMC8weDIwCj4gPiByb2NrY2hpcC1wbS1kb21haW4g
ZmYxMDAwMDAuc3lzY29uOnBvd2VyLWNvbnRyb2xsZXI6IGZhaWxlZCB0byBnZXQgYWNrCj4gPiBv
bgo+ID4gZG9tYWluICdoZXZjJywgdmFsPTB4ODgyMjAKPiA+Cj4gPiBGaXhlczogNTJlMDJkMzc3
YTcyICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBjb3JlIGR0c2kgZmlsZSBmb3IKPiA+IFJL
MzMyOCBTb0NzIikKPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+Cj4KPiBXaGlsZSBJIHdhcyB1bmFibGUgdG8gZm9ybWFsbHkgdmVyaWZ5IHRoaXMgY2xv
Y2sgYXNzaWdubWVudCwKPiBpLmUuIGJ5IHVzaW5nIHRoZSBSSzMzMjggVFJNIG9yIHRoZSBkb3du
c3RyZWFtIGtlcm5lbCBzb3VyY2UKPiBmcm9tIFJvY2tjaGlwLCBpdCBtYWtlcyBwZXJmZWN0IHNl
bnNlIHRvIG1lLiAgVGhhbmtzIGZvciB0aGUKPiBwYXRjaCwgYW5kIHBsZWFzZSBmZWVsIGZyZWUg
dG8gaW5jbHVkZToKPgo+IFJldmlld2VkLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJv
Lm9yZz4KCkl0IGlzIHVuZm9ydHVuYXRlIHRoZSBUUk0gZG9lc24ndCBpbmNsdWRlIHRoZSBjbG9j
ayBtYXBzLCBiZWNhdXNlIHRoZXkKYXJlIGV4dHJlbWVseSBoZWxwZnVsIHdoZW4gb25lIGNhbiBh
Y3F1aXJlIHRoZW0uIEl0IGFsc28gZG9lc24ndCBoZWxwCnRoYXQgdGhlIFRSTSByZWdpc3RlciBk
ZWZpbml0aW9uIG9ubHkgcmVmZXJyZWQgdG8gdGhpcyBhcyAicGxsIi4gSSB3YXMKc2VudCBzcGVj
aWZpY2FsbHkgdGhlIHVzYjMgcGh5IGNsb2NrIG1hcCBmb3IgbXkgd29yayBvbiB0aGUgZHJpdmVy
LAp3aGljaCBoYWQgdGhlIGxvY2F0aW9uIG9mIGVhY2ggc3dpdGNoIGFuZCBkaXZpZGVyIGFsb25n
IHdpdGggdGhlCnJlZ2lzdGVyIGFuZCBiaXQgdGhhdCBjb250cm9sbGVkIGl0LiBUaGF0IGNvbWJp
bmVkIHdpdGggdGhlIFRSTQpyZWdpc3RlciBtYXAgYWxsb3dlZCBtZSB0byBmaW5kIHRoaXMgZXJy
b3IuCgpUaGFua3MhClBldGVyCgo+Cj4gPiAtLS0KPiA+Cj4gPiAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzMjguZHRzaSB8IDEgKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzMyOC5kdHNpCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0
c2kKPiA+IGluZGV4IDA1OTdkZTQxNWZlMC4uN2Q5OTJjM2MwMWNlIDEwMDY0NAo+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjguZHRzaQo+ID4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjguZHRzaQo+ID4gQEAgLTMzMyw2ICszMzMsNyBA
QCBwb3dlcjogcG93ZXItY29udHJvbGxlciB7Cj4gPgo+ID4gICAgICAgICAgICAgICAgICAgICAg
IHBvd2VyLWRvbWFpbkBSSzMzMjhfUERfSEVWQyB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICByZWcgPSA8UkszMzI4X1BEX0hFVkM+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZjcnUgU0NMS19WRU5DX0NPUkU+Owo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwwPjsKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICB9Owo+ID4gICAgICAgICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBS
SzMzMjhfUERfVklERU8gewoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
