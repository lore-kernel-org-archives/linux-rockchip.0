Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36406C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 13:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XC4ImqSWZ0jC7+O5bEmt15D34HZeHOllUIi4feK1Mw=; b=nXPQg0tJc3VOtx
	cg1JqEvgfMPw0d24WbWKy+0dxbP3x/09o7agXloOI3XGbi938hjvIEo4zhqof6N9u5EemMjt11/2O
	yut1eF43ZNczJA08IWNohA3ID2n3A7ADe+cZJ764lu/Yuytpl+tfede6WOpGGFLoojcBBjVJoV8D/
	9Ba4b6AP94Lm2yAQxZfWS9Z/zMDonXv4p8E8Yczm8RofCUKxzA25t5zoGdGYBKTjrrGgvcq+osEUR
	WX+y1R7VkGDZR0TaA2tb3wrOzu/D2gVD3OW7qJy8sBNamJdTla0Lz+tKGA5m5pkJFvOIzOxB1lBRb
	GWxYi7V7HlrPlY8PvAMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJYsB-0000000F7kP-2n2A;
	Tue, 18 Jun 2024 13:27:43 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJYs8-0000000F7i8-19mt
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 13:27:41 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5b97539a4a5so2979634eaf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2024 06:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718717257; x=1719322057; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CdNdOEwtXS2JQSR1qzVkD9A7XBal8hZRGM6LmJ/+p9Y=;
        b=mLubJO7sMYPZEC3At/xe3WiYhJMTES8bdHaegS40cZKSveGUg3i3L6yl//TyIz2bKX
         gtevcDge53t9iCWVBiuYHGkR4uwkv5lc5tb/MHgI8FLBBeX0LY7JFZnkCpb2fR0hdaAp
         cmdpSoZ0WZNZl59SvrqnPSES9qFQAWYi9amLcE64nF1JDL/4/yr28IfRkQuXOVY2YV5i
         WUymMx1LWMYKcJMKEANRdiKC4bDoQczLoXVloS1mJNqtnZc3ZazeAwj09s6wv5LXVYYX
         NwAc64bJYwzvlwnHEd+F/ymq7oq9jfTas+PCqYZqp7HfPLJEW+YJpKUHwu7Bf3JKuKk6
         G9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718717257; x=1719322057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CdNdOEwtXS2JQSR1qzVkD9A7XBal8hZRGM6LmJ/+p9Y=;
        b=JNHIo0Szy8KsIj5g5zTLXab5R5HB9Yf58BxBRrp0QseVeLqpwyzkDeJNQQQwx5mlFR
         xLYMBmYeqeOIvYr1CjFq+EIK2J8INWRrQvQSKQhwyZ1JPtOXiETF1o/WBtkV5wCYms/d
         AeVPFmLrT8jnlRQJju1+TNcEYQO1wu/d6vSKvixP1qKk/66sTVxJNFNsHc2NFODiFUvv
         9yZtLMZef2O5nWk5JZPHERc1ELjCLjtxJXg4/UucifF7l+Q61f9KqJx1s9XP6/Xx7wSO
         eM8+mC7H/pvPiAbr01fwxpSkyaY9kYYGbHDrMTQYkbSk6s61tBW9tMptv86PGU+w6Q/Z
         LOaw==
X-Forwarded-Encrypted: i=1; AJvYcCXTq44AX4QowgTu9Hge1MLBtjyiPuT5RP7yUTISncEG+MBDuLkuTjlKLsr0L6bV1g/HuwUbEmq9wyYM4MN43Fn93hs2vwjjxcJkC/FnwaKflo4a
X-Gm-Message-State: AOJu0YycRgfWt96S69NxkiWh68vWopjEQ3GIt+ZYcH/oiGyCLnEIRuWr
	hXi0Jr0707eWimXQ0YO+zMbKm/HP1mMxzSMmu2pZmrKQ4Bj8pjC/zBptxTxQPMY8tChmyuV5CNc
	tl0jI8t+cqn2LWSVwDMn32X5xfjY=
X-Google-Smtp-Source: AGHT+IHxlwSqQtRjMjtn/Lc54p7Vzqf7fp+SfJ6DO+Ng4Vn2vJjW4WCtOPDDggwmIApml74xjVqttMcF/cYgNat9V3k=
X-Received: by 2002:a05:6820:554:b0:5ba:ea6f:acb8 with SMTP id
 006d021491bc7-5bdadbdecefmr12975302eaf.3.1718717257431; Tue, 18 Jun 2024
 06:27:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220919210025.2376254-1-Jason@zx2c4.com> <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
 <Y9juvficPxFUfgHD@Red>
In-Reply-To: <Y9juvficPxFUfgHD@Red>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 18 Jun 2024 18:57:21 +0530
Message-ID: <CANAwSgTTzZOwBaR9zjJ5VMpxm5BydtW6rB2S7jg+dnoX8hAoWg@mail.gmail.com>
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
To: Corentin LABBE <clabbe@baylibre.com>
Cc: troy.lin@rock-chips.com, shawn.lin@rock-chips.com, hl@rock-chips.com, 
	ty@wevs.org, mike.rudenko@gmail.com, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org, 
	Herbert Xu <herbert@gondor.apana.org.au>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, robin.murphy@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_062740_339936_2D6D3777 
X-CRM114-Status: GOOD (  24.60  )
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

SGkgQ29yZW50aW4gLyBKYXNvbiwKCk9uIFR1ZSwgMzEgSmFuIDIwMjMgYXQgMTY6MTAsIENvcmVu
dGluIExBQkJFIDxjbGFiYmVAYmF5bGlicmUuY29tPiB3cm90ZToKPgo+IExlIFR1ZSwgU2VwIDIw
LCAyMDIyIGF0IDEwOjM1OjQ0QU0gKzAxMDAsIFJvYmluIE11cnBoeSBhIMOpY3JpdCA6Cj4gPiBP
biAyMDIyLTA5LTE5IDIyOjAwLCBKYXNvbiBBLiBEb25lbmZlbGQgd3JvdGU6Cj4gPiA+IFRoZSBS
b2NrY2hpcCBkcml2ZXIgaGFzIGxvbmcgZXhpc3RlZCBvdXQgb2YgdHJlZSwgYnV0IG5vdCB1cHN0
cmVhbS4KPiA+ID4gVGhlcmUgaXMgc3VwcG9ydCBmb3IgaXQgdXBzdHJlYW0gaW4gdS1ib290LCBi
dXQgbm90IGluIExpbnV4IHByb3Blci4KPiA+ID4gVGhpcyBjb21taXQgaW1wb3J0cyB0aGUgR1BM
djIgZHJpdmVyIHdyaXR0ZW4gYnkgTGluIEppbmhhbiwgdG9nZXRoZXIKPiA+ID4gd2l0aCB0aGUg
RFRTIGFuZCBjb25maWcgYmxvYnMgZnJvbSBXZXZzdHkuCj4gPgo+ID4gTm90ZSB0aGF0IENvcmVu
dGluIGhhcyBhIHNlcmllcyBlbmFibGluZyB0aGUgZnVsbCBjcnlwdG8gZHJpdmVyIGZvcgo+ID4g
UkszMzI4IGFuZCBSSzMzOTlbMV0sIHNvIGl0IHdvdWxkIHNlZW0gbW9yZSBzZW5zaWJsZSB0byBh
ZGQgVFJORyBzdXBwb3J0Cj4gPiB0byB0aGF0LiBIYXZpbmcgY29uZmxpY2l0aW5nIGNvbXBhdGli
bGVzIGZvciB0aGUgc2FtZSBoYXJkd2FyZSB0aGF0Cj4gPiBmb3JjZSB0aGUgdXNlciB0byBjaGFu
Z2UgdGhlaXIgRFQgdG8gY2hvb3NlIG9uZSBmdW5jdGlvbmFsaXR5IG9yIHRoZQo+ID4gb3RoZXIg
aXNuJ3QgZ29vZCAocGx1cyB0aGVyZSdzIGFsc28gbm8gYmluZGluZyBmb3IgdGhpcyBvbmUpLgo+
ID4KPiA+IFJvYmluLgo+ID4KPgo+IEhlbGxvCj4KPiBJIGFtIHZlcnkgaW50ZXJlc3RlZCBvbiBo
b3cgdGhpcyBzZXJpZSB3YXMgdGVzdGVkIGFuZCB3aGljaCB0b29scyB3YXMgdXNlZCB0byBlbnN1
cmUgb3V0cHV0IHdhcyByYW5kb20uCj4gQW5kIGhvdyBkaWQgeW91IGdldCB0aGF0IENSWVBUT19W
MV9UUk5HX1NBTVBMRV9QRVJJT0QoMTAwKTsgd2FzIHRoZSBiZXN0IGNob2ljZS4KPgpJcyB0aGVy
ZSBhbnkgdXBkYXRlIG9uIHRoaXMgZHJpdmVyCgpJIGp1c3QgdGVzdGVkIHRoaXMgcGF0Y2ggb24g
bXkgUkszMzk5IGJvYXJkLgoKIDg8LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0+OAojIGRkIGlmPS9kZXYvaHdybmcgYnM9MTAwMDAw
IGNvdW50PTEgPiAvZGV2L251bGwKMSswIHJlY29yZHMgaW4KMSswIHJlY29yZHMgb3V0CjEwMDAw
MCBieXRlcyAoMTAwIGtCLCA5OCBLaUIpIGNvcGllZCwgMC44MjkyMTIgcywgMTIxIGtCL3MKCiMg
IGNhdCAvZGV2L2h3cm5nIHwgcm5ndGVzdCAtYyAxMDAwCi4uLgpybmd0ZXN0OiBzdGFydGluZyBG
SVBTIHRlc3RzLi4uCnJuZ3Rlc3Q6IGJpdHMgcmVjZWl2ZWQgZnJvbSBpbnB1dDogMjAwMDAwMzIK
cm5ndGVzdDogRklQUyAxNDAtMiBzdWNjZXNzZXM6IDAKcm5ndGVzdDogRklQUyAxNDAtMiBmYWls
dXJlczogMTAwMCAgICAgIDwtLSAgZmFpbHVyZXMKcm5ndGVzdDogRklQUyAxNDAtMigyMDAxLTEw
LTEwKSBNb25vYml0OiAyMQpybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIFBva2VyOiAx
MDAwCnJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgUnVuczogMTAwMApybmd0ZXN0OiBG
SVBTIDE0MC0yKDIwMDEtMTAtMTApIExvbmcgcnVuOiAwCnJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAw
MS0xMC0xMCkgQ29udGludW91cyBydW46IDQKcm5ndGVzdDogaW5wdXQgY2hhbm5lbCBzcGVlZDog
KG1pbj0xOC4wNzk7IGF2Zz05NTUuOTkxOyBtYXg9OTc2NTYyNS4wMDApS2liaXRzL3MKcm5ndGVz
dDogRklQUyB0ZXN0cyBzcGVlZDogKG1pbj0xOC4wNjI7IGF2Zz0zMS42MTk7IG1heD01MC40NTkp
TWliaXRzL3MKcm5ndGVzdDogUHJvZ3JhbSBydW4gdGltZTogMjIxMjUwNTUgbWljcm9zZWNvbmRz
CgpXaGVyZWFzIGZvciAvZGV2L3JhbmRvbQoKIyBjYXQgL2Rldi9yYW5kb20gfCBybmd0ZXN0IC1j
IDEwMDAKLi4uCnJuZ3Rlc3Q6IHN0YXJ0aW5nIEZJUFMgdGVzdHMuLi4Kcm5ndGVzdDogYml0cyBy
ZWNlaXZlZCBmcm9tIGlucHV0OiAyMDAwMDAzMgpybmd0ZXN0OiBGSVBTIDE0MC0yIHN1Y2Nlc3Nl
czogOTk4CnJuZ3Rlc3Q6IEZJUFMgMTQwLTIgZmFpbHVyZXM6IDIKcm5ndGVzdDogRklQUyAxNDAt
MigyMDAxLTEwLTEwKSBNb25vYml0OiAwCnJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkg
UG9rZXI6IDEKcm5ndGVzdDogRklQUyAxNDAtMigyMDAxLTEwLTEwKSBSdW5zOiAwCnJuZ3Rlc3Q6
IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgTG9uZyBydW46IDEKcm5ndGVzdDogRklQUyAxNDAtMigy
MDAxLTEwLTEwKSBDb250aW51b3VzIHJ1bjogMApybmd0ZXN0OiBpbnB1dCBjaGFubmVsIHNwZWVk
OiAobWluPTM4MS40NzA7IGF2Zz01NTUxLjA3MzsgbWF4PTE5MDczLjQ4NilNaWJpdHMvcwpybmd0
ZXN0OiBGSVBTIHRlc3RzIHNwZWVkOiAobWluPTI0LjkzMzsgYXZnPTcwLjQwMDsgbWF4PTc5Ljgw
NSlNaWJpdHMvcwpybmd0ZXN0OiBQcm9ncmFtIHJ1biB0aW1lOiAyNzY4NzAgbWljcm9zZWNvbmRz
CgpUaGFua3MKCi1BbmFuZAoKCgoKPiBUaGFua3MKPiBSZWdhcmRzCj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
