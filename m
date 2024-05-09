Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 516E2C10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TVaE/ZOIS1ve6H1KQ6SOA7lXkvgVMOvRCUp7v8SSy0=; b=GNhbqTGF/lYDl7
	g5IaABWt0D4BOyPobLzBtZgsGG+NX3T4Il86eF9ArIC/vOoK6ByqECZs6iOCdqqpNMP54pW456Don
	6fYXOV+tpu1Ln425/4kr65Y6jC3ct9Ha88MxeqvvjLQbk99fOJOLxrei31C42VchjR4J01i7BNyhd
	39sWtv6yP5LarOrqJcrhmQaKr3U8XeIHqM43s/d2yYaV8TtoXRNqmC8OBlwYGnnzb4i+e6OYIVdL9
	USesE9mw8DCLW9preZi8xUDNonJXYsXROydnQgYcBo+1mu3GoGwfkdQbQAZSd7OZBqsLv+fCYYYTk
	GiPfQHB28mgQtO6Z+iOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4wR9-00000000R6D-2aXn;
	Thu, 09 May 2024 05:35:23 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4wR5-00000000R4M-33We;
	Thu, 09 May 2024 05:35:21 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5b208cc22feso227831eaf.3;
        Wed, 08 May 2024 22:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715232917; x=1715837717; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UKzxn2kAVfFNER0CXFQyB1cHEfp+OjAZ2AhDST5fDu0=;
        b=ZDDOgv46cvaF1h+CITigsTNJITWAGJuz2P0mewDTvHgOn/Bb7Cx3C1E41UrZAR+P3I
         aE1PtnODLtWO2ekGz6RofwTrQDuI3TwPfqy7pPIwAiIo0JMMseiRAulVpS0AAab7Fnzv
         AJslS27zVFQu7rctyMxAmNpf1/qzZkFfm2gVbKbNLzzZQLfdMBPb9v988rsVp7UF5BMz
         G1Z1sVRyi2B9pFcoopHiEMtsv+bx9MWolsYWezbC3Y89eWUlAEq5Bmg3U0DiJdyGSTzi
         gOB3lmnFfSWAg7GcgRw7pRgy6PjfwGjYa9lRIxGMy+y9ol67QIyUS1ChAdKTVIehn3Et
         kIyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715232917; x=1715837717;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UKzxn2kAVfFNER0CXFQyB1cHEfp+OjAZ2AhDST5fDu0=;
        b=vvJu1FPR6LFsNVHXM6xK9WGv4CeFKLQ+Mwhx0rqHm0dFhFShAS+6D+nAvNpIKNTeRb
         d8jO0SwUtZdBDJWY/yC++GVMcvg4O1fhKQ2BuPJkMkUbKQBwATF1q/vFosJ6cEY+pbIb
         A0kcsQZh0CcIuvk9EIdBYDPIRO3RIA3Q4y8Vmbr3MVNyNOxwKrLvdMtjh42x0DoZX5nv
         DonFFAoTZ5wtRbGU8R1m3f+4TCkPj1a62wyLM53tNkw9kaEOjU55DWfW/ZP/wh6r4mR1
         GPAmxq/xxh16SzuhGLQAC+vHEg3+agl1asZ92Wlf+X+3hhPNU4eDetwrHThd6VTN+JL4
         saoQ==
X-Forwarded-Encrypted: i=1; AJvYcCULHIpxAwcoqYFFm9ziHhmzDndRBZafYL/fe9xYJU8yeE15DnOp7OBque+nWUtvepkZK8wyYB2iksXm9i6YW4m8SrumON7PbKWHkpgIzlJePS/i9rnqv9WRIuHiXzDMfOMdRCX0aqNs0j6NXDgSaxFLzOKV+Aw3Cqk=
X-Gm-Message-State: AOJu0YzVzhxkfYYDV241SxhfB8evsj00wDdCH1sEzfNNIxfVreIuO3eK
	QueIGDCuC+5QhXY4gf9eKzOvwkJPboxSCHqlcoRsC4tdbjnTlf3bs7ijiLSWVw25MwUW1uC4Fae
	7YTUX6D6SHCtI6nVuYlgYWUehtmYfH/C1RWY=
X-Google-Smtp-Source: AGHT+IHd2RCFuGDk9SLLJIqDTUOQEXeig/MLqJhEqch6QMXawp2yuqGzt4wgGL4dSMB0R2kWbJDsHg2oIjjuw2dZ8Ho=
X-Received: by 2002:a4a:ab05:0:b0:5b2:3782:7847 with SMTP id
 006d021491bc7-5b24d73ada9mr4955478eaf.7.1715232917458; Wed, 08 May 2024
 22:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com> <2543817.5xW6y1K4kI@bagend>
 <CABjd4Yw-JA5=SfcgtVNYZN37hFbqf14Ut1yHTSz1YZiZ3NQ-pw@mail.gmail.com>
 <CANAwSgTU7UF_RaNnVSZR7SehQqC7Eo6D=JqT11gN7jK2diN_Ug@mail.gmail.com>
 <a1fb157c88f420cd85d56edff2a4d85b@manjaro.org> <CABjd4YwHGYRrpMFn1uoQMRh3Tp4-py111tZiCGgf7afWxNGXnQ@mail.gmail.com>
 <36ecf59460430bb7267b71c1f49fe123@manjaro.org> <CANAwSgTKkFQNW5egYu5cdWx4nkwVL1tXigYUvdnAJRUOdCrxpw@mail.gmail.com>
 <CABjd4Yy0P0bwF68bYemvDiGgyrxmHy5g8A3mT7YdcqBq1rYCGQ@mail.gmail.com>
In-Reply-To: <CABjd4Yy0P0bwF68bYemvDiGgyrxmHy5g8A3mT7YdcqBq1rYCGQ@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 9 May 2024 11:05:01 +0530
Message-ID: <CANAwSgQaVVVwB9J+2JDE1hygUvL1zPDjGxRZ6rVwbsUQ=Uxwvw@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
To: Alexey Charkov <alchark@gmail.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_223519_965372_E823F873 
X-CRM114-Status: GOOD (  64.76  )
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

SGkgQWxleGV5LAoKT24gV2VkLCA4IE1heSAyMDI0IGF0IDE4OjUyLCBBbGV4ZXkgQ2hhcmtvdiA8
YWxjaGFya0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXkgOCwgMjAyNCBhdCA0OjUx
4oCvUE0gQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBI
aSBEcmFnYW4sIEFsZXhleSwKPiA+Cj4gPiBPbiBXZWQsIDggTWF5IDIwMjQgYXQgMTg6MDgsIERy
YWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gSGVsbG8g
QWxleGV5LAo+ID4gPgo+ID4gPiBPbiAyMDI0LTA1LTA4IDE0OjMwLCBBbGV4ZXkgQ2hhcmtvdiB3
cm90ZToKPiA+ID4gPiBPbiBXZWQsIE1heSA4LCAyMDI0IGF0IDM6NDbigK9QTSBEcmFnYW4gU2lt
aWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4gPiA+ID4+IE9uIDIwMjQtMDUtMDggMTM6
NDAsIEFuYW5kIE1vb24gd3JvdGU6Cj4gPiA+ID4+ID4gT24gTW9uLCA2IE1heSAyMDI0IGF0IDE4
OjI0LCBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+PiA+
PiBPbiBNb24sIE1heSA2LCAyMDI0IGF0IDQ6MjnigK9QTSBEaWVkZXJpayBkZSBIYWFzCj4gPiA+
ID4+ID4+IDxkaWRpLmRlYmlhbkBja25vdy5vcmc+IHdyb3RlOgo+ID4gPiA+PiA+PiA+IE9uIE1v
bmRheSwgNiBNYXkgMjAyNCAxMTozNjozMyBDRVNUIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4g
PiA+PiA+PiA+ID4gVGhpcyBlbmFibGVzIHRoZSBvbi1jaGlwIHRoZXJtYWwgbW9uaXRvcmluZyBz
ZW5zb3IgKFRTQURDKSBvbiBhbGwKPiA+ID4gPj4gPj4gPiA+IFJLMzU4OChzKSBib2FyZHMgdGhh
dCBkb24ndCBoYXZlIGl0IGVuYWJsZWQgeWV0LiBJdCBwcm92aWRlcyB0ZW1wZXJhdHVyZQo+ID4g
PiA+PiA+PiA+ID4gbW9uaXRvcmluZyBmb3IgdGhlIFNvQyBhbmQgZW1lcmdlbmN5IHRoZXJtYWwg
c2h1dGRvd25zLCBhbmQgaXMgdGh1cwo+ID4gPiA+PiA+PiA+ID4gaW1wb3J0YW50IHRvIGhhdmUg
aW4gcGxhY2UgYmVmb3JlIENQVSBEVkZTIGlzIGVuYWJsZWQsIGFzIGhpZ2ggQ1BVCj4gPiA+ID4+
ID4+ID4gPiBvcGVyYXRpbmcgcGVyZm9ybWFuY2UgcG9pbnRzIGNhbiBvdmVyaGVhdCB0aGUgY2hp
cCBxdWlja2x5IGluIHRoZQo+ID4gPiA+PiA+PiA+ID4gYWJzZW5jZSBvZiB0aGVybWFsIG1hbmFn
ZW1lbnQuCj4gPiA+ID4+ID4+ID4gPgo+ID4gPiA+PiA+PiA+ID4gU2lnbmVkLW9mZi1ieTogQWxl
eGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+ID4gPiA+PiA+PiA+ID4gLS0tCj4gPiA+
ID4+ID4+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5k
dHMgICAgICAgICAgICAgICB8IDQgKysrKwo+ID4gPiA+PiA+PiA+ID4gIDggZmlsZXMgY2hhbmdl
ZCwgMzIgaW5zZXJ0aW9ucygrKQo+ID4gPiA+PiA+PiA+ID4KPiA+ID4gPj4gPj4gPiA+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+
ID4gPiA+PiA+PiA+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2Nr
LTViLmR0cyBpbmRleAo+ID4gPiA+PiA+PiA+ID4gYjhlMTViNzZhOGE2Li4yMWU5NmMyMTJkZDgg
MTAwNjQ0Cj4gPiA+ID4+ID4+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1yb2NrLTViLmR0cwo+ID4gPiA+PiA+PiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+ID4gPj4gPj4gPiA+IEBAIC03NDIs
NiArNzQyLDEwIEBAIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ID4gPiA+PiA+PiA+ID4gICAgICAg
fTsKPiA+ID4gPj4gPj4gPiA+ICB9Owo+ID4gPiA+PiA+PiA+ID4KPiA+ID4gPj4gPj4gPiA+ICsm
dHNhZGMgewo+ID4gPiA+PiA+PiA+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiA+PiA+
PiA+ID4gK307Cj4gPiA+ID4+ID4+ID4gPiArCj4gPiA+ID4+ID4+ID4gPiAgJnVhcnQyIHsKPiA+
ID4gPj4gPj4gPiA+ICAgICAgIHBpbmN0cmwtMCA9IDwmdWFydDJtMF94ZmVyPjsKPiA+ID4gPj4g
Pj4gPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ID4gPj4gPj4gPgo+ID4gPiA+PiA+PiA+
IEkgYnVpbHQgYSBrZXJuZWwgd2l0aCB2MyBvZiB5b3VyIHBhdGNoIHNldCBhbmQgc29tZW9uZSB0
ZXN0ZWQgaXQgb24gYSBST0NLIDVCCj4gPiA+ID4+ID4+ID4gJ2ZvciBtZScgYW5kIGl0IGhhZCB0
aGUgZm9sbG93aW5nIGxpbmUgaW4gZG1lc2c6Cj4gPiA+ID4+ID4+ID4KPiA+ID4gPj4gPj4gPiBy
b2NrY2hpcC10aGVybWFsIGZlYzAwMDAwLnRzYWRjOiBNaXNzaW5nIHJvY2tjaGlwLGdyZiBwcm9w
ZXJ0eQo+ID4gPiA+PiA+PiA+Cj4gPiA+ID4+ID4+ID4gSSdtIGd1ZXNzaW5nIHRoYXQgdHVybmVk
IHVwIGR1ZSB0byBlbmFibGluZyB0c2FkYywgYnV0IChhbHNvKSBpbiB2NCBJIGRpZG4ndAo+ID4g
PiA+PiA+PiA+IHNlZSBhIGNoYW5nZSB3cnQgInJvY2tjaGlwLGdyZiIuCj4gPiA+ID4+ID4+ID4g
U2hvdWxkIHRoYXQgYmUgZG9uZT8gKGFza2luZzsgSSBkb24ndCBrbm93KQo+ID4gPiA+PiA+Pgo+
ID4gPiA+PiA+PiBJJ20gZ2V0dGluZyB0aGUgc2FtZS4gTmVpdGhlciB0aGUgbWFpbmxpbmUgVFNB
REMgZHJpdmVyIFsxXSwgbm9yIHRoZQo+ID4gPiA+PiA+PiBkb3duc3RyZWFtIG9uZSBbMl0gc2Vl
bXMgdG8gdXNlIHRoZSBncmYgcG9pbnRlciBvbiBSSzM1ODggYXQgYWxsLiBJdAo+ID4gPiA+PiA+
PiBzdGlsbCB3b3JrcyBpbiBzcGl0ZSBvZiB0aGF0IHdhcm5pbmcsIGFsdGhvdWdoIEkgY2FuJ3Qg
c2VlIGhvdyAob3IgaWYpCj4gPiA+ID4+ID4+IGl0IGNvbmZpZ3VyZXMgdGhlIHJlc2V0IG1lY2hh
bmlzbSB3aXRob3V0IHRob3NlIEdSRiByZWdpc3RlcnMuCj4gPiA+ID4+ID4+Cj4gPiA+ID4+ID4+
IEJlc3QgcmVnYXJkcywKPiA+ID4gPj4gPj4gQWxleGV5Cj4gPiA+ID4+ID4+Cj4gPiA+ID4+ID4+
IFsxXQo+ID4gPiA+PiA+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBf
dGhlcm1hbC5jI244MTgKPiA+ID4gPj4gPj4gWzJdCj4gPiA+ID4+ID4+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9yYWR4YS9rZXJuZWwvYmxvYi9zdGFibGUtNS4xMC1yb2NrNS9kcml2ZXJzL3RoZXJtYWwv
cm9ja2NoaXBfdGhlcm1hbC5jI0w5NjEKPiA+ID4gPj4gPj4KPiA+ID4gPj4gPgo+ID4gPiA+PiA+
IElmIHRoZSBmb2xsb3dpbmcgY2hhbmdlcyBmaXggdGhlIHdhcm5pbmcuCj4gPiA+ID4+ID4KPiA+
ID4gPj4gPiBDaGVja2luZyB0aGUgUm9ja2NoaXAgUkszNTg4IFRSTSBWMS4wLVBhcnQxLTIwMjIw
MzA5LnBkZgo+ID4gPiA+PiA+IFBNVTFHUkZfU09DX0NPTjMgd2hpY2ggaGFzIHRzYWRjX3NodXRf
cmVzZXRfdHJpZ2dlcl9lbiBiaXQKPiA+ID4gPj4gPiB0byBjb250cm9sIHRoZSBFbmFibGUgVFNB
REMgc2h1dCByZXNldCB0cmlnZ2VyIGZvciBERFIgZmFpbCBzYWZlLgo+ID4gPiA+PiA+Cj4gPiA+
ID4+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5k
dHNpCj4gPiA+ID4+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRz
aQo+ID4gPiA+PiA+IGluZGV4IDg1YzI1ZDVlZmRhZC4uNTQ5MGE0NGUwOTNlIDEwMDY0NAo+ID4g
PiA+PiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4g
PiA+ID4+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kK
PiA+ID4gPj4gPiBAQCAtMjY2Miw2ICsyNjYyLDcgQEAgdHNhZGM6IHRzYWRjQGZlYzAwMDAwIHsK
PiA+ID4gPj4gPiAgICAgICAgICAgICAgICAgcm9ja2NoaXAsaHctdHNodXQtdGVtcCA9IDwxMjAw
MDA+Owo+ID4gPiA+PiA+ICAgICAgICAgICAgICAgICByb2NrY2hpcCxody10c2h1dC1tb2RlID0g
PDA+OyAvKiB0c2h1dCBtb2RlIDA6Q1JVCj4gPiA+ID4+ID4gMTpHUElPICovCj4gPiA+ID4+ID4g
ICAgICAgICAgICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LXBvbGFyaXR5ID0gPDA+OyAvKiB0c2h1
dCBwb2xhcml0eQo+ID4gPiA+PiA+IDA6TE9XIDE6SElHSCAqLwo+ID4gPiA+PiA+ICsgICAgICAg
ICAgICAgICByb2NrY2hpcCxwbXUgPSA8JnBtdTFncmY+Owo+ID4gPiA+PiA+ICAgICAgICAgICAg
ICAgICBwaW5jdHJsLTAgPSA8JnRzYWRjX2dwaW9fZnVuYz47Cj4gPiA+ID4+ID4gICAgICAgICAg
ICAgICAgIHBpbmN0cmwtMSA9IDwmdHNhZGNfc2h1dD47Cj4gPiA+ID4+ID4gICAgICAgICAgICAg
ICAgIHBpbmN0cmwtbmFtZXMgPSAiZ3BpbyIsICJvdHBvdXQiOwo+ID4gPiA+Pgo+ID4gPiA+PiBC
YXNpY2FsbHksIHRoZSByb2NrY2hpcF90aGVybWFsIGRyaXZlciBkb2Vzbid0IHVzZSBHUkYgYXQg
YWxsIG9uCj4gPiA+ID4+IHRoZSBSSzM1ODgocyksIHNvIHZpcnR1YWxseSBhbnkgdmFsdWUgc3Bl
Y2lmaWVkIGFzICJyb2NrY2hpcCxwbXUiCj4gPiA+ID4+IGNhbiBlbGltaW5hdGUgdGhlIHdhcm5p
bmcuCj4gPiA+ID4KPiA+ID4gPiBUbyBtZSwgc3BlY2lmeWluZyBhbiBhcmJpdHJhcnkgR1JGIGlu
IHRoZSBkZXZpY2UgdHJlZSBqdXN0IHRvIHNpbGVuY2UKPiA+ID4gPiBhIHdhcm5pbmcgdGhhdCB0
aGUgY3VycmVudCBkcml2ZXIgZW1pdHMgc291bmRzIGJhZC4gSWYgdGhlIEdSRiBpcyBub3QKPiA+
ID4gPiBuZWVkZWQgZm9yIFRTQURDIGluaXRpYWxpemF0aW9uIG9uIFJLMzU4OCwgdGhlbiBpdCBz
aG91bGQgbm90IGJlIGluCj4gPiA+ID4gdGhlIGRldmljZSB0cmVlIChhbmQgaXQgbG9va3MgbGlr
ZSB0aGUgY2FzZSBoZXJlKSAtIG90aGVyd2lzZSB0aGUKPiA+ID4gPiBkZXZpY2UgdHJlZSBjZWFz
ZXMgdG8gYmUgYSB0cnV0aGZ1bCBkZXNjcmlwdGlvbiBvZiB0aGUgaGFyZHdhcmUuCj4gPiA+Cj4g
PiA+IEFmdGVyIHRoaW5raW5nIGEgYml0IG1vcmUgYWJvdXQgaXQsIEkgdGhpbmsgeW91J3JlIHJp
Z2h0LiAgSWYgdGhlCj4gPiA+IHJvY2tjaGlwX3RoZXJtYWwgZHJpdmVyIGV2ZXIgZ2V0cyBjaGFu
Z2VkIHRvIHJlcXVpcmUgdXNlIG9mIEdSRiBvbgo+ID4gPiB0aGUgUkszNTg4KHMpLCBvbmx5IHRo
ZW4gYWRkaW5nIHRoYXQgcHJvcGVydHkgdG8gdGhlIERUIHdvdWxkIGJlCj4gPiA+IHRoZSByaWdo
dCB0aGluZyB0byBkby4KPiA+ID4KPiA+ID4gPiBJJ20gbm90IHN1cmUgaWYgd2UgbmVlZCB0aGF0
ICJERFIgZmFpbCBzYWZlIiBsb2dpYyBtZW50aW9uZWQgaW4gdGhlCj4gPiA+ID4gVFJNIHRoYXQg
QW5hbmQgcXVvdGVkLCBnaXZlbiB0aGF0IG5laXRoZXIgUm9ja2NoaXAgZG93bnN0cmVhbSBub3IK
PiA+ID4gPiBjdXJyZW50IG1haW5saW5lIGRyaXZlciBpbXBsZW1lbnQgaXQsIGFuZCBmdXJ0aGVy
bW9yZSBub25lIG9mIHRoZQo+ID4gPiA+IG90aGVyIFNvQyByZXZpc2lvbnMgc3VwcG9ydGVkIGJ5
IHRoZSBkcml2ZXIgbWVudGlvbiBpdC4gSWYgd2UgZG8gaW4KPiA+ID4gPiBmYWN0IG5lZWQgaXQs
IHdlIHNob3VsZCBwcm9iYWJseSBmaXJzdCB0ZXN0IGl0IGFsb25nIHdpdGggcmVzcGVjdGl2ZQo+
ID4gPiA+IGRyaXZlciBjb2RlIGJlZm9yZSBjb21taXR0aW5nIHRvIGFuIHVwc3RyZWFtIERUIGFu
ZCB0aHVzIG1ha2luZyBpdAo+ID4gPiA+IHBhcnQgb2YgdGhlIEFCSS4KPiA+ID4gPgo+ID4gPiA+
IElNTyB0aGlzIGlzIG1vcmUgb2YgYSBkcml2ZXIgaXNzdWUgdGhhbiBhIGRldmljZSB0cmVlIGlz
c3VlOiBtYXliZSBhCj4gPiA+ID4gc21hbGwgcGF0Y2ggdG8gZGVtb3RlIHRoaXMgd2FybmluZyB0
byBhbiBpbmZvIG1lc3NhZ2Ugd291bGQgYmUgYmV0dGVyPwo+ID4gPiA+IEl0J3MgaGFybWxlc3Mg
YW55d2F5Lgo+ID4gPgo+ID4gPiBBZnRlciBoYXZpbmcgc2Vjb25kIHRob3VnaHRzLCBJJ2xsIHNl
ZSB0byBpbXByb3ZlIHRoZSByb2NrY2hpcF90aGVybWFsCj4gPiA+IGRyaXZlciB0byBlbWl0IHRo
YXQgd2FybmluZyBvbmx5IHdoZW4gaGF2aW5nICJyb2NrY2hpcCxncmYiIHNwZWNpZmllZAo+ID4g
PiBpcyBhY3R1YWxseSBuZWVkZWQgZm9yIHRoZSBwYXJ0aWN1bGFyIFJvY2tjaGlwIFNvQy4gIFRo
YXQncyBob3cgaXQKPiA+ID4gc2hvdWxkCj4gPiA+IGJlaGF2ZSwgeWVsbGluZyBhYm91dCB0aGUg
d3JvbmcgaGFyZHdhcmUgZGVzY3JpcHRpb24gb25seSB3aGVuIHRoYXQncwo+ID4gPiBhY3R1YWxs
eSB0aGUgY2FzZS4KPiA+Cj4gPiBXZSBuZWVkIHRvIGhhbmRsZSB0aGUgR1JGIFRTQURDIGZvciBy
azM1ODggdG11IGRyaXZlci4KPiA+Cj4gPiBGb3IgcmszNTY4IHdlIGNvbnRyb2wgdGhlIEdSRiBU
U0FEQyB3aGljaCBzZWVtcyB0byBiZSBtaXNzaW5nIGluIHJrMzU4OAo+Cj4gUGxlYXNlIG5vdGUg
dGhhdCBmb3IgUkszNTY4IHRoZSBHUkYgcmVnaXN0ZXJzIGFyZSB1c2VkIHRvIGFjdHVhbGx5Cj4g
ZW5hYmxlIHRoZSB0aGVybWFsIHNlbnNpbmcgKGFzIGNhbiBiZSBzZWVuIGJ5IHRoZSBsaW5rIHlv
dSBwb3N0ZWQpLAo+IHdoaWNoIGRvZXNuJ3Qgc2VlbSB0byBiZSBuZWNlc3Nhcnkgb24gUkszNTg4
IGFzIGl0IHdvcmtzIGp1c3QgZmluZQo+IHdpdGhvdXQgaXQuIEZ1cnRoZXJtb3JlLCBSSzM1Njgg
aGFzIGEgbmVhcmx5IGlkZW50aWNhbCBHUkYgcmVnaXN0ZXIgaW4KPiBQTVVfR1JGX1NPQ19DT04z
IChzZWUgUkszNTY4IFRSTSBwYXJ0MSBwYWdlIDIwNikgdG8gdGhlIG9uZSB5b3UKPiBwcm9wb3Nl
ZCByZWZlcmVuY2luZyBpbiB0aGUgRFQgZm9yIFJLMzU4OCwgYnV0IHRoYXQgcmVnaXN0ZXIgaXMg
bm90Cj4gdXNlZCBpbiB0aGUgVFNBREMgZHJpdmVyIGVpdGhlci4gSXQgb25seSB1c2VzIHRoZSBU
U0FEQ19DT04gcmVnaXN0ZXIKPiB3aXRoaW4gU1lTX0dSRiAob2Zmc2V0IDB4NjAwKSBvbiBSSzM1
NjguCj4KCkkgZmVlbCB0aGVyZSBpcyBubyBQTVVHUkYgY29uZmlndXJhdGlvbiBmb3IgVFMtQURD
IG9uIFJLMzU4OCBTb0MgYXMgcGVyIHRoZSBUUk0uClNvIHdlIGNhbiBpZ25vcmUgdGhlIHdhcm5p
bmcuCgo+IFRoZSBUUk0gZm9yIFJLMzU4OCBkb2Vzbid0IGRvY3VtZW50IGFueSBUU0FEQ19DT04g
cmVnaXN0ZXIsIGV2ZW4KPiB0aG91Z2ggdGhlcmUgaXMgYSAjZGVmaW5lIGluIHRoZSBjdXJyZW50
IHVwc3RyZWFtIGRyaXZlciB0aGF0IG1lbnRpb25zCj4gYW4gb2Zmc2V0IG9mIDB4MTAwIHRvIHRo
YXQgcmVnaXN0ZXIgd2l0aGluIHRoZSBHUkYuIEknbSBub3Qgc3VyZSBpdAo+IG1lYW5zIDB4MTAw
IHdpdGhpbiBQTVUxX0dSRiBhcyB5b3UgbWVudGlvbmVkIC0gZG8geW91IGhhdmUgYW55Cj4gcG9p
bnRlcnMgdG8gc3VwcG9ydCB0aGF0Pwo+CgpZZXMsIHlvdSBjYW4gZHJvcCB0aGVtIGFzIHRoZXJl
IGlzIG5vIFJLMzU4OF9HUkYwX1RTQURDX0NPTiByZWdpc3Rlcgp0byBzdXBwb3J0IHN1Y2ggc2V0
dGluZ3MuCgpUaGFua3MKCi1BbmFuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
