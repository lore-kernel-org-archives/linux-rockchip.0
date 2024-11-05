Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9765BD31765
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Nov 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6QtJb/wKcUIkm2vrSRFNyCqK67ONjx8F8Qx7XsHEvU=; b=fKdEK16rHjQZz6
	gU+izY5toPFXNzmZK0hz5D1UrxXROxEUBP5pD2YsyEJxJOpLy0FZXop532UjpjedZV92CSCPHDJP7
	y3Be+neIR1Q1z8XsoV4f4MmGSl/Wm+E5nkvSw5xu7c92XkAf4cYm7tsgkyKrCTyTqWxSjOVRiqVzy
	8pLMYDn0bMc80P+w5vIXlGOfMr2zGnxBAGKgd9oSxY6LDMd1QGWaCqQrFIzCC183tglFjqN74GBMx
	b+CB+4OWZ1Pde/eWQ7ShL8UC1gRmGF8DoJDEbHMtqecdcs0Ku57pj9nHYpqWad9mAV0p1LYyutC0S
	iY1bhDgL8EYJjJHmxZVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8MzW-000000009Nb-1eZv;
	Tue, 05 Nov 2024 17:05:18 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8MON-000000002cQ-1MBA;
	Tue, 05 Nov 2024 16:26:56 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-460d1145cd8so38462061cf.3;
        Tue, 05 Nov 2024 08:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730824013; x=1731428813; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDbwmIuBhshERCXYSkPhenLd2Mhjkk5MhETyYNbkb/Q=;
        b=BGv49iUK3V+nOXJZwjyYXA2O9P2Jt7wH0kKEu0n0XZq0lzq8NTfrEIoD63J32s4kYT
         lkTeEMptsfNLV7mixixbRvW1Px36vQnBx81PnlG+cv0ptrXq7f5sNo9bPI70iaoV7JKd
         wU2NLDfg0CgQTFYFQ7Z2hupSFixDTi40uzQ+gJoWzRxYZYcZrReIgSrQ8j7F/GoPc+7x
         atrYvrlBVB9Cs2c/5Es9qcMJ/IT5ROPmpWU4xgQqmRlVYrkKgjZZRZ0FAazR+Zb3UtyF
         rxm0meB3QD3GRTjlaPN+/91RT76LjxwzhGQmWN5si4KMikI4gl6erkedVOyGBnaEJ41W
         ImTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730824013; x=1731428813;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YDbwmIuBhshERCXYSkPhenLd2Mhjkk5MhETyYNbkb/Q=;
        b=qgvETtUsMCiYX8aoFOOBoF86mTr2SK/fPUp8qR4vwVvSdwgwPExAlwn07z79RFJoN+
         VjgGSCz2FRVvZhgsExEAF6CohbLatEV+dHG5MtdpHRzrBs+Me98w2NOemgH5M3p15vPB
         KRZEaZU21HV0IM8H7jK/rl8EEaLyKuAk6GB1QqIwypzPvpHb8Za7P2mWiXm/t9bj26JC
         LzvYOsaJt2IPID1GaIbMI4tQf4QgP8qypJOH1ctQYd2wO33IV2WgDpVh2ShZ+4ELKzQY
         rSPeHuQEZ0bCW0XlKAweRfXpdAl59ljsUCFxPxbHNlrH/NBlQZeyMw0twT8/j468AHVJ
         SJyg==
X-Forwarded-Encrypted: i=1; AJvYcCWIRAeBMybg05DljihmyK1hQflc/Twt7rvZGrSYtm2subV46IYiL7r1ZYhq4dVvVvaFA6wJFXIYfKU5bQ8fH9NQ@lists.infradead.org, AJvYcCXIw/NuG0oiYM9hf7vVUrtUxjvyU34tXgpC1cMySf7qwcRKAGE6GIw5upbEsDjQJ37FF1iy6yC+9KTtGWm64tY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxPHkHZjfVlC+daAtOkMQS0bMxESLJinUgfh7Hcxu79iXJqk0c
	2mpTexi/OxmZAwPW9DaCvD8eKLjFfG1YNDPwoufUGNNlkJgPwkpdmL6YARLPfrzCY4wJ6pgVnaW
	yOxF4bjcSTErYT5deh/iVfHen0UNqXA==
X-Google-Smtp-Source: AGHT+IGJ7XLtWYJje82bhRsHQKoOCawC7fDCWpQbhUa9IlTL2mavUPQDVtWKBU6r3gqBrgHI32tivQiaz5RCybz5S4k=
X-Received: by 2002:a05:622a:1446:b0:460:9b2b:e8b5 with SMTP id
 d75a77b69052e-462b86536b2mr197191941cf.4.1730824013485; Tue, 05 Nov 2024
 08:26:53 -0800 (PST)
MIME-Version: 1.0
References: <20241104214310.6048-1-jiashengjiangcool@gmail.com>
 <20241104214310.6048-2-jiashengjiangcool@gmail.com> <pyutqiut5yascxkwrv5ozrwdbmb4k4n2vu5jiia3fpgkra4up2@u7nvqpdscb4n>
In-Reply-To: <pyutqiut5yascxkwrv5ozrwdbmb4k4n2vu5jiia3fpgkra4up2@u7nvqpdscb4n>
From: Jiasheng Jiang <jiashengjiangcool@gmail.com>
Date: Tue, 5 Nov 2024 11:26:42 -0500
Message-ID: <CANeGvZXsw-93j7YrHd=aa4bWCLioE-LbT5kakc9gjeHCK6O+qQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] i2c: pxa: Add check for clk_enable() and clk_prepare_enable()
To: Andi Shyti <andi.shyti@kernel.org>
Cc: rmk@dyn-67.arm.linux.org.uk, max.schwarz@online.de, dianders@chromium.org, 
	david.wu@rock-chips.com, heiko@sntech.de, vz@mleia.com, wsa@kernel.org, 
	manabian@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_082655_390191_FBC3D971 
X-CRM114-Status: GOOD (  17.99  )
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

SGkgQW5kaSwKCk9uIFR1ZSwgTm92IDUsIDIwMjQgYXQgOToxM+KAr0FNIEFuZGkgU2h5dGkgPGFu
ZGkuc2h5dGlAa2VybmVsLm9yZz4gd3JvdGU6Cgo+ID4gQWRkIGNoZWNrIGZvciB0aGUgcmV0dXJu
IHZhbHVlcyBvZiBjbGtfZW5hYmxlKCkgYW5kIGNsa19wcmVwYXJlX2VuYWJsZSgpCj4gPiBpbiBv
cmRlciB0byBjYXRjaCB0aGUgcG90ZW50aWFsIGV4Y2VwdGlvbnMuCj4gPgo+ID4gRml4ZXM6IGU3
ZDQ4ZmEyYjVmYiAoIltJMkNdIHB4YTogcHJvdmlkZSBsYXRlIHN1c3BlbmQgYW5kIGVhcmx5IHJl
c3VtZSBob29rcyIpCj4gPiBGaXhlczogYzNjZWYzZjNjMDdiICgiW0FSTV0gcHhhOiB1cGRhdGUg
cHhhIGkyYyBkcml2ZXIgdG8gdXNlIGNsayBzdXBwb3J0IikKPgo+IEkgZG9uJ3QgdGhpbmsgd2Ug
bmVlZCB0aGUgZml4ZXMgdGFnIGhlcmUgYW5kIG5vd2hlcmUgZWxzZSBpbiB0aGlzCj4gc2VyaWVz
Lgo+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKaWFzaGVuZyBKaWFuZyA8amlhc2hlbmdqaWFuZ2Nvb2xA
Z21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1weGEuYyB8IDE0
ICsrKysrKysrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMt
cHhhLmMgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXB4YS5jCj4gPiBpbmRleCA0ZDc2ZTcxY2Rk
NGIuLjExMThhN2Y1YzZiZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMt
cHhhLmMKPiA+ICsrKyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcHhhLmMKPiA+IEBAIC0xNTAz
LDcgKzE1MDMsMTEgQEAgc3RhdGljIGludCBpMmNfcHhhX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKmRldikKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGkyYy0+YWRhcC5u
YW1lKTsKPiA+ICAgICAgIH0KPiA+Cj4gPiAtICAgICBjbGtfcHJlcGFyZV9lbmFibGUoaTJjLT5j
bGspOwo+ID4gKyAgICAgcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGkyYy0+Y2xrKTsKPiA+ICsg
ICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAgICAgZGV2X2VycigmZGV2LT5kZXYsICJmYWls
ZWQgdG8gZW5hYmxlIGNsb2NrOiAlZFxuIiwgcmV0KTsKPgo+IHBsZWFzZSB1c2UgZGV2X2Vycl9w
cm9iZSBoZXJlLgoKVGhhbmtzLCBJIGhhdmUgc3VibWl0dGVkIGEgdjIgc2VyaWVzIHdpdGhvdXQg
dGhlIGFib3ZlIHByb2JsZW1zLgoKLUppYXNoZW5nCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
