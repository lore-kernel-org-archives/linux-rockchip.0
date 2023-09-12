Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8BD2CA0EC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Sep 2023 13:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkQA3ANC7EK+GeXktLe8sX1GT8LSHKhw+XN6zsOD1jI=; b=OlffjSE4oeyuPi
	/qnAsZXnB4r0LEbthr10GwQxtUV4HS7+Lz7dnH6jAoQQTpKbZhczb1XtoWS9pAb5mhd5LKOKUVVYy
	CsZILYlR5eDJvp3N4ssKogOdHHqdhpHvidJT5RFykaI92qIqeW4LX79Ffg3+ZQFPM2Zm87kBQNbx2
	z+enZsxUWdQNOFROI+k+W4MnYma9oQyg9QfTIZK3VbSTBu11wCdVzfH4s7D5A1/LJ9dbjpLJBklwd
	HIaym0EgPCH2LTiIkLvIdszH7tNyqKAGA697q/+qOCCyFEhlDCcO5z3SLTN12NzgD77+OZjc+Hxmv
	J1tt3nUa4Roh0X0xhlzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg3GO-003PFN-1X;
	Tue, 12 Sep 2023 13:17:08 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg3GL-003PDe-1M
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Sep 2023 13:17:07 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-273ca7ab3f5so3840370a91.2
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Sep 2023 06:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1694524622; x=1695129422; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=74/lXDjAicbAQVpv6HCI5jeqajIVNGavg/gPM8Y5/Jo=;
        b=XqIXJ1chqoAfZvOaIJmA5+iwATL8bhkC/Ls7KR9W+c8Z3po58O1/6vldbZOw4cHuXf
         JhrsY/XgrnWbnGb1SIBpgTFU66IQ8iVe5mvAYALcgS5ef9Ee+w1U6mcHS/4eOaJkpErW
         D0l1rc1Y+629ePc8tbkllKYSHzFS3p5KRCZQx/qaLWrLni7YDZVHlV9oS5wJz1T74n8q
         QTW4GyE+8pfEPvWUW7kIX1h6AOeAqHEmLsMd9JR8qmIxd9htPkI1wXpQE9fHZewxZt9P
         ne23Pi7n57OF+pAIdK1V/KZd9RQTghjABehcd+3vXJi/yS1udtEINxswDu6x5pc/JsT8
         Casw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694524622; x=1695129422;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=74/lXDjAicbAQVpv6HCI5jeqajIVNGavg/gPM8Y5/Jo=;
        b=KmKJt2dNoNlzqRsWOOK8QzcEY4cEu9gMYQPPnbj4ifNGMfo4tLPhXV9iGsBrTdUpUf
         4OtWB8Zrl4bnANJZrjjrkY8RjPCE75n/OTaPwuLaW7rrdQ70TA3sS7bTLFFaccv8j+DX
         vQy2Lk2HW9TYima4L/1h8SjTg3CToXRrpG6yWIMn/ow5IPoW0XI8XFq3f4uCfbaTz2L1
         RQml0j65wlcihtal0eeC4P10NX06oPp6XkowULiOe5PR8jRp/01TRracxindOVoOaIfV
         xxr2c46wPFM3esSjP80V5vTOv/v/wadjmGQVnm+SG98pl3xwPB2YVelWSoXTZRQ4CBsx
         qYyw==
X-Gm-Message-State: AOJu0YytEQbeQRJ7XFvTfbOXaucYE/Px9GIb0uEKv8mlih0sagt7mO+0
	LDw1o7HZrzp1V/+mkA5tk456loVP0X3mrBEf1n+Q1A==
X-Google-Smtp-Source: AGHT+IERwDFvK750zia0Sae/chWY8QEXD4kOdOHvlRSTQo34xsLlidVO5fUIkgz4yvPkVtnGdXKIiS6fw+3sN/KQfUM=
X-Received: by 2002:a17:90a:aa85:b0:268:1e95:4e25 with SMTP id
 l5-20020a17090aaa8500b002681e954e25mr10043598pjq.17.1694524622460; Tue, 12
 Sep 2023 06:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <4rpsqk4tgrdcxtxtfoum6o4oyglwkirmkh3jj4y5tays2ivb5p@uwqdf3snshkv>
 <25df6189-7b0a-b13d-e93d-c2a388fd45e3@collabora.com> <zmq7pz7rtz6h765azg5kl2qgjd264yafctx4q474t5tqai57og@cajbcub4yuwr>
 <5fdf9d29-3f8d-0ee0-027f-57ff3a5cecb8@collabora.com> <CAKMK7uGg6n322UugJwErqF_Dvsbqceqae6SVWV3ZWEOR7x36rQ@mail.gmail.com>
 <9a2b1ad8-4359-4f12-b4f9-c1de477bc440@collabora.com> <mnjcsiqjqdnvbbkaaz5r4n42e56qsax667r7radzyagnmmfkip@dfi64z5deqzj>
 <b7d96985-8489-efe2-db67-1f3108e26822@mailbox.org> <5ejq3hjpoy3gxft2jbmoa5m656usetuxcs7g3ezyyiitj67rav@r5jhdz27foat>
 <550454b8-2e2c-c947-92c5-37f0367661c2@mailbox.org> <os2wvkangif2nwewfbzkuyjm7njp4g3sqj5td3ogbhhjwsrbbd@3jpf6g5hd3z4>
In-Reply-To: <os2wvkangif2nwewfbzkuyjm7njp4g3sqj5td3ogbhhjwsrbbd@3jpf6g5hd3z4>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 12 Sep 2023 14:16:41 +0100
Message-ID: <CAPj87rP1sw49Z0HdPhUa-=kDp166RqiuhC9rL+Ef9hpwPD5+JA@mail.gmail.com>
Subject: Re: [PATCH v11] drm: Add initial ci/ subdirectory
To: Maxime Ripard <mripard@kernel.org>
Cc: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>, 
	emma@anholt.net, linux-doc@vger.kernel.org, vignesh.raman@collabora.com, 
	dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io, jbrunet@baylibre.com, 
	robdclark@google.com, corbet@lwn.net, khilman@baylibre.com, 
	sergi.blanch.torne@collabora.com, david.heidelberg@collabora.com, 
	linux-rockchip@lists.infradead.org, Daniel Stone <daniels@collabora.com>, 
	martin.blumenstingl@googlemail.com, robclark@freedesktop.org, 
	Helen Koike <helen.koike@collabora.com>, anholt@google.com, 
	linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, 
	linux-amlogic@lists.infradead.org, gustavo.padovan@collabora.com, 
	linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com, 
	neil.armstrong@linaro.org, guilherme.gallo@collabora.com, 
	linux-kernel@vger.kernel.org, tzimmermann@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_061705_559030_C72FBF71 
X-CRM114-Status: GOOD (  37.44  )
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

SGkgTWF4aW1lLApIb3BlZnVsbHkgbGVzcyBtYW5nbGVkIGZvcm1hdHRpbmcgdGhpcyB0aW1lOiB0
dXJucyBvdXQgVGh1bmRlcmJpcmQgKwpwbGFpbiB0ZXh0IGlzIHV0dGVybHkgdW5yZWFkYWJsZSwg
c28gdGhhdCdzIG9uZSBsZXNzIE1VQSB0aGF0IGlzCmFjdHVhbGx5IHVzYWJsZSB0byBzZW5kIGVt
YWlsIHRvIGtlcm5lbCBsaXN0cyB3aXRob3V0IGdldHRpbmcgc2hvdXRlZAphdC4KCk9uIE1vbiwg
MTEgU2VwdCAyMDIzIGF0IDE1OjQ2LCBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+
IHdyb3RlOgo+IE9uIE1vbiwgU2VwIDExLCAyMDIzIGF0IDAzOjMwOjU1UE0gKzAyMDAsIE1pY2hl
bCBEw6RuemVyIHdyb3RlOgo+ID4gPiBUaGVyZSdzIGluIDYuNi1yYzEgYXJvdW5kIDI0MCByZXBv
cnRlZCBmbGFreSB0ZXN0cy4gTm9uZSBvZiB0aGVtIGhhdmUKPiA+ID4gYW55IGNvbnRleHQuIFRo
YXQgbmV3IHNlcmllcyBoYWRzIGEgZmV3IGRvemVucyB0b28sIHdpdGhvdXQgYW55IGNvbnRleHQK
PiA+ID4gZWl0aGVyLiBBbmQgdGhlcmUncyBubyBtZW50aW9uIGFib3V0IHRoYXQgYmVpbmcgYSBw
bGFuLCBvciBhIHBhdGNoCj4gPiA+IGFkZGluZyBhIG5ldyBwb2xpY3kgZm9yIGFsbCB0ZXN0cyBn
b2luZyBmb3J3YXJkLgo+ID4KPiA+IFRoYXQgZG9lcyBzb3VuZCBiYWQsIHdvdWxkIG5lZWQgdG8g
YmUgcmFpc2VkIGluIHJldmlldy4KPiA+Cj4gPiA+IEFueSBjb25jZXJuIEkgcmFpc2VkIHdlcmUg
bWV0IHdpdGggYSBnaWFudCAiaXQgd29ya2VkIG9uIE1lc2EiIGhhbmR3YXZlCj4gPgo+ID4gTGVz
c29ucyBsZWFybmVkIGZyb20geWVhcnMgb2YgZXhwZXJpZW5jZSB3aXRoIGJpZyByZWFsLXdvcmxk
IENJCj4gPiBzeXN0ZW1zIGxpa2UgdGhpcyBhcmUgaGFyZGx5ICJoYW5kd2F2aW5nIi4KPgo+IFlv
dXIgKGFuZCBvdGhlcnMpIGV4cGVyaWVuY2UgY2VydGFpbmx5IGlzbid0LiBJdCBpcyB2YWx1YWJs
ZSwgd2VsY29tZSwKPiBhbmQgdmVyeSBtdWNoIGFwcHJlY2lhdGVkLgo+Cj4gSG93ZXZlciwgbXkg
cXVlc3Rpb25zIGFuZCBjb25jZXJucyBiZWluZyBpZ25vcmVkIHRpbWUgYW5kIHRpbWUgYWdhaW4K
PiBhYm91dCB0aGluZ3MgbGlrZSB3aGF0IGlzIHRoZSBwcm9jZXNzIGlzIGdvaW5nIHRvIGJlIGxp
a2UsIHdoYXQgaXMgZ29pbmcKPiB0byBiZSB0ZXN0ZWQsIHdobyBpcyBnb2luZyB0byBiZSBtYWlu
dGFpbmluZyB0aGF0IHRlc3QgbGlzdCwgaG93IHRoYXQKPiBpbnRlcmFjdHMgd2l0aCBzdGFibGUs
IGhvdyB3ZSBjYW4gcG9zc2libHkgYXVkaXQgdGhlIGZsYWt5IHRlc3RzIGxpc3QsCj4gZXRjLiBo
YXZlIGZlbHQgbGlrZSB0aGV5IHdlcmUgYmVpbmcgaGFuZHdhaXZlZCBhd2F5LgoKU29ycnkgaXQg
ZW5kZWQgdXAgY29taW5nIGFjcm9zcyBsaWtlIHRoYXQuIEl0IHdhc24ndCB0aGUgaW50ZW50LgoK
PiBJJ20gbm90IHNheWluZyB0aGF0IGJlY2F1c2UgSSBkaXNhZ3JlZSwgSSBzdGlsbCBkbyBvbiBz
b21lLCBidXQgdGhhdCdzCj4gZmluZSB0byBzb21lIGV4dGVudC4gSG93ZXZlciwgbW9zdCBvZiB0
aGVzZSBpc3N1ZXMgYXJlIG5vdCBzbyBtdWNoIGFuCj4gaW5mcmFzdHJ1Y3R1cmUgaXNzdWUsIGJ1
dCBhIGNvbW11bml0eSBpc3N1ZS4gQW5kIEkgZG9uJ3QgZXZlbiBleHBlY3QgYQo+IHBlcmZlY3Qg
c29sdXRpb24gcmlnaHQgbm93LCB1bmxpa2Ugd2hhdCB5b3Ugc2VlbSB0byB0aGluay4gQnV0IEkg
ZG8KPiBleHBlY3Qgc29tZSBraW5kIG9mIHBsYW4gaW5zdGVhZCBvZiBqdXN0IGlnbm9yaW5nIHRo
YXQgcHJvYmxlbS4KPgo+IExpa2UsIEkgaGFkIHRvIGFzayB0aGUgTVQ4MTczIHF1ZXN0aW9uIDMg
dGltZXMgaW4gb3JkZXIgdG8gZ2V0IGFuCj4gYW5zd2VyLCBhbmQgSSdtIHN0aWxsIG5vdCBzdXJl
IHdoYXQgaXMgZ29pbmcgdG8gYmUgZG9uZSB0byBhZGRyZXNzIHRoYXQKPiBwYXJ0aWN1bGFyIGlz
c3VlLgo+Cj4gU28sIEknbSBzb3JyeSwgYnV0IEkgY2VydGFpbmx5IGZlZWwgbGlrZSBpdCBoZXJl
LgoKSSBkb24ndCBxdWl0ZSBzZWUgdGhlIHNhbWUgcGljdHVyZSBmcm9tIHlvdXIgc2lkZSB0aG91
Z2guIEZvciBleGFtcGxlLApteSByZWFkaW5nIG9mIHdoYXQgeW91J3ZlIHNhaWQgaXMgdGhhdCBm
bGFreSB0ZXN0cyBhcmUgdXR0ZXJseQp1bmFjY2VwdGFibGUsIGFzIGFyZSBwYXJ0aWFsIHJ1bnMs
IGFuZCB3ZSBzaG91bGRuJ3QgcHJldGVuZCBvdGhlcndpc2UuCldpdGggeW91ciBjb25jcmV0ZSBl
eGFtcGxlICh3aGljaCBpcyByZWFsbHkgaGVscGZ1bCwgc28gdGhhbmtzKSwgd2hhdApoYXBwZW5z
IHRvIHRoZSBNVDgxNzMgaGRtaS1pbmplY3QgdGVzdD8gRG8gd2Ugc2tpcCBhbGwgTVQ4MTczIHRl
c3RpbmcKdW50aWwgaXQncyBwZXJmZWN0LCBvciBkb2VzIE1UODE3MyB0ZXN0aW5nIGFsd2F5cyBm
YWlsIGJlY2F1c2UgdGhhdAp0ZXN0IGRvZXM/CgpCb3RoIGhhdmUgdGhlaXIgZG93bnNpZGVzLiBO
b3QgZG9pbmcgYW55IHRlc3RpbmcgaGFzIHRoZSBvYnZpb3VzCmRvd25zaWRlLCBhbmQgbWVhbnMg
dGhhdCB0aGUgZHJpdmVyIGNhbiBnZXQgd29yc2UgdW50aWwgaXQgZ2V0cwpwZXJmZWN0LiBBbHdh
eXMgbWFya2luZyB0aGUgdGVzdCBhcyBmYWlsZWQgbWVhbnMgdGhhdCB0aGUgdGVzdCByZXN1bHRz
CmFyZSB1c2VsZXNzOiBpZiBmYWlsdXJlIGlzIGV4cGVjdGVkLCB0aGVuIHJlZCBpcyBnb29kLiBJ
IG1lYW4sIHNheQp5b3UncmUgY29udHJpYnV0aW5nIGEgcGF0Y2ggdG8gZml4IHNvbWUgZG9jdW1l
bnRhdGlvbiBvciBhZGQgYSBoZWxwZXIKdG8gY29tbW9uIGNvZGUgd2hpY2ggb25seSB2M2QgdXNl
cy4gVGhlIHRlc3QgcmVzdWx0cyBjb21lIGJhY2ssIGFuZAp5b3VyIGJyYW5jaCBpcyBmYWlsaW5n
IHRlc3RzIG9uIE1UODE3Mywgc3BlY2lmaWNhbGx5IHRoZQpoZG1pLWluamVjdEA0ayB0ZXN0LiBX
aGF0IHRoZW4/IEVpdGhlciBhcyBhIHNlbmlvciBjb250cmlidXRvciB5b3UKJ2tub3cnIHRoYXQn
cyB0aGUgY2FzZSwgb3IgYXMgYSBjYXN1YWwgY29udHJpYnV0b3IgeW91IGdldCB0b2xkICdvaAp5
ZWFoLCBkb24ndCB3b3JyeSBhYm91dCB0aGUgdGVzdCByZXN1bHRzLCB0aGV5IGFsd2F5cyBmYWls
Jy4gQm90aCBsZWFkCnRvIHRoZSBzYW1lIG91dGNvbWUsIHdoaWNoIGlzIHRoYXQgbm8tb25lIHBh
eXMgYW55IGF0dGVudGlvbiB0byB0aGUKcmVzdWx0cywgYW5kIHRoZXkgZ2V0IHdvcnNlLgoKV2hh
dCB3ZSBkbyBhZ3JlZSBvbiBpcyB0aGF0IHllcywgdGhvc2UgdGVzdHMgc2hvdWxkIGFic29sdXRl
bHkgYmUKZml4ZWQsIGFuZCBub3QganVzdCBzd2VwdCB1bmRlciB0aGUgcnVnLiBQYXJ0IG9mIHRo
aXMgaXMgaGF2aW5nCm1haW50YWluZXJzIGFjdHVhbGx5IG1lYW5pbmdmdWxseSBvd24gdGhlaXIg
dGVzdCByZXN1bHRzLiBGb3IgZXhhbXBsZSwKSSdtIGxvb2tpbmcgYXQgdGhlIGV4cGVjdGF0aW9u
IGxpc3RzIGZvciB0aGUgSW50ZWwgZ2VuIGluIG15IGxhcHRvcCwKYW5kIEknbSBzZWVpbmcgYSBs
b3Qgb2YgYnJlYWthZ2UgaW4gYmxlbmRpbmcgdGVzdHMsIGFzIHdlbGwgYXMKZHVhbC1kaXNwbGF5
IGZhaWxzIHdoaWNoIGluY2x1ZGUgdGhlIHJlc29sdXRpb24gb2YgbXkgZXh0ZXJuYWwKZGlzcGxh
eS4gSSdkIGV4cGVjdCB0aGUgSW50ZWwgZHJpdmVyIG1haW50YWluZXJzIHRvIGxvb2sgYXQgdGhl
bSwgZ2V0CnRoZW0gZml4ZWQsIGFuZCBncmFkdWFsbHkgcHJ1bmUgdGhvc2UgeGZhaWxzL2ZsYWtl
cyBkb3duIHRvd2FyZHMgemVyby4KCklmIHRoZSBtYWludGFpbmVycyBkb24ndCBvd24gaXQgdGhv
dWdoLCB0aGVuIGl0J3Mgbm90IGdvaW5nIHRvIGdldApmaXhlZC4gQW5kIHdlIGFyZSBleGFjdGx5
IHdoZXJlIHdlIGFyZSB0b2RheTogYnJva2VuIHBsYW5lIGJsZW5kaW5nCmFuZCAxNDQwcCBvbiBL
QkwsIGJyb2tlbiBFRElEIGluamVjdGlvbiBvbiBNVDgxNzMsIGFuZCBicm9rZW4gYXRvbWljCmNv
bW1pdHMgb24gc3RvbmV5LiBXaXRob3V0IHN0cm9uZ2VyIGFjdGlvbiBmcm9tIHRoZSBtYWludGFp
bmVycyAoZS5nLgp0aHJvd2luZyBpOTE1IG91dCBvZiB0aGUgdHJlZSB1bnRpbCBpdCBoYXMgMTAw
JSBwYXNzIDEwMCUgb2YgdGhlCnRpbWUpLCBhZGRpbmcgdGVzdGluZyBpc24ndCBtYWtpbmcgdGhl
IHNpdHVhdGlvbiBiZXR0ZXIgb3Igd29yc2UgaW4KYW5kIG9mIGl0c2VsZi4gV2hhdCBpdCBfaXNf
IGRvaW5nIHRob3VnaCwgaXMgZ2l2aW5nIHJlYWxseSBjbGVhcgpkb2N1bWVudGF0aW9uIG9mIHRo
ZSBzdGF0dXMgb2YgZWFjaCBkcml2ZXIsIGFuZCBiYWNraW5nIHRoYXQgdXAgYnkKdmVyaWZ5aW5n
IGl0LgoKT25seSBtYWludGFpbmVycyBjYW4gYWN0dWFsbHkgZml4IHRoZSBkcml2ZXJzIChvciB0
aGUgdGVzdHMgdGJmKS4gQnV0CmRvaW5nIHRoZSB0ZXN0aW5nIGRvZXMgbGV0IHVzIGJlIHJlYWxs
eSBjbGVhciB0byBldmVyeW9uZSB3aGF0IHRoZQphY3R1YWwgc3RhdGUgaXMsIGFuZCB0aGF0IHdh
eSBwZW9wbGUgY2FuIG1ha2UgaW5mb3JtZWQgZGVjaXNpb25zIHRvby4KQW5kIHRoZSBvbmx5IHdh
eSB3ZSdyZSBnb2luZyB0byBkcml2ZSB0aGUgdGVzdCByYXRlIGRvd24gaXMgYnkgdGhlCnN1YnN5
c3RlbSBtYWludGFpbmVycyBlbmZvcmNpbmcgaXQuCgpEb2VzIHRoYXQgbWFrZSBzZW5zZSBvbiB3
aGVyZSBJJ20gKGFuZCBJIHRoaW5rIGEgbG90IG9mIG90aGVycyBhcmUpIGNvbWluZyBmcm9tPwoK
VG8gYW5zd2VyIHRoZSBvdGhlciBxdWVzdGlvbiBhYm91dCAnd2hlcmUgYXJlIHRoZSBsb2dzPyc6
IHNvbWUgb2YgdGhlbQpoYXZlIHRoZSBmYWlsdXJlIGRhdGEgaW4gdGhlbSwgb3RoZXJzIGRvbid0
LiBUaGV5IGFsbCBzaG91bGQgZ29pbmcKZm9yd2FyZCBhdCBsZWFzdCB0aG91Z2guCgpDaGVlcnMs
CkRhbmllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
