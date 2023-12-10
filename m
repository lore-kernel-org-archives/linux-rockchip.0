Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E224C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Dec 2023 00:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7Mc0MuDHmSTxkPUILifBO4c8A4fzt/zhER7Db3Rz/c=; b=dkXtqVXnbW4eS8
	+ixh4SnDyZRj/zinmI7al25xToH+qiHWt4ESupp35ltjqdS1TxZslZeyLwjDBwG7psNydj6lEfk15
	CHAeiMpz53cF6uMl7Uh5xJGJjfwM+kVqxSdmcJtRJKi77gNj21m9cj+xrkVIsALIar/nlt4J2Od0f
	Uvm4XjEhl2iSgoQWrFdXvTAo+6Y8qrtrlFz8cM0fZLP+70sq07C7C+mI/+RHgPuNzCKVu1s4bF1/g
	0j2IZyQPi2rlwkD2yt8WDq09haptEnFtF1aR38Dz0a0UuGnWn7K1mk4y37WaNlYhosSrvSDfIm9fn
	wbwJXswXC81Qb0b/pZVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rC7I4-000kIz-0y;
	Sun, 10 Dec 2023 00:03:24 +0000
Received: from mail-vs1-xe32.google.com ([2607:f8b0:4864:20::e32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rC7I1-000kIQ-2a
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Dec 2023 00:03:23 +0000
Received: by mail-vs1-xe32.google.com with SMTP id ada2fe7eead31-46484f37549so1064968137.1
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Dec 2023 16:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702166600; x=1702771400; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QDtVd54re7m0C7SUZXVTBU3xsPVHC9zOTT6bbQUr5d0=;
        b=a7daAgXCJYrnHh+Do8DFtSoWUBMuzIH1fOnUKBUx92IPjcEtZ7XF8mK6GhTj97uZ3U
         Nt2xl/zcaTabbHtSVqLbHjkNvbJ+9hovyPxN7m3keIkOmvhXpDNKwPR2Mto74BLBgPTo
         Igv4mxduRs0SjJKH0hiMsN6njZYn4eXGnec/LQKYcLU41YtzVgU1P4+zENe81qidKt1E
         lBGPKlDfCJSH4mmt2yD5FQtpf93NnlgFK1SH2CnfPhncXSVMqxwjmNQtBF3nApgAArKj
         7WwcHCeef3E6fkegDUjdZxHRyY3dpbNMUz+HPk7cfDjR4tGz9hhL+MQYunEwEQZIHuYp
         pcaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702166600; x=1702771400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QDtVd54re7m0C7SUZXVTBU3xsPVHC9zOTT6bbQUr5d0=;
        b=W9rhzoPCcUAnp7JE1+zHpDCm2/7QA78v/NbGDCGqgLhJmoGPFGSczYlz0xz2ZDIsgq
         W9gcYJ4KRDvZllTOVclwX3Ls0+iHBKHZSAExkx3lt3AgZGNanE9/Ap4qTzRGXYjIlCp/
         fYV1vld7wM6AtUZS4rlvpbIoiWzyWoNPt4HPbp3vtxCkToIYhLj2+eXhQk5q6QPbciX6
         rmxruN1LAAs++smsQghtBljNVqJWxgf5wMs4ESlgrf3VUrtJqvT8O+u2PiTBcBynwU+S
         zAJiWW8yWFGaErGgfWl4qxbxlxQoq19dOhnpysMbu499CviPZt7qODkWQPvQaQvFO3Cy
         exFw==
X-Gm-Message-State: AOJu0YxmhQFOuHMBWefxxiRT/xzRJ7SgMZRaY5mQgbee+B2GgdRO7fyn
	PkNFswoLZAmsLKUD8PJWkk0MKH1RGA9INd0dtM0opQ==
X-Google-Smtp-Source: AGHT+IFB8Vjx/1rvWbEjqPDnX1tO925lPeEyOCtZF+iZwzoPA+1OBwsUwJJY8PVzPjyUNRSYGydfbf9d1lUw4rHJ/UI=
X-Received: by 2002:a1f:7842:0:b0:4b2:efd1:6df2 with SMTP id
 t63-20020a1f7842000000b004b2efd16df2mr1694547vkc.10.1702166600232; Sat, 09
 Dec 2023 16:03:20 -0800 (PST)
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
In-Reply-To: <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Sun, 10 Dec 2023 00:03:09 +0000
Message-ID: <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_160321_861708_E6A0303E 
X-CRM114-Status: GOOD (  22.97  )
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

SGkgRHJhZ2FuLAoKT24gU2F0LCBEZWMgOSwgMjAyMyBhdCAxMTo0M+KAr1BNIERyYWdhbiBTaW1p
YyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFNoYW50dXIsCj4KPiBPbiAy
MDIzLTEyLTEwIDAwOjM1LCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4gPiBVU0IgcG9ydCByZWd1
bGF0b3JzIHNob3VsZCBiZSBjb250cm9sbGVkIGJ5IFBIWXMKPiA+IHNvIHdlIHJlbW92ZSBhbHdh
eXMtb24gcHJvcGVydHkgYW5kIGxldCBQSFlzIG1hbmFnZSB0aGUKPiA+IHJlZ3VsYXRvci4KPiA+
Cj4gPiBUeXBlYyBwb3J0IGhhcyBtaXNjb25mdWdyZWQgcGh5LXN1cHBseSBhbmQgbm93IHRoYXQg
d2UgYXJlCj4gPiByZW1vdmluZyByZWd1bGF0b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRvIGZpeCB0
aGUgcGh5LXN1cHBseQo+ID4gc28gdGhlIFBIWXMgYXJlIGFibGUgdG8gdHVybiBwb3dlciB0byB0
eXBlLWMgcG9ydC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTaGFudHVyIFJhdGhvcmUgPGlAc2hh
bnR1ci5jb20+Cj4gPiAtLS0KPiA+ICsgZGV2aWNldHJlZQo+ID4KPiA+IEFmdGVyIHRoaXMgcGF0
Y2ggdGhlIHBvcnRzIHdlcmUgY29uZmlybWVkIHRvIHBvd2VyIHVwIGFuZCBkb3duCj4gPiBpbiB1
LWJvb3Qgd2hlbiBkb2luZyB1c2Igc3RhcnQgYW5kIHVzYiBzdG9wLgo+ID4gQXQgYm9vdCB0aGUg
cmVndWxhdG9ycyB3ZXJlIG9mZiwgdGhlIGRldmljZXMgY29ubmVjdGVkIHdlcmVuJ3QKPiA+IHBv
d2VyZWQgdXAsIG9uIHVzYiBzdGFydCB0aGUgUEhZcyBhcmUgYWJsZSB0byBwb3dlciBvbiB0aGUg
cG9ydHMKPiA+IGFuZCBvbiB1c2Igc3RvcCB0aGV5IHdlcmUgcG93ZXJlZCBkb3duLgo+ID4KPiA+
IEF0IHRoZSBib290LCB0aGUgcG9ydHMgd2VyZSBwb3dlcmVkIGRvd24gd2hpY2ggd2FzIGFnYWlu
IHBvd2VyZWQKPiA+IHVwIGJ5IExpbnV4IGtlcm5lbCB3aGVuIGJvb3RpbmcgdXAuCj4gPgo+ID4K
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaSB8
IDQgKy0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMo
LSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcm9ja3BybzY0LmR0c2kKPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcm9ja3BybzY0LmR0c2kKPiA+IGluZGV4IGJjYTJiNTBlMGEuLmJkMjgyNGFhNDggMTAwNjQ0
Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQu
ZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3By
bzY0LmR0c2kKPiA+IEBAIC0xOTIsNyArMTkyLDYgQEAgdmNjNXYwX2hvc3Q6IHZjYzV2MC1ob3N0
LXJlZ3VsYXRvciB7Cj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+Owo+ID4gICAg
ICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfaG9zdCI7Cj4gPiAtICAgICAgICAg
ICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8
JnZjYzV2MF91c2I+Owo+ID4gICAgICAgfTsKPiA+Cj4gPiBAQCAtMjAzLDcgKzIwMiw2IEBAIHZj
YzV2MF90eXBlYzogdmNjNXYwLXR5cGVjLXJlZ3VsYXRvciB7Cj4gPiAgICAgICAgICAgICAgIHBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwm
dmNjNXYwX3R5cGVjX2VuPjsKPiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNj
NXYwX3R5cGVjIjsKPiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ICAg
ICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3VzYj47Cj4gPiAgICAgICB9Owo+ID4K
PiA+IEBAIC04NjMsNyArODYxLDcgQEAgdTJwaHkwX290Zzogb3RnLXBvcnQgewo+ID4gICAgICAg
fTsKPiA+Cj4gPiAgICAgICB1MnBoeTBfaG9zdDogaG9zdC1wb3J0IHsKPiA+IC0gICAgICAgICAg
ICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX2hvc3Q+Owo+ID4gKyAgICAgICAgICAgICBwaHktc3Vw
cGx5ID0gPCZ2Y2M1djBfdHlwZWM+Owo+ID4gICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7
Cj4gPiAgICAgICB9Owo+ID4gIH07Cj4KPiBRdWl0ZSBmcmFua2x5LCBzb21ldGhpbmcgZG9lc24n
dCBmZWVsIHJpZ2h0IHRoZXJlLiAgV291bGQgeW91IG1pbmQsCj4gcGxlYXNlLCB0byBwbGFjZSB0
aGlzIHBhdGNoIG9uIGhvbGQgdW50aWwgbmV4dCB3ZWVrIG9yIHNvLCBhdCB3aGljaAo+IHBvaW50
IEkgc2hvdWxkIGhhdmUgZW5vdWdoIHRpbWUgdG8gZ28gdGhyb3VnaCB0aGUgUm9ja1BybzY0IHNj
aGVtYXRpYwo+IHRob3JvdWdobHkgb25jZSBhZ2FpbiwgYW5kIHRlc3QgdGhlIHBhdGNoIGluIGRl
dGFpbD8KClN1cmUsIG5vIHdvcnJpZXMuCldvdWxkIHlvdSBtaW5kIGxldHRpbmcgbWUga25vdyB3
aGljaCBwYXJ0IGRvZXNuJ3QgZmVlbCByaWdodCB0byB5b3U/CgpLaW5kIHJlZ2FyZHMsClNoYW50
dXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
