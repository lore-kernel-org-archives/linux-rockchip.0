Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C48C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 17:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ay+vIoJinPjyf+ziK4sUZsgmDevZTvvUwQ5ONN+f6cQ=; b=3o0mYQ4fbeF+Ee
	9GPKykbWfaIbyvph4unc7pVzPqBY9AEOMMLQ2DF9rY8C+ZUOMhh2uHcFyDXdw4jcanyGYdh9VatD7
	C1S/AhS0b6TLsOPIWcTFJsPJhubpYcufY0j8c5OkJRXvosGunj29DNVfzZpGAfMA94pv/UC67VpDP
	bqMRXcUo5mEmk60l3+3r/k1ySjoEwgUIx7rGxzs7PePOSYZKthMjMiWf/o9qDb/RWaLv+3xDLtOcu
	81iLT0DOvL6JV6KCSpoDqDgHpsMmxIj1je65JxZadL1J+ojxcvlOWigGijwbk3q5elm4DPW8GskaI
	WVp7YMe/RjYczAuWZqAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOva-00958G-D4; Fri, 15 Jul 2022 17:16:34 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCOvR-00954Q-JJ
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 17:16:26 +0000
Received: by mail-ej1-x634.google.com with SMTP id b11so10059481eju.10
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 10:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=k9mYwQ4GZm0yX1uaonHMP1HNEcS1yGmWnGbQClcs4i0=;
        b=zFID5lvPR8/gCoMoKCKoy9rjEMsXVDH8styUKWjnB9OpkSx33TYhV9J4WZFvM6fW0U
         wi0Ki8iHWle+06SAd9C4E9SZqG3ioGoMmc2kbEdZV5HF74a0OWFlipC+4UM1jyL+gUtC
         mtZnctRxLTV1Red2PjGsuYaHdlmGnt/+V05EwivTqBK+p6sbIS37C2IPpCKdmXeCW1O0
         K2BlX8dvQesrp01srzrt1e8J85tnylx45T0fS+ntK8EblgVMsa+F/sdMGcL5Q+PufqSk
         K6DlfaDLk2TnQRjL/AN1wp2Zi/h6s5L23r61AaWV86P3f/84bf96pOiCEtEFmn1REXtO
         IfAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=k9mYwQ4GZm0yX1uaonHMP1HNEcS1yGmWnGbQClcs4i0=;
        b=MfJ8WaLr48LzDaFhBtvLZHo2BYht/WmIx9YHhkz/AsETJpT6km8ZUG/K5chQzQjzqH
         /KQ4cTxlzhHv64L9I81lN5VhBAGUrPC/27iNAvOulepgxVASUL+cymlZS+rgi5g6D6ur
         ae9QMWIURQ1l6jg8MKLdeO2wmLdRtUbs7yOp23qUvUWBjYDzP+dCOxTy/z3YnHH4P/mN
         DotE11JmR0tewSX4yL6SaD86ajlZ7McrWTRBvYmtD6m2ykiUNhzEYxGA4APMvkN4xcvn
         KGsFmir/QEhVL8w0ThJO2tnd5juZaDpsZavkKv+TANeaS9WdSRZH8gq3yIPK5rJhu+M/
         P1cA==
X-Gm-Message-State: AJIora/AqPELh3HX0zNMnqpvLmRkeeybqXY4dtegRJ3qe2sdiFjFT+xa
	5dyzRiLtfG0Ri7CWTXHVav9jRQ==
X-Google-Smtp-Source: AGRyM1uWNXum1+XVv8QGfp0x8H8XzhBoBjU8AmosT0BHbLLPoFKM6gMxNHYuTmTumVbYDj6ukgHArw==
X-Received: by 2002:a17:906:6545:b0:722:7c99:1ad7 with SMTP id u5-20020a170906654500b007227c991ad7mr14438736ejn.325.1657905381857;
        Fri, 15 Jul 2022 10:16:21 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id j17-20020a17090623f100b0072a55ec6f3bsm2259246ejg.165.2022.07.15.10.16.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 10:16:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v4] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
Date: Fri, 15 Jul 2022 19:16:20 +0200
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_101625_644050_E43D3915 
X-CRM114-Status: GOOD (  16.65  )
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

T0ssIHRoaXMgdG9vayBtZSBhIHdoaWxlIHRvIGZpZ3VyZSBvdXQuCgpXaGVuIG5vIHVuZGVydm9s
dGFnZSBsaW1pdCBpcyBjb25maWd1cmVkLCBJIGNhbiByZWxpYWJseSB0cmlnZ2VyIHRoZSBpbml0
aWFsaXphdGlvbiBidWcgdXBvbiBib290LgpXaGVuIHRoZSBsaW1pdCBpcyBzZXQgdG8gMy4wViwg
aXQgcmFyZWx5IG9jY3VycywgYnV0IGp1c3QgYWZ0ZXIgSSBzZW5kIHRoZSB2MyBwYXRjaCwgSSB3
YXMgYWJsZSB0byByZXByb2R1Y2UuLi4KCj4gQW0gMTUuMDcuMjAyMiB1bSAxOToxMiBzY2hyaWVi
IENocmlzdGlhbiBLb2hsc2Now7x0dGVyIDxjaHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT46Cj4g
Cj4gbW1jL1NELWNhcmQgaW5pdGlhbGl6YXRpb24gbWF5IGZhaWwgb24gTmFub1BpIFI0UyB3aXRo
Cj4gIm1tYzE6IHByb2JsZW0gcmVhZGluZyBTRCBTdGF0dXMgcmVnaXN0ZXIiIC8KPiAibW1jMTog
ZXJyb3IgLTExMCB3aGlsc3QgaW5pdGlhbGlzaW5nIFNEIGNhcmQiCj4gZWl0aGVyIG9uIGNvbGQg
Ym9vdCBvciBhZnRlciBhIHJlYm9vdC4KPiAKPiBNb3Jlb3ZlciwgdGhlIHN5c3RlbSB3b3VsZCBh
bHNvIHNvbWV0aW1lcyBoYW5nIHVwb24gcmVib290Lgo+IAo+IFRoaXMgaXMgcHJldmVudGVkIGJ5
IHNldHRpbmcgYW4gZXhwbGljaXQgdW5kZXJ2b2x0YWdlIHByb3RlY3Rpb24gbGltaXQKPiBmb3Ig
dGhlIFNELWNhcmQtc3BlY2lmaWMgdmNjM3YwX3NkIHZvbHRhZ2UgcmVndWxhdG9yLgo+IAo+IFNl
dCB0aGUgdW5kZXJ2b2x0YWdlIHByb3RlY3Rpb24gbGltaXQgdG8gMi43Viwgd2hpY2ggaXMgdGhl
IG1pbmltdW0KPiBwZXJtaXNzaWJsZSBTRCBjYXJkIG9wZXJhdGluZyB2b2x0YWdlLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLb2hsc2Now7x0dGVyIDxjaHJpc3RpYW5Aa29obHNjaHV0
dGVyLmNvbT4KPiAtLS0KPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5v
cGk0LmR0c2kgfCA0ICsrKysKPiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gbW9k
ZSBjaGFuZ2UgMTAwNjQ0ID0+IDEwMDc1NSBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1uYW5vcGk0LmR0c2kKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktbmFub3BpNC5kdHNpCj4gb2xkIG1vZGUgMTAwNjQ0Cj4gbmV3IG1vZGUgMTAwNzU1
Cj4gaW5kZXggOGMwZmY2Yzk2ZTAzLi42NjljNzRjZTRkMTMKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPiBAQCAtNzMsNiArNzMsMTAgQEAg
dmNjM3YwX3NkOiB2Y2MzdjAtc2Qgewo+IAkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiAJCXJlZ3Vs
YXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+IAkJcmVndWxhdG9yLW1heC1taWNyb3Zv
bHQgPSA8MzAwMDAwMD47Cj4gKwo+ICsJCS8vIG11c3QgYmUgY29uZmlndXJlZCBvciBTRCBjYXJk
IG1heSBmYWlsIHRvIGluaXRpYWxpemUgb2NjYXNpb25hbGx5Cj4gKwkJcmVndWxhdG9yLXV2LXBy
b3RlY3Rpb24tbWljcm92b2x0ID0gPDI3MDAwMDA+Owo+ICsKPiAJCXJlZ3VsYXRvci1uYW1lID0g
InZjYzN2MF9zZCI7Cj4gCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiAJfTsKPiAtLSAK
PiAyLjM2LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
