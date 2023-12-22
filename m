Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9B1BC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TFDHTWFScHIZPXEk8rA6JFXhlASQI+5iQGkFS5Mt+Y=; b=DfvOhqMrfDy8qU
	xOVfhwTOGX/NTALMFHXM+pphJOEm9W9+RobFC6aQjynQtFDtt7RdjD4RJrKpNf8sDXMJgQ5CBCO8v
	DfRiShaC15RJ8EQYKtPwhvOh1sb3cta55o0pz5h/OokOGZ0afnRQmpJdiIVZLG1QV61oq+YtAunCk
	RD0RpZIe388jzfWtQzXb6o6mlWsHqU/cpqFVrg7UjfxCi/CTKSihcS5wIOEXI1/t4QizaMELw03wN
	89zXv4f8waA3+58YzjtvtuJHlKGZWyCHJ0NqCqhPJc2CHe3idZlBHGu/zNNueAh1pr714nEZnZYeU
	DUfdt6tUVMT4mL16WVkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGgCd-0064v3-34;
	Fri, 22 Dec 2023 14:08:39 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGgCa-0064uc-0T
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 14:08:38 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-2041e0b31ffso1011468fac.3
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Dec 2023 06:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1703254113; x=1703858913; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q98PVs+oLXvqBEl/Y9UXUZlGl4RO3U5nJwhUYgBrGAk=;
        b=ZDZo5sf8jZRyh1vrcQdgPnjGHLD1AySSiZ65HGIdIwskze7lS6Is/5Ptt1o7jlcNjC
         eTUna4Eqk01JwzdkWb8WYrAD2CCqir7EY5Ghaxe3UQkxD8MDdec8aVYDQo6pifpo25lC
         ieZkOc1G6f8FFK89/XicE3tSMdQ0wMO3M4wqNvUHeLq7eJlZgH3rdhL2wY8UDLygC2EL
         AlfT/oJ8kAHzqZJvjen+eIMTFR+v0gQHvotY3FENSSqSlR56jhZFXUZZSYgLEZSJwXzt
         2hoO9m9plpdyRTaTTEDCdz9y8LLlsDN+1BObgc9CYo64zPPjXF7d4hryYVKyP7Ab9QX4
         WJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703254113; x=1703858913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q98PVs+oLXvqBEl/Y9UXUZlGl4RO3U5nJwhUYgBrGAk=;
        b=qppSIAhksSlpPZebxPVmSmbCEQWEpXwZhi4X+0ZWkM0cc3vxmhqFQqcC9ybZRYjmEM
         uFZM3Ycw/KnatoA330oJ3WId9q+40KrCAgi//UaihhM2/Da7EV9kE0tuSV9566SVSo2t
         U/kq93XOdwwp4yYubtatJup5BknhDxNN8y74Cy9PyqcJcfrd/z/tr7TQfXztXZZUqjRY
         OK6p5SpYjgB6Tv5aulPgFlQwugK/qC+6CmylRftZ963U6US4OLIFVYzRSexYLPPLOgPG
         5Tc82baODV0nFbFuMLrDV9qD1IMj3+v2Qw3C9Ohc44Y/WUvmvFA1dTEqfVyJoV/n34Kb
         P1Jg==
X-Gm-Message-State: AOJu0YyBMpSJjmqB18nBegPaVetCzlQhE3nLdDJKmVG9vy2rLD3Ap4Vd
	DZGD5jEDbz+VvCkY4SsfEt/yGyhA2iiAV2VKS4LDk2U/jBDLkQ==
X-Google-Smtp-Source: AGHT+IFYsc3rF2KBFhr1cG8N8VkyGDVmV4iP7yiA6gGqFUIYuRwb4DD4IAGE9uPbdsDDZucUJ7Vhh9FhsPRmVIOG0JI=
X-Received: by 2002:a05:6870:9a1d:b0:204:474d:2993 with SMTP id
 fo29-20020a0568709a1d00b00204474d2993mr902024oab.8.1703254112797; Fri, 22 Dec
 2023 06:08:32 -0800 (PST)
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org> <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org> <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
 <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org> <CABEcMwXdD06KoODi4Sx7Q6oaNZ7CEUcNLiysVyqQSQq-7zYoqA@mail.gmail.com>
 <01d17a353a1fd8e8f9d19abce3f89393@manjaro.org> <CAAXNxMSo0pk0283h7Ti5FydXBkrfcte-mgD64xGPqXqjXXFRmw@mail.gmail.com>
In-Reply-To: <CAAXNxMSo0pk0283h7Ti5FydXBkrfcte-mgD64xGPqXqjXXFRmw@mail.gmail.com>
From: Shantur Rathore <i@shantur.com>
Date: Fri, 22 Dec 2023 14:08:21 +0000
Message-ID: <CABEcMwVvKLrB-h+t5=SozZiGPbr_wNDJ2zKY1wG=z_+Fx__Ayw@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Hugh Cole-Baker <sigmaris@gmail.com>
Cc: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_060836_497983_17147CFE 
X-CRM114-Status: GOOD (  37.62  )
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

SGkgQ29sZSwKCk9uIEZyaSwgRGVjIDIyLCAyMDIzIGF0IDExOjIw4oCvQU0gSHVnaCBDb2xlLUJh
a2VyIDxzaWdtYXJpc0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCAyMiBEZWMgMjAyMyBh
dCAwMDo1NCwgRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4KPiA+
IE9uIDIwMjMtMTItMjEgMTE6MTEsIFNoYW50dXIgUmF0aG9yZSB3cm90ZToKPiA+ID4gT24gVGh1
LCBEZWMgMTQsIDIwMjMgYXQgMjozNeKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8u
b3JnPgo+ID4gPiB3cm90ZToKPiA+ID4+IE9uIDIwMjMtMTItMTQgMTU6MjQsIFNoYW50dXIgUmF0
aG9yZSB3cm90ZToKPiA+ID4+ID4gT24gU3VuLCBEZWMgMTAsIDIwMjMgYXQgMTI6MDjigK9BTSBE
cmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KPiA+ID4+ID4gd3JvdGU6Cj4gPiA+PiA+
PiBPbiAyMDIzLTEyLTEwIDAxOjAzLCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4gPiA+PiA+PiA+
IE9uIFNhdCwgRGVjIDksIDIwMjMgYXQgMTE6NDPigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4KPiA+ID4+ID4+ID4gd3JvdGU6Cj4gPiA+PiA+PiA+PiBPbiAyMDIzLTEyLTEw
IDAwOjM1LCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4gPiA+PiA+PiA+PiA+IFVTQiBwb3J0IHJl
Z3VsYXRvcnMgc2hvdWxkIGJlIGNvbnRyb2xsZWQgYnkgUEhZcwo+ID4gPj4gPj4gPj4gPiBzbyB3
ZSByZW1vdmUgYWx3YXlzLW9uIHByb3BlcnR5IGFuZCBsZXQgUEhZcyBtYW5hZ2UgdGhlCj4gPiA+
PiA+PiA+PiA+IHJlZ3VsYXRvci4KPiA+ID4+ID4+ID4+ID4KPiA+ID4+ID4+ID4+ID4gVHlwZWMg
cG9ydCBoYXMgbWlzY29uZnVncmVkIHBoeS1zdXBwbHkgYW5kIG5vdyB0aGF0IHdlIGFyZQo+ID4g
Pj4gPj4gPj4gPiByZW1vdmluZyByZWd1bGF0b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRvIGZpeCB0
aGUgcGh5LXN1cHBseQo+ID4gPj4gPj4gPj4gPiBzbyB0aGUgUEhZcyBhcmUgYWJsZSB0byB0dXJu
IHBvd2VyIHRvIHR5cGUtYyBwb3J0Lgo+ID4gPj4gPj4gPj4gPgo+ID4gPj4gPj4gPj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBTaGFudHVyIFJhdGhvcmUgPGlAc2hhbnR1ci5jb20+Cj4gPiA+PiA+PiA+PiA+
IC0tLQo+ID4gPj4gPj4gPj4gPiArIGRldmljZXRyZWUKPiA+ID4+ID4+ID4+ID4KPiA+ID4+ID4+
ID4+ID4gQWZ0ZXIgdGhpcyBwYXRjaCB0aGUgcG9ydHMgd2VyZSBjb25maXJtZWQgdG8gcG93ZXIg
dXAgYW5kIGRvd24KPiA+ID4+ID4+ID4+ID4gaW4gdS1ib290IHdoZW4gZG9pbmcgdXNiIHN0YXJ0
IGFuZCB1c2Igc3RvcC4KPiA+ID4+ID4+ID4+ID4gQXQgYm9vdCB0aGUgcmVndWxhdG9ycyB3ZXJl
IG9mZiwgdGhlIGRldmljZXMgY29ubmVjdGVkIHdlcmVuJ3QKPiA+ID4+ID4+ID4+ID4gcG93ZXJl
ZCB1cCwgb24gdXNiIHN0YXJ0IHRoZSBQSFlzIGFyZSBhYmxlIHRvIHBvd2VyIG9uIHRoZSBwb3J0
cwo+ID4gPj4gPj4gPj4gPiBhbmQgb24gdXNiIHN0b3AgdGhleSB3ZXJlIHBvd2VyZWQgZG93bi4K
PiA+ID4+ID4+ID4+ID4KPiA+ID4+ID4+ID4+ID4gQXQgdGhlIGJvb3QsIHRoZSBwb3J0cyB3ZXJl
IHBvd2VyZWQgZG93biB3aGljaCB3YXMgYWdhaW4gcG93ZXJlZAo+ID4gPj4gPj4gPj4gPiB1cCBi
eSBMaW51eCBrZXJuZWwgd2hlbiBib290aW5nIHVwLgo+ID4gPj4gPj4gPj4gPgo+ID4gPj4gPj4g
Pj4gPgo+ID4gPj4gPj4gPj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cm9ja3BybzY0LmR0c2kgfCA0ICstLS0KPiA+ID4+ID4+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKPiA+ID4+ID4+ID4+ID4KPiA+ID4+ID4+ID4+
ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2tw
cm82NC5kdHNpCj4gPiA+PiA+PiA+PiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9ja3BybzY0LmR0c2kKPiA+ID4+ID4+ID4+ID4gaW5kZXggYmNhMmI1MGUwYS4uYmQy
ODI0YWE0OCAxMDA2NDQKPiA+ID4+ID4+ID4+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+ID4+ID4+ID4+ID4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+ID4+ID4+ID4+
ID4gQEAgLTE5Miw3ICsxOTIsNiBAQCB2Y2M1djBfaG9zdDogdmNjNXYwLWhvc3QtcmVndWxhdG9y
IHsKPiA+ID4+ID4+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+ID4gPj4gPj4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3Rf
ZW4+Owo+ID4gPj4gPj4gPj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzV2
MF9ob3N0IjsKPiA+ID4+ID4+ID4+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9u
Owo+ID4gPj4gPj4gPj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+
Owo+ID4gPj4gPj4gPj4gPiAgICAgICB9Owo+ID4gPj4gPj4gPj4gPgo+ID4gPj4gPj4gPj4gPiBA
QCAtMjAzLDcgKzIwMiw2IEBAIHZjYzV2MF90eXBlYzogdmNjNXYwLXR5cGVjLXJlZ3VsYXRvciB7
Cj4gPiA+PiA+PiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiA+ID4+ID4+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnZjYzV2MF90eXBlY19l
bj47Cj4gPiA+PiA+PiA+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYw
X3R5cGVjIjsKPiA+ID4+ID4+ID4+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9u
Owo+ID4gPj4gPj4gPj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+
Owo+ID4gPj4gPj4gPj4gPiAgICAgICB9Owo+ID4gPj4gPj4gPj4gPgo+ID4gPj4gPj4gPj4gPiBA
QCAtODYzLDcgKzg2MSw3IEBAIHUycGh5MF9vdGc6IG90Zy1wb3J0IHsKPiA+ID4+ID4+ID4+ID4g
ICAgICAgfTsKPiA+ID4+ID4+ID4+ID4KPiA+ID4+ID4+ID4+ID4gICAgICAgdTJwaHkwX2hvc3Q6
IGhvc3QtcG9ydCB7Cj4gPiA+PiA+PiA+PiA+IC0gICAgICAgICAgICAgcGh5LXN1cHBseSA9IDwm
dmNjNXYwX2hvc3Q+Owo+ID4gPj4gPj4gPj4gPiArICAgICAgICAgICAgIHBoeS1zdXBwbHkgPSA8
JnZjYzV2MF90eXBlYz47Cj4gPiA+PiA+PiA+PiA+ICAgICAgICAgICAgICAgc3RhdHVzID0gIm9r
YXkiOwo+ID4gPj4gPj4gPj4gPiAgICAgICB9Owo+ID4gPj4gPj4gPj4gPiAgfTsKPiA+ID4+ID4+
ID4+Cj4gPiA+PiA+PiA+PiBRdWl0ZSBmcmFua2x5LCBzb21ldGhpbmcgZG9lc24ndCBmZWVsIHJp
Z2h0IHRoZXJlLiAgV291bGQgeW91IG1pbmQsCj4gPiA+PiA+PiA+PiBwbGVhc2UsIHRvIHBsYWNl
IHRoaXMgcGF0Y2ggb24gaG9sZCB1bnRpbCBuZXh0IHdlZWsgb3Igc28sIGF0IHdoaWNoCj4gPiA+
PiA+PiA+PiBwb2ludCBJIHNob3VsZCBoYXZlIGVub3VnaCB0aW1lIHRvIGdvIHRocm91Z2ggdGhl
IFJvY2tQcm82NCBzY2hlbWF0aWMKPiA+ID4+ID4+ID4+IHRob3JvdWdobHkgb25jZSBhZ2Fpbiwg
YW5kIHRlc3QgdGhlIHBhdGNoIGluIGRldGFpbD8KPiA+ID4+ID4+ID4KPiA+ID4+ID4+ID4gU3Vy
ZSwgbm8gd29ycmllcy4KPiA+ID4+ID4+Cj4gPiA+PiA+PiBHcmVhdCwgdGhhbmtzLgo+ID4gPj4g
Pj4KPiA+ID4+ID4+ID4gV291bGQgeW91IG1pbmQgbGV0dGluZyBtZSBrbm93IHdoaWNoIHBhcnQg
ZG9lc24ndCBmZWVsIHJpZ2h0IHRvIHlvdT8KPiA+ID4+ID4+Cj4gPiA+PiA+PiBTdXJlLCBpdCB3
YXMgYWJvdXQgdGhlIGxhc3QgY2hhbmdlIGluIHRoZSBwYXRjaC4KPiA+ID4+ID4KPiA+ID4+ID4g
VGhlIFR5cGVDIHBvcnQgVkJVUyBpcyBWQlVTX1RZUEVDIG9uIFBhZ2UgMjAgb2YgMzMgbWFya2Vk
IGZvcgo+ID4gPj4gPiBWQlVTX1sxLTRdIGluIHNjaGVtYXRpYyBoZXJlIC0gWzBdCj4gPiA+PiA+
Cj4gPiA+PiA+IFswXSAtIGh0dHBzOi8vZmlsZXMucGluZTY0Lm9yZy9kb2Mvcm9ja3BybzY0L3Jv
Y2twcm82NF92MjEtU0NILnBkZgo+ID4gPj4KPiA+ID4+IEkgc2VlLCB0aGFua3MsIGFuZCBJIGFs
cmVhZHkgd2VudCBvbmNlIGFnYWluIHRocm91Z2ggdGhlIFJvY2tQcm82NAo+ID4gPj4gc2NoZW1h
dGljLCBidXQgb25seSBicmllZmx5LiAgSSBuZWVkIHRvIGRvIHRoYXQgYWdhaW4sIGJ1dCBpbiBk
ZXRhaWwsCj4gPiA+PiBhbmQgY29tcGFyZSBpdCB0aG9yb3VnaGx5IHdpdGggdGhlIGR0cyhpKS4K
PiA+ID4KPiA+ID4gUGluZy4KPiA+Cj4gPiBQb25nLiA6KSAgSSBoYXZlbid0IGZvZ290dGVuIGFi
b3V0IHRoaXMsIGJ1dCBJIHNpbXBseSBoYXZlbid0IGhhZCBlbm91Z2gKPiA+IHRpbWUgeWV0LCBh
bmQgSSByZWFsbHkgd2FudCB0byBoYXZlIHRoaXMgY2hlY2tlZCBhbmQgY2xlYW5lZCB1cC4gIEkn
bQo+ID4gc29ycnkgZm9yIHRoZSBkZWxheS4KPgo+IEkgaGFkIGEgbG9vayBvdmVyIHRoZSBzY2hl
bWF0aWMgKFNoZWV0IDExLCAxOSBhbmQgMjApLCBhbmQgaXQgc2hvd3MgdGhlIFVTQjIuMAo+IFBI
WTAgYmVpbmcgdXNlZCBmb3IgYm90aCB0aGUgVHlwZUMgcG9ydCBhbmQgb25lIG9mIHRoZSBVU0Iy
LjAgVHlwZUEgcG9ydHMuCj4gVkJVUyBmb3IgdGhlIFR5cGVDIHBvcnQgaXMgVkJVU19UWVBFQywg
VkJVUyBmb3IgdGhlIFR5cGVBIHBvcnQgaXMgVkNDNVYwX0hPU1QwLgo+Cj4gU28gSSB0aGluayB0
aGUgdmNjNXYwX2hvc3Qgc3VwcGx5IHNob3VsZCBiZSBsZWZ0IGFzLWlzIG9uIHRoZSBob3N0LXBv
cnQgbm9kZSwKPiBhbmQgdGhlIHBoeS1zdXBwbHkgPSA8JnZjYzV2MF90eXBlYz4gc2hvdWxkIGJl
IGFkZGVkIHRvIHRoZSBvdGctcG9ydCBub2RlIGEKPiBmZXcgbGluZXMgYWJvdmUsIGluc3RlYWQu
CgpZb3UgYXJlIHJpZ2h0LiBJIG1hZGUgYSBtaXN0YWtlIGJ5IHNldHRpbmcgdmNjNXYwX3R5cGVj
IHRvIHRoZSB3cm9uZyBwb3J0IG5vZGUuCkkgaGF2ZSB0ZXN0ZWQgdGhlIGNoYW5nZSBhZ2Fpbi4K
V2l0aCB0aGlzIHR1cm5pbmcgb2ZmIHRoZSB2Y2M1djBfdHlwZWMgcmVndWxhdG9yIHRoZSBUeXBl
QyBwb3J0IGlzIHR1cm5lZCBvZmYKYW5kIHR1cm5pbmcgdGhlIHZjYzV2MF9ob3N0IG9mZiBhbGwg
b3RoZXIgVHlwZUEgcG9ydHMgYXJlIHR1cm5lZCBvZmYuCgpJIHdpbGwgc2VuZCB0aGUgdjIgb2Yg
dGhpcyBwYXRjaC4KClJlZ2FyZHMsClNoYW50dXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
