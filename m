Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10EDBC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 18:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVuHinHfUpcuREbg+XIYC3zwTjCna2g+Wh4LRqco0cg=; b=qX4zsh8yneVWnl
	VOyFtm5a6NOQ000vezinftJJ6BYrTxZm580hB+4tCq8yWKT+aN7kfxIqV7HqOgahLXaWm8ZpotmtA
	pw8RPtYK93PFrm4Vo8mOTQEVwaXZ85tYO7D0z7ck86zDekcGgf2pcFONIxjRn9VZWAEOgcKAMIEUN
	wP5k4/bHehAvO0JiGui7FCYbVejMKD4CRNvKXNmCZO0J3Ef/ChNKeP8EssN1YH4aCxSTNBRnHRTxn
	sMPydDHCVFVHGztDl4tEoHM++KMS+kaN4k01m+lRUCA+b2TVeuBAWQuGWivjUfiiLUFT2rJa0pkBa
	9n+1r0bFcMb5SPw6eUYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99yJ-00C2K7-HP; Wed, 06 Jul 2022 18:41:59 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99wJ-00C1I4-1l
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 18:39:57 +0000
Received: by mail-ej1-x633.google.com with SMTP id j22so2321145ejs.2
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 11:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=mJ6miwTFAnYDCk1OZK1bVi8RjNdC77tSfMF5/ZTKo8Q=;
        b=5cgz137pmQmV2lL5+tYiJZpzpFdBHWD63n5D+KN7A/rwjnlMy4ZJJLQGFah9HZlmum
         HOrMqURWAXUDqBkeoF+ipBuF47Q5kYU6MnMaarwHtiabzd/c4ZOG9oOU0iXayDViyaZn
         lFdciDdcp8mz+aL/FT2C+/4x9AjyUulYv4MhWd+Lmle5sC3+V7KfwXwpyrYvN1kxl21G
         PPcQm6xA9oayRMVF656Z7QITLSrJFRzQQixc5ndBc9pudkqWv3hlB36RO7DPc5c4Asqy
         3lEt4o5WDGndLxxoX2e/jw2w/8pVO9kPzisA61ystGFW3Q9y9F5c1N9XGXrvA4/tEGKB
         ZStw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=mJ6miwTFAnYDCk1OZK1bVi8RjNdC77tSfMF5/ZTKo8Q=;
        b=vEhDHfx2zEsZnG7O+/GBHCGhabHWrKeTgj4Ljx4ColxJaLKuvy5+8uNb6UcbUCauZw
         siFmh6NnLTTN8vTslaW1US+800OWAgZPMYyxC/qDqyk0n1i4MEPys9WjbdEWPw8bgPc6
         g9ZbJu4KDIWF2hhppZGOAE9IXxVvaYrANHQ2U1NiWX+3Lyu16QriuU3ySGS+9DniItwd
         aWGMJVIOKInyIrGMDw0JXJXriKhGgshA9L2SJBdxrtk/sfo1QLQDyr3wYAYbwwm12gLf
         9kKz/CzpPuqPG3q8VgRuftjc/oGgEDSwOsFRX5YzAon6JjrS6xu/Y77RPlNXP6A1/PEx
         jR0Q==
X-Gm-Message-State: AJIora8A0Zcik8puKe8/shtpjWHAjGO02IuN34nW1FOwnNTPl0dsXFUP
	HrTItyUJPfJKVys4TaSQs7Q0LFTH4LKp2yiUhi94Tw==
X-Google-Smtp-Source: AGRyM1vGSt29pAHjnine8M0oy8MqEQ9dveh8rT4q0Js27wmu2VOP3XoBH8WVmxAxmFhqGJx6PMSysJL9XpRQun8grIA=
X-Received: by 2002:a17:907:7627:b0:72a:9098:e4d3 with SMTP id
 jy7-20020a170907762700b0072a9098e4d3mr28054629ejc.389.1657132792261; Wed, 06
 Jul 2022 11:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
 <YsRclobW7gL/Dtlr@eze-laptop> <6ae43dcd-9b1d-ce30-8c3e-a8c313ef5b0a@collabora.com>
 <4408380.LvFx2qVVIh@kista>
In-Reply-To: <4408380.LvFx2qVVIh@kista>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 6 Jul 2022 15:39:41 -0300
Message-ID: <CAAEAJfDNHSBtJD_chSV0_UMTJWztyPFxjORRn0+dSrtcZCoYwg@mail.gmail.com>
Subject: Re: Re: [PATCH v10 11/17] media: uapi: Add V4L2_CID_STATELESS_HEVC_ENTRY_POINT_OFFSETS
 control
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Greg KH <gregkh@linuxfoundation.org>, 
	Maxime Ripard <mripard@kernel.org>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
	Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-media <linux-media@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	"open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-sunxi@lists.linux.dev, 
	Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_113955_168341_902CAD0E 
X-CRM114-Status: GOOD (  35.43  )
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

SGkgSmVybmVqLAoKT24gVHVlLCBKdWwgNSwgMjAyMiBhdCAxOjExIFBNIEplcm5laiDFoGtyYWJl
YyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPiB3cm90ZToKPgo+IERuZSB0b3JlaywgMDUuIGp1
bGlqIDIwMjIgb2IgMTg6MDM6MjggQ0VTVCBqZSBCZW5qYW1pbiBHYWlnbmFyZCBuYXBpc2FsKGEp
Ogo+ID4gTGUgMDUvMDcvMjAyMiDDoCAxNzo0NSwgRXplcXVpZWwgR2FyY2lhIGEgw6ljcml0IDoK
PiA+ID4gSGkgZ3V5cywKPiA+ID4KPiA+ID4gT24gVHVlLCBKdWwgMDUsIDIwMjIgYXQgMTA6NTQ6
MTRBTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiA+PiBUaGUgbnVtYmVyIG9m
ICdlbnRyeSBwb2ludCBvZmZzZXQnIGNhbiBiZSB2ZXJ5IHZhcmlhYmxlLgo+ID4gPj4gSW5zdGVh
ZCBvZiB1c2luZyBhIGxhcmdlIHN0YXRpYyBhcnJheSBkZWZpbmUgYSB2NGwyIGR5bmFtaWMgYXJy
YXkKPiA+ID4+IG9mIFUzMiAoVjRMMl9DVFJMX1RZUEVfVTMyKS4KPiA+ID4+IFRoZSBudW1iZXIg
b2YgZW50cnkgcG9pbnQgb2Zmc2V0cyBpcyByZXBvcnRlZCBieSB0aGUgZWxlbXMgZmllbGQKPiA+
ID4+IGFuZCBpbiBzdHJ1Y3QgdjRsMl9jdHJsX2hldmNfc2xpY2VfcGFyYW1zLm51bV9lbnRyeV9w
b2ludF9vZmZzZXRzCj4gPiA+PiBmaWVsZC4KPiA+ID4+Cj4gPiA+PiBTaWduZWQtb2ZmLWJ5OiBC
ZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiA+ID4+
IEFja2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5j
b20+Cj4gPiA+PiBUZXN0ZWQtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFp
bC5jb20+Cj4gPiA+PiAtLS0KPiA+ID4+Cj4gPiA+PiAgIC4uLi91c2Vyc3BhY2UtYXBpL21lZGlh
L3Y0bC9leHQtY3RybHMtY29kZWMucnN0ICAgICAgIHwgMTEgKysrKysrKysrKysKPiA+ID4+ICAg
ZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jdHJscy1kZWZzLmMgICAgICAgICAgICAgfCAg
NSArKysrKwo+ID4gPj4gICBpbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICA1ICsrKystCj4gPiA+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMjAgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPj4KPiA+ID4+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPiA+
ID4+IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29k
ZWMucnN0IGluZGV4Cj4gPiA+PiBkYjBkZjdkOWYyN2MuLjhkZjhkN2ZkZmU3MCAxMDA2NDQKPiA+
ID4+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxz
LWNvZGVjLnJzdAo+ID4gPj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlh
L3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4gPiA+PiBAQCAtMzAxMCw2ICszMDEwLDkgQEAgZW51
bSB2NGwyX21wZWdfdmlkZW9faGV2Y19zaXplX29mX2xlbmd0aF9maWVsZCAtCj4gPiA+Pgo+ID4g
Pj4gICAgICAgKiAtIF9fdTMyCj4gPiA+Pgo+ID4gPj4gICAgICAgICAtIGBgZGF0YV9iaXRfb2Zm
c2V0YGAKPiA+ID4+ICAgICAgICAgLSBPZmZzZXQgKGluIGJpdHMpIHRvIHRoZSB2aWRlbyBkYXRh
IGluIHRoZSBjdXJyZW50IHNsaWNlIGRhdGEuCj4gPiA+Pgo+ID4gPj4gKyAgICAqIC0gX191MzIK
PiA+ID4+ICsgICAgICAtIGBgbnVtX2VudHJ5X3BvaW50X29mZnNldHNgYAo+ID4gPj4gKyAgICAg
IC0gU3BlY2lmaWVzIHRoZSBudW1iZXIgb2YgZW50cnkgcG9pbnQgb2Zmc2V0IHN5bnRheCBlbGVt
ZW50cyBpbgo+ID4gPj4gdGhlIHNsaWNlIGhlYWRlci4+Cj4gPiA+IFRoaXMgbG9va3MgdW5kZXJk
b2N1bWVudGVkLiBTb21ld2hlcmUgaW4gdGhlIGRvY3MgaXQgc2hvdWxkIGJlIG1lbnRpb25lZAo+
ID4gPiB0aGF0IHRoZSBmaWVsZCAnbnVtX2VudHJ5X3BvaW50X29mZnNldHMnIGlzIGxpbmtlZCB0
byB0aGUgY29udHJvbAo+ID4gPiBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19FTlRSWV9QT0lOVF9P
RkZTRVRTLgo+ID4KPiA+IFRoaXMgZmllbGQgaXMgaGVyZSBiZWNhdXNlIHNvbWUgZHJpdmVycyB3
b3VsZCBsaWtlIGtub3cgdGhlIG51bWJlciBvZgo+ID4gZW50cnkgcG9pbnQgb2Zmc2V0cyB3aXRo
b3V0IGdldHRpbmcgdGhlIGVudHJ5IHBvaW50IG9mZnNldHMgZGF0YSBpdHNlbGYuCj4KPiBZZWFo
LCB0aGlzIGZpZWxkIG11c3QgYmUgc2V0IGV2ZW4gd2hlbiBlbnRyeSBwb2ludHMgb2Zmc2V0IGNv
bnRyb2wgaXNuJ3QgdXNlZC4KPiBBZGRpdGlvbmFsbHksIGlmIGVudHJ5IHBvaW50IG9mZnNldHMg
Y29udHJvbCBpcyBuZWVkZWQgYW5kIGlmIHN1Ym1pdHRpbmcKPiBtdWx0aXBsZSBzbGljZXMgYXQg
b25jZSwgbGVuZ3RoIG9mIGVudHJ5IHBvaW50IG9mZnNldHMgYXJyYXkgbXVzdCBiZSBzdW0gb2YK
PiBudW1fZW50cnlfcG9pbnRfb2Zmc2V0cyBvZiBhbGwgc2xpY2VzIGluIHRoYXQgam9iLiBOb3Qg
c3VyZSB3aGVyZSB0byBwdXQgdGhpcwo+IGV4cGxhbmF0aW9uLgo+CgpUaGlzIGNvbmZ1c2VkIG1l
IGEgYml0OiBzbyB5b3UgbWVhbiB0aGF0IHRoaXMgZmllbGQgKGNhbGxlZApudW1fZW50cnlfcG9p
bnRfb2Zmc2V0cykKbXVzdCBiZSB0aGUgc3VtIG9mICJudW1fZW50cnlfcG9pbnRfb2Zmc2V0cyIg
c3ludGF4IGVsZW1lbnRzIGZvcgpzbGljZXMgaW4gdGhlIHJlcXVlc3Q/CgpJZiB0aGlzIGlzIHRo
ZSBjYXNlLCB0aGVuIHBlcmhhcHMgaXQgd2lsbCBiZSBhIG1pc3Rha2UgdG8gbmFtZSBvdXIgVjRM
MiBmaWVsZApleGFjdGx5IGxpa2UgdGhlIHN5bnRheCBlbGVtZW50LCBzaW5jZSBpdCB0aGlzIHN1
bSBtZWFuaW5nLgpPdGhlcndpc2UsIGRldmVsb3BlcnMgd291bGQgdGVuZCB0byBnZXQgY29uZnVz
ZWQgYnkgaXQuCgpXaGF0IGRvIHlvdSB0aGluaz8KClRoYW5rcywKRXplcXVpZWwKCj4gQmVzdCBy
ZWdhcmRzLAo+IEplcm5lago+Cj4gPgo+ID4gQmVuamFtaW4KPiA+Cj4gPiA+IFRoYW5rcywKPiA+
ID4gRXplcXVpZWwKPiA+ID4KPiA+ID4+ICAgICAgICogLSBfX3U4Cj4gPiA+Pgo+ID4gPj4gICAg
ICAgICAtIGBgbmFsX3VuaXRfdHlwZWBgCj4gPiA+PiAgICAgICAgIC0gU3BlY2lmaWVzIHRoZSBj
b2RpbmcgdHlwZSBvZiB0aGUgc2xpY2UgKEIsIFAgb3IgSSkuCj4gPiA+Pgo+ID4gPj4gQEAgLTMx
NTAsNiArMzE1MywxNCBAQCBlbnVtIHY0bDJfbXBlZ192aWRlb19oZXZjX3NpemVfb2ZfbGVuZ3Ro
X2ZpZWxkIC0KPiA+ID4+Cj4gPiA+PiAgICAgICBcbm9ybWFsc2l6ZQo+ID4gPj4KPiA+ID4+ICtg
YFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX0VOVFJZX1BPSU5UX09GRlNFVFMgKGludGVnZXIpYGAK
PiA+ID4+ICsgICAgU3BlY2lmaWVzIGVudHJ5IHBvaW50IG9mZnNldHMgaW4gYnl0ZXMuCj4gPiA+
PiArICAgIFRoaXMgY29udHJvbCBpcyBhIGR5bmFtaWNhbGx5IHNpemVkIGFycmF5LiBUaGUgbnVt
YmVyIG9mIGVudHJ5IHBvaW50Cj4gPiA+PiArICAgIG9mZnNldHMgaXMgcmVwb3J0ZWQgYnkgdGhl
IGBgZWxlbXNgYCBmaWVsZC4KPiA+ID4+ICsgICAgVGhpcyBiaXRzdHJlYW0gcGFyYW1ldGVyIGlz
IGRlZmluZWQgYWNjb3JkaW5nIHRvIDpyZWY6YGhldmNgLgo+ID4gPj4gKyAgICBUaGV5IGFyZSBk
ZXNjcmliZWQgaW4gc2VjdGlvbiA3LjQuNy4xICJHZW5lcmFsIHNsaWNlIHNlZ21lbnQgaGVhZGVy
Cj4gPiA+PiArICAgIHNlbWFudGljcyIgb2YgdGhlIHNwZWNpZmljYXRpb24uCj4gPiA+PiArCj4g
PiA+Pgo+ID4gPj4gICBgYFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX1NDQUxJTkdfTUFUUklYIChz
dHJ1Y3QpYGAKPiA+ID4+Cj4gPiA+PiAgICAgICBTcGVjaWZpZXMgdGhlIEhFVkMgc2NhbGluZyBt
YXRyaXggcGFyYW1ldGVycyB1c2VkIGZvciB0aGUgc2NhbGluZwo+ID4gPj4gICAgICAgcHJvY2Vz
cwo+ID4gPj4gICAgICAgZm9yIHRyYW5zZm9ybSBjb2VmZmljaWVudHMuCj4gPiA+Pgo+ID4gPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtZGVmcy5jCj4g
PiA+PiBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtZGVmcy5jIGluZGV4Cj4g
PiA+PiBkNTk0ZWZiY2JiOTMuLmUyMjkyMWU3ZWE2MSAxMDA2NDQKPiA+ID4+IC0tLSBhL2RyaXZl
cnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtZGVmcy5jCj4gPiA+PiArKysgYi9kcml2ZXJz
L21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWRlZnMuYwo+ID4gPj4gQEAgLTExODgsNiArMTE4
OCw3IEBAIGNvbnN0IGNoYXIgKnY0bDJfY3RybF9nZXRfbmFtZSh1MzIgaWQpCj4gPiA+Pgo+ID4g
Pj4gICAgY2FzZSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19ERUNPREVfUEFSQU1TOiAgICAgICAg
ICAgICByZXR1cm4KPiAiSEVWQyBEZWNvZGUKPiA+ID4+ICAgIFBhcmFtZXRlcnMiOyBjYXNlIFY0
TDJfQ0lEX1NUQVRFTEVTU19IRVZDX0RFQ09ERV9NT0RFOgo+IHJldHVybiAiSEVWQwo+ID4gPj4g
ICAgRGVjb2RlIE1vZGUiOyBjYXNlIFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX1NUQVJUX0NPREU6
Cj4gcmV0dXJuICJIRVZDCj4gPiA+PiAgICBTdGFydCBDb2RlIjs+Pgo+ID4gPj4gKyAgY2FzZSBW
NEwyX0NJRF9TVEFURUxFU1NfSEVWQ19FTlRSWV9QT0lOVF9PRkZTRVRTOiAgICAgICByZXR1cm4K
PiAiSEVWQyBFbnRyeQo+ID4gPj4gUG9pbnQgT2Zmc2V0cyI7Pj4KPiA+ID4+ICAgIC8qIENvbG9y
aW1ldHJ5IGNvbnRyb2xzICovCj4gPiA+PiAgICAvKiBLZWVwIHRoZSBvcmRlciBvZiB0aGUgJ2Nh
c2UncyB0aGUgc2FtZSBhcyBpbiB2NGwyLWNvbnRyb2xzLmghCj4gKi8KPiA+ID4+Cj4gPiA+PiBA
QCAtMTUxOCw2ICsxNTE5LDEwIEBAIHZvaWQgdjRsMl9jdHJsX2ZpbGwodTMyIGlkLCBjb25zdCBj
aGFyICoqbmFtZSwKPiA+ID4+IGVudW0gdjRsMl9jdHJsX3R5cGUgKnR5cGUsPj4KPiA+ID4+ICAg
IGNhc2UgVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNfREVDT0RFX1BBUkFNUzoKPiA+ID4+ICAgICAg
ICAgICAgKnR5cGUgPSBWNEwyX0NUUkxfVFlQRV9IRVZDX0RFQ09ERV9QQVJBTVM7Cj4gPiA+PiAg
ICAgICAgICAgIGJyZWFrOwo+ID4gPj4KPiA+ID4+ICsgIGNhc2UgVjRMMl9DSURfU1RBVEVMRVNT
X0hFVkNfRU5UUllfUE9JTlRfT0ZGU0VUUzoKPiA+ID4+ICsgICAgICAgICAgKnR5cGUgPSBWNEwy
X0NUUkxfVFlQRV9VMzI7Cj4gPiA+PiArICAgICAgICAgICpmbGFncyB8PSBWNEwyX0NUUkxfRkxB
R19EWU5BTUlDX0FSUkFZOwo+ID4gPj4gKyAgICAgICAgICBicmVhazsKPiA+ID4+Cj4gPiA+PiAg
ICBjYXNlIFY0TDJfQ0lEX1NUQVRFTEVTU19WUDlfQ09NUFJFU1NFRF9IRFI6Cj4gPiA+PiAgICAg
ICAgICAgICp0eXBlID0gVjRMMl9DVFJMX1RZUEVfVlA5X0NPTVBSRVNTRURfSERSOwo+ID4gPj4g
ICAgICAgICAgICBicmVhazsKPiA+ID4+Cj4gPiA+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9tZWRp
YS9oZXZjLWN0cmxzLmggYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+ID4gPj4gaW5kZXgg
YTM3MmMxODQ2ODllLi4zYTY2MDFhNDZjZWQgMTAwNjQ0Cj4gPiA+PiAtLS0gYS9pbmNsdWRlL21l
ZGlhL2hldmMtY3RybHMuaAo+ID4gPj4gKysrIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgK
PiA+ID4+IEBAIC0yMCw2ICsyMCw3IEBACj4gPiA+Pgo+ID4gPj4gICAjZGVmaW5lIFY0TDJfQ0lE
X1NUQVRFTEVTU19IRVZDX0RFQ09ERV9QQVJBTVMKPiAoVjRMMl9DSURfQ09ERUNfQkFTRSArCj4g
PiA+PiAgIDEwMTIpCj4gPiA+PiAgICNkZWZpbmUgVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNfREVD
T0RFX01PREUgICAgICAoVjRMMl9DSURfQ09ERUNfQkFTRQo+ICsKPiA+ID4+ICAgMTAxNSkKPiA+
ID4+ICAgI2RlZmluZSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TVEFSVF9DT0RFICAgICAgIChW
NEwyX0NJRF9DT0RFQ19CQVNFICsgMTAxNikKPiA+ID4+Cj4gPiA+PiArI2RlZmluZSBWNEwyX0NJ
RF9TVEFURUxFU1NfSEVWQ19FTlRSWV9QT0lOVF9PRkZTRVRTIChWNEwyX0NJRF9DT0RFQ19CQVNF
Cj4gPiA+PiArIDEwMTcpPj4KPiA+ID4+ICAgLyogZW51bSB2NGwyX2N0cmxfdHlwZSB0eXBlIHZh
bHVlcyAqLwo+ID4gPj4gICAjZGVmaW5lIFY0TDJfQ1RSTF9UWVBFX0hFVkNfU1BTIDB4MDEyMAo+
ID4gPj4KPiA+ID4+IEBAIC0zMTYsNiArMzE3LDggQEAgc3RydWN0IHY0bDJfaGV2Y19wcmVkX3dl
aWdodF90YWJsZSB7Cj4gPiA+Pgo+ID4gPj4gICAgKgo+ID4gPj4gICAgKiBAYml0X3NpemU6IHNp
emUgKGluIGJpdHMpIG9mIHRoZSBjdXJyZW50IHNsaWNlIGRhdGEKPiA+ID4+ICAgICogQGRhdGFf
Yml0X29mZnNldDogb2Zmc2V0IChpbiBiaXRzKSB0byB0aGUgdmlkZW8gZGF0YSBpbiB0aGUgY3Vy
cmVudAo+ID4gPj4gICAgc2xpY2UgZGF0YT4+Cj4gPiA+PiArICogQG51bV9lbnRyeV9wb2ludF9v
ZmZzZXRzOiBzcGVjaWZpZXMgdGhlIG51bWJlciBvZiBlbnRyeSBwb2ludCBvZmZzZXQKPiA+ID4+
IHN5bnRheCArICogICAgICAgICAgICAgICAgICAgICAgZWxlbWVudHMgaW4gdGhlIHNsaWNlCj4g
aGVhZGVyLgo+ID4gPj4KPiA+ID4+ICAgICogQG5hbF91bml0X3R5cGU6IHNwZWNpZmllcyB0aGUg
Y29kaW5nIHR5cGUgb2YgdGhlIHNsaWNlIChCLCBQIG9yIEkpCj4gPiA+PiAgICAqIEBudWhfdGVt
cG9yYWxfaWRfcGx1czE6IG1pbnVzIDEgc3BlY2lmaWVzIGEgdGVtcG9yYWwgaWRlbnRpZmllciBm
b3IKPiA+ID4+ICAgIHRoZSBOQUwgdW5pdCAqIEBzbGljZV90eXBlOiBzZWUgVjRMMl9IRVZDX1NM
SUNFX1RZUEVfe30KPiA+ID4+Cj4gPiA+PiBAQCAtMzU4LDcgKzM2MSw3IEBAIHN0cnVjdCB2NGwy
X2hldmNfcHJlZF93ZWlnaHRfdGFibGUgewo+ID4gPj4KPiA+ID4+ICAgc3RydWN0IHY0bDJfY3Ry
bF9oZXZjX3NsaWNlX3BhcmFtcyB7Cj4gPiA+Pgo+ID4gPj4gICAgX191MzIgICBiaXRfc2l6ZTsK
PiA+ID4+ICAgIF9fdTMyICAgZGF0YV9iaXRfb2Zmc2V0Owo+ID4gPj4KPiA+ID4+IC0KPiA+ID4+
ICsgIF9fdTMyICAgbnVtX2VudHJ5X3BvaW50X29mZnNldHM7Cj4gPiA+Pgo+ID4gPj4gICAgLyog
SVNPL0lFQyAyMzAwOC0yLCBJVFUtVCBSZWMuIEguMjY1OiBOQUwgdW5pdCBoZWFkZXIgKi8KPiA+
ID4+ICAgIF9fdTggICAgbmFsX3VuaXRfdHlwZTsKPiA+ID4+ICAgIF9fdTggICAgbnVoX3RlbXBv
cmFsX2lkX3BsdXMxOwo+ID4gPj4KPiA+ID4+IC0tCj4gPiA+PiAyLjMyLjAKPgo+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
