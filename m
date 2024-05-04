Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 285C3C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 17:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6xDE0F8JaoGoOZmXLDxq06QaDG5yfJuNoGMamRok7Y=; b=BctIn/PmRuPEsf
	vuOPSwxNlzaS+qMFMD09X4E0vPd3qlLfxAwAAIvLfF56UkdMpgU2ETA+tD5nzelqXIPHAihOKcOWo
	Z7Ne8hiCpoKkGD+BM+2KjKhFaKESOYAO3fbJolP0dbYGDugytIMXGIwYwPAuACXv5lW6dxF8V31lP
	cl5OwcKsS+uZLVp3SduHx6xaDsgCpJFQIWYZUjFFz8xURH1N62phT5t1DA7T1B3zNN0EzTTuEpJo7
	R1nqOP6mQR/QpH8tOxUlIOTjWB9YtwCHSt6dFWei4cqeyIOEPInLcCkEZGedWIJRPA2wy4VyfNuTq
	j0zot0hC4GQbFP7sGXiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3JKQ-00000002ZDs-2wqF;
	Sat, 04 May 2024 17:37:42 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3JKN-00000002ZDC-1IJF
	for linux-rockchip@lists.infradead.org;
	Sat, 04 May 2024 17:37:41 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1e65a1370b7so6252015ad.3
        for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2024 10:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714844257; x=1715449057; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UW6BSqOJ4sVDnXycv8jcF2aobgIZjBXz6vzOqoqvFfw=;
        b=X61J8LYrU0Y9TCH99LgFuesb8r9zaJ3KDsObEIhbdHYDwu4exjZEl5xcU/Y8m2BXxk
         OUweAmdDoLFvUnPr3xqkESeW8SwkeasIKU+Tn8jde0C6F5LQNGEQ2XhxEU2SpalrGKIn
         qOCsIat1OFHuJGrb3xzNWuM0y98o7moaGEU4bvUbQQ9JjlIs62OS2fK0e2HHZDhpt3dn
         oHbjMPzHPcpuuWd3S791sy1v8f3OUjrDST7ossXhq5AIRDgPxQd8lI6Qk0BDd7aQqHj5
         Uc67rN2jaNSIMl8Y1lAbpy8JnOMdsoeQaoEX3aJuvwUrJ+3EURdoHczM3OwhFyeBHRXi
         RHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714844257; x=1715449057;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UW6BSqOJ4sVDnXycv8jcF2aobgIZjBXz6vzOqoqvFfw=;
        b=MMiqlY3doSp8ONoqArUhpRc3YiQXz84VRHCGodE8n87LmoMz7Isa7hMOaMIkJqapaW
         XmvqzSq2k5NRWhTR3+vTVvdC8PslYBH8bEQbyIfYrqsjAQf0acY8HC0NJtpn6Ymea/kt
         cWIPtfg3wD9UAWTByuAxT3UCTozJEc9TLO8r3TrY2BmUKOhIi/uYm1SfJbp731/K+q+4
         2I6ZBvR/iZO83PamM+zc2EorIcMZjK1Ly/CkMLrxcmsz236PdC6/YuZBkSDIpsrLCfh/
         tvY8xXmZ1OoBc4Z1Mb+nUedET5dCUFQfnD+aakSte1adW8gRAKR5eOmRaXrYCN3DuihK
         LUgA==
X-Forwarded-Encrypted: i=1; AJvYcCUNRAdfdUzYyVX/fheB6s4PRjQNY9V+JAEM5N/QVqvSCXzvADS1GXhWWPTVsDFVoOAwABAU3ShcnCKdzFtZ6KWuz8WDVzUPRkSJgsxVQ5ql6DZ8
X-Gm-Message-State: AOJu0YxCbshsGHbF5Sh2e9D7/K80O3Rl7Z8wAP9Humyz2LmHKQfAjK5i
	HGFDHJ6hpNBVQLqVakGLZMbrJH+qEyTl6H4JI5xTa0Zc0tYbyZI80AV5Tkw41Q==
X-Google-Smtp-Source: AGHT+IHKtvkY079sKvFbqDADGlC4HQuwO2igps/bWVPvWdcwk5eD1ogS2YqqT0mSGNl0hb5X7VXRnQ==
X-Received: by 2002:a17:902:d2cd:b0:1e3:e1d5:c680 with SMTP id n13-20020a170902d2cd00b001e3e1d5c680mr8239892plc.63.1714844257033;
        Sat, 04 May 2024 10:37:37 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id nw10-20020a17090b254a00b002b0e8d4c426sm7120152pjb.11.2024.05.04.10.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:37:36 -0700 (PDT)
Date: Sat, 4 May 2024 23:07:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 14/14] arm64: dts: rockchip: Add rock5b overlays for
 PCIe endpoint mode
Message-ID: <20240504173730.GK4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-14-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-14-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_103739_381567_8534F6BB 
X-CRM114-Status: GOOD (  25.94  )
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

T24gVHVlLCBBcHIgMzAsIDIwMjQgYXQgMDI6MDE6MTFQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBBZGQgcm9jazViIG92ZXJsYXlzIGZvciBQQ0llIGVuZHBvaW50IG1vZGUgc3VwcG9y
dC4KPiAKCkknbSBub3QgYXdhcmUgb2YgbWFpbmxpbmUgdXNpbmcgb3ZlcmxheXMuIElzIHRoaXMg
YSBuZXcgb25lPwoKLSBNYW5pCgo+IElmIHVzaW5nIHRoZSByb2NrNWIgYXMgYW4gZW5kcG9pbnQg
YWdhaW5zdCBhIG5vcm1hbCBQQywgb25seSB0aGUKPiByazM1ODgtcm9jay01Yi1wY2llLWVwLmR0
Ym8gbmVlZHMgdG8gYmUgYXBwbGllZC4KPiAKPiBJZiB1c2luZyB0d28gcm9jazViOnMsIHdpdGgg
b25lIGJvYXJkIGFzIEVQIGFuZCB0aGUgb3RoZXIgYm9hcmQgYXMgUkMsCj4gcmszNTg4LXJvY2st
NWItcGNpZS1lcC5kdGJvIGFuZCByazM1ODgtcm9jay01Yi1wY2llLXNybnMuZHRibyBoYXMgdG8K
PiBiZSBhcHBsaWVkIHRvIHRoZSByZXNwZWN0aXZlIGJvYXJkcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgNSArKysrKwo+ICAuLi4v
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItcGNpZS1lcC5kdHNvICB8IDI1ICsrKysr
KysrKysrKysrKysrKysrKysKPiAgLi4uL2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi1wY2ll
LXNybnMuZHRzbyAgICAgfCAxNiArKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDQ2
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiBp
bmRleCBmOTA2YTg2OGI3MWEuLmQ4Mjc0MzJkNTExMSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9NYWtlZmlsZQo+IEBAIC0xMTcsNiArMTE3LDggQEAgZHRiLSQoQ09ORklHX0FSQ0hf
Uk9DS0NISVApICs9IHJrMzU4OC1uYW5vcGMtdDYuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0Ygo+ICBkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszNTg4LXF1YXJ0enBybzY0LmR0Ygo+ICBkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszNTg4LXJvY2stNWIuZHRiCj4gK2R0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1ODgtcm9jay01Yi1wY2llLWVwLmR0Ym8KPiArZHRiLSQoQ09ORklHX0FS
Q0hfUk9DS0NISVApICs9IHJrMzU4OC1yb2NrLTViLXBjaWUtc3Jucy5kdGJvCj4gIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtdGlnZXItaGFpa291LmR0Ygo+ICBkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LXRveWJyaWNrLXgwLmR0Ygo+ICBkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LXR1cmluZy1yazEuZHRiCj4gQEAgLTEyNywz
ICsxMjksNiBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1uYW5vcGkt
cjZzLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1uYW5vcGkt
cjZjLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1yb2NrLTVh
LmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1vcmFuZ2VwaS01
LmR0Ygo+ICsKPiArIyBFbmFibGUgc3VwcG9ydCBmb3IgZGV2aWNlLXRyZWUgb3ZlcmxheXMKPiAr
RFRDX0ZMQUdTX3JrMzU4OC1yb2NrLTViICs9IC1ACj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItcGNpZS1lcC5kdHNvIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi1wY2llLWVwLmR0c28KPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNjcyZDc0OGZjYzY3Cj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2st
NWItcGNpZS1lcC5kdHNvCj4gQEAgLTAsMCArMSwyNSBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiArLyoKPiArICogRFQtb3ZlcmxheSB0byBydW4g
dGhlIFBDSWUzXzRMIER1YWwgTW9kZSBjb250cm9sbGVyIGluIEVuZHBvaW50IG1vZGUKPiArICog
aW4gdGhlIFNSTlMgKFNlcGFyYXRlIFJlZmVyZW5jZSBDbG9jayBObyBTcHJlYWQpIGNvbmZpZ3Vy
YXRpb24uCj4gKyAqCj4gKyAqIE5PVEU6IElmIHVzaW5nIGEgc2V0dXAgd2l0aCB0d28gUk9DSyA1
QjpzLCB3aXRoIG9uZSBib2FyZCBydW5uaW5nIGluCj4gKyAqIFJDIG1vZGUgYW5kIHRoZSBvdGhl
ciBib2FyZCBydW5uaW5nIGluIEVQIG1vZGUsIHNlZSBhbHNvIHRoZSBkZXZpY2UKPiArICogdHJl
ZSBvdmVybGF5OiByazM1ODgtcm9jay01Yi1wY2llLXNybnMuZHRzby4KPiArICovCj4gKwo+ICsv
ZHRzLXYxLzsKPiArL3BsdWdpbi87Cj4gKwo+ICsmcGNpZTMwcGh5IHsKPiArCXJvY2tjaGlwLHJ4
LWNvbW1vbi1yZWZjbGstbW9kZSA9IDwwIDAgMCAwPjsKPiArfTsKPiArCj4gKyZwY2llM3g0IHsK
PiArCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gK307Cj4gKwo+ICsmcGNpZTN4NF9lcCB7Cj4gKwl2
cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llMzA+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+
ICt9Owo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTViLXBjaWUtc3Jucy5kdHNvIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01Yi1wY2llLXNybnMuZHRzbwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi4xYTBmMWFmNjVjNDMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi1wY2llLXNybnMuZHRzbwo+IEBA
IC0wLDAgKzEsMTYgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBP
UiBNSVQpCj4gKy8qCj4gKyAqIERULW92ZXJsYXkgdG8gcnVuIHRoZSBQQ0llM180TCBEdWFsIE1v
ZGUgY29udHJvbGxlciBpbiBSb290IENvbXBsZXgKPiArICogbW9kZSBpbiB0aGUgU1JOUyAoU2Vw
YXJhdGUgUmVmZXJlbmNlIENsb2NrIE5vIFNwcmVhZCkgY29uZmlndXJhdGlvbi4KPiArICoKPiAr
ICogVGhpcyBkZXZpY2UgdHJlZSBvdmVybGF5IGlzIG9ubHkgbmVlZGVkIChvbiB0aGUgUkMgc2lk
ZSkgd2hlbiBydW5uaW5nCj4gKyAqIGEgc2V0dXAgd2l0aCB0d28gUk9DSyA1QjpzLCB3aXRoIG9u
ZSBib2FyZCBydW5uaW5nIGluIFJDIG1vZGUgYW5kIHRoZQo+ICsgKiBvdGhlciBib2FyZCBydW5u
aW5nIGluIEVQIG1vZGUuCj4gKyAqLwo+ICsKPiArL2R0cy12MS87Cj4gKy9wbHVnaW4vOwo+ICsK
PiArJnBjaWUzMHBoeSB7Cj4gKwlyb2NrY2hpcCxyeC1jb21tb24tcmVmY2xrLW1vZGUgPSA8MCAw
IDAgMD47Cj4gK307Cj4gCj4gLS0gCj4gMi40NC4wCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
