Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1777CAC589
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 18:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eci8MauqiIvH1cnSkpAFGXq4biIlbkmorO7FMR5uYvg=; b=0pqllCn79vUh0q
	gv9EO8hSdTVc0kDBHw9lfMYa/Y8dfSqvzc8wxXLqunfG22DzxjQ536X/bstIE235evVhZiy9csUYH
	Ho+2Bh79CzB0LB3C4XHX6b7b3THTJ4IwtHvjE2n34eLi1UvVEH+d0QxEtThnZmBRUXLispLyyvKyK
	ImaJT+VWCndrGmpeYSQepxspXvzOioLHEaq49qOx9mrR1ca5fLPTZ2cUuVfldvBdEn/hMHlkVVfvX
	ifCu32je0dZsc1gu/dHw9ZiP7cnuh8fhmKRE8fW68Bos4MT1k3sr08dUe2Fiq7UILxmD4+ATFCEZY
	k3sMjfgy9SGCB5XggnkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvgUW-00000001Uxt-3qfW;
	Mon, 08 Sep 2025 18:21:24 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbT5-0000000HDG7-0wHk
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Sep 2025 12:59:36 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-336cee72f40so37939391fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Sep 2025 05:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336373; x=1757941173; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J5BpttAHpJbHjU5zlElKTAX1nmzmhusdG1v06go3DFc=;
        b=g3XRc5r2mUa+/fwBX+fXeFjvj+Ygr9TI8xgNgYZ6ZVbgzdlkL3CjjLHpLEOZ4NuMO+
         sTB40aO0poX1IUSGAnow+r2t6H0U8KJ42ASHCZc3CSzqTzO7TyHmMQv3rTmALHbM2Gt+
         zRNkaK+M6TFFewe8tt5u+RA5CO07DfSbvFrVXSvleGI0a+ghINpuIC0ZRS5hefHBomNT
         WEDvtYLoBH/HYPOBl5LXFqkISMU1TJZlyX2IHqY0b58wvsQ4G5LeTsbCCWQ8W1zeOUd2
         pZ7vRDAzZz6dc+7A55PJ2lChg6Ow4AVh/kkRu7xYBCIAQmWmhN4Kg6Vz1jukM58t1bxD
         5PzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336373; x=1757941173;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J5BpttAHpJbHjU5zlElKTAX1nmzmhusdG1v06go3DFc=;
        b=Vc+PH1g71vqrQO6Zn1sZOEMZXL5lGiZw5hlBTSriHDXDA/q1DJ2aH6vBqeyBff29Bm
         x5OggLRRxEqJRSInjhKtMEku7j2989d/7T8gGDNlb936SzxVy0uK11WRUX1jDaGpZdmr
         oT/53jJb6JCrRfAoZhM56+o4+EOEZALW0kiN6eAngDnjn66CNqP2taj42UYBwvKFP1V2
         NTFz3CtOE5eN1WeRw6IYPtjb+niIprHyVpoGK8VqTSEZq6l7B00mbSSsXGmPaQaUMW7c
         krxgsIJ3EMKdE+CO+JQGpswR0t0/qm/3KxcS5hTreUUbT8uRzLtym8hrmYAqcW/dyhrp
         wRHg==
X-Forwarded-Encrypted: i=1; AJvYcCUs0N4gamuTr9Oo827lKgkmpFWz4nVvOAR4DgnL+w0PXRqmewUpNcKk+FVKFq02j3vzkhF+/o6aaK+eFRF0Zg==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywxs+3OQVSxQplR0qzza0FWcCB2bvdaS4bHzKE3xIe1Bu8G/9KZ
	Wxa7FltDgPJ8ZzHbfN7ChmDcfIYJo50gzVOTSpLVYKbdFZ8rZegHo9+ZhbtEuvSU9J+/c4f8+ti
	i9RZLBTtxYq6ABu7b8kFadg3eZhyyp+ktBSzVyUf8Cg==
X-Gm-Gg: ASbGncvRRy13gY0wZwKTlrCawdknwDhzkk+FNLfHDLQpMFr3Reorrgl2g25UQ3oy6m+
	gYwpmdIaZ4MotfBp7suOWPPxb/ckkCGqpP9fJeqwRsCLraBMkHdYdd50RSIC9ZhthHtaQu9llKb
	bJ5T6IXmbEd5HnjJBm+tAa5qrwwUjBElfpYzLypX2rjUbqd4ZM8Jk7juBmKadjHK2j4F1vx4lio
	/COHlG0XhPDeSWsM+F5aWIvUE9n
X-Google-Smtp-Source: AGHT+IHxkO5Trw9x8IQx8FMGDMwnUY1eThHnZXuMivELDVJEriHgjq/E/h355l8gaJCNCLOfPlh87yQTWfxAaUQ+yRQ=
X-Received: by 2002:a05:651c:542:b0:337:f84a:6ded with SMTP id
 38308e7fff4ca-33b5fe33199mr21312101fa.40.1757336372950; Mon, 08 Sep 2025
 05:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <179c9e8c-8760-41e6-aad7-7a128df60984@omp.ru>
In-Reply-To: <179c9e8c-8760-41e6-aad7-7a128df60984@omp.ru>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 8 Sep 2025 14:59:21 +0200
X-Gm-Features: Ac12FXwB3hkNayk_jKlRJHBwnE7MZt7LhknFIIwvxH7yn6EzRdVpugXhQZOilew
Message-ID: <CACRpkdbzEmZN=-FPvax4z_iq7u6pHyHGJ213QtpxqFL98-Ou5Q@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix NULL ptr deref in rockchip_pinctrl_parse_groups()
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_055935_262176_AB08DB36 
X-CRM114-Status: GOOD (  15.07  )
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

T24gV2VkLCBTZXAgMywgMjAyNSBhdCA5OjQ54oCvUE0gU2VyZ2V5IFNodHlseW92IDxzLnNodHls
eW92QG9tcC5ydT4gd3JvdGU6Cgo+IEluIHRoZSBSb2NrY2hpcCBkcml2ZXIsIHJvY2tjaGlwX3Bp
bmN0cmxfcGFyc2VfZ3JvdXBzKCkgYXNzdW1lcyB0aGF0IHRoZQo+ICJyb2NrY2hpcCxwaW5zIiBw
cm9wZXJ0eSB3aWxsIGFsd2F5cyBiZSBwcmVzZW50IGluIHRoZSBEVCBub2RlIGl0IHBhcnNlcwo+
IGFuZCBzbyBkb2Vzbid0IGNoZWNrIHRoZSByZXN1bHQgb2Ygb2ZfZ2V0X3Byb3BlcnR5KCkgZm9y
IE5VTEwuIElmIHRoZSBEVAo+IHBhc3NlZCB0byB0aGUga2VybmVsIGhhcHBlbnMgdG8gaGF2ZSBz
dWNoIHByb3BlcnR5IG1pc3NpbmcsIHRoZW4gd2Ugd2lsbAo+IGdldCBhIGtlcm5lbCBvb3BzIHdo
ZW4gdGhlIHBvaW50ZXIgaXMgZGVyZWZlcmVuY2VkIGluIHRoZSAqZm9yKiBsb29wIGp1c3QKPiBh
IGZldyBsaW5lcyBhZnRlciB0aGUgY2FsbC4gIEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8gcGxheSBz
YWZlIGJ5IGNoZWNraW5nCj4gdGhlIGxpc3QgdmFyaWFibGUgZm9yIE5VTEwgKGFuZCByZXBvcnRp
bmcgZXJyb3IgaWYgc28pLCBsaWtlIHdlIGNoZWNrIHRoZQo+IHNpemUgdmFyaWFibGUgZm9yIHZh
bGlkaXR5IGZ1cnRoZXIgZG93bi4uLgo+Cj4gRm91bmQgYnkgTGludXggVmVyaWZpY2F0aW9uIENl
bnRlciAobGludXh0ZXN0aW5nLm9yZykgd2l0aCB0aGUgU3ZhY2Ugc3RhdGljCj4gYW5hbHlzaXMg
dG9vbC4KPgo+IEZpeGVzOiBkM2U1MTE2MTE5YmQgKCJwaW5jdHJsOiBhZGQgcGluY3RybCBkcml2
ZXIgZm9yIFJvY2tjaGlwIFNvQ3MiKQo+IFNpZ25lZC1vZmYtYnk6IFNlcmdleSBTaHR5bHlvdiA8
cy5zaHR5bHlvdkBvbXAucnU+CgpQYXRjaCBhcHBsaWVkIQoKWW91cnMsCkxpbnVzIFdhbGxlaWoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
