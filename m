Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42BD8CD11DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 17:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UinAArYOpyhMC3h4bw/5H746KFVW3ZYD8JORppGFiO0=; b=m4YQtCHyT558Af
	nI4Hvl2JocbETeCz39cYCgdSAiGMGVt+dSk5vGIRT46izVWClF0iit20tqXl5ZeV7HIZA1jjJwcqL
	W2LDMeC7uWxLEFHmx02Nh3GlB9WZDhtIUEqn2xmld0yfrhQXqoNL13GM+nkXaDKiQ9gqfShWoBVwZ
	Di+hEAh/GPd1f3C7LuUPklo6fvm/ZKz4Gihqg4TAdU9K4Zj7VgWE66DY5BQXqeSSEo43Tl3mimU97
	iflHXHw5h6x2/bsNUFS/TzgvEGjnrnGPtMdF0HX6Kvdmy1RFS97YMSx9TKZySkYMKxtUmgVVHqSst
	S8PM7o1cghplY3H8aOpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpt7A-0000000ErgN-1x5V;
	Thu, 28 Mar 2024 17:00:32 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpt75-0000000Eref-46hd;
	Thu, 28 Mar 2024 17:00:29 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-56c583f5381so807625a12.1;
        Thu, 28 Mar 2024 10:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711645224; x=1712250024; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=stvwvcw6BBFyPtIGiBiLhJ1aHDfsR73bSliLCyyMaps=;
        b=fN8ReHtDcJJf9G4BZZfNGPV4OA++Lgw94WTTLCyYtmctQmR2vlP4ldHiJHDQnzrYdj
         mkepnqewdqL7CimPvarB9OatyQ9g0yk/6x7KTcV9My498HRElRg4DlvwtYj4giD9HMlm
         MHVnXp92RBWUki8AIgVdR+MPsGFx1bufYqZtGHsYcgZO9noCu2UBFS1U3vGvSQsVILqe
         URpOszMj+E+IHsbNgfAkWQuEwwPlroTgDP/36rL+Hls285FoK/jbSRDID0HLqsnFXFsu
         7Rtqfos90anjGoCPikqhroBUswe8W0dnHxsseSNsM01xUAxesyW3rpfEEzUXL3zDA2rV
         Ee8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711645224; x=1712250024;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=stvwvcw6BBFyPtIGiBiLhJ1aHDfsR73bSliLCyyMaps=;
        b=pY0xQ830awbDo6KfeNtLA7RonwFrZQ4RffByV1YjYUyt9QYG4PhtrakjNsixn/O0Xb
         000sX6VTAOM6S9v/LV4vpNhWOHBaKAjIYVAkMb33NvIt6lSfXQvCtJmxFfcbax3krNY+
         95fWzYUl4cobBbZke+nS1LSSS+6LTnUTTvfrP8nmGOL8lJ3vGB3kLs9POOQ+ycdHpDZ4
         amq+xDR5lar8UiSV/yR84LzlHgwir06DVkxxKiyi5khAaRXwDm62krkESq1f9ffSiEqN
         7tFZr1jy90R29jNHDsTJ7xMdMVpJqTp1DsA5W2gUwr9mYlAZXV9+1St/yskgmA6cbJ4E
         O69w==
X-Forwarded-Encrypted: i=1; AJvYcCVLNsGq+ukl5oK5lk96Am6JLdBgxkl086hZnubBdX0k2EQJpJKo7xHxZVzx6SZWNfrnIUyEuhc6OT6kPfWCr9v2hjvY8pJ8fOghXY9pGcfTIVpoJanMDqyHhOB5G+g+Dt2TmFLHeh4YNDAw2BK+01sCrRJoE/kXGZrL7Vw2W36PVJdjS2yM2NtVUVlUwyGGLPsDJWc/6WoK
X-Gm-Message-State: AOJu0YxsVKz3ZMiFRjysO2FgqpGi7Kuf4vfaZ0+4ni/Cu7hfMGvZp5zN
	n7pY1NuHbk9pbp6eiMZi51uVQ0VqMvnDzIY/oK6Crl9k5y/5Hr91
X-Google-Smtp-Source: AGHT+IE15SGYpN8ex/nr3KjAwYMch+D9d3pqxB0exiuUAHDkZNAUeSO5Pj/RXrauUaAKcwfeFrlBQQ==
X-Received: by 2002:a05:6402:2350:b0:56b:dd7c:ac3d with SMTP id r16-20020a056402235000b0056bdd7cac3dmr9313eda.10.1711645224162;
        Thu, 28 Mar 2024 10:00:24 -0700 (PDT)
Received: from [192.168.1.63] ([109.28.199.236])
        by smtp.gmail.com with ESMTPSA id p14-20020a05640210ce00b0056c4f8130c3sm1047007edu.82.2024.03.28.10.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 10:00:23 -0700 (PDT)
Message-ID: <871f0b24a38208d9c5d6abc87d83b067162c103e.camel@gmail.com>
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe line
From: Alban Browaeys <alban.browaeys@gmail.com>
To: Conor Dooley <conor@kernel.org>, dev@folker-schwesinger.de
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Heiko Stuebner <heiko@sntech.de>, Chris Ruehl
 <chris.ruehl@gtsys.com.hk>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley
 <conor+dt@kernel.org>, Christopher Obbard <chris.obbard@collabora.com>,
 Doug Anderson <dianders@chromium.org>, Brian Norris
 <briannorris@chromium.org>, Jensen Huang <jensenhuang@friendlyarm.com>,
 linux-phy@lists.infradead.org,  linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Thu, 28 Mar 2024 18:00:03 +0100
In-Reply-To: <20240326-tactical-onlooker-3df8d2352dc2@spud>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
	 <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de>
	 <20240326-tactical-onlooker-3df8d2352dc2@spud>
Autocrypt: addr=alban.browaeys@gmail.com; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_100028_045247_7EBFEC84 
X-CRM114-Status: GOOD (  25.54  )
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

TGUgbWFyZGkgMjYgbWFycyAyMDI0IMOgIDE5OjQ2ICswMDAwLCBDb25vciBEb29sZXkgYSDDqWNy
aXTCoDoKPiBPbiBUdWUsIE1hciAyNiwgMjAyNCBhdCAwNzo1NDozNVBNICswMTAwLCBGb2xrZXIg
U2Nod2VzaW5nZXIgdmlhIEI0Cj4gUmVsYXkgd3JvdGU6Cj4gPiBGcm9tOiBGb2xrZXIgU2Nod2Vz
aW5nZXIgPGRldkBmb2xrZXItc2Nod2VzaW5nZXIuZGU+Cj4gPiAtCWlmIChvZl9wcm9wZXJ0eV9y
ZWFkX2Jvb2woZGV2LT5vZl9ub2RlLCAicm9ja2NoaXAsZW5hYmxlLQo+ID4gc3Ryb2JlLXB1bGxk
b3duIikpCj4gPiAtCQlya19waHktPmVuYWJsZV9zdHJvYmVfcHVsbGRvd24gPQo+ID4gUEhZQ1RS
TF9SRU5fU1RSQl9FTkFCTEU7Cj4gPiArCWlmIChvZl9wcm9wZXJ0eV9yZWFkX2Jvb2woZGV2LT5v
Zl9ub2RlLCAicm9ja2NoaXAsZGlzYWJsZS0KPiA+IHN0cm9iZS1wdWxsZG93biIpKQo+ID4gKwkJ
cmtfcGh5LT5lbmFibGVfc3Ryb2JlX3B1bGxkb3duID0KPiA+IFBIWUNUUkxfUkVOX1NUUkJfRElT
QUJMRTsKPiAKPiBVbmZvcnR1bmF0ZWx5IHlvdSBjYW5ub3QgZG8gdGhpcy4KPiBQcmV2aW91c2x5
IG5vIHByb3BlcnR5IGF0IGFsbCBtZWFudCBkaXNhYmxlZCBhbmQgYSBwcm9wZXJ0eSB3YXMKPiBy
ZXF1aXJlZAo+IHRvIGVuYWJsZSBpdC4gV2l0aCB0aGlzIGNoYW5nZSB0aGUgYWJzZW5jZSBvZiBh
IHByb3BlcnR5IG1lYW5zIHRoYXQKPiBpdAo+IHdpbGwgYmUgZW5hYmxlZC4KPiBBbiBvbGQgZGV2
aWNldHJlZSBpcyB0aGF0IHdhbnRlZCB0aGlzIHRvIGJlIGRpc2FibGVkIHdvdWxkIGhhdmUgbm8K
PiBwcm9wZXJ0eSBhbmQgd2lsbCBub3cgZW5kIHVwIHdpdGggaXQgZW5hYmxlZC4gVGhpcyBpcyBh
biBBQkkgYnJlYWsKPiBhbmQgaXMKPiBjbGVhcmx5IG5vdCBiYWNrd2FyZHMgY29tcGF0aWJsZSwg
dGhhdCdzIGEgTkFLIHVubGVzcyBpdCBpcwo+IGRlbW9uc3RyYWJsZQo+IHRoYXQgbm9vbmUgYWN0
dWFsbHkgd2FudHMgdG8gZGlzYWJsZSBpdCBhdCBhbGwuCgoKQnV0IHRoZSBwYXRjaCB0aGF0IGlu
dHJvZHVjZWQgdGhlIG5ldyBkZWZhdWx0IHRvIGRpc2FibGUgdGhlIHB1bGxkb3duCmV4cGxpY2l0
ZWx5IGludHJvZHVjZWQgYSByZWdyZXNzaW9uIGZvciBhdCBsZWFzdCA0IGJvYXJkcy4KSXQgdG9v
ayB0aW1lIHRvIHNvcnQgb3V0IHRoYXQgdGhlIGRlZmF1bHQgdG8gZGlzYWJsZSBwdWxsZG93biB3
YXMgdGhlCmN1bHByaXQgYnV0IHN0aWxsLgpXaWxsIHdlIGNhcnJ5IHRoaXMgbmV3IGJlaGF2b3Ig
dGhhdCBicmVha3MgdGhlIGRlZmF1bHQgZGVzaWduIGZvcgpyazMzOTkgYmVjYXVzZSBzaW5jZSB0
aGUgcmVncmVzc2lvbiB3YXMgaW50cm9kdWNlZCBuZXcgYm9hcmQgZGVmaW5pdGlvbgptaWdodCBo
YXZlIGV4cGNldGVkIHRoaXMgbmV3IGJlaGF2aW9yLgoKQ291bGQgdGhlIGJlc3Qgb3B0aW9uIGJl
IHRvIHJldmVydCB0byDDqW5vdCBzZXQgYSBkZWZhdWx0IGVuYWJsZS9kaXNhYmxlCnB1bGxkb3du
IiAoYXMgYmVmb3JlIHRoZSBjb21taXQgdGhhdCBpbnRyb2R1Y2VkIHRoZSByZWdyZXNzaW9uKSBh
bmQKYWxsb3cgb25lIHRvIGZvcmNlIHRoZSBwdWxsZG93biB2aWEgdGhlIGVuYWJsZS9kaXNhYmxl
IHB1bGxkb3duCnByb3BlcnR5PwpJIG1lYW4gdGhlIGNvbW1pdCB0aGF0IGludHJvZHVjZWQgYSBk
ZWZhdWx0IHZhbHVlIGZvciB0aGUgcHVsbGRvd24gZGlkCm5vdCBzZWVtIHRvIGJlIGFib3V0IGZp
eGluZyBhbnl0aGluZy4gQnV0IGl0IGJyb2tlIGEgbG90LiBBTmQgaXQgd2FzCnJlYWxseSByZWFs
bHkgaGFyZCB0byBmaW5kIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGlzIGNvbW1pdCB0byB1bmRlcnN0
YW5kCnRoYXQgb25lIGhhZCB0byBlbmFibGUgcHVsbGRvd24gdG8gcmVzdG9yZSBoczQwMC4KCklu
IG1vcmUgdGhhbiAzIHllYXJzLCBvbmx5IG9uZSBib2FyZCBtYWludGFpbmVyIG5vdGljZWQgdGhh
dCB0aGlzCnByb3BlcnR5IHdhcyByZXF1aXJlZCB0byBnZXQgYmFjayBIUzQwMCAgYW5kIHRoYW5r
cyB0byBhIHVzZXIgdGVsbGluZwptZSB0aGF0IHRoaXMgYm9hcmQgd2FzIHdvcmtpbmcgSSBmb3Vu
ZCBmcm9tIHRoaXMgYm9hcmQgdGhhdCB0aGlzCnByb3BlcnR5IHdhcyAibWlzc2luZyIgZnJvbSBt
b3N0IGJvYXJkIGRlZmluaXRpb25zICh3aGlsZSBpdCB3YXMgbm90CnJlcXVpcmVkIGJlZm9yZSku
CgoKSSBhbSBhbGwgZm9yIG5vdCBicmVha2luZyBBQkkuIEJ1dCB3aGF0IGFib3V0IG5vdCByZXZl
cnRpbmcgYSBwYXRjaAp0aGF0IGFscmVhZHkgYnJva2UgQUJJIGJlY2F1c2UgdGhpcyBwYXRjaCBp
bnRyb2R1Y2VkIGEgbmV3IEFCSSB0aGF0IHdlCmRvbid0IHdhbnQgdG8gYnJlYWs/CkkgbWVhbiBz
aG91bGRuJ3QgYSBuZXcgY29tbWl0IHdpdGggYSBuZXcgQUJJIHRoYXQgcmVncmVzc2VkIHRoZSBr
ZXJuZWwKYmUgcmV2ZXJ0ZWQ/CgpNaW5kIGZpeGluZyB0aGUgaW5pdGlhbCByZWdyZXNzaW9uIDhi
NWMyYjQ1YjhmMCAicGh5OiByb2NrY2hpcDogc2V0CnB1bGxkb3duIGZvciBzdHJvYmUgbGluZSBp
biBkdHMiIGRvZXMgbm90IG5lY2Vzc2FyaWx5IG1lYW4gY2hhbmdpbmcgdGhlCmRlZmF1bHQgdG8g
dGhlIG9wcG9zaXRlIHZhbHVlIGJ1dCBjb3VsZCBhbHNvIGJlIHJldmVydGluZyB0byBub3QKc2V0
dGluZyBhIGRlZmF1bHQuClRob3VnaCBJIGRvbid0IGtub3cgaWYgdGhlcmUgYXJlIHByb3MgdG8g
c2V0dGluZyBhIGRlZmF1bHQuCgoKPiBJZiB0aGlzIHBhdGNoIGZpeGVzIGEgcHJvYmxlbSBvbiBh
IGJvYXJkIHRoYXQgeW91IGhhdmUsIEkgd291bGQKPiBzdWdnZXN0Cj4gdGhhdCB5b3UgYWRkIHRo
ZSBwcm9wZXJ0eSB0byBlbmFibGUgaXQsIGFzIHRoZSBiaW5kaW5nIHRlbGxzIHlvdSB0by4KPiAK
PiBUaGFua3MsCj4gQ29ub3IuCgoKUmVnYXJkcywKQWxiYW4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
