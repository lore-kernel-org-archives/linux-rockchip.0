Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4831CCD185
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 23:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51FkqHJ40xLGxp9WwOBST59TlHi+d5oWl+4BfAfbNHY=; b=reec2Gcjnr9VAP
	xTCKAYd8N3DcAj/pjVqXnzVlVtnrqYSWyeW/4gFrxRpMIA6Vo/XBjkud4VK45ZzwcibLO6tQdX6ZF
	xJSPP5zk6TsD6FfjAxJkJ0x5AZyhjxOT+98GVSuMk+DsPAWhtx8h2DBr/s+IIkK1a+8T8Rk/Yi2tn
	0DGtpCh51CDIz+SwtfrU6L/sbpwgFRh7E7X6eYDcL5JIz37c4lThK7c3r9JkaATF/Cslf47o7Eq3D
	qgFBixv1Dutyy05LPyx1zkUZybrchLYtORJiL7TMqB6Ox90E+7rG84DcyQRzie2KLq87fzGzyb+Pb
	yv8lJJFmh4cR/yAx5BXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9B5s-000000035Z7-3OHL;
	Wed, 15 Oct 2025 23:39:44 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9B5p-000000035Yl-48As
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 23:39:43 +0000
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-912d4135379so5244739f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Oct 2025 16:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760571580; x=1761176380; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jk+SQ0nV/xTHl/QRiiwtWRlkyDcwisMEuXdFP5NTe7Q=;
        b=e85PQhkEU4ixtpvj6cxk0GbZfrg4rnN8HJhsrqNh0Hm7nGqAtYJ3cVk+eqHTfXYFL9
         hDk9mg5c+PeeEGxuxMC2XDpyb15j+IC7zxqUwuzmvitj7C8HDEhPST6aFmmLpRtMsnLr
         fbgoExu8xsmonFAxG/uOImUtuRFdU4nWYAoSEM+xhq2e8zLSaouJIjfmBZWHGxPFNe4l
         5QJB/sJiVzx2oPlHyo+GyFUkaJoOcQ+Jp0GIOoxh9UHtz2Ibp2JXTYE2g3uobA1HOFQ1
         trUKQhIHnRhPJisRIg/dQSFECc94srVgjp5I5W7rsRL5p2F2zC6k/QUyh8xEUOCgfHeI
         n/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760571580; x=1761176380;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jk+SQ0nV/xTHl/QRiiwtWRlkyDcwisMEuXdFP5NTe7Q=;
        b=FatGZGae1Rbj+EG+w30n9v08CSmDde0FeP2wSfJOEonHf28hm2ZnaQK/f4DtS9SGgm
         G0kj773sxxa90T7M6qtwNYM3FQG9M8JyoagYsfvve3dHpoPT15emP1jvGYU3Sb1IphU9
         pmaCJwOTXAke5DdLA9RpQDvRKnY9xHKldlw9IN1lQCs8GVd5RIFTnzyD0b8t1G0h7cdn
         1JpVTy0VCaVdf0Lp+zI3jEltBxHjxp+Pj2Y2kAXz8LfyEJx4iLfXUWrHLbVvxw1BSzmd
         OslaaQknCEYTOV4Re9k/Szxub/NaU8xGFpY+cF1tWooxVEoPOOM4CpgudMIJdmcmUx6f
         OGXg==
X-Forwarded-Encrypted: i=1; AJvYcCVlB2FbLJhQkD9LD5hHTU4pPhOm8oL47QS+mxqTT8iekgWlTRc2beCb8wohQ94mjIQqgLQlBhDdqr9XtAyX6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwO72pEN31rN9xBi8ou/wzMNt0AXY3YFB5ZE0o0REfoXqntNEGr
	UpvOR7/mIqCorU5rH4agvBzSC4DVJFVE4mMD50Av+76WVCC6j0ErSb7KlZX3s3B57+UWAOye+2g
	bn5+tj4hSjf1ZULJzDqRZjpQ9+ZvoIok=
X-Gm-Gg: ASbGncvY9TqwhZ0IWv7djE/unTFE2rwt8q/gc9ZqTee/80pQe24qnLzg7IIdIA4Qcrx
	6miVRwS7CAygtulHub9pM/x/6S0ro+uL5kRXitdv/hQg12eszcRekLH5iwgMFc4xkp94X3jQ6To
	/GGKm66Iq6dEm2ZWbHmQsAMa1lwkmGn3icv1ZfHo8FTf+jIPcPavc/Uqo24Mrdb2gUtxvXm6PU5
	rAdaGFTlR2N4adPfVA16ALcVVW3AozZQ6iTtzkegrmuufOcEldgep2enBhbBG3qWJ20OA==
X-Google-Smtp-Source: AGHT+IEcIxNtTE95uIryf8Gym7Y7/YyBX/ZIPEjsuX/aV24yOVx1CHemVjFnhpAjtmhcscO6wWghMWqGt0NHWRxNo4o=
X-Received: by 2002:a05:6e02:1c26:b0:430:9fde:33d5 with SMTP id
 e9e14a558f8ab-4309fde35famr126566775ab.11.1760571580464; Wed, 15 Oct 2025
 16:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com> <57969F385B5AF318+653dac83-8227-4987-84c6-f3e08b10085c@radxa.com>
In-Reply-To: <57969F385B5AF318+653dac83-8227-4987-84c6-f3e08b10085c@radxa.com>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Wed, 15 Oct 2025 16:39:04 -0700
X-Gm-Features: AS18NWC8PAl5JzrjFfy3LdnbAMpDuCQdDlF0Mf4nMlDHPoRQzsSdRAuL39arfdo
Message-ID: <CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_163942_047173_0AE6F7FB 
X-CRM114-Status: GOOD (  22.13  )
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

SGVsbG8gTmFva2ksCgoKT24gV2VkLCBTZXAgMywgMjAyNSBhdCAxOjI44oCvQU0gRlVLQVVNSSBO
YW9raSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToKPgo+IEhpIEpvc2VwaCwKPgo+IEknbSB0aGlu
a2luZyBvZiBjb250aW51aW5nIHlvdXIgd29yaywgc28gaWYgeW91J3ZlIGFscmVhZHkgZG9uZQo+
IHNvbWV0aGluZywgcGxlYXNlIGxldCBtZSBrbm93Lgo+CgpJJ3ZlIG5vdCBmb2xsb3dlZCB1cCBv
biB0aGlzIHNlcmllcyB5ZXQsIGJ1dCBJJ20gcGxhbm5pbmcgb24gcGlja2luZwppdCBiYWNrIHVw
IHRoaXMgd2Vlay4gSSdtIGhhcHB5IHRvIGNvbGxhYm9yYXRlIHdpdGggeW91LCBkbyBsZXQgbWUK
a25vdyBpZiB5b3UndmUgbWFkZSBhbnkgcHJvZ3Jlc3Mgb3IgaW1wcm92ZW1lbnRzLCBhbmQgdGhh
bmsgeW91IGZvcgp5b3VyIHJldmlldyBlYXJsaWVyLgoKQmVzdCwKSm9zZXBoCgo+IEJlc3QgcmVn
YXJkcywKPgo+IC0tCj4gRlVLQVVNSSBOYW9raQo+IFJhZHhhIENvbXB1dGVyIChTaGVuemhlbikg
Q28uLCBMdGQuCj4KPiBPbiA2LzE4LzI1IDA3OjExLCBKb3NlcGggS29ndXQgd3JvdGU6Cj4gPiBU
aGlzIHBhdGNoIHNlcmllcyBhZGRzIGluaXRpYWwgZGV2aWNlIHRyZWUgc3VwcG9ydCBmb3IgdGhl
IFJhZHhhIENNNSBTb00KPiA+IGFuZCBhY2NvbXBhbnlpbmcgSU8gYm9hcmQuCj4gPgo+ID4gVjQg
LT4gVjU6Cj4gPiAgICBQYXRjaCAoMi8zKSwgcGVyIEppbW15Ogo+ID4gICAgLSBBbGlhcyBlTU1D
IHRvIG1tYzAKPiA+ICAgIC0gUmVtb3ZlIHVudXNlZCBzZGlvIGFsaWFzCj4gPiAgICAtIE1vdmUg
Z21hYywgaGRtaTAgbm9kZXMgdG8gY2FycmllciBib2FyZCBkdHMKPiA+Cj4gPiAgICBQYXRjaCAo
My8zKSwgcGVyIEppbW15Ogo+ID4gICAgLSBFbmFibGUgaGRtaTBfc291bmQgYW5kIGkyczVfOGNo
Cj4gPiAgICAtIFJlbW92ZSByZWR1bmRhbnQgZW5hYmxlbWVudCBvZiBzZGhjaQo+ID4gICAgLSBF
bmFibGUgdXNiX2hvc3QyX3hoY2kKPiA+Cj4gPiAgICAtIFRlc3RlZCBIRE1JIGF1ZGlvCj4gPgo+
ID4gVjMgLT4gVjQ6Cj4gPiAgICAtIEZpeGVkIFhIQ0kgaW5pdGlhbGl6YXRpb24gYnVnIGJ5IGNo
YW5naW5nIHRyeS1wb3dlci1yb2xlIGZyb20gc291cmNlCj4gPiAgICAgIHRvIHNpbmsKPiA+Cj4g
PiBWMiAtPiBWMzoKPiA+ICAgIC0gQWRkcmVzc2VkIFlBTUwgc3ludGF4IGVycm9yIGluIGR0IGJp
bmRpbmcgKHBlciBSb2IpCj4gPiAgICAtIEZpeGVkIHdoaXRlc3BhY2UgaXNzdWUgaW4gZHRzIHJl
cG9ydGVkIGJ5IGNoZWNrcGF0Y2gucGwKPiA+ICAgIC0gU3BsaXQgYmFzZSBTb00gYW5kIGNhcnJp
ZXIgYm9hcmQgaW50byBzZXBhcmF0ZSBwYXRjaGVzCj4gPiAgICAtIEFkZGVkIGZ1cnRoZXIgZGV0
YWlscyBhYm91dCB0aGUgU29NIGFuZCBjYXJyaWVyIHRvIHRoZSBjb21taXQKPiA+ICAgICAgbWVz
c2FnZXMKPiA+Cj4gPiBWMSAtPiBWMjoKPiA+ICAgIC0gQWRkZWQgY29weXJpZ2h0IGhlYWRlciBh
bmQgZGF0YSBzaGVldCBsaW5rcwo+ID4gICAgLSBSZW1vdmVkIG5vbi1leGlzdGVudCBwcm9wZXJ0
eQo+ID4gICAgLSBTb3J0ZWQgYWxwaGFiZXRpY2FsbHkKPiA+ICAgIC0gUmVtb3ZlZCBlcnJhbnQg
d2hpdGVzcGFjZQo+ID4gICAgLSBNb3ZlZCBzdGF0dXMgdG8gdGhlIGVuZCBvZiBlYWNoIG5vZGUK
PiA+ICAgIC0gUmVtb3ZlZCBwaW5jdHJsLW5hbWVzIHByb3BlcnR5IGZyb20gbGVkcyAoaW5kaWNh
dGVkIGJ5IENIRUNLX0RUQlMpCj4gPiAgICAtIFJlbW92ZWQgZGVsYXlzIGZyb20gZ21hYyB3aXRo
IGludGVybmFsIGRlbGF5Cj4gPgo+ID4gLSBMaW5rIHRvIHY0OiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzIwMjUwNjA1LXJrMzU4OHMtY201LWlvLWR0cy11cHN0cmVhbS12NC0wLTg0NDVkYjVj
YTZiMEBnbWFpbC5jb20KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3NlcGggS29ndXQgPGpvc2Vw
aC5rb2d1dEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+IEpvc2VwaCBLb2d1dCAoMyk6Cj4gPiAgICAg
ICAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBSYWR4YSBDTTUgSU8gYm9hcmQKPiA+
ICAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHJrMzU4OCBiYXNlZCBSYWR4YSBDTTUK
PiA+ICAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIENNNSBJTyBj
YXJyaWVyCj4gPgo+ID4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFt
bCAgICAgICAgICB8ICAgNyArCj4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFr
ZWZpbGUgICAgICAgICAgICAgIHwgICAxICsKPiA+ICAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OHMtcmFkeGEtY201LWlvLmR0cyAgICAgfCA0ODYgKysrKysrKysrKysrKysrKysrKysrCj4g
PiAgIC4uLi9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS5kdHNpIHwg
MTM1ICsrKysrKwo+ID4gICA0IGZpbGVzIGNoYW5nZWQsIDYyOSBpbnNlcnRpb25zKCspCj4gPiAt
LS0KPiA+IGJhc2UtY29tbWl0OiAwYWYyZjZiZTFiNDI4MTM4NWI2MThjYjg2YWQ5NDZlZGVkMDg5
YWM4Cj4gPiBjaGFuZ2UtaWQ6IDIwMjUwNjA1LXJrMzU4OHMtY201LWlvLWR0cy11cHN0cmVhbS1m
NGQxZTg1Mzk3N2UKPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsCj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
