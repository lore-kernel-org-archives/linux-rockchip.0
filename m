Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B6EEC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 06:56:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1E04613BD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 06:56:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F1E04613BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPZx9ba6Ale4HF5qjJHYKp6wzK9E9YcZFXFH9+cq/EI=; b=prRQKNqVZq5636HxAC7XakRFV8
	0KlDvJUM+tHYihO47DVALa00+KblwZm2kdEOZ4oolRgU/JBsLA1GKmJ9FNHOU6BNMQ5tBmo+hl2jg
	RZtUd/w3Sik6YRtH5HqOpbVpVS9Y+Pi3ZChNZcqnRhi0mZdosb1Ll3jwO7/suQQGA6cGS7/DhSJgu
	Gh3tv430ZbTDh84nFRk9LkRQNmakqg3FPcg9fTeh1hh0fZD18QhYuxGYDKuBraLYR0Zgp5erQAfMx
	T2kvPNUtt7ntcRYVWTZo3/jLMiOc8yK6lz4+hX1ZH1EG+LSlPHZTXJt9kypQweKoXoj8niXUPdUCD
	ZOOHVFHg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ljz56-0045wH-6n; Fri, 21 May 2021 06:56:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ljz53-0045vq-QP
 for linux-rockchip@desiato.infradead.org; Fri, 21 May 2021 06:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=QRBJ/Eb2aRuCWOAm83HDyHJya7fTP6YfpnFgiFNwPwY=; b=iB5xxay9Cbhe34QRw+gYvq/yJ0
 r0iIEhf+EUPYr/3rQqWGVqejUmwUi/UMiwclmtQ7r97krqd5hqJC7etsFAfEXad92tVfeEN/I6cAe
 OIYh/FhFCnDc3+sM61P4KS2oFI+ik8pA7Yj8YaTn26c3Vx9Zhjzp2JkkYCeyKmiTURpPfNRgAsPHm
 0UTm7x6Rduf58luqCt4adbZA/qf5oKCmRHj6VuufHrVsOKmr0fckIYSLdBwsI9V567shzgdjdjInv
 mWyXs/MOQMvhpQQ1Xarr+Hp7Tk3cESwiKlWtow5SgbDBaJzkAbouyxZONYGm4vGKbQVi07KUcwrSK
 2MBpjIhw==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljz51-00GtOM-07
 for linux-rockchip@lists.infradead.org; Fri, 21 May 2021 06:56:20 +0000
Received: by mail-wm1-x32e.google.com with SMTP id u133so10494516wmg.1
 for <linux-rockchip@lists.infradead.org>; Thu, 20 May 2021 23:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=QRBJ/Eb2aRuCWOAm83HDyHJya7fTP6YfpnFgiFNwPwY=;
 b=PeB4Jp8JKHMH5uEQrwTX9WwWGGtnm7DtrV2kA/LjtL5tSI0bfgpJOGSAo6u/0IEVk6
 h67RCcAk6TFLUZJSDdwCTNfXVi73dC17V+hpbVHefQNFzVOBvUdH1/N5KmxOn12tmY1S
 sJ74M26xKin7dgkNXa+nKfk65zowil1gx+FAc0TkcRI9fqC8+xWrW334zT6BFC5aRGjQ
 uT1DhyO9IGLX+Ork1BJWUEbtE6ya8RJvL+Gk1zuIqb39hVFqKXkY0mho/0FNVKI9X2Wa
 hiMyhy6KRtpY/UpnYUJOx6n7u2otwDen6HiRiuvxqyJxt2hR2M4HLO3YCfZIdxwGQliP
 hN1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=QRBJ/Eb2aRuCWOAm83HDyHJya7fTP6YfpnFgiFNwPwY=;
 b=Ir0jkv/88lx/rrppkPEKyi1+0AjI1Hh5Z9p6/Br4CVvZLqdj7f6g2NdIaB5Nk1uLEt
 jBj07lNmkBSb5mD/ReqVDEbJFOslSq2QJ+5GjMB03NNccVRF9AYcXbzSKMNts7r2ZOtl
 XNqXUHvrcesalc5o0cAOPzIdkLuo+1diE57EmdzjAvYCGgu6dy7rrbuozB9MiMjuGkm3
 jL2mpXvqTwNKBF16OqfUfVc0gf/gnTWE2eLnG0ef7hvCViONO0APnF5fwvLUFKelBB+8
 w+M/DzGmGIgm4+qJPN/NfiUMNja+JMOHN/y4xm8cBhIZQcT2lUpVanSeu/SrNEhiwH/5
 TVWg==
X-Gm-Message-State: AOAM530sNZFiAj1vio2KUFbW2jheEMD8JBrQjRU6x3ryNfQx8ps17Soi
 cyPIeCa/TdaxVbT6FWByYpQLIA==
X-Google-Smtp-Source: ABdhPJyzLV7PPC84rvHhmIYLTph0ydZ+uf3f187PRPoIE3KWZx/cnNqbMnbz3GJLjExZVWUmgwHnNw==
X-Received: by 2002:a1c:6a0f:: with SMTP id f15mr5064918wmc.29.1621580177144; 
 Thu, 20 May 2021 23:56:17 -0700 (PDT)
Received: from dell ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id n13sm960902wrg.75.2021.05.20.23.56.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 23:56:16 -0700 (PDT)
Date: Fri, 21 May 2021 07:56:14 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, Max Schwarz <max.schwarz@online.de>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH 12/16] i2c: busses: i2c-rk3x: Demote unworthy headers and
 help more complete ones
Message-ID: <20210521065614.GO2549456@dell>
References: <20210520190105.3772683-1-lee.jones@linaro.org>
 <20210520190105.3772683-13-lee.jones@linaro.org>
 <6083609.GXAFRqVoOG@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6083609.GXAFRqVoOG@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_235619_130350_2EC52750 
X-CRM114-Status: GOOD (  18.73  )
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

T24gVGh1LCAyMCBNYXkgMjAyMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cgo+IEhpIExlZSwKPiAK
PiBBbSBEb25uZXJzdGFnLCAyMC4gTWFpIDIwMjEsIDIxOjAxOjAxIENFU1Qgc2NocmllYiBMZWUg
Sm9uZXM6Cj4gPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhz
KToKPiA+IAo+ID4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jOjI0Mjogd2FybmluZzog
VGhpcyBjb21tZW50IHN0YXJ0cyB3aXRoICcvKionLCBidXQgaXNuJ3QgYSBrZXJuZWwtZG9jIGNv
bW1lbnQuIFJlZmVyIERvY3VtZW50YXRpb24vZG9jLWd1aWRlL2tlcm5lbC1kb2MucnN0Cj4gPiAg
ZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmM6MjYxOiB3YXJuaW5nOiBUaGlzIGNvbW1lbnQg
c3RhcnRzIHdpdGggJy8qKicsIGJ1dCBpc24ndCBhIGtlcm5lbC1kb2MgY29tbWVudC4gUmVmZXIg
RG9jdW1lbnRhdGlvbi9kb2MtZ3VpZGUva2VybmVsLWRvYy5yc3QKPiA+ICBkcml2ZXJzL2kyYy9i
dXNzZXMvaTJjLXJrM3guYzozMDQ6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1i
ZXIgJ2kyYycgbm90IGRlc2NyaWJlZCBpbiAncmszeF9pMmNfcHJlcGFyZV9yZWFkJwo+ID4gIGRy
aXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jOjMwNDogd2FybmluZzogZXhwZWN0aW5nIHByb3Rv
dHlwZSBmb3IgU2V0dXAgYSByZWFkIGFjY29yZGluZyB0byBpMmMoKS4gUHJvdG90eXBlIHdhcyBm
b3IgcmszeF9pMmNfcHJlcGFyZV9yZWFkKCkgaW5zdGVhZAo+ID4gIGRyaXZlcnMvaTJjL2J1c3Nl
cy9pMmMtcmszeC5jOjMzNTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAn
aTJjJyBub3QgZGVzY3JpYmVkIGluICdyazN4X2kyY19maWxsX3RyYW5zbWl0X2J1ZicKPiA+ICBk
cml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYzozMzU6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90
b3R5cGUgZm9yIEZpbGwgdGhlIHRyYW5zbWl0IGJ1ZmZlciB3aXRoIGRhdGEgZnJvbSBpMmMoKS4g
UHJvdG90eXBlIHdhcyBmb3IgcmszeF9pMmNfZmlsbF90cmFuc21pdF9idWYoKSBpbnN0ZWFkCj4g
PiAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmM6NTM1OiB3YXJuaW5nOiBUaGlzIGNvbW1l
bnQgc3RhcnRzIHdpdGggJy8qKicsIGJ1dCBpc24ndCBhIGtlcm5lbC1kb2MgY29tbWVudC4gUmVm
ZXIgRG9jdW1lbnRhdGlvbi9kb2MtZ3VpZGUva2VybmVsLWRvYy5yc3QKPiA+ICBkcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLXJrM3guYzo1NTI6IHdhcm5pbmc6IFRoaXMgY29tbWVudCBzdGFydHMgd2l0
aCAnLyoqJywgYnV0IGlzbid0IGEga2VybmVsLWRvYyBjb21tZW50LiBSZWZlciBEb2N1bWVudGF0
aW9uL2RvYy1ndWlkZS9rZXJuZWwtZG9jLnJzdAo+ID4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMt
cmszeC5jOjcxMzogd2FybmluZzogVGhpcyBjb21tZW50IHN0YXJ0cyB3aXRoICcvKionLCBidXQg
aXNuJ3QgYSBrZXJuZWwtZG9jIGNvbW1lbnQuIFJlZmVyIERvY3VtZW50YXRpb24vZG9jLWd1aWRl
L2tlcm5lbC1kb2MucnN0Cj4gPiAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmM6OTYzOiB3
YXJuaW5nOiBUaGlzIGNvbW1lbnQgc3RhcnRzIHdpdGggJy8qKicsIGJ1dCBpc24ndCBhIGtlcm5l
bC1kb2MgY29tbWVudC4gUmVmZXIgRG9jdW1lbnRhdGlvbi9kb2MtZ3VpZGUva2VybmVsLWRvYy5y
c3QKPiA+ICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYzo5NzM6IHdhcm5pbmc6IEZ1bmN0
aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2kyYycgbm90IGRlc2NyaWJlZCBpbiAncmszeF9pMmNf
c2V0dXAnCj4gPiAKPiA+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4g
Q2M6IE1heCBTY2h3YXJ6IDxtYXguc2Nod2FyekBvbmxpbmUuZGU+Cj4gPiBDYzogbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+ID4gQ2M6IGxpbnV4LWkyY0B2Z2VyLmtlcm5lbC5vcmcKPiA+IFNpZ25l
ZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+ICBk
cml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyB8IDE4ICsrKysrKysrKy0tLS0tLS0tLQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyBiL2RyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtcmszeC5jCj4gPiBpbmRleCA4MTlhYjRlZTUxN2UxLi4xZGZiZDExODVhZWZj
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmMKPiA+ICsrKyBi
L2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jCj4gPiBAQCAtMjM4LDcgKzIzOCw3IEBAIHN0
YXRpYyBpbmxpbmUgdm9pZCByazN4X2kyY19jbGVhbl9pcGQoc3RydWN0IHJrM3hfaTJjICppMmMp
Cj4gPiAgCWkyY193cml0ZWwoaTJjLCBSRUdfSU5UX0FMTCwgUkVHX0lQRCk7Cj4gPiAgfQo+ID4g
IAo+ID4gLS8qKgo+ID4gKy8qCj4gPiAgICogR2VuZXJhdGUgYSBTVEFSVCBjb25kaXRpb24sIHdo
aWNoIHRyaWdnZXJzIGEgUkVHX0lOVF9TVEFSVCBpbnRlcnJ1cHQuCj4gPiAgICovCj4gPiAgc3Rh
dGljIHZvaWQgcmszeF9pMmNfc3RhcnQoc3RydWN0IHJrM3hfaTJjICppMmMpCj4gPiBAQCAtMjU3
LDcgKzI1Nyw3IEBAIHN0YXRpYyB2b2lkIHJrM3hfaTJjX3N0YXJ0KHN0cnVjdCByazN4X2kyYyAq
aTJjKQo+ID4gIAlpMmNfd3JpdGVsKGkyYywgdmFsLCBSRUdfQ09OKTsKPiA+ICB9Cj4gPiAgCj4g
PiAtLyoqCj4gPiArLyoKPiA+ICAgKiBHZW5lcmF0ZSBhIFNUT1AgY29uZGl0aW9uLCB3aGljaCB0
cmlnZ2VycyBhIFJFR19JTlRfU1RPUCBpbnRlcnJ1cHQuCj4gCj4gd2hhdCBtYWRlIHlvdSBkZWNp
ZGUgYmV0d2VlbiBkZW1vdGluZyBhbmQgY29tcGxldGluZyBjb21tZW50cz8KPiBJLmUuIGhlcmUg
eW91IGRlbW90IHRoZSAic3RhdGljIHZvaWQgcmszeF9pMmNfc3RvcCgpIiwgd2hpbGUgYmVsb3cK
PiB5b3UgZm9yIGV4YW1wbGUgY29tcGxldGUgdGhlICJzdGF0aWMgcmszeF9pMmNfZ2V0X3NwZWMo
KSIuCj4gCj4gU28gSSBzb21laG93IGRvIG5vdCB5ZXQgc2VlIHRoZSBwYXR0ZXJuIDstKQoKQ29t
cGxldGVuZXNzLiAgVGhpcyBvbmUgaXMgbWlzc2luZyBwYXJhbWV0ZXIgZGVzY3JpcHRpb25zLCB0
aGUgb25lIEkKcHJvdmlkZWQgdGhlIGZ1bmN0aW9uIG5hbWUgdG8gYmVsb3csIGlzIG90aGVyd2lz
ZSBjb21wbGV0ZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBM
ZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
