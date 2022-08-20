Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25E66C25B08
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Aug 2022 10:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QIZ0QAQE76Oe0dJCn+GDsbzmkpCPTc3KkAIryBxjoQI=; b=25nrIApagllH5/7ts5AC1myk3n
	hZQrMRPd1mPVMewwLaTRHAMl7KlupOijQpqQ/DDpZzp7t1yACrPOKSIvAi5tM0wxI1hMAqNnUOsdd
	4EsHTorzj55kZURzlMhUUTE6LLp7uBcv97CDUi4KrEaqs0rezxF978+yRbXbi2HX5kIjQGF3gtFd1
	ZnKRlMzN2l5rszIR+XiHwiXCQWvmgYPoSjTzVqZe8vM72m0i3FXnzJQQCsQ6YZiPJSV2QSj1l/LVh
	bQtmBNqYt1NDu7yhvUnkgMvic/mslfT/kx8xZt/Ol9dj9VMMFR3Mq6wSCOdJ8y6zwGA6GI1/RwwLF
	jltWtEiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPLdw-008FnQ-AA; Sat, 20 Aug 2022 10:23:52 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPLdt-008Fmk-Ko; Sat, 20 Aug 2022 10:23:51 +0000
Received: by mail-qt1-x82a.google.com with SMTP id j17so4919345qtp.12;
        Sat, 20 Aug 2022 03:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc;
        bh=GH7MacsqFe4ByHX40zFjzh3TPhnjs8RQ6MXRmazRC0o=;
        b=Bum+rL0sbPfLVmi0o3ZRd4u+9nIwC96k40Sam2kAvyhGxinPEP1jMClSc8uGNRIm5D
         U+tp+tzfLfy5cqWIqH2R+eI17ksutdChNVMv3Yx3pGircyEOu5vz8RkCkwP0pj6oRd+Y
         fjgERy7+7LfbmpEBfMu/JnnNwz/h4hJYWe03P3FgUJNqmtx7Ay1+Csj5tjHu//2kqBP+
         E/Q60WxxSQMU4HQcFgnb+p+qoKJKTl7ChaDbw3R16I2hYMXVCsySBNiHs9NlM+qWBqvi
         Kn0wi/sEQpgJiAMt3j4PqJ3xN3Lmn7bNcV/nGcDtoAqlZ46Bmjdhvg18E+GYN1oyb2cX
         eC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :x-gm-message-state:from:to:cc;
        bh=GH7MacsqFe4ByHX40zFjzh3TPhnjs8RQ6MXRmazRC0o=;
        b=tCm0xKL0rxMwptVVmQT9jtk50wjAQZwybB+VTnBsCkbYtRy9x1SRRJuDT7nDOdwZzz
         0/uey85lncYQvGq/VWQGNztcePBq1pnwZbZV0MsVGraUU3IAEK+m8T1crspWLKRJIJxK
         JHE4Shwr76Zsh38aeWokZCD2AVVnEtkRjWT11RYeSUsWrPOHQPqKofH0PHNUX72/hJY0
         pGnTHebKr3cHL4tZtMFQYVT60QGuPdW8lAKDbBuLHwDYt7Jz+N6UYRt4SO+f8S8pxYS4
         o31UfbYIA/Qu7xkCWprEt2ckPeGOzUPgN9KGA7G9lKJ1+91kAFRCHfWPX5Dgddl64lUX
         DXyg==
X-Gm-Message-State: ACgBeo0dDfUo21sA1EnmywarMsIP/YnNapemyTHF0S92n4E1OxV2eZhe
	LETbSUoKvQQmGfW21Kzs9Ec=
X-Google-Smtp-Source: AA6agR7HTIUb4rx3W4ILkzrFYACE2jN65GdaNMfcGKFaJcv1cQA8k9JuE0LwrRMSsvPDL5DAjyattA==
X-Received: by 2002:ac8:5948:0:b0:342:f500:2eb7 with SMTP id 8-20020ac85948000000b00342f5002eb7mr9302458qtz.483.1660991025577;
        Sat, 20 Aug 2022 03:23:45 -0700 (PDT)
Received: from ?IPv6:2601:153:901:9131:d0f3:7f7c:9506:88d2? ([2601:153:901:9131:d0f3:7f7c:9506:88d2])
        by smtp.gmail.com with ESMTPSA id i12-20020ac85c0c000000b0031eb393aa45sm5172492qti.40.2022.08.20.03.23.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Aug 2022 03:23:44 -0700 (PDT)
Subject: Re: [BUG BISECT] phy: rockchip-inno-usb2: Sync initial otg state
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Markus Reichl <m.reichl@fivetechno.de>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220622003140.30365-1-pgwipeout@gmail.com>
 <88f2de00-32e3-ed74-082f-c0972a81f0f8@fivetechno.de>
 <CAMdYzYoTLjRW1FgwfizUu-+k0R4tCO78qYa7MEpgfz99aj3SvQ@mail.gmail.com>
 <ec3d2515-b2a2-8441-2e9a-a7fe664e048a@wolfvision.net>
 <CAMdYzYo1nm76ti3PCYk4DYtEnjWD731bybHaQV3ODBZi4SMvRg@mail.gmail.com>
 <88e9c256-b930-d26d-63b4-9d0f132ae962@wolfvision.net>
From: Peter Geis <pgwipeout@gmail.com>
Message-ID: <3dd1a585-cf7e-033b-6c9b-f58dc43de6cb@gmail.com>
Date: Sat, 20 Aug 2022 06:23:40 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <88e9c256-b930-d26d-63b4-9d0f132ae962@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220820_032349_750923_67F60DC6 
X-CRM114-Status: GOOD (  32.01  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiA4LzE3LzIwMjIgNDoyNSBBTSwgTWljaGFlbCBSaWVzY2ggd3JvdGU6Cj4gSGkgUGV0ZXIs
Cj4gCj4gT24gOC8xNi8yMiAxNzoyNywgUGV0ZXIgR2VpcyB3cm90ZToKPj4gT24gVHVlLCBBdWcg
MTYsIDIwMjIgYXQgMTE6MjAgQU0gTWljaGFlbCBSaWVzY2gKPj4gPG1pY2hhZWwucmllc2NoQHdv
bGZ2aXNpb24ubmV0PiB3cm90ZToKPj4+Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4gT24gOC80LzIyIDEx
OjQ5LCBQZXRlciBHZWlzIHdyb3RlOgo+Pj4+IE9uIFR1ZSwgQXVnIDIsIDIwMjIgYXQgMjozOSBQ
TSBNYXJrdXMgUmVpY2hsIDxtLnJlaWNobEBmaXZldGVjaG5vLmRlPiB3cm90ZToKPj4+Pj4KPj4+
Pj4gSGksCj4+Pj4+Cj4+Pj4+IHdpdGggbGludXgtbmV4dC0yMDIyMDcyOCByazMzOTktcm9jLXBj
IGRvZXMgbm90IGJvb3QuCj4+Pj4+IEJpc2VjdGluZyBwb2ludGVkIHRvIHRoaXMgY29tbWl0Lgo+
Pj4+PiBCeSByZXZlcnRpbmcgdGhpcyBjb21taXQgdGhlIGJvYXJkIGJvb3RzIGFnYWluLgo+Pj4+
Cj4+Pj4gVGhhbmsgeW91IGZvciByZXBvcnRpbmcgdGhpcywgc29tZW9uZSB3YXMga2luZCBlbm91
Z2ggdG8gcmVwcm9kdWNlIHRoZQo+Pj4+IHByb2JsZW0gb24gdGhlIHJvY2twcm82NCBhbmQgY29u
ZmlybWVkIHRoaXMgaXMgYW4gaXNzdWUuIEFzIEkgd29uJ3QKPj4+PiBoYXZlIGFjY2VzcyB0byBt
eSBoYXJkd2FyZSB1bnRpbCBuZXh0IG1vbnRoLCB3ZSBzaG91bGQgcHJvYmFibHkgcmV2ZXJ0Cj4+
Pj4gdGhpcyB1bnRpbCB0aGUgcm9vdCBjYXVzZSBjYW4gYmUgaWRlbnRpZmllZC4KPj4+Cj4+PiBK
dXN0IGV4cGVyaWVuY2VkIHRoaXMgaXNzdWUgb24gbXkgUk9DSzMgTW9kZWwgQSBib2FyZCAoUksz
NTY4KSBhbmQKPj4+IHJldmVydGluZyB0aGlzIGNvbW1pdCBzb2x2ZWQgaXQuCj4+Pgo+Pj4gSGF2
aW5nIHRoZSByZXZlcnQgaW4gdjYuMC1yYzIgd291bGQgYmUgZ3JlYXQgLS0gaWYgdGhlcmUgaXMg
YW55dGhpbmcgSQo+Pj4gY2FuIGhlbHAgdG8gYWNjZWxlcmF0ZSB0aGlzIHBsZWFzZSBsZXQgbWUg
a25vdy4KPj4KPj4gSWYgdGhpcyBpcyBub3cgaGFwcGVuaW5nIG9uIHJrMzU2eCB3aGVyZSBJIGtu
b3cgaXQgd29ya3MsIGl0IG5vdwo+PiBjZW1lbnRzIG15IHRoZW9yeSB0aGF0IGl0J3MgYSBzeW1w
dG9tIGFuZCBub3QgdGhlIGFjdHVhbCBwcm9ibGVtLgo+PiBQb3NzaWJseSBhIHJhY2UgY29uZGl0
aW9uIHdpdGggdGhlIGdyZiBhbmQgcmVnbWFwIGNvZGUgd2hlcmUgaXQgaXNuJ3QKPj4gcXVpdGUg
cmVhZHkgd2hlbiBjYWxsZWQuIFRoaXMgY29kZSBwYXRoIGlzIGNhbGxlZCBleGFjdGx5IHRoZSBz
YW1lIHdheQo+PiBsYXRlciBvbiB3aGVuIHRoZSBpcnEgZmlyZXMuCj4+Cj4+IFdoYXQgY29uZmln
IGFyZSB5b3UgYmFzZWQgb24/IEknbSBydW5uaW5nIGEgc3RyaXBwZWQgZG93biB2ZXJzaW9uIG9m
Cj4+IHRoZSBhcm02NF9kZWZjb25maWcsIGJ1dCBpZiB5b3UgZGV2aWF0ZSBmcm9tIHRoYXQgaXQg
d2lsbCBiZSBoZWxwZnVsCj4+IGluIHJlcHJvZHVjaW5nIHRoZSBpc3N1ZS4KPiAKPiBJIHBvc3Rl
ZCBteSBLY29uZmlnIGhlcmU6IGh0dHBzOi8vcGFzdGViaW4uY29tL1AxQXMwVzRrCj4gCj4gRldJ
VyB0aGUgUk9DSzMgYm9hcmQgaGFzIGEgc3dpdGNoIHRvIHNldCB0aGUgT1RHIHBvcnQgdG8gZGV2
aWNlIG9yIGhvc3QsCj4gcmVzcGVjdGl2ZWx5LiBUaGUgTlBFIGRvZXMgbm90IG9jY3VyIHdoZW4g
dGhlIHN3aXRjaCBpcyBzZXQgdG8gaG9zdC4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4gTWljaGFlbAoK
R29vZCBBZnRlcm5vb24gTWljaGFlbCwKClBsZWFzZSB0cnkgdGhlIGZvbGxvd2luZyBmaXguCgpW
ZXJ5IFJlc3BlY3RmdWxseSwKUGV0ZXIgR2VpcwoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1pbm5vLXVzYjIuYwppbmRleCAwYjFlOTMzN2VlOGUuLjVmYzdjMzc0YTZiNCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5j
CisrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwpAQCAt
MTE2OSw2ICsxMTY5LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF91c2IycGh5X290Z19wb3J0X2lu
aXQoc3RydWN0IHJvY2tjaGlwX3VzYjJwaHkgKnJwaHksCiAgCQkJLyogZG8gaW5pdGlhbCBzeW5j
IG9mIHVzYiBzdGF0ZSAqLwogIAkJCXJldCA9IHByb3BlcnR5X2VuYWJsZWQocnBoeS0+Z3JmLCAm
cnBvcnQtPnBvcnRfY2ZnLT51dG1pX2lkKTsKICAJCQlleHRjb25fc2V0X3N0YXRlX3N5bmMocnBo
eS0+ZWRldiwgRVhUQ09OX1VTQl9IT1NULCAhcmV0KTsKKwkJCXJldCA9IDA7CiAgCQl9CiAgCX0K
ICAKCgo+IAo+PiBXZSBzaG91bGQgcmV2ZXJ0IGl0IHVudGlsIGl0J3MgaXNvbGF0ZWQsIGFzIHdl
bGwgYXMgdGhlIHBhdGNoIHNldHRpbmcKPj4gdGhlIHJrMzU2eCB0byBvdGcgc2luY2UgaXQgd2ls
bCBhZ2FpbiBiZSBicm9rZW4uIElmIHNvbWVvbmUgY291bGQKPj4gd2VpZ2ggaW4gaGVyZSBhcyB3
ZWxsIChJIGN1cnJlbnRseSBkb24ndCBoYXZlIGFjY2VzcyB0byBteSBoYXJkd2FyZSkKPj4gaXQg
d291bGQgYmUgaGVscGZ1bC4KPj4KPj4+Cj4+PiBUaGFua3MgYW5kIGJlc3QgcmVnYXJkcywKPj4+
IE1pY2hhZWwKPj4+Cj4+Pj4KPj4+PiBWZXJ5IFJlc3BlY3RmdWxseSwKPj4+PiBQZXRlciBHZWlz
Cj4+Pj4KPj4+Pj4KPj4+Pj4gWyAgICAyLjM5ODcwMF0gVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwg
TlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGF0IHZpcnR1YWwgYWRkcmVzcwo+Pj4+PiAwMDAwMDAw
MDAwMDAwMDA4Cj4+Pj4+IFsgICAgMi4zOTk1MTddIE1lbSBhYm9ydCBpbmZvOgo+Pj4+PiBbICAg
IDIuMzk5NzcyXSAgIEVTUiA9IDB4MDAwMDAwMDA5NjAwMDAwNAo+Pj4+PiBbICAgIDIuNDAwMTE0
XSAgIEVDID0gMHgyNTogREFCVCAoY3VycmVudCBFTCksIElMID0gMzIgYml0cwo+Pj4+PiBbICAg
IDIuNDAwNTk0XSAgIFNFVCA9IDAsIEZuViA9IDAKPj4+Pj4gWyAgICAyLjQwMDg3M10gICBFQSA9
IDAsIFMxUFRXID0gMAo+Pj4+PiBbICAgIDIuNDAxMTYxXSAgIEZTQyA9IDB4MDQ6IGxldmVsIDAg
dHJhbnNsYXRpb24gZmF1bHQKPj4+Pj4gWyAgICAyLjQwMTYwMl0gRGF0YSBhYm9ydCBpbmZvOgo+
Pj4+PiBbICAgIDIuNDAxODY0XSAgIElTViA9IDAsIElTUyA9IDB4MDAwMDAwMDQKPj4+Pj4gWyAg
ICAyLjQwMjIxMl0gICBDTSA9IDAsIFduUiA9IDAKPj4+Pj4gWyAgICAyLjQwMjQ4NF0gdXNlciBw
Z3RhYmxlOiA0ayBwYWdlcywgNDgtYml0IFZBcywgcGdkcD0wMDAwMDAwMDAxMzc2MDAwCj4+Pj4+
IFsgICAgMi40MDMwNzFdIFswMDAwMDAwMDAwMDAwMDA4XSBwZ2Q9MDAwMDAwMDAwMDAwMDAwMCwg
cDRkPTAwMDAwMDAwMDAwMDAwMDAKPj4+Pj4gWyAgICAyLjQwMzY4N10gSW50ZXJuYWwgZXJyb3I6
IE9vcHM6IDk2MDAwMDA0IFsjMV0gU01QCj4+Pj4+IFsgICAgMi40MDQxMzBdIE1vZHVsZXMgbGlu
a2VkIGluOiBpcF90YWJsZXMgeF90YWJsZXMgaXB2NiB4aGNpX3BsYXRfaGNkIHhoY2lfaGNkCj4+
Pj4+IGR3YzMgcm9ja2NoaXBkcm0gZHJtX2NtYV9oZWxwZXIgYW5hbG9naXhfZHAgZHdfaGRtaSBy
ZWFsdGVrIGRybV9kaXNwbGF5X2hlbHBlcgo+Pj4+PiBkd2MzX29mX3NpbXBsZSBkd19taXBpX2Rz
aSBlaGNpX3BsYXRmb3JtIG9oY2lfcGxhdGZvcm0gb2hjaV9oY2QgZWhjaV9oY2QKPj4+Pj4gZHJt
X2ttc19oZWxwZXIgZHdtYWNfcmsgc3lzY29weWFyZWEgc3lzZmlsbHJlY3Qgc3RtbWFjX3BsYXRm
b3JtIHN5c2ltZ2JsdAo+Pj4+PiBmYl9zeXNfZm9wcyB1c2Jjb3JlIHN0bW1hYyBwY3NfeHBjcyBk
cm0gcGh5bGluayBkcm1fcGFuZWxfb3JpZW50YXRpb25fcXVpcmtzCj4+Pj4+IFsgICAgMi40MDcx
NTVdIENQVTogNCBQSUQ6IDcxIENvbW06IGt3b3JrZXIvNDo2IE5vdCB0YWludGVkCj4+Pj4+IDUu
MTkuMC1yYzgtbmV4dC0yMDIyMDcyOCAjNDM3Cj4+Pj4+IFsgICAgMi40MDc4NjhdIEhhcmR3YXJl
IG5hbWU6IEZpcmVmbHkgUk9DLVJLMzM5OS1QQyBNZXp6YW5pbmUgQm9hcmQgKERUKQo+Pj4+PiBb
ICAgIDIuNDA4NDQ4XSBXb3JrcXVldWU6IGV2ZW50cyByb2NrY2hpcF91c2IycGh5X290Z19zbV93
b3JrCj4+Pj4+IFsgICAgMi40MDg5NThdIHBzdGF0ZTogNjAwMDAwMDUgKG5aQ3YgZGFpZiAtUEFO
IC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0tKQo+Pj4+PiBbICAgIDIuNDExNjM0XSBwYyA6
IHJvY2tjaGlwX3VzYjJwaHlfb3RnX3NtX3dvcmsrMHg1MC8weDMzMAo+Pj4+PiBbICAgIDIuNDE0
MzMyXSBsciA6IHByb2Nlc3Nfb25lX3dvcmsrMHgxZDgvMHgzODAKPj4+Pj4gWyAgICAyLjQxNjk0
OF0gc3AgOiBmZmZmODAwMDA5MzczZDYwCj4+Pj4+IFsgICAgMi40MTk0MDZdIHgyOTogZmZmZjgw
MDAwOTM3M2Q2MCB4Mjg6IDAwMDAwMDAwMDAwMDAwMDAgeDI3OiAwMDAwMDAwMDAwMDAwMDAwCj4+
Pj4+IFsgICAgMi40MjIxOTldIHgyNjogZmZmZjAwMDBmNzc5ZmNiOCB4MjU6IGZmZmYwMDAwZjc3
YTNhMDUgeDI0OiAwMDAwMDAwMDAwMDAwMDBjCj4+Pj4+IFsgICAgMi40MjQ5NzhdIHgyMzogMDAw
MDAwMDAwMDAwMDAwMCB4MjI6IGZmZmYwMDAwMDEwYzgyNTggeDIxOiBmZmZmODAwMDA4ODhlYzEw
Cj4+Pj4+IFsgICAgMi40Mjc3NjhdIHgyMDogZmZmZjAwMDAwMTBjODJmMCB4MTk6IDAwMDAwMDAw
MDAwMDAwMGMgeDE4OiAwMDAwMDAwMDAwMDAwMDAxCj4+Pj4+IFsgICAgMi40MzA2MDRdIHgxNzog
MDAwMDAwMDQwMDQ0ZmZmZiB4MTY6IDAwNDAwMDM0YjU1MDM1MTAgeDE1OiAwMDAwMDAwMDAwMDAw
MDAwCj4+Pj4+IFsgICAgMi40MzMzOTBdIHgxNDogZmZmZjAwMDAwMDcwODAwMCB4MTM6IGZmZmY4
MDAwZWVjOTYwMDAgeDEyOiAwMDAwMDAwMDM0ZDRkOTFkCj4+Pj4+IFsgICAgMi40MzYxODVdIHgx
MTogMDAwMDAwMDAwMDAwMDAwMCB4MTA6IDAwMDAwMDAwMDAwMDBhMTAgeDkgOiBmZmZmMDAwMDAx
YWE3YTc0Cj4+Pj4+IFsgICAgMi40Mzg5NThdIHg4IDogZmVmZWZlZmVmZWZlZmVmZiB4NyA6IDAw
MDAwMDAwMDAwMDAwMTggeDYgOiBmZmZmMDAwMDAxYWE3YTc0Cj4+Pj4+IFsgICAgMi40NDE2Njhd
IHg1IDogMDAwMDczNzQ2ZTY1NzY2NSB4NCA6IDAwMDAwMDAwMDAwMDAwMmYgeDMgOiBmZmZmMDAw
MDAzNTZjODA4Cj4+Pj4+IFsgICAgMi40NDQ0MDddIHgyIDogZmZmZjgwMDAwOTM3M2RhNCB4MSA6
IDAwMDAwMDAwMDAwMGUyYWMgeDAgOiBmZmZmODAwMDA4ODhlYjM0Cj4+Pj4+IFsgICAgMi40NDcx
OTBdIENhbGwgdHJhY2U6Cj4+Pj4+IFsgICAgMi40NDk1NTddICByb2NrY2hpcF91c2IycGh5X290
Z19zbV93b3JrKzB4NTAvMHgzMzAKPj4+Pj4gWyAgICAyLjQ1MjE2OV0gIHByb2Nlc3Nfb25lX3dv
cmsrMHgxZDgvMHgzODAKPj4+Pj4gWyAgICAyLjQ1NDY4NF0gIHdvcmtlcl90aHJlYWQrMHgxNzAv
MHg0ZTAKPj4+Pj4gWyAgICAyLjQ1NzA1Nl0gIGt0aHJlYWQrMHhkOC8weGRjCj4+Pj4+IFsgICAg
Mi40NTkzNTRdICByZXRfZnJvbV9mb3JrKzB4MTAvMHgyMAo+Pj4+PiBbICAgIDIuNDYxNzI4XSBD
b2RlOiA5MTAzNzAxNSAyOTViZTAwMSBmOTQwM2M3NyBiOTQwZTQxMyAoZjk0MDA2ZTApCj4+Pj4+
IFsgICAgMi40NjQzMzhdIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQo+Pj4+
Pgo+Pj4+PiBBbSAyMi4wNi4yMiB1bSAwMjozMSBzY2hyaWViIFBldGVyIEdlaXM6Cj4+Pj4+PiBU
aGUgaW5pdGlhbCBvdGcgc3RhdGUgZm9yIHRoZSBwaHkgZGVmYXVsdHMgdG8gZGV2aWNlIG1vZGUu
IFRoZSBhY3R1YWwKPj4+Pj4+IHN0YXRlIGlzbid0IGRldGVjdGVkIHVudGlsIGFuIElEIElSUSBm
aXJlcy4gRml4IHRoaXMgYnkgc3luY2luZyB0aGUgSUQKPj4+Pj4+IHN0YXRlIGR1cmluZyBpbml0
aWFsaXphdGlvbi4KPj4+Pj4+Cj4+Pj4+PiBGaXhlczogNTFhOWIyYzAzZGQzICgicGh5OiByb2Nr
Y2hpcC1pbm5vLXVzYjI6IEhhbmRsZSBJRCBJUlEiKQo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUGV0
ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gICAgZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIHwgNiArKysrKysKPj4+Pj4+
ICAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGIvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4+Pj4+PiBpbmRleCA2
NzExNjU5ZjcyN2MuLjZlNDQwNjk2MTdkZiAxMDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4+Pj4+PiBAQCAtMTE2Miw2ICsx
MTYyLDEyIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdXNiMnBoeV9vdGdfcG9ydF9pbml0KHN0cnVj
dCByb2NrY2hpcF91c2IycGh5ICpycGh5LAo+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgRVhUQ09OX1VTQl9IT1NULCAmcnBvcnQtPmV2ZW50X25iKTsKPj4+Pj4+
ICAgICAgICAgICAgICAgIGlmIChyZXQpCj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGRl
dl9lcnIocnBoeS0+ZGV2LCAicmVnaXN0ZXIgVVNCIEhPU1Qgbm90aWZpZXIgZmFpbGVkXG4iKTsK
Pj4+Pj4+ICsKPj4+Pj4+ICsgICAgICAgICAgICAgaWYgKCFvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wo
cnBoeS0+ZGV2LT5vZl9ub2RlLCAiZXh0Y29uIikpIHsKPj4+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICAvKiBkbyBpbml0aWFsIHN5bmMgb2YgdXNiIHN0YXRlICovCj4+Pj4+PiArICAgICAgICAg
ICAgICAgICAgICAgcmV0ID0gcHJvcGVydHlfZW5hYmxlZChycGh5LT5ncmYsICZycG9ydC0+cG9y
dF9jZmctPnV0bWlfaWQpOwo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGV4dGNvbl9zZXRf
c3RhdGVfc3luYyhycGh5LT5lZGV2LCBFWFRDT05fVVNCX0hPU1QsICFyZXQpOwo+Pj4+Pj4gKyAg
ICAgICAgICAgICB9Cj4+Pj4+PiAgICAgICAgfQo+Pj4+Pj4KPj4+Pj4+ICAgIG91dDoKPj4+Pj4K
Pj4+Pj4gR3J1w58sCj4+Pj4+IC0tCj4+Pj4+IE1hcmt1cyBSZWljaGwKPj4+Pgo+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0Cj4+Pj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
