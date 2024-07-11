Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FEF4C3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 11:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mViyMOSK/2pbp8t65Nsy/2Uma3h/YKKxhDox74MiWpQ=; b=3mf3Cw4RMrYCoH
	PJRGoI6ymQcKlO6LOZIhMXZGXh+JzcC8narNoO2m4QEYA1jCFI30yoi3qJQwg4B7Bg+HDmON9KElA
	JItpMgDd0pCFM5WChqMJOz57i9KPUpw7p8+gnMos4b24opduAXXJnP3q2PxOAVX84eX0DuTwHf/Fl
	Vueox1SdZhhIEbWrpcZ+jwlChAIua4/k6fb4Nt0ZrqUhmocVkU1tlibw9aJ+nXL0lpwiCiBdZmR+d
	UUUQMqCPvKlqS9Exd+Vk0UdDT8mHLQew+1sJHPoSnmIoCfolTDqVVhb071/hG6+Whbfe77V2yLpQA
	u0rtvVUJP2kCLdbc3Q6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRs8B-0000000Dnhb-230D;
	Thu, 11 Jul 2024 11:38:35 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRs7t-0000000Dnf3-1RMP;
	Thu, 11 Jul 2024 11:38:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BA2A1CE1821;
	Thu, 11 Jul 2024 11:38:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEEA8C116B1;
	Thu, 11 Jul 2024 11:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720697895;
	bh=gzjwilpCt6A2I2VABW8kvku49One7ZUnvij/YpLG/Ik=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=KdMXCM/QcGtXg41MwyyaJoPvrB/AubK1mihkilTbRAQJSSOC5+M/U8jPO8Dhd7ej3
	 ax8BV+6cpeNmHW8zD49/hrun8A+123yXroTzmSDuq7EOF5NiP4u/z5t1UFKX8MTfcP
	 xuCV7P1kXpGOEaB/evpQtqqOaailxn5eUGJVsxRexXNoQMdECg9jodWhSODCEGCYhK
	 Y/RL1gG6thZJ180AOeQN0X/FjaB+uffHkwyi2VK8Je9Wa95IUahNOpFXNC9axDYc8B
	 mUkppzRMstgZPC8mpnbBHBuniUraD434MfME8BWCL+aUctFBJnRnr3MUSJEORn6V+K
	 sK5Bx4s3VQxow==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ee77db6f97so12745031fa.2;
        Thu, 11 Jul 2024 04:38:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXbeVawHqEgU/zeltD0r1y5B7FarGrlAmTdj6LFc8r+kFcVsmdYp4HLitsNjricbOEfL8AbsZvY6l76D8Y8aIeXTvTUxlIIO6O697xEUXGFPN8ZYZ50VIlBuPb0uWJGfkWgOFu84OwhBKFW5UT0MquGpOV+5lRiJHw=
X-Gm-Message-State: AOJu0YzBQKzcs0bG+Rwu7aKV2+NXgF3gamDyhYF20USvUYgJrapsNWMo
	Fembm2JkwuVmrmerJ5MrsJJSXmmHMeNgMChHEnpEh/2JMetdAvHWXbjzGISXTaDCq4hupj76vlG
	9+iFXbpHtaI8IizbxPosiiKq0H2g=
X-Google-Smtp-Source: AGHT+IEfmuPHxaXctRdUhUkgULwRV03dNp3jlTso3tk8TYKA+dY1WV8r9gBxTk683lKSiGskeDkmC+261sV9wDSTUt0=
X-Received: by 2002:a2e:804a:0:b0:2ee:8f3d:e68d with SMTP id
 38308e7fff4ca-2eeb3188cddmr63837251fa.44.1720697893303; Thu, 11 Jul 2024
 04:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240711060939.1128-1-linux.amoon@gmail.com> <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CAGb2v65iR9BdAX43gfpBOeKF_B5PFm+RhPwu5FHUfRxCMeqh-w@mail.gmail.com> <e3410560-6dec-41de-ab14-441dbe8e5bb1@gmail.com>
In-Reply-To: <e3410560-6dec-41de-ab14-441dbe8e5bb1@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 11 Jul 2024 19:38:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v66gmZGh-_7r6+ifeH-OfU4npxZNWucS-GhtL91LCSvqvQ@mail.gmail.com>
Message-ID: <CAGb2v66gmZGh-_7r6+ifeH-OfU4npxZNWucS-GhtL91LCSvqvQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: Alex Bee <knaerzche@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Anand Moon <linux.amoon@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_043817_750692_1357FEA1 
X-CRM114-Status: GOOD (  30.80  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdWwgMTEsIDIwMjQgYXQgNzoxM+KAr1BNIEFsZXggQmVlIDxrbmFlcnpjaGVAZ21h
aWwuY29tPiB3cm90ZToKPgo+IEFtIDExLjA3LjI0IHVtIDExOjE3IHNjaHJpZWIgQ2hlbi1ZdSBU
c2FpOgo+ID4gT24gVGh1LCBKdWwgMTEsIDIwMjQgYXQgNDo0NOKAr1BNIEpvbmFzIEthcmxtYW4g
PGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6Cj4gPj4KPiA+PiBIaSBBbmFuZCwKPiA+Pgo+ID4+IE9u
IDIwMjQtMDctMTEgMDg6MDksIEFuYW5kIE1vb24gd3JvdGU6Cj4gPj4+IEFkZCBtaXNzaW5nIHBp
bmN0cmwgc2V0dGluZ3MgZm9yIFBDSWUgMy4wIHg0IGNsb2NrIHJlcXVlc3QgYW5kIHdha2UKPiA+
Pj4gc2lnbmFscy5FYWNoIGNvbXBvbmVudCBvZiBQQ0llIGNvbW11bmljYXRpb24gaGF2ZSB0aGUg
Zm9sbG93aW5nIGNvbnRyb2wKPiA+Pj4gc2lnbmFsczogUEVSU1QsIFdBS0UsIENMS1JFUSwgYW5k
IFJFRkNMSy4gVGhlc2Ugc2lnbmFscyB3b3JrIHRvIGdlbmVyYXRlCj4gPj4+IGhpZ2gtc3BlZWQg
c2lnbmFscyBhbmQgY29tbXVuaWNhdGUgd2l0aCBvdGhlciBQQ0llIGRldmljZXMuCj4gPj4+IFVz
ZWQgYnkgcm9vdCBjb21wbGV4IHRvIGVuZHBvaW50IGRlcGVuZGluZyBvbiB0aGUgcG93ZXIgc3Rh
dGUuCj4gPj4+Cj4gPj4+IFBFUlNUIGlzIHJlZmVycmVkIHRvIGFzIGEgZnVuZGFtZW50YWwgcmVz
ZXQuIFBFUlNUIHNob3VsZCBiZSBoZWxkIGxvdwo+ID4+PiB1bnRpbCBhbGwgdGhlIHBvd2VyIHJh
aWxzIGluIHRoZSBzeXN0ZW0gYW5kIHRoZSByZWZlcmVuY2UgY2xvY2sgYXJlIHN0YWJsZS4KPiA+
Pj4gQSB0cmFuc2l0aW9uIGZyb20gbG93IHRvIGhpZ2ggaW4gdGhpcyBzaWduYWwgdXN1YWxseSBp
bmRpY2F0ZXMgdGhlCj4gPj4+IGJlZ2lubmluZyBvZiBsaW5rIGluaXRpYWxpemF0aW9uLgo+ID4+
Pgo+ID4+PiBXQUtFIHNpZ25hbCBpcyBhbiBhY3RpdmUtbG93IHNpZ25hbCB0aGF0IGlzIHVzZWQg
dG8gcmV0dXJuIHRoZSBQQ0llCj4gPj4+IGludGVyZmFjZSB0byBhbiBhY3RpdmUgc3RhdGUgd2hl
biBpbiBhIGxvdy1wb3dlciBzdGF0ZS4KPiA+Pj4KPiA+Pj4gQ0xLUkVRIHNpZ25hbCBpcyBhbHNv
IGFuIGFjdGl2ZS1sb3cgc2lnbmFsIGFuZCBpcyB1c2VkIHRvIHJlcXVlc3QgdGhlCj4gPj4+IHJl
ZmVyZW5jZSBjbG9jay4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGlu
dXguYW1vb25AZ21haWwuY29tPgo+ID4+PiAtLS0KPiA+Pj4gVjI6IFVwZGF0ZSB0aGUgY29tbWl0
IG1lc3NnZSB0byBkZXNjcmliZSB0aGUgY2hhbmdzLgo+ID4+PiAgICAgIHVzZSBwaW5jdGwgZ3Jv
dXAgYXMgaXRzIHByZSBkZWZpbmUgaW4gcGluY3RsIGR0c2kKPiA+Pj4gLS0tCj4gPj4+ICAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgfCA2ICstLS0tLQo+
ID4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNSBkZWxldGlvbnMoLSkKPiA+
Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LXJvY2stNWIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01
Yi5kdHMKPiA+Pj4gaW5kZXggMmU3NTEyNjc2YjdlLi5hYjNhMjA5ODZjNmEgMTAwNjQ0Cj4gPj4+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4g
Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRz
Cj4gPj4+IEBAIC0zMDEsNyArMzAxLDcgQEAgJnBjaWUzMHBoeSB7Cj4gPj4+Cj4gPj4+ICAgJnBj
aWUzeDQgewo+ID4+PiAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+Pj4gLSAg
ICAgcGluY3RybC0wID0gPCZwY2llM19yc3Q+Owo+ID4+PiArICAgICBwaW5jdHJsLTAgPSA8JnBj
aWUzMHg0bTFfcGlucz47Cj4gPj4KPiA+PiBVc2Ugb2YgdGhlIGV4aXN0aW5nIHBjaWUzMHg0bTFf
cGlucyBncm91cCBtYXkgbm90IGJlIGZ1bGx5IGFjY3VyYXRlIGZvcgo+ID4+IHRoZSBQRVJTVCBw
aW4uIFRoZSB1c2Ugb2YgcmVzZXQtZ3Bpb3MgaW5kaWNhdGUgdGhhdCB0aGUgUEVSU1QgcGluIGlz
Cj4gPj4gdXNlZCB3aXRoIEdQSU8gZnVuY3Rpb24gYW5kIHRoZSBkcml2ZXIgd2lsbCBpbXBsaWNp
dGx5IGNoYW5nZSB0aGUKPiA+PiBmdW5jdGlvbiBmcm9tIHBlcnN0bl9tMSB0byBHUElPLiBTbyB0
aGlzIG1heSBub3QgYmUgYmVzdCByZXByZXNlbnRhdGlvbgo+ID4+IG9mIHRoZSBodywgaGVuY2Ug
bXkgaW5pdGlhbCBzdWdnZXN0aW9uLCBzb21ldGhpbmcgbGlrZToKPiA+Pgo+ID4+ICAgICAgICAg
IHBjaWUzMHg0X3BpbnM6IHBjaWUzMHg0LXBpbnMgewo+ID4+ICAgICAgICAgICAgICAgICAgcm9j
a2NoaXAscGlucyA9Cj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgIDw0IFJLX1BCNCA0ICZw
Y2ZnX3B1bGxfbm9uZT4sCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgIDw0IFJLX1BCNiBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPiwKPiA+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgPDQgUktfUEI1IDQgJnBjZmdfcHVsbF9ub25lPjsKPiA+PiAgICAgICAgICB9Owo+ID4+Cj4g
Pj4gU2ltaWxhciBjaGFuZ2Ugc2hvdWxkIHByb2JhYmx5IGFsc28gYmUgZG9uZSBmb3IgcGNpZTJ4
MWwwIGFuZCBwY2llMngxbDIsCj4gPj4gbm90IGp1c3QgcGNpZTN4NC4KPiA+Cj4gPiBDYW4gd2Ug
Y29uc2lkZXIgaW1wbGVtZW50aW5nIHN0cmljdCBtb2RlIGluIHRoZSBwaW5jdHJsIGRyaXZlciBz
byB3ZSBkb24ndAo+ID4gaGF2ZSB0byBrZWVwIGRvaW5nIHRoaXMgR1BJTyArIHBpbm11eCBkYW5j
ZT8KPiA+Cj4KPiBUaGlzIGlzIG5vdCBhYm91dCBkcml2ZXJzLCB0aGlzIGlzIERUIHdoaWNoIGlz
IGluZGVwZW5kZW50IGZyb20gZHJpdmVycy4KPiBKb25hcyBhbmQgSSBoYWQgZGlzY3Vzc2lvbiBy
ZWNlbnRseSBvbiB1LWJvb3QgbWFpbGluZyBsaXN0IHdpdGggc29tZWJvZHkKPiB1c2luZyBPcGVu
L0ZyZWVCU0QgYWJvdXQgZXhhY3QgdGhhdCB0b3BpYy4gUGluY3RybCBtdXggc2V0dGluZ3Mgc2hv
dWxkIGJlCj4gdmVyeSBleHBsaWNpdCwgZXZlbiBpZiBpdCBpcyBub3QgcmVxdWlyZWQgYnkgdGhl
IGxpbnV4LWRyaXZlci4KClRoZSBoYXJkd2FyZSBhbHNvIHByZXZlbnRzIHlvdSBmcm9tIHVzaW5n
IEdQSU9zIHdpdGggYW55IG90aGVyIG11eCBzZXR0aW5nLgpUaGF0IGlzIGFscmVhZHkgaW1wbGll
ZCBieSB0aGUgY29tcGF0aWJsZSBzdHJpbmcgYW5kIGRvZXNuJ3QgbmVlZCB0byBiZQpzcGVsbGVk
IG91dC4gVGhlIHN0cmljdCBkcml2ZXIgbW9kZSBtZXJlbHkgZW5mb3JjZXMgdGhpcyBoYXJkd2Fy
ZSBsaW1pdGF0aW9uCndpdGhvdXQgdGhlIHZlcnkgZXhwbGljaXQgc2V0dGluZy4gT25lIGNvdWxk
IGFsc28gc2F5IHRoYXQgdGhlIGRyaXZlciBpcwp3cm9uZyB0byBzdXBwb3J0IGNvbmZsaWN0aW5n
IHNldHRpbmdzLgoKCkNoZW5ZdQoKPiBBbGV4Cj4KPiA+IENoZW5ZdQo+ID4KPiA+Cj4gPj4gUmVn
YXJkcywKPiA+PiBKb25hcwo+ID4+Cj4gPj4+ICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzQg
UktfUEI2IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4+PiAgICAgICAgdnBjaWUzdjMtc3VwcGx5ID0g
PCZ2Y2MzdjNfcGNpZTMwPjsKPiA+Pj4gICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+Pj4gQEAg
LTM0MSwxMCArMzQxLDYgQEAgcGNpZTJfMl9yc3Q6IHBjaWUyLTItcnN0IHsKPiA+Pj4gICAgICAg
IH07Cj4gPj4+Cj4gPj4+ICAgICAgICBwY2llMyB7Cj4gPj4+IC0gICAgICAgICAgICAgcGNpZTNf
cnN0OiBwY2llMy1yc3Qgewo+ID4+PiAtICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlu
cyA9IDw0IFJLX1BCNiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiA+Pj4gLSAgICAg
ICAgICAgICB9Owo+ID4+PiAtCj4gPj4+ICAgICAgICAgICAgICAgIHBjaWUzX3ZjYzN2M19lbjog
cGNpZTMtdmNjM3YzLWVuIHsKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxw
aW5zID0gPDEgUktfUEE0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ID4+PiAgICAg
ICAgICAgICAgICB9Owo+ID4+Pgo+ID4+PiBiYXNlLWNvbW1pdDogMzRhZmI4MmEzYzY3Zjg2OTI2
N2EyNmY1OTNiNmY4ZmM2YmYzNTkwNQo+ID4+Cj4gPj4KPiA+Cj4gPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0Cj4gPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
