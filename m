Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF788E784A4
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Oct 2023 06:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I96K96QiAWeZa8UQXPGmUTfFZJFrhkgiHootuPwPJOw=; b=H2VSWe8C+dHWiL
	4VGTgY2HLl507/fkPFX79HMlbUW0+j3vj9tdf5clGkirJ5MAWlakmXP2jvFBw7r7HEt2DACCdvG8Z
	b1t9YroR66arsSSq/pmEKaDy8XSXZnahQdZFHjucSS3cHNqgPO7Lgmv7b6RvUnKXGOH4V3mHhRTyY
	fIWM9MajwY2p95D/sfHHXMzl/WhLBUGUtFLTHjs8b/1sJbzyjctCYjRQuVq8addAmy3GNYw8Elza5
	ISU25uLbNgq1SeEMuyNDe4qKS1/KCiLGzDy+f11+fKfJG2Lw2++QjN9Vkg4S+ITHj1ith/HzQwS2W
	14PkoSQjPBHEUXkLgLmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnCni-00C2mt-0I;
	Mon, 02 Oct 2023 06:53:06 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnCnf-00C2ly-01
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Oct 2023 06:53:04 +0000
Received: by mail-vs1-xe29.google.com with SMTP id ada2fe7eead31-452c0d60616so1986357137.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Oct 2023 23:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1696229580; x=1696834380; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ryxoZacRjxfVjFlzq6b9dnRAwZ9Cwhv/ctEImXuEGU=;
        b=LnWAC5dWkOeQocqOiDKynNUdajRxY3FUcTfpoNyrapHPHbNSb0yUEKVxWh2/X61yi1
         SOTkQMHiJ41pEShk8fU6kR+hDiYuOgv0HB5VEmVzxqhyOLqwhq916Y1plu03rwmVU2CC
         88DBJnncPD5qEqttbQ7ZsqwrXKjkiwJVKayFcQhDqHyJfs2BonzEQl3YzeZt+7xi71UQ
         cdUjDpYyU0Bq7rpsbQghfPMbKS7gU9ibV57S6Bt0/WEsTySYUBQfNGcYgzBEZ5850V39
         nGJwjomPcdo3XEUeNscmvHvtB/MOIMpu/lVNoEC20VPsDQmMnEvopUNohuuAiwt+czDo
         e9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696229580; x=1696834380;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ryxoZacRjxfVjFlzq6b9dnRAwZ9Cwhv/ctEImXuEGU=;
        b=CcoPWxz/n7ITaO94na3o/VCOkdSC7Q/BZ0dKwTicEmzLChbwpE8iRWEsx7jLc4bIgM
         005OyGam5Ri5GbyM2958QO480XbTTwOGv2Vt9oF2d229oDbrPlHE3VGiM7FeFXeEoPBJ
         daRiyjgomtYThMWh9exeiLJ8nzG0r/WG02CwKBV3RhTx+4mp3G9q0uKXO8S+iwB0e7+0
         MruHfPNZll5Yn8L0+q/3XFpHgib9R1cmrtaQdehhsiheLrFjJ9ycc07rvDUaQ4l9e9VJ
         nlC+gejVhXuzwc/VNbZHI1f2WGPHsVRBy3NL/KfQOjd+5nUX1wc3xVidUAzdS8bjYIZn
         RbWw==
X-Gm-Message-State: AOJu0Yz3B4ppcFc8m3tkUSnAFRdeDIOnfZ8MntwVNYexr8VeMmnV8dEy
	pSqXVA/L+AKFRfd4mKUTffWKl/npuS2s3TWo3uVSUg==
X-Google-Smtp-Source: AGHT+IEgGi6qU2Mp3mDYr8L0Z6jDhHwhMnnuFjnFIJ7nxBJXc9EksuQXfdql9FqITrIaHBUfcgn5Fc+wHwg/LrGhOnU=
X-Received: by 2002:a05:6102:3178:b0:450:cebb:4f15 with SMTP id
 l24-20020a056102317800b00450cebb4f15mr4555097vsm.1.1696229580147; Sun, 01 Oct
 2023 23:53:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230928070706.2290137-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20230928070706.2290137-1-u.kleine-koenig@pengutronix.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 2 Oct 2023 08:52:48 +0200
Message-ID: <CAMRc=Mf1yPMAXRYc4S8MnzmQY_i9EaNVDRPf+FnJAeXRzXJ55g@mail.gmail.com>
Subject: Re: [PATCH 00/23] gpio: Convert to platform remove callback returning void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, Mun Yew Tham <mun.yew.tham@intel.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Doug Berger <opendmb@gmail.com>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	linux-arm-kernel@lists.infradead.org, Vladimir Zapolskiy <vz@mleia.com>, 
	Grygorii Strashko <grygorii.strashko@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>, 
	Kevin Hilman <khilman@kernel.org>, linux-omap@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, Srinivas Neeli <srinivas.neeli@amd.com>, 
	Michal Simek <michal.simek@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231001_235303_358310_74DFDF40 
X-CRM114-Status: GOOD (  16.92  )
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

T24gVGh1LCBTZXAgMjgsIDIwMjMgYXQgOTowN+KAr0FNIFV3ZSBLbGVpbmUtS8O2bmlnCjx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiB0aGlzIHNl
cmllcyBjb252ZXJ0cyBhbGwgcGxhdGZvcm0gZHJpdmVycyBiZWxvdyBkcml2ZXJzL2dwaW8gdG8g
dXNlCj4gLnJlbW92ZV9uZXcoKS4gVGhlIG1vdGl2YXRpb24gaXMgdG8gZ2V0IHJpZCBvZiBhbiBp
bnRlZ2VyIHJldHVybiBjb2RlCj4gdGhhdCBpcyAobW9zdGx5KSBpZ25vcmVkIGJ5IHRoZSBwbGF0
Zm9ybSBkcml2ZXIgY29yZSBhbmQgZXJyb3IgcHJvbmUgb24KPiB0aGUgZHJpdmVyIHNpZGUuCj4K
PiBTZWUgY29tbWl0IDVjNWE3NjgwZTY3YiAoInBsYXRmb3JtOiBQcm92aWRlIGEgcmVtb3ZlIGNh
bGxiYWNrIHRoYXQKPiByZXR1cm5zIG5vIHZhbHVlIikgZm9yIGFuIGV4dGVuZGVkIGV4cGxhbmF0
aW9uIGFuZCB0aGUgZXZlbnR1YWwgZ29hbC4KPgo+IFRoZXJlIGFyZSBubyBpbnRlcmRlcGVuZGVu
Y2llcyBiZXR3ZWVuIHRoZSBwYXRjaGVzLiBBcyB0aGVyZSBhcmUgc3RpbGwKPiBxdWl0ZSBhIGZl
dyBkcml2ZXJzIHRvIGNvbnZlcnQsIEknbSBoYXBweSBhYm91dCBldmVyeSBwYXRjaCB0aGF0IG1h
a2VzCj4gaXQgaW4uIFNvIGV2ZW4gaWYgdGhlcmUgaXMgYSBtZXJnZSBjb25mbGljdCB3aXRoIG9u
ZSBwYXRjaCB1bnRpbCB5b3UKPiBhcHBseSBvciBhIHN1YmplY3QgcHJlZml4IGlzIHN1Ym9wdGlt
YWwsIHBsZWFzZSBhcHBseSB0aGUgcmVtYWluZGVyIG9mCj4gdGhpcyBzZXJpZXMgYW55aG93Lgo+
Cj4gQmVzdCByZWdhcmRzCj4gVXdlCj4KPiBVd2UgS2xlaW5lLUvDtm5pZyAoMjMpOgo+ICAgZ3Bp
bzogYWx0ZXJhOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcg
dm9pZAo+ICAgZ3BpbzogYW1kcHQ6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNr
IHJldHVybmluZyB2b2lkCj4gICBncGlvOiBicmNtc3RiOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJl
bW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+ICAgZ3BpbzogY2FkZW5jZTogQ29udmVydCB0
byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIGdwaW86IGRsbjI6
IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICBn
cGlvOiBmdGdwaW8wMTA6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVy
bmluZyB2b2lkCj4gICBncGlvOiBncmdwaW86IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNh
bGxiYWNrIHJldHVybmluZyB2b2lkCj4gICBncGlvOiBsamNhOiBDb252ZXJ0IHRvIHBsYXRmb3Jt
IHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+ICAgZ3BpbzogbHBjMTh4eDogQ29udmVy
dCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIGdwaW86IG1i
ODZzN3g6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lk
Cj4gICBncGlvOiBtbS1sYW50aXE6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNr
IHJldHVybmluZyB2b2lkCj4gICBncGlvOiBtcGM1MjAwOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJl
bW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+ICAgZ3BpbzogbXBjOHh4eDogQ29udmVydCB0
byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIGdwaW86IG9tYXA6
IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICBn
cGlvOiByY2FyOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcg
dm9pZAo+ICAgZ3Bpbzogcm9ja2NoaXA6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxi
YWNrIHJldHVybmluZyB2b2lkCj4gICBncGlvOiB0YjEweDogQ29udmVydCB0byBwbGF0Zm9ybSBy
ZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIGdwaW86IHRzNTUwMDogQ29udmVydCB0
byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIGdwaW86IHVuaXBo
aWVyOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+
ICAgZ3BpbzogeGdlbmUtc2I6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJl
dHVybmluZyB2b2lkCj4gICBncGlvOiB4Z3MtaXByb2M6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVt
b3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICBncGlvOiB4aWxpbng6IENvbnZlcnQgdG8g
cGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICBncGlvOiB6eW5xOiBD
b252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+Cj4gIGRy
aXZlcnMvZ3Bpby9ncGlvLWFsdGVyYS5jICAgIHwgNiArKy0tLS0KPiAgZHJpdmVycy9ncGlvL2dw
aW8tYW1kcHQuYyAgICAgfCA2ICsrLS0tLQo+ICBkcml2ZXJzL2dwaW8vZ3Bpby1icmNtc3RiLmMg
ICB8IDYgKystLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLWNhZGVuY2UuYyAgIHwgNiArKy0tLS0K
PiAgZHJpdmVycy9ncGlvL2dwaW8tZGxuMi5jICAgICAgfCA2ICsrLS0tLQo+ICBkcml2ZXJzL2dw
aW8vZ3Bpby1mdGdwaW8wMTAuYyB8IDYgKystLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLWdyZ3Bp
by5jICAgIHwgNiArKy0tLS0KPiAgZHJpdmVycy9ncGlvL2dwaW8tbGpjYS5jICAgICAgfCA1ICsr
LS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLWxwYzE4eHguYyAgIHwgNiArKy0tLS0KPiAgZHJpdmVy
cy9ncGlvL2dwaW8tbWI4NnM3eC5jICAgfCA2ICsrLS0tLQo+ICBkcml2ZXJzL2dwaW8vZ3Bpby1t
bS1sYW50aXEuYyB8IDYgKystLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLW1wYzUyMDAuYyAgIHwg
OCArKystLS0tLQo+ICBkcml2ZXJzL2dwaW8vZ3Bpby1tcGM4eHh4LmMgICB8IDYgKystLS0tCj4g
IGRyaXZlcnMvZ3Bpby9ncGlvLW9tYXAuYyAgICAgIHwgNiArKy0tLS0KPiAgZHJpdmVycy9ncGlv
L2dwaW8tcmNhci5jICAgICAgfCA1ICsrLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlw
LmMgIHwgNiArKy0tLS0KPiAgZHJpdmVycy9ncGlvL2dwaW8tdGIxMHguYyAgICAgfCA2ICsrLS0t
LQo+ICBkcml2ZXJzL2dwaW8vZ3Bpby10czU1MDAuYyAgICB8IDYgKystLS0tCj4gIGRyaXZlcnMv
Z3Bpby9ncGlvLXVuaXBoaWVyLmMgIHwgNiArKy0tLS0KPiAgZHJpdmVycy9ncGlvL2dwaW8teGdl
bmUtc2IuYyAgfCA2ICsrLS0tLQo+ICBkcml2ZXJzL2dwaW8vZ3Bpby14Z3MtaXByb2MuYyB8IDYg
KystLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXhpbGlueC5jICAgIHwgNiArKy0tLS0KPiAgZHJp
dmVycy9ncGlvL2dwaW8tenlucS5jICAgICAgfCA1ICsrLS0tCj4gIDIzIGZpbGVzIGNoYW5nZWQs
IDQ3IGluc2VydGlvbnMoKyksIDkwIGRlbGV0aW9ucygtKQo+Cj4KPiBiYXNlLWNvbW1pdDogNzE5
MTM2ZTVjMjQ3NjhlYmRmODBiOWRhYTUzZmFjZWJiZGQzNzdjMwo+IC0tCj4gMi40MC4xCj4KClNl
cmllcyBxdWV1ZWQgZm9yIHY2LjcsIHRoYW5rcyEKCkJhcnQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
