Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 174A6C07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 18:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IY5qvHJMhtBMwp7GMb5J25veg/hD2EWQRwkb3Oqw8qo=; b=4z7ilv/hoDWqgH
	huIDhQ7k4/ih4n4HeaaIUbxi5lByLlcBGkNt0icNev5MT7223O2cazjgmWkJ3+SKcSu3W0qv3yRVx
	GXF1iNw7tQlw8xZAvk5tXnGQoEG9HBkMLInGI1cOfnEa/BB3GkUgkSPmdj1v7teRbA0irgTASoLKX
	iHeBAa00VDiIis/qhX4jVsi66VdjsnQh3c5Cjsgig2iiqk9XS3KT9B2GFX0hRtLp7tFMAwkzqWBd6
	ZcN5gB92BeiLswiwz0UHWDckU1do+HNnzUGiBrKaMcPse7tj0Cvrv0qRiWz/5a/t2r2CQndpHTVYe
	UnbtMpP23slgRVzBS2Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocACf-008aZS-GH; Sat, 24 Sep 2022 18:48:41 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocACc-008aXg-HC
	for linux-rockchip@lists.infradead.org; Sat, 24 Sep 2022 18:48:40 +0000
Received: by mail-wr1-x42c.google.com with SMTP id r7so4598567wrm.2
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Sep 2022 11:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=1SloNiMp786X2/xuqKiZdnsDiOxKqBmN1OwZoG5Zg/4=;
        b=s6p3Osv3PS44ZndFuV4YV+gFUmymU1awcYWHUmEPqhrxbdgP88tPDHz2YgB4L0+J2n
         twoQxWQFO0DkaN2HqlVWgE1CiwBLdMpPSea4bPEfjHct1bUhd5r+xYPU7FNR3jbBtvCG
         cfVKaMhP97LgVH7uYwNQ5/UtFwX69p6Rj5vY8Qa848XNeoob/t/z5LNZhiNWRQdO5mgl
         jTEOZWobup44U585RlO5FT523URWRNjSKMY4Qu/5CYT2uEQ3HP83RlpuM3oJmaziw/p5
         rP545v70Ck6hQ9Y2VWMEjTsJrMl+HCKObd10EGwmpYXv0+rRTCAz20Qw9Iy0UNt6euFC
         Bf/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=1SloNiMp786X2/xuqKiZdnsDiOxKqBmN1OwZoG5Zg/4=;
        b=wQYOXXJJJXqD3UonKGVp3yBFGpBasOA/94ZmXOAdJODYfFaIYrem0QZGJjj0g0RisB
         +w7Rl/INJMXUjIAOlSM0zjHUYgju+5ZPGlBo2q3Y4qUd1nx4plzEYk1ipYYjdEbv86IZ
         jfVisoI5JBKKbjGXvFQj1qLbGhIFtCLunYlr07JUlsVX5ZaZRLy9CuyB273ZPfX0wzkm
         30FH6o2g/++1lmA0S6sgzeROdTFF7I0cru/SguZ9HFBgUFtfX72KPyspeBCJ5RVY/ItD
         S7L48M+QwW7bcs8IjmGK3pAWO4vy/uJAUl6/rYhWTMrs7n+7RG6D5SC1RMxNWg7m9bU8
         0HMg==
X-Gm-Message-State: ACrzQf0kZnzZtuYGhDE+WTqtcmp0//HQwtA8pBhQb85iWWZwcscYiRMn
	DeGTOp/jjsYemeC4XqUvptazIA==
X-Google-Smtp-Source: AMsMyM6BTKNWRNW4fi5SCqBKlwFG+My7AlvvpQP1+l5Q6DLyg/NX61GGE5UAVATm57uh7NxyD+GNqw==
X-Received: by 2002:a5d:4c4c:0:b0:22a:35bd:84a9 with SMTP id n12-20020a5d4c4c000000b0022a35bd84a9mr8310432wrt.103.1664045314397;
        Sat, 24 Sep 2022 11:48:34 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id bw25-20020a0560001f9900b0022ac1be009esm10761143wrb.16.2022.09.24.11.48.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 11:48:33 -0700 (PDT)
Message-ID: <fb52982c-745e-ef9b-6258-0870d00a744b@linaro.org>
Date: Sat, 24 Sep 2022 20:48:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: v6.0-rc6 - arm64 / rock960 : kernel panic
Content-Language: en-US
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: Heiko St??bner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
References: <4f398e4c-973b-7843-2f75-27324d109277@linaro.org>
 <CAOf5uwnfCCwHjSXTurMtyEpZc_tF8bH=fxfwBzOtHcfM_S4tYg@mail.gmail.com>
 <CAOf5uw=_+WQO7qH_Bxs5qEBn2_nemzuLiXdYe8+W_+OnFZNYkw@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAOf5uw=_+WQO7qH_Bxs5qEBn2_nemzuLiXdYe8+W_+OnFZNYkw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_114838_610135_0BBBE85E 
X-CRM114-Status: GOOD (  20.54  )
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

T24gMjQvMDkvMjAyMiAyMDowMSwgTWljaGFlbCBOYXp6YXJlbm8gVHJpbWFyY2hpIHdyb3RlOgo+
IE9uIFNhdCwgU2VwIDI0LCAyMDIyIGF0IDc6NTggUE0gTWljaGFlbCBOYXp6YXJlbm8gVHJpbWFy
Y2hpCj4gPG1pY2hhZWxAYW1hcnVsYXNvbHV0aW9ucy5jb20+IHdyb3RlOgo+Pgo+PiBIaSBEYW5p
ZWwKPj4KPj4gT24gU2F0LCBTZXAgMjQsIDIwMjIgYXQgNzo0MyBQTSBEYW5pZWwgTGV6Y2Fubwo+
PiA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4gd3JvdGU6Cj4+Pgo+Pj4gSGksCj4+Pgo+Pj4g
dGhlcmUgaXMgYSBrZXJuZWwgcGFuaWMgb24gYSByb2NrOTYwIGJvYXJkOgo+Pj4KPj4+IEFmdGVy
IGdpdCBiaXNlY3RpbmcsIEkgaGF2ZToKPj4+Cj4+PiBjb21taXQgMTRmYWNiYzE4NzFhZTE1NDA0
NjY2NzQ3YjUzMTljMDhlMDRiODc1YQo+Pj4gTWVyZ2U6IGY1Yzk3ZGE4MDM3YiAzMjM0NjQ5MWRk
ZjIKPj4+IEF1dGhvcjogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9u
Lm9yZz4KPj4+IERhdGU6ICAgTW9uIEp1bCAxMSAwODozMjo1OCAyMDIyICswMjAwCj4+Pgo+Pj4g
ICAgICAgTWVyZ2UgNS4xOS1yYzYgaW50byBjaGFyLW1pc2MtbmV4dAo+Pj4KPj4+ICAgICAgIFdl
IG5lZWQgdGhlIG1pc2MgZHJpdmVyIGZpeGVzIGluIGhlcmUgYXMgd2VsbC4KPj4+Cj4+PiAgICAg
ICBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRp
b24ub3JnPgo+Pj4KPj4+IEFueSBjbHVlPwo+Pgo+PiBUaGF0IGNvZGUgcmVjZWl2ZSAzLTQgY29t
bWl0cyBmb3Igb25lIGZpeAo+Pgo+PiBkaWZmIC0tZ2l0IGEvc291bmQvc29jL3JvY2tjaGlwL3Jv
Y2tjaGlwX2kycy5jCj4+IGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2kycy5jCj4+IGlu
ZGV4IGY1ZjM1NDBhOWUxOC4uYTMyYTQ1YjA5YjAzIDEwMDY0NAo+PiAtLS0gYS9zb3VuZC9zb2Mv
cm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMKPj4gKysrIGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tj
aGlwX2kycy5jCj4+IEBAIC04MDMsNyArODAzLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9pMnNf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4KPj4gICAgICAgICAgaTJzLT5i
Y2xrX3JhdGlvID0gNjQ7Cj4+ICAgICAgICAgIGkycy0+cGluY3RybCA9IGRldm1fcGluY3RybF9n
ZXQoJnBkZXYtPmRldik7Cj4+IC0gICAgICAgaWYgKCFJU19FUlIoaTJzLT5waW5jdHJsKSkgewo+
PiArICAgICAgIGlmICghSVNfRVJSX09SX05VTEwoaTJzLT5waW5jdHJsKSkgewo+PiAgICAgICAg
ICAgICAgICAgIGkycy0+YmNsa19vbiA9IHBpbmN0cmxfbG9va3VwX3N0YXRlKGkycy0+cGluY3Ry
bCwgImJjbGtfb24iKTsKPj4gICAgICAgICAgICAgICAgICBpZiAoIUlTX0VSUl9PUl9OVUxMKGky
cy0+YmNsa19vbikpIHsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGkycy0+YmNsa19vZmYg
PQo+PiBwaW5jdHJsX2xvb2t1cF9zdGF0ZShpMnMtPnBpbmN0cmwsICJiY2xrX29mZiIpOwo+IAo+
IEkgZG9uJ3Qgc3VyZSBpZiB5b3UgY2FuIGdldCBudWxsIGZyb20gdGhlcmUsIGJ1dCB5b3UgaGF2
ZSB0d28KPiBsb29rdXBfc3RhdGUgb24gdGhhdCBmdW5jdGlvbgoKCkhtbSwgYWN0dWFsbHksIEkg
dGhpbmsgaXQgaXMgbm90IHRoZSBzYW1lIGtlcm5lbCBwYW5pYyBJJ20gb2JzZXJ2aW5nIG9uIAp2
Ni4wLXJjNi4KCkkndmUgYmVlbiBwdXp6bGVkIGJ5IGRpZmZlcmVudCBrZXJuZWwgcGFuaWNzIGZy
b20gZGlmZmVyZW50IGlzc3VlcyB3aGVuIApnaXQgYmlzZWN0aW5nLgoKVGhlIG9uZSBoYXBwZW5p
bmcgaXM6CgpbICAgIDIuNDcxMDM3XSByazgwOC1ydGMgcms4MDgtcnRjOiBzZXR0aW5nIHN5c3Rl
bSBjbG9jayB0byAKMjAyMi0wOS0yNFQxODo0MTowNyBVVEMgKDE2NjQwNDQ4NjcpClsgICAgMi40
ODU4NTldIHVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgdXZjdmlkZW8K
WyAgICAzLjcyNjg0Nl0gVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgZXhlY3V0ZSBmcm9tIG5vbi1l
eGVjdXRhYmxlIAptZW1vcnkgYXQgdmlydHVhbCBhZGRyZXNzIGZmZmY4MDAwMGE1MTY1MzAKWyAg
ICAzLjcyODAzMl0gTWVtIGFib3J0IGluZm86ClsgICAgMy43MjgzMDhdICAgRVNSID0gMHgwMDAw
MDAwMDg2MDAwMDBmClsgICAgMy43Mjg2NjddICAgRUMgPSAweDIxOiBJQUJUIChjdXJyZW50IEVM
KSwgSUwgPSAzMiBiaXRzClsgICAgMy43MjkxNjldICAgU0VUID0gMCwgRm5WID0gMApbICAgIDMu
NzI5NDY2XSAgIEVBID0gMCwgUzFQVFcgPSAwClsgICAgMy43Mjk3NzBdICAgRlNDID0gMHgwZjog
bGV2ZWwgMyBwZXJtaXNzaW9uIGZhdWx0ClsgICAgMy43MzAyMjNdIHN3YXBwZXIgcGd0YWJsZTog
NGsgcGFnZXMsIDQ4LWJpdCBWQXMsIHBnZHA9MDAwMDAwMDAwNWY0MjAwMApbICAgIDMuNzMwODQ2
XSBbZmZmZjgwMDAwYTUxNjUzMF0gcGdkPTEwMDAwMDAwZjdmZmYwMDMsIApwNGQ9MTAwMDAwMDBm
N2ZmZjAwMywgcHVkPTEwMDAwMDAwZjdmZmUwMDMsIHBtZD0xMDAwMDAwMGY3ZmY5MDAzLCAKcHRl
PTAwNzgwMDAwMDY1MTZmMDMKWyAgICAzLjczMjA2M10gSW50ZXJuYWwgZXJyb3I6IE9vcHM6IDg2
MDAwMDBmIFsjMV0gUFJFRU1QVCBTTVAKWyAgICAzLjczMjU4OF0gTW9kdWxlcyBsaW5rZWQgaW46
ClsgICAgMy43MzI5MThdIENQVTogMSBQSUQ6IDAgQ29tbTogc3dhcHBlci8xIE5vdCB0YWludGVk
IDYuMC4wLXJjMSsgIzczMApbICAgIDMuNzMzNTMyXSBIYXJkd2FyZSBuYW1lOiA5NmJvYXJkcyBS
b2NrOTYwIChEVCkKWyAgICAzLjczMzk3MV0gcHN0YXRlOiA2MDAwMDAwNSAoblpDdiBkYWlmIC1Q
QU4gLVVBTyAtVENPIC1ESVQgLVNTQlMgCkJUWVBFPS0tKQpbICAgIDMuNzM0NjM1XSBwYyA6IGV4
dGNvbl9kZXZfbGlzdCsweDAvMHgxMApbICAgIDMuNzM1MDU2XSBsciA6IGNhbGxfdGltZXJfZm4u
Y29uc3Rwcm9wLjArMHgyNC8weDgwClsgICAgMy43MzU1NTFdIHNwIDogZmZmZjgwMDAwYTczM2Fi
MApbICAgIDMuNzM1ODY5XSB4Mjk6IGZmZmY4MDAwMGE3MzNhYjAgeDI4OiAwMDAwMDAwMDAwMDAw
MDA1IHgyNzogCmZmZmY4MDAwMGE1MTY1MzAKWyAgICAzLjczNjU3NF0geDI2OiBmZmZmODAwMDBh
Mzc3OWMwIHgyNTogZmZmZjAwMDBmNzc2ZGRlOCB4MjQ6IApmZmZmODAwMDBhNzMzYjQwClsgICAg
My43MzcyNzddIHgyMzogMDAwMDAwMDAwMDAwMDAwMCB4MjI6IGRlYWQwMDAwMDAwMDAxMjIgeDIx
OiAKMDAwMDAwMDAwMDAwMDEwMQpbICAgIDMuNzM3OTc3XSB4MjA6IGZmZmYwMDAwMDA2NDQ2MDAg
eDE5OiBmZmZmODAwMDBhNTE2NTMwIHgxODogCmZmZmZmZmZmZmZmZmZmZmYKWyAgICAzLjczODY3
N10geDE3OiBmZmZmODAwMGVkNzEzMDAwIHgxNjogZmZmZjgwMDAwODAwYzAwMCB4MTU6IAowMDAw
MDAwMDAwMDA0MDAwClsgICAgMy43MzkzNzddIHgxNDogMDAwMDAwMDAwMDAwMDAwMCB4MTM6IDAw
MDAwMDAwMDAwMDAwMDAgeDEyOiAKMDAwMDAwMDAwMDAwMDAwMApbICAgIDMuNzQwMDczXSB4MTE6
IDAwMDAwMDAwMDAwMDAwYjcgeDEwOiBmZmZmODAwMGVkNzEzMDAwIHg5IDogCmZmZmYwMDAwZjc3
NmRlMzAKWyAgICAzLjc0MDc3MV0geDggOiAwMDAwMDAwMDAwMDAwMDAxIHg3IDogZmZmZmZmZmZm
ZmZmZmZmZiB4NiA6IAowMDAwMDAwMDAwMDAwMDAwClsgICAgMy43NDE0NjldIHg1IDogMDAwMDAw
MDAwMDAwMDAwMCB4NCA6IDAwMDAwMDAwMDAwMDAwMDAgeDMgOiAKMDAwMDAwMDAwMDAwMDIwMApb
ICAgIDMuNzQyMTY0XSB4MiA6IDAwMDAwMDAwMDAwMDAyMDAgeDEgOiBmZmZmODAwMDBhNTE2NTMw
IHgwIDogCmZmZmYwMDAwMDA3ZTczMTAKWyAgICAzLjc0Mjg2NV0gQ2FsbCB0cmFjZToKWyAgICAz
Ljc0MzEwN10gIGV4dGNvbl9kZXZfbGlzdCsweDAvMHgxMApbICAgIDMuNzQzNDc3XSAgX19ydW5f
dGltZXJzLnBhcnQuMCsweDFmMC8weDIzNApbICAgIDMuNzQzOTA4XSAgcnVuX3RpbWVyX3NvZnRp
cnErMHgzYy8weDdjClsgICAgMy43NDQzMDZdICBfc3RleHQrMHgxMjQvMHgyYTQKWyAgICAzLjc0
NDYyN10gIF9faXJxX2V4aXRfcmN1KzB4Y2MvMHhmYwpbICAgIDMuNzQ1MDA4XSAgaXJxX2V4aXRf
cmN1KzB4MTAvMHgyMApbICAgIDMuNzQ1MzcyXSAgZWwxX2ludGVycnVwdCsweDM4LzB4NzAKWyAg
ICAzLjc0NTczM10gIGVsMWhfNjRfaXJxX2hhbmRsZXIrMHgxOC8weDI0ClsgICAgMy43NDYxNDBd
ICBlbDFoXzY0X2lycSsweDY0LzB4NjgKWyAgICAzLjc0NjQ4NF0gIGFyY2hfY3B1X2lkbGUrMHgx
OC8weDJjClsgICAgMy43NDY4NDNdICBkZWZhdWx0X2lkbGVfY2FsbCsweDM0LzB4NzAKWyAgICAz
Ljc0NzI0M10gIGRvX2lkbGUrMHgyNDAvMHgyYmMKWyAgICAzLjc0NzU3Nl0gIGNwdV9zdGFydHVw
X2VudHJ5KzB4MjQvMHgzMApbICAgIDMuNzQ3OTY5XSAgc2Vjb25kYXJ5X3N0YXJ0X2tlcm5lbCsw
eDEyYy8weDE0MApbICAgIDMuNzQ4NDIxXSAgX19zZWNvbmRhcnlfc3dpdGNoZWQrMHhiMC8weGI0
ClsgICAgMy43NDg4NzldIENvZGU6IDBhNTE2NTIwIGZmZmY4MDAwIDBhNTE2NTIwIGZmZmY4MDAw
ICgwMDdlNzMyMCkKWyAgICAzLjc0OTQ2MV0gLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAw
MCBdLS0tClsgICAgMy43NDk5MTFdIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBPb3BzOiBG
YXRhbCBleGNlcHRpb24gaW4gCmludGVycnVwdApbICAgIDMuNzUwNTQ4XSBTTVA6IHN0b3BwaW5n
IHNlY29uZGFyeSBDUFVzClsgICAgMy43NTEwOTRdIEtlcm5lbCBPZmZzZXQ6IDB4ODAwMDAgZnJv
bSAweGZmZmY4MDAwMDgwMDAwMDAKWyAgICAzLjc1MTYwOV0gUEhZU19PRkZTRVQ6IDB4MApbICAg
IDMuNzUxODg5XSBDUFUgZmVhdHVyZXM6IDB4MjAwMCwwODI0ZjAyMSwwMDAwMTA4MgpbICAgIDMu
NzUyMzU0XSBNZW1vcnkgTGltaXQ6IG5vbmUKWyAgICAzLjc1MjY1NV0gLS0tWyBlbmQgS2VybmVs
IHBhbmljIC0gbm90IHN5bmNpbmc6IE9vcHM6IEZhdGFsIApleGNlcHRpb24gaW4gaW50ZXJydXB0
IF0tLS0KCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3
dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5j
b20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8t
YmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
