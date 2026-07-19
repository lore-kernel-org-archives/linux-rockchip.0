Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48E52C44512
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jul 2026 07:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3CIkdB+G4p/7vStneEruEJAKeCCRjONVbMvbFBr0UM=; b=PWeVOa2jJXvJzt
	SoBr0ftzdbCCKXtWcYm4Sn3hLp07CV1PH8tw6x06v90Z/ebFL+ICckpUV2FZx1cl4ONydhpW/Tr+n
	LfV66LmsbbxgXaS6O2D8LT/8a1uXNWLqW60fFQkx8Sj1+NJ68VdLOcN9GZcNz5yk5PKa7Xh57OI3r
	hL9AqyJku3CA75IF8rP4RamEyJh7YbqLfeKzA9pFMCL+QG90+MdpA8grGmb+AKXEP/fPasENfp2cQ
	BGnVZJSv8d6QBdbQjIu2uE0R5Xi/IJEm7O0nIjFUQOrXyDxextU6Ef0QFNDb3Rq16ljUgHPWzfw7I
	uIT+DYdj7eQWRHJOojeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlLhb-00000004oN0-1Ian;
	Sun, 19 Jul 2026 07:12:43 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlLhY-00000004oMB-1JJo
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Jul 2026 07:12:42 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-8080651d2cfso17130587b3.1
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Jul 2026 00:12:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784445159; cv=none;
        d=google.com; s=arc-20260327;
        b=i7owx6AH0FpTatxAgoN36iMCEfTuzryEbcx1JNgeAMLEPJMMT7C9ffAS6Je93qtHnf
         fbdryeRC/+PlxKXLSPl+tRHjkTnQlmoKEVKMxCi+J4aC3d5fVh5RHnoo0cA/xmiwqaIN
         mCdbkNGyXd6Jb9tCwgRPEZ4CHP1uJ4CAYjOY9jXeENqBbR9+TryK/0zN5MCf3eB5nN9l
         y1cDseDwqG8emf36ENacHsKOFiyr1jyQGr/m7Fc0I07ErHssM6ni32ZihF5LjOQ7xrJP
         oJTDX5WFjy//CQOrlCNQ1J49rSdRaBUX/BplQoyh9lfaRuSRVK4GekC/z7haoIKBk881
         sNcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=23v+TCRaHL97qB9X+OWsm5RcYY3oynhNHZYAO3tEqAk=;
        fh=6k8qfZWJDqQEX73l8HTQkYC7oXK8gjVS1l7xXG/tO5E=;
        b=sPoGsyhqCvKEQWGfpQ4mKPal4hseuiA9Pt55tvQwV/J0Ac5grdjnT3FZx1giv8mlxc
         3L9Y4Ovjt5nL4+wVyR2x/EqVd6vJoOoAFmzdqek8nYXz+24KCXz9+dsY1rtbIvbiEvVp
         gx9OVQ7aMwr4PrrGmuQxm39D/JBTrPIP3c/o5BtqVHtg6DJgjx/6d5cN30Pd3YFbxbsy
         IOqtY5oCU29EurPsdFRKnewIVrgno8IMB9AAC549NBRWUntvpNQ8SeFohmdjvZyRsYel
         cw1Oe54EyN7xer+3XLMgt8mfHX4OfBXspo3oNQiRqcN5kAklvwNSwFqFVc9WjQBO3g//
         AnVA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784445159; x=1785049959; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=23v+TCRaHL97qB9X+OWsm5RcYY3oynhNHZYAO3tEqAk=;
        b=YmWDgDWiv+DDmRUyWh5KFIJ3D8sDDCJXvRDRCGPldNrD5PcuuoQdpaeyampdhJqinR
         Kvi+L3m55zlJdUQPYfzXhr/H1nzIVsbraJbF/CWWv4It1Tp7XtxoqMCEKZQBqJywL3f8
         VkokxpYMB8cmn4C14UAEsHeWb93DzTzLmcI7dhV0gXLoiRkzWz1MRaA9XsR1cPHg01nt
         WZwa1pe6a05N6ciUq9FJ8bfXddXmzZkhDAze3ibH+lUpLfhmE1Pe1kjGerxnYjr2Lwrq
         OYI+Vyq7FKvAzcJZ3ZAa6yZvXVTsLcFdIha/GqCfg+HIl0R9vP0nGaLQzB3rDRkkMnwe
         9ucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784445159; x=1785049959;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=23v+TCRaHL97qB9X+OWsm5RcYY3oynhNHZYAO3tEqAk=;
        b=QohFKLvZPwgjorfykjAYO7KcwWgadkwpz91/c+0iVBBxdylHri1biTxNlo55H1xzLZ
         TgvheU81nxph4z8/aLkiKBdD41gGWwCBXabc5w4mpEn2iAJSEApTM7Vd48Z0QHIthuWM
         eaVVRtTf1rzaoNqnHrtwfCN2Q9qwrpkiV0weLxT/ch8HwsIIF62hvEGceQ7KCw9D6gC7
         eagjplRXXoDhBykVkXvpi6hVGp7xFWbWM1tlCnVvCteTY/MFPnuGTGXR8jUNczkG7G1G
         RMW5mujQ8XZEUo9SZ+PiJdGvgFyxzrFCqOL1cPktvxIBRpx/okSUSAW10msPbL5WO87K
         F+xw==
X-Forwarded-Encrypted: i=1; AHgh+RqYf9+jHp1pSoggdWQNud+gYWAmwEpWgpUFmXjJ3ex0iffh+4M0lqtSqsM0XY3B0MRfwgp0XYbj8J0Z/vxemA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwWtiJUCpj3QCT0J4XzIsnS3ii6JZPMvfb1EWqi+xtZ4idRtH33
	7poaFEqK3VnBZRi6rP7n2r06VTk/NAK5IVUFAoOqDGANittUPKGlTuAqzxXmVeOL4E7AB8DUOSc
	5QW6NluZlYJ9Bp+gxoL8uma8kaSLjDaA=
X-Gm-Gg: AfdE7cnd5DyYlZ57/ermPvX2xjsLmW4LFeF7K936rs17yRBdSuuJfIgUXoBCZGzJGAz
	VPQDWN2d3fpUfcklQqOZ0nOlKuUttR7j+Wvwwxz9KrZMfjPs4ZiKKgS6da+XjUVy9aMaKfSkCbD
	tL/UqI9vEtwjQ0/GQKw4oE07OKlxRjesKTBJ3e6oWUkxzyU+kgg1J87U2rWSGrdA9Cz9msA4sLE
	1xNJShrG5CiXw4hUuL3GbDfePaK5mjIrpL7i1cq+b90zElfPAb6NHZQywnH3E3vuOvcT7fd+CUS
	STbP5/a3E4VhWyEqcLAlPBeBPxkKVDQ=
X-Received: by 2002:a05:690c:83:b0:81e:6c2c:3ffc with SMTP id
 00721157ae682-81ef2629e3bmr32786207b3.6.1784445158857; Sun, 19 Jul 2026
 00:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-5-royalnet026@gmail.com>
 <alwKdkNsMi9L4ZiY@venus>
In-Reply-To: <alwKdkNsMi9L4ZiY@venus>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sun, 19 Jul 2026 09:12:27 +0200
X-Gm-Features: AUfX_mx_RiwSU3kUGsytx0X-0-rCnuMvcdXhkd-AchBz93x27nuKFpMthFPgCLs
Message-ID: <CAEWPSH7wGBatr7zUp07Ekz-_-9MWaFv1wYFHrawGUvV+U09meQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: enable HDMI RX audio capture
 on Orange Pi 5 Plus
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Dmitry Osipenko <dmitry.osipenko@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_001240_388395_C48038E0 
X-CRM114-Status: GOOD (  27.29  )
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

SGkgU2ViYXN0aWFuLAoKVGhhbmtzIC0tIGJvdGggbWFrZSBzZW5zZSBhbmQgYm90aCBhcmUgZG9u
ZSBmb3IgdjQ6CgpUaGUgY2FyZCBpcyByZW5hbWVkIHRvICJSSzM1ODggSERNSS1JTiIuClRoZSBj
YXJkIGRlZmluaXRpb24gbW92ZWQgaW50byByazM1ODgtZXh0cmEuZHRzaSBhcwpoZG1pX3JlY2Vp
dmVyX3NvdW5kLCBkaXNhYmxlZCBieSBkZWZhdWx0LCBtaXJyb3JpbmcgdGhlIGhkbWkxX3NvdW5k
Cm5vZGUgdGhhdCBhbHJlYWR5IGxpdmVzIGluIHRoYXQgZmlsZSAtLSBhbmQgdGhlIE9yYW5nZSBQ
aSA1IFBsdXMgZHRzCm5vdyBvbmx5IGZsaXBzIGl0IChhbmQgaTJzN184Y2gpIHRvICJva2F5Ii4K
CkknbGwgaG9sZCB2NCB1bnRpbCBEbWl0cnkncyB0ZXN0aW5nIHJvdW5kIG9uIHRoZSBkcml2ZXIg
c2lkZSBzbwpldmVyeXRoaW5nIGxhbmRzIGluIG9uZSByZXNwaW4uCgpJZ29yCgpPbiBTdW4sIEp1
bCAxOSwgMjAyNiBhdCAxOjMy4oCvQU0gU2ViYXN0aWFuIFJlaWNoZWwKPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBTYXQsIEp1bCAxOCwgMjAy
NiBhdCAxMDo1NzoyOEFNICswMjAwLCBJZ29yIFBhdW5vdmljIHdyb3RlOgo+ID4gUm91dGUgdGhl
IEhETUkgcmVjZWl2ZXIgYXVkaW8gdG8gaTJzN184Y2gsIHRoZSByZWNlaXZlLW9ubHkgSTJTCj4g
PiBpbnRlcmZhY2UgZGVkaWNhdGVkIHRvIEhETUkgUlgsIHRocm91Z2ggYSBzaW1wbGUtYXVkaW8t
Y2FyZCB3aXRoIHRoZQo+ID4gcmVjZWl2ZXIgYXMgYml0Y2xvY2sgYW5kIGZyYW1lIG1hc3Rlci4g
VG9nZXRoZXIgd2l0aCB0aGUgYXVkaW8KPiA+IGNhcHR1cmUgc3VwcG9ydCBpbiB0aGUgc25wc19o
ZG1pcnggZHJpdmVyIHRoaXMgZXhwb3NlcyBhIGNhcHR1cmUtb25seQo+ID4gQUxTQSBjYXJkIGZl
ZCBieSB0aGUgSERNSSBpbnB1dC4KPiA+Cj4gPiBUZXN0ZWQgb24gdGhlIE9yYW5nZSBQaSA1IFBs
dXMgd2l0aCBtdWx0aXBsZSBIRE1JIHNvdXJjZXM6IGNhcHR1cmUKPiA+IGZvbGxvd3MgdGhlIHNv
dXJjZSBzYW1wbGUgcmF0ZSBhbmQgc3RheXMgaW4gc3luYyB2aWEgdGhlIEZJRk8tbGV2ZWwKPiA+
IGNsb2NrIHRyYWNraW5nIGluIHRoZSBkcml2ZXIuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogSWdv
ciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPgo+ID4gLS0tCj4gPiBOZXcgaW4gdjMu
Cj4gPgo+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHMgICB8
IDIwICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9u
cygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cwo+ID4gaW5kZXggOTk1MGQxMS4uZDU4NDBlMSAxMDA2
NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBp
LTUtcGx1cy5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LW9yYW5nZXBpLTUtcGx1cy5kdHMKPiA+IEBAIC0zNyw2ICszNywyMiBAQAo+ID4gICAgICAgICAg
ICAgICB9Owo+ID4gICAgICAgfTsKPiA+Cj4gPiArICAgICBoZG1paW4tc291bmQgewo+ID4gKyAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1jYXJkIjsKPiA+ICsgICAgICAg
ICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsbmFtZSA9ICJyb2NrY2hpcCxoZG1paW4iOwo+Cj4gVGhl
IG5hbWUgaXMgZXhwb3NlZCB0byB1c2Vyc3BhY2UgYW5kIHZpc2libGUgdG8gdGhlIHVzZXIgKGUu
Zy4KPiBpbiBhbHNhbWl4ZXIpLCBidXQgYWxzbyB1c2VkIGJ5IEFsc2EgVUNNMi4gSSBzdWdnZXN0
IHRvIHVzZQo+ICJSSzM1ODggSERNSS1JTiIuCj4KPiA+ICsgICAgICAgICAgICAgc2ltcGxlLWF1
ZGlvLWNhcmQsZm9ybWF0ID0gImkycyI7Cj4gPiArICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1j
YXJkLGJpdGNsb2NrLW1hc3RlciA9IDwmaGRtaWluX2NvZGVjPjsKPiA+ICsgICAgICAgICAgICAg
c2ltcGxlLWF1ZGlvLWNhcmQsZnJhbWUtbWFzdGVyID0gPCZoZG1paW5fY29kZWM+Owo+ID4gKwo+
ID4gKyAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxjcHUgewo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIHNvdW5kLWRhaSA9IDwmaTJzN184Y2g+Owo+ID4gKyAgICAgICAgICAgICB9Owo+
ID4gKwo+ID4gKyAgICAgICAgICAgICBoZG1paW5fY29kZWM6IHNpbXBsZS1hdWRpby1jYXJkLGNv
ZGVjIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBzb3VuZC1kYWkgPSA8JmhkbWlfcmVjZWl2
ZXIgMD47Cj4gPiArICAgICAgICAgICAgIH07Cj4gPiArICAgICB9Owo+ID4gKwo+Cj4gTW92ZSB0
aGUgd2hvbGUgY2FyZCBkZWZpbml0aW9uIHRvIHJrMzU4OC1leHRyYS5kdHNpIHdpdGggYSBuZXcg
bGFiZWwKPiAoZS5nLiBoZG1pX3JlY2VpdmVyX3NvdW5kKSBhbmQgYWRkIHN0YXR1cyA9ICJkaXNh
YmxlZCI7IFRoZW4ganVzdCBkbwo+Cj4gJmhkbWlfcmVjZWl2ZXJfc291bmQgewo+ICAgICBzdGF0
dXMgPSAib2theSI7Cj4gfTsKPgo+IGluIHRoZSBPcmFuZ2UgUGkgNSsgRFQsIGkuZS4ganVzdCBs
aWtlIHRoZSBzb3VuZGNhcmRzIGZvciBIRE1JCj4gb3V0cHV0LiBUaGlzIHJlZHVjZXMgYSBsb3Qg
b2YgZHVwbGljYXRpb24gYXMgdGhlIHNvdW5kY2FyZCBpcyB0aGUKPiBzYW1lIG9uIGFsbCBib2Fy
ZHMgY29uc2lkZXJpbmcgdGhlcmUgaXMgYSBkZWRpY2F0ZWQgSTJTIGNoYW5uZWwgZm9yCj4gaXQu
IEl0J3MgZGlzYWJsZWQgYnkgZGVmYXVsdCBhcyBzb21lIGJvYXJkcyBkbyBub3Qgcm91dGUgdGhl
IEhETUkKPiByZWNlaXZlciBhdCBhbGwuCj4KPiBHcmVldGluZ3MsCj4KPiAtLSBTZWJhc3RpYW4K
Pgo+ID4gICAgICAgaXItcmVjZWl2ZXIgewo+ID4gICAgICAgICAgICAgICBjb21wYXRpYmxlID0g
ImdwaW8taXItcmVjZWl2ZXIiOwo+ID4gICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzQgUktf
UEIzIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiBAQCAtMjQ3LDYgKzI2MywxMCBAQAo+ID4gICAgICAg
c3RhdHVzID0gIm9rYXkiOwo+ID4gIH07Cj4gPgo+ID4gKyZpMnM3XzhjaCB7Cj4gPiArICAgICBz
dGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+ICAmbGVkX2JsdWVfZ3BpbyB7Cj4gPiAg
ICAgICBncGlvcyA9IDwmZ3BpbzMgUktfUEE2IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gICAgICAg
c3RhdHVzID0gIm9rYXkiOwo+ID4gLS0KPiA+IDIuNTMuMAo+ID4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
