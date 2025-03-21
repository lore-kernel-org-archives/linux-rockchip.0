Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FECC28B30
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Mar 2025 01:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKFo/SpJBWh+pqDw0VC+aG7BlkNXwZli3rfDXuEPB4g=; b=MZOBSgUapubFhL
	qfr8IaTC0UWi+0d4JKkjiieWTUMneJoJt1xCzDtmKUu+DZYOeAZwQp6xBqdzO4dD/NGMGotnikpiw
	HaRihwDZbVDnO8S4P/C/b1fEYHJNQ3glqzcZYvGxUrLDOhQdveio6j6+dJi4ASRlVlRT0lfdOpu1q
	9jTBs3RHnXIjfmjCZ0JygG3QljrK28emJpRGak/Y6yftTUDcrQVBrjiAeVZhFAdOT/e3G31zSzxX7
	CuvZy9uHq/sHJpXCvTT0juHnUZ6hFU6HZepLVKm4vhjCw6rDadvQOcXQu68ccBk5MgIm6vg/Rn3o8
	Cfc/10TsW0UZrH5QXRrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvR3r-0000000DdLq-3mGi;
	Fri, 21 Mar 2025 01:20:35 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvR3p-0000000DdLB-3jdm;
	Fri, 21 Mar 2025 01:20:35 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so2694851a12.0;
        Thu, 20 Mar 2025 18:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742520032; x=1743124832; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HZK/FjsgxH8rgQz5UdjpktKxGwid5B9t/SURmUdS6A=;
        b=CD35lpHA/pfRCkWln8y/v8jPvLCTnsVJP6ZJqYDcJJqKGjKf9M5MFyCE31iArFyPcl
         cS9vMeg2aDCN25i+jIc75ZDPp3NHYi5GIeOFRm0OfUmGRAizj2WsTtXx22ZOIjafVmLr
         mC1UxsE9tlVOLQX+eDR6HzRPPPMoLAAUli41o+FU/JWmrCcMDPzUheUUYUUknGaTcKgp
         e/QZqvZNgulMa5pz1kqweJR96mA23+vjOg68Xi62EfRTF7vMjXb7t3RnX9F8UVksQ+0s
         lvysuna6Da/YoJT172zOQfG6Mfkdet+btFOp8+D1BAraCjVSS0vC66gmMd9md4R0zl1e
         9omA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742520032; x=1743124832;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9HZK/FjsgxH8rgQz5UdjpktKxGwid5B9t/SURmUdS6A=;
        b=V6f/ZLYh6LX1KiB0KZdhenHaRqOV7AEHinkhzmjldNRo98qpIwKWP3jgKUkQPfWE1j
         m+fsc/t7/t8PEJ6dCsbK5G5ucOH9GDq4Mfpsqz8YHEMhudx2RmBn074RCY68z+8/Tl6g
         y9npY8VCKUBlDPqef2EOzUTAhZZdEks5eFv7q1Onz2eqxKxvDT/22aIANcale9KDbgse
         Bk5dKrKl3CiUNn9syKhQRekJnO+GWyd7CWEGTyllqf3I5jwi5VI1CYQ72ems62tT+9/2
         307KQ1bwDvVFW8QhFLvOuN6ysRn+73X8m+Ow0FmKJerJj4vtr3yDtJM3J+0BbRfmvmJQ
         35bw==
X-Forwarded-Encrypted: i=1; AJvYcCUyql3e58dM5wiyQq8RctIg7eIhruOvX2u1kZPSbYyxUcG9AJRakY9WBpzqNHq2QIrw11SdSxtrRL3MokmtOFLW@lists.infradead.org, AJvYcCXM+4EjjsSbQI+ACHNGi3H8MwFHMrjR1Mwj+L3JPuhuRpjBgd0EsHp6V4Y3chKyVKL5dtCvcabSsfIo4+437a0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzw3fwUu2+ENFWwDq9MBRM/2duk4FyTbP9s0J5cgFwQhQGb4QM/
	Q0Q9m69VOjmvXQZ/3zki6/3zM8yZmZieeNXaV5Y6pPimhmZiPU4xSLUg9NwbDejugkg4IJgvJa7
	fUfgV9ZQQ0Oot9xPltWAFxP+of68=
X-Gm-Gg: ASbGnctRXre6op0DqKgHJ1pGlgQ9UUaHz9layCgAVKMjOSku3dTyl/lkBtcmOgriYFg
	Rn4mohzrGCtoS7g92H4XadhQEwS/L/vYlH4VBdJMHetaf+8wJfBM2t89wcotWUH96us3XjTWYDI
	fFDPgW2KyaaJHHCINBAcPje8eDe6QBk56Ttp1PFhoJu69H7+m4zWu/e2iyAoY=
X-Google-Smtp-Source: AGHT+IGIE1+moUJxAvVppTaWNdlItcrjKuGQPgygcTy+VdcsvgnoPSCeR+4j8NRkAklH93BWzVlDqMTDcRKMNKFlmI8=
X-Received: by 2002:a05:6402:2793:b0:5e5:3c1b:c0ff with SMTP id
 4fb4d7f45d1cf-5ebcce07a08mr1613441a12.13.1742520031566; Thu, 20 Mar 2025
 18:20:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250315204852.1247992-1-CFSworks@gmail.com> <e1cdc3a39b9201cb115b12b559899aee@manjaro.org>
In-Reply-To: <e1cdc3a39b9201cb115b12b559899aee@manjaro.org>
From: Sam Edwards <cfsworks@gmail.com>
Date: Thu, 20 Mar 2025 18:20:20 -0700
X-Gm-Features: AQ5f1JrZ70w76EeL0x7DU0tc9VlG6Hcd3TPBcx3Yd7HL18hR7dxsfjuAIY08JdU
Message-ID: <CAH5Ym4hqkMMBsT7XEz_f+TCng+0X2m0nV_Kdr-LAPBqgENgr5A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Allow Turing RK1 cooling fan to
 spin down
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	=?UTF-8?Q?Daniel_Kukie=C5=82a?= <daniel@kukiela.pl>, 
	Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_182033_932141_FFBD560D 
X-CRM114-Status: GOOD (  29.55  )
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

T24gVGh1LCBNYXIgMjAsIDIwMjUgYXQgNTozOOKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFNhbSwKPgo+IE9uIDIwMjUtMDMtMTUgMjE6NDgs
IFNhbSBFZHdhcmRzIHdyb3RlOgo+ID4gVGhlIFJLMzU4OCB0aGVybWFsIHNlbnNvciBkcml2ZXIg
b25seSByZWNlaXZlcyBpbnRlcnJ1cHRzIHdoZW4gYQo+ID4gaGlnaGVyLXRlbXBlcmF0dXJlIHRo
cmVzaG9sZCBpcyBjcm9zc2VkOyBpdCBjYW5ub3Qgbm90aWZ5IHdoZW4gdGhlCj4gPiBzZW5zb3Ig
Y29vbHMgYmFjayBvZmYuIEFzIGEgcmVzdWx0LCB0aGUgZHJpdmVyIG11c3QgcG9sbCBmb3IKPiA+
IHRlbXBlcmF0dXJlCj4gPiBjaGFuZ2VzIHRvIGRldGVjdCB3aGVuIHRoZSBjb25kaXRpb25zIGZv
ciBhIHRoZXJtYWwgdHJpcCBhcmUgbm8gbG9uZ2VyCj4gPiBtZXQuIEhvd2V2ZXIsIGl0IG9ubHkg
ZG9lcyBzbyBpZiB0aGUgRFQgZW5hYmxlcyBwb2xsaW5nLgo+ID4KPiA+IEJlZm9yZSB0aGlzIHBh
dGNoLCB0aGUgUksxIERUIGRpZCBub3QgZW5hYmxlIHBvbGxpbmcsIGNhdXNpbmcgdGhlIGZhbgo+
ID4gdG8KPiA+IGNvbnRpbnVlIHJ1bm5pbmcgYXQgdGhlIHNwZWVkIGNvcnJlc3BvbmRpbmcgdG8g
dGhlIGhpZ2hlc3QgdGVtcGVyYXR1cmUKPiA+IHJlYWNoZWQuCj4gPgo+ID4gRm9sbG93IHN1aXQg
d2l0aCBzaW1pbGFyIFJLMzU4OCBib2FyZHMgYnkgc2V0dGluZyBhIHBvbGxpbmctZGVsYXkgb2YK
PiA+IDEwMDBtcywgZW5hYmxpbmcgdGhlIGRyaXZlciB0byBkZXRlY3Qgd2hlbiB0aGUgc2Vuc29y
IGNvb2xzIGJhY2sgb2ZmLAo+ID4gYWxsb3dpbmcgdGhlIGZhbiBzcGVlZCB0byBkZWNyZWFzZSBh
cyBhcHByb3ByaWF0ZS4KPiA+Cj4gPiBGaXhlczogN2M4ZWM1ZTZiOWQ2ICgiYXJtNjQ6IGR0czog
cm9ja2NoaXA6IEVuYWJsZSBhdXRvbWF0aWMgZmFuCj4gPiBjb250cm9sIG9uIFR1cmluZyBSSzEi
KQo+ID4gU2lnbmVkLW9mZi1ieTogU2FtIEVkd2FyZHMgPENGU3dvcmtzQGdtYWlsLmNvbT4KPiA+
IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXR1cmluZy1yazEu
ZHRzaSB8IDIgKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXR1cmluZy1y
azEuZHRzaQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmct
cmsxLmR0c2kKPiA+IGluZGV4IDZiYzQ2NzM0Y2MxNC4uMDI3MGJmZmNlMTk1IDEwMDY0NAo+ID4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtdHVyaW5nLXJrMS5kdHNp
Cj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmctcmsx
LmR0c2kKPiA+IEBAIC0yMTQsNiArMjE0LDggQEAgcmdtaWlfcGh5OiBldGhlcm5ldC1waHlAMSB7
Cj4gPiAgfTsKPiA+Cj4gPiAgJnBhY2thZ2VfdGhlcm1hbCB7Cj4gPiArICAgICBwb2xsaW5nLWRl
bGF5ID0gPDEwMDA+Owo+ID4gKwo+ID4gICAgICAgdHJpcHMgewo+ID4gICAgICAgICAgICAgICBw
YWNrYWdlX2FjdGl2ZTE6IHRyaXAtYWN0aXZlMSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
dGVtcGVyYXR1cmUgPSA8NDUwMDA+Owo+Cj4gVGhhbmtzIGZvciB0aGUgcGF0Y2gsIGl0J3MgbG9v
a2luZyBnb29kIHRvIG1lLCB3aXRoIHNvbWUgcmVsYXRlZAo+IHRob3VnaHRzIGJlbG93LiAgUGxl
YXNlLCBmZWVsIGZyZWUgdG8gaW5jbHVkZToKPgo+IFJldmlld2VkLWJ5OiBEcmFnYW4gU2ltaWMg
PGRzaW1pY0BtYW5qYXJvLm9yZz4KPgo+IEFmdGVyIGEgcXVpY2sgbG9vayBhdCB0aGUgUkszNTg4
IFRSTSBQYXJ0IDEsIGl0IHNlZW1zIHBvc3NpYmxlCj4gdG8gYWN0dWFsbHkgZ2VuZXJhdGUgYWRk
aXRpb25hbCBpbnRlcnJ1cHRzIHdoZW4gdGhlIFRTQURDIGNoYW5uZWwKPiB0ZW1wZXJhdHVyZSBy
ZWFkb3V0cyByZWFjaCBwcmVkZWZpbmVkIGxvdyB0aHJlc2hvbGRzLiAgTW9yZW92ZXIsCgpIaSBE
cmFnYW4sCgpPb2gsIEkgc2VlIHRoYXQgbm93IQoKSXQgc2VlbXMgdG8gYmUgYXMgc2ltcGxlIGFz
IGFkZGluZyBhIGAuc2V0X2Nvb2xvZmZfdGVtcCA9IC4uLmAgdGhhdAp3cml0ZXMgdGhlIGxvd2Vy
IHRocmVzaG9sZHMgdG8gVFNBRENfQ09NUCNfTE9XX0lOVCBhbmQgc2V0cyB0aGUKbmVjZXNzYXJ5
IGJpdHMgaW4gVFNBRENfTFRfRU4rVFNBRENfTFRfSU5UX0VOLiBTaW5jZSB0aGUgZHJpdmVyCmFs
cmVhZHkgcmVzY2FucyBhbGwgdGVtcGVyYXR1cmVzIG9uIGFueSBpbnRlcnJ1cHQgYW5kIGFja25v
d2xlZGdlcyBhbGwKaW50ZXJydXB0IHN0YXR1cyBiaXRzIGluZGlzY3JpbWluYXRlbHksIEkgZG9u
J3QgYW50aWNpcGF0ZSBhbnkgb3RoZXIKbmVjZXNzYXJ5IGNoYW5nZXMuCgpJIGNhbiBlYXNpbHkg
dGFrZSBjYXJlIG9mIHRoYXQgdGhpcyB3ZWVrZW5kIG9yIG5leHQgaWYgdGhhdCBwbGFuCnNvdW5k
cyBnb29kIHRvIHlvdS4gSG93ZXZlciwgc2luY2UgKnRoaXMqIHBhdGNoIGlzIGEgRml4ZXM6LCBJ
J2QKcmF0aGVyIGxhbmQgaXQgYXMtaXMgZmlyc3QgYW5kIGhhbmRsZSB0aGUgYWJvdmUgc2VwYXJh
dGVseS4gOikKCj4gYXZvaWRpbmcgdGhlIHBvbGxpbmcgd291bGQgYWN0dWFsbHkgaGVscCB0aGUg
U29DIGNvb2wgZG93biBhIHRpbnkKPiBiaXQgZmFzdGVyLCB3aGljaCBtYWtlcyBpdCB3b3J0aCBk
ZXRhaWxlZCBpbnZlc3RpZ2F0aW9uIGluIG15IGJvb2ssCj4gZGVzcGl0ZSBub3QgYmVpbmcgdXNl
ZCBieSB0aGUgZG93bnN0cmVhbSBrZXJuZWwgY29kZS4KCkRvIHlvdSBtZWFuICJzcGluIGRvd24g
dGhlIGZhbiBhIHRpbnkgYml0IGZhc3RlciIgKHNpbmNlIGl0IHdvdWxkCmRldGVjdCB0aGUgY29v
bC1vZmYgd2l0aG91dCBuZWVkaW5nIHRvIHBvbGwgZm9yIGl0KSwgb3IgYXJlIHlvdQplbXBoYXNp
emluZyBzYXZpbmcgQ1BVIGN5Y2xlcyB0aGF0IHdvdWxkIG90aGVyd2lzZSBiZSBzcGVudCBwb2xs
aW5nPwoKVGhhbmtzIGZvciB0aGUgdGlwLApTYW0KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
