Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2033AC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:33:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CDE3C60F5E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:33:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CDE3C60F5E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cy12xxgEskcu0cn/TWW6Hh/bbe4hKz65/9IXn1/KwdE=; b=J3aolftRdVOFPW
	64h7uBEKm0uj0p1CPsHBj6WKSUMIZoI9M7Vh43klgv6jUi+mY8bBUwsfuL1p50ddq2DP0pLr4zNhh
	V1K2Qiru9VCDSe8Co1RlHj5IQIPmA69xnwymEHCOtTMNu+Rb+OFGJhVaVcnnjKQQEHCQl+w+sBwnZ
	Y3Rxx3uCwF3Sq0HVCblsBoSBhkldisA038qVJqbWyCSI6PdHgKnauaq5eSWShiei9lwj46VEG8T2o
	urWOlNkk7BBgpZXNqvQGHD/ilxUyKB0BIIBSGo4IwhCOM0Rltt3zh889JyBkO1vHbtRAwpaI+S3eb
	dFTiiGGQMO2NngshhS8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kcF-0016E9-PU; Wed, 28 Jul 2021 14:32:59 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kc1-0016C6-On; Wed, 28 Jul 2021 14:32:47 +0000
Received: by mail-yb1-xb34.google.com with SMTP id s48so4265299ybi.7;
 Wed, 28 Jul 2021 07:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4JK7b2hFKDRPAkaz/5XQDBMQ7m4Vfkqh5EaRQrJPCGQ=;
 b=OvKHjuaKng+jTSSIvftPMiGKMIeKtNqyIufs8Fu0Eazoav1gkzlptN3saorJVOWIHD
 5ZE/AiaChvyNaKB0P1FNZbhvBThGl97YxDZIUQUymG9y7L76wHlBfijanyGkANNlOhBB
 q6WBa8XS0s1LaHM3QHnGu9mQUmwf5M9WjttfLXcG0Ckrh+G98zU6ctw1lMAMHQZLb+e9
 49bTOu+si+bnEe1+EhKFTg9qJMfgGkf5S/RazZqUlgit+2qcP8bud6RiQxep4EqMYOAK
 MChpYMHyKXDiMq01yV7YW684gC49TLH1HnUkoxJQ+HnYFGnXTpys7JMLcESERh2SQhxb
 6lYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4JK7b2hFKDRPAkaz/5XQDBMQ7m4Vfkqh5EaRQrJPCGQ=;
 b=e8xFoxN/PngxplrZjZVE5DacnnC9RHp77eck28fb7fSkcnAcVUBEJPEtPIDE2cbEAi
 moczN6TWF7s9sD5Lw2I/U+1uCwCnYiSQLQtVrnD3YbPZjkxqlhPHOQXdBb+V4likbCCw
 DPMLUOEcUo3mgfv2fdvgr/ezC+3n42JhxPKghB1qYBWKgaBzIofWwRkPUkX/CGguZlgT
 KqiwZ7dHuJa9vFyOAS4TROF7L84sN0fXssRdqW1UlqPV5ezDPueDtQp8tz52MrHMdZub
 +nqS0bhoEAWgSqW2xLEFWN2f/aH40+4rFs225VHY3yEruj/M1NMDl1uJS8SnT59BhakV
 ngiQ==
X-Gm-Message-State: AOAM533Q+ztOkfmMHw9dQIMTAXkv1OwE/QRFg2mcvLmcN+/JTHGGwek8
 bK4BA/dpfaTgE0iXf+lymEVOUVcA2VdxEccBcuM=
X-Google-Smtp-Source: ABdhPJzOqQkZ3fH9/4zK6YzGbwgSijm/N0TJyZF5tIiCnIm/6L50eVulcZ1N9tP1w1Ah1rREqR1iLY45KaodtZnZJ/0=
X-Received: by 2002:a5b:303:: with SMTP id j3mr36759264ybp.433.1627482764488; 
 Wed, 28 Jul 2021 07:32:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-5-pgwipeout@gmail.com>
 <21568327.EfDdHjke4D@diego>
In-Reply-To: <21568327.EfDdHjke4D@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 10:32:32 -0400
Message-ID: <CAMdYzYrFBS_v00YC35rbDMfVW_zwMb01OYFKY4v8+zETGYR98g@mail.gmail.com>
Subject: Re: [PATCH 4/9] arm64: dts: rockchip: add rk356x gmac1 node
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_073245_858927_21F342B5 
X-CRM114-Status: GOOD (  21.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMTA6MjEgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBQZXRlciwKPgo+IEFtIE1pdHR3b2NoLCAyOC4gSnVsaSAy
MDIxLCAxNTo1NToyOSBDRVNUIHNjaHJpZWIgUGV0ZXIgR2VpczoKPiA+IEFkZCB0aGUgZ21hYzEg
Y29udHJvbGxlciB0byB0aGUgcmszNTZ4IGRldmljZSB0cmVlLgo+ID4gVGhpcyBpcyB0aGUgY29u
dHJvbGxlciBjb21tb24gdG8gYm90aCB0aGUgcmszNTY4IGFuZCByazM1NjYuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kgfCA0OCArKysrKysrKysr
KysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+ID4gaW5kZXggYzJh
YTdhZWVjNThkLi43N2M2NzkzMDQ5MTYgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2eC5kdHNpCj4gPiBAQCAtMTgsNiArMTgsNyBAQCAvIHsKPiA+ICAgICAgICNz
aXplLWNlbGxzID0gPDI+Owo+ID4KPiA+ICAgICAgIGFsaWFzZXMgewo+ID4gKyAgICAgICAgICAg
ICBldGhlcm5ldDEgPSAmZ21hYzE7Cj4gPiAgICAgICAgICAgICAgIGdwaW8wID0gJmdwaW8wOwo+
ID4gICAgICAgICAgICAgICBncGlvMSA9ICZncGlvMTsKPiA+ICAgICAgICAgICAgICAgZ3BpbzIg
PSAmZ3BpbzI7Cj4KPiBMb29raW5nIGJhY2sgYXQgdGhlIGRpc2N1c3Npb24gYWJvdXQgbW1jIGFs
aWFzZXMgaW4gYm9hcmQtZHRzIHZzLiBzb2MtZHRzaQo+IEkgZ2V0IHRoZSBmZWVsaW5nIHRoZSBl
dGhlcm5ldCBhbGlhcyB3b3VsZCBiZSBzYW1lIGNhc2UsIGFzIG5vdCBhbGwgYm9hcmRzCj4gd2ls
bCBleHBvc2UgZXRoZXJuZXQuCj4KPiBJbiB0aGUgdmVyeSBsZWFzdCB0aGUgZXRoZXJuZXQgYWxp
YXMgc2hvdWxkIGJlIHBhcnQgb2YgdGhlIHJrMzU2Ni9yazM1NjggZHRzaQo+IGZpbGVzLCBkb2lu
ZyBldGhlcm5ldDAgPSAmZ21hYzEgZm9yIHJrMzU2NiBhbmQgZXRoZXJuZXQxID0gJmdtYWMxIGZv
ciByazM1NjguCj4KPiBCdXQgSSBkbyB0aGluayB0aGUgYm9hcmQtZHRzIHdvdWxkIGJlIHRoZSBt
b3JlIGFwcHJvcHJpYXRlIHBsYWNlLgoKT2theSwgdGhhdCBtYWtlcyBzZW5zZSwgSSdsbCBtb3Zl
IHRoaXMgdG8gdGhlIGJvYXJkLgpJbiByZWdhcmRzIHRvIHRoZSAwIHZzIDEsIHRoaXMgd2FzIHRv
IGF2b2lkIGlzc3VlcyB3aXRoIGRvd25zdHJlYW0KdS1ib290L3JrYmluIHdoaWNoIHRyZWF0cyB0
aGUgcmszNTY2IGFzIGEgcmszNTY4LgpDdXJyZW50bHkgaXQgZG9lc24ndCBzZWVtIHRvIGFmZmVj
dCBhbnl0aGluZyBpbiB0aGUgd2F5IHRoZSBrZXJuZWwKcHJvYmVzIGl0LCBhcyBpdCBzdGlsbCBz
aG93cyB1cCBhcyBldGgwLgoKPgo+Cj4gSGVpa28KPgo+ID4gQEAgLTM0NCw2ICszNDUsNTMgQEAg
c2RtbWMyOiBtbWNAZmUwMDAwMDAgewo+ID4gICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ID4gICAgICAgfTsKPiA+Cj4gPiArICAgICBnbWFjMTogZXRoZXJuZXRAZmUwMTAwMDAg
ewo+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1nbWFjIiwg
InNucHMsZHdtYWMtNC4yMGEiOwo+ID4gKyAgICAgICAgICAgICByZWcgPSA8MHgwIDB4ZmUwMTAw
MDAgMHgwIDB4MTAwMDA+Owo+ID4gKyAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
MzIgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICA8
R0lDX1NQSSAyOSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiA+ICsgICAgICAgICAgICAgaW50ZXJy
dXB0LW5hbWVzID0gIm1hY2lycSIsICJldGhfd2FrZV9pcnEiOwo+ID4gKyAgICAgICAgICAgICBj
bG9ja3MgPSA8JmNydSBTQ0xLX0dNQUMxPiwgPCZjcnUgU0NMS19HTUFDMV9SWF9UWD4sCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IFNDTEtfR01BQzFfUlhfVFg+LCA8JmNydSBDTEtf
TUFDMV9SRUZPVVQ+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICA8JmNydSBBQ0xLX0dNQUMx
PiwgPCZjcnUgUENMS19HTUFDMT4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IFND
TEtfR01BQzFfUlhfVFg+LCA8JmNydSBDTEtfR01BQzFfUFRQX1JFRj47Cj4gPiArICAgICAgICAg
ICAgIGNsb2NrLW5hbWVzID0gInN0bW1hY2V0aCIsICJtYWNfY2xrX3J4IiwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAibWFjX2Nsa190eCIsICJjbGtfbWFjX3JlZm91dCIsCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgImFjbGtfbWFjIiwgInBjbGtfbWFjIiwKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAiY2xrX21hY19zcGVlZCIsICJwdHBfcmVmIjsKPiA+
ICsgICAgICAgICAgICAgcmVzZXRzID0gPCZjcnUgU1JTVF9BX0dNQUMxPjsKPiA+ICsgICAgICAg
ICAgICAgcmVzZXQtbmFtZXMgPSAic3RtbWFjZXRoIjsKPiA+ICsgICAgICAgICAgICAgcm9ja2No
aXAsZ3JmID0gPCZncmY+Owo+ID4gKyAgICAgICAgICAgICBzbnBzLG1peGVkLWJ1cnN0Owo+ID4g
KyAgICAgICAgICAgICBzbnBzLHRzbzsKPiA+ICsgICAgICAgICAgICAgc25wcyxheGktY29uZmln
ID0gPCZnbWFjMV9zdG1tYWNfYXhpX3NldHVwPjsKPiA+ICsgICAgICAgICAgICAgc25wcyxtdGwt
cngtY29uZmlnID0gPCZnbWFjMV9tdGxfcnhfc2V0dXA+Owo+ID4gKyAgICAgICAgICAgICBzbnBz
LG10bC10eC1jb25maWcgPSA8JmdtYWMxX210bF90eF9zZXR1cD47Cj4gPiArICAgICAgICAgICAg
IHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiArCj4gPiArICAgICAgICAgICAgIG1kaW8xOiBtZGlv
IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNucHMsZHdtYWMtbWRp
byI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MHgxPjsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwweDA+Owo+ID4gKyAgICAgICAg
ICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICBnbWFjMV9zdG1tYWNfYXhpX3NldHVwOiBz
dG1tYWMtYXhpLWNvbmZpZyB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgc25wcyx3cl9vc3Jf
bG10ID0gPDQ+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHNucHMscmRfb3NyX2xtdCA9IDw4
PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBzbnBzLGJsZW4gPSA8MCAwIDAgMCAxNiA4IDQ+
Owo+ID4gKyAgICAgICAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICBnbWFjMV9tdGxf
cnhfc2V0dXA6IHJ4LXF1ZXVlcy1jb25maWcgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHNu
cHMscngtcXVldWVzLXRvLXVzZSA9IDwxPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBxdWV1
ZTAge307Cj4gPiArICAgICAgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICAgICAgIGdtYWMx
X210bF90eF9zZXR1cDogdHgtcXVldWVzLWNvbmZpZyB7Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgc25wcyx0eC1xdWV1ZXMtdG8tdXNlID0gPDE+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHF1ZXVlMCB7fTsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsgICAgIH07Cj4gPiArCj4gPiAg
ICAgICBxb3NfZ3B1OiBxb3NAZmUxMjgwMDAgewo+ID4gICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzU2OC1xb3MiLCAic3lzY29uIjsKPiA+ICAgICAgICAgICAgICAgcmVn
ID0gPDB4MCAweGZlMTI4MDAwIDB4MCAweDIwPjsKPiA+Cj4KPgo+Cj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
