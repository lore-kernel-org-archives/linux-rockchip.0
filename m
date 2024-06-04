Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0046AC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 14:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52vSLzWZk2docDqxicOLi5/YLdM4HBVaPi1YGH9oJtg=; b=4xQy94r5N7xChE
	cl7EealHs6dOI+hicrhJh9iA3HjEuLQ+0ttFWNlO8I84nYb2mSfZDee29dS+5dfid1RE3K50uX0HZ
	a8cYI6L3MXEVfSr5vM3RGIrq9GE4X7OhQKWJZYUOFXPs5SIQh+Hlu+VobkhupzsVIesqdaim6vY4Y
	8hfVMTPbO4Jz3LLLQsAorcjAC1gE+b/ne/5TWaaKXudfalbmlAk6KPABZJh0EbU/zMLbSSyW229IN
	3EVmq/a8ti750tgqr2+jYw45UEkrOLIO9xAGqxT7w/eCtgZz89I8KWC3l6aqQ9m+Gg8vik7NN3Asj
	Tvoiea9OYIrjpd6Wbuqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEV63-00000002ggX-2vsR;
	Tue, 04 Jun 2024 14:25:07 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEV60-00000002geY-31F8
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Jun 2024 14:25:06 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-795174a500aso38758985a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2024 07:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717511102; x=1718115902; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3+7ucRN6SOyS+e3mibEJsTCMuvSYJSeNULQZ9UJG6/E=;
        b=joWJx0eV1MUAQaA9fa89NJ/LSBCNvNEBY0MN22Qgj0ktpuGpckO90aM3Ob5q7a98/H
         BAByx+6R8BOILTrAMB4701iwlTSqfBXao6DwSrYt94Cx1yvLW1WEVMCsF6PfHA1M/3+G
         K2F7q/kKVXCowhciCVyoAQ8u/Dt0uH6J+Os5XFOQyVbQJ587n/h4/PFBL70sALZYgiY+
         ea73Sv5ytsNT5JTARO0vEAIapNQG0uC8ZO5gF4zVns2I3YTaUyKBDqVbk9LmoCqDFWv+
         yC5iA1BGm99qLInmJMskGkrPtSxWGT2yIiwIHShVvE4p/+LH4msef9dcHvfJlf5wdWUH
         tadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717511102; x=1718115902;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3+7ucRN6SOyS+e3mibEJsTCMuvSYJSeNULQZ9UJG6/E=;
        b=HvbeH9Qg95fdxItlHOtde30NZDAdNJUagnbCRYhdeU3V7sil0dn+wW2cUTtFzCFEUx
         dEGFJ8S8wDs77Si65T+XjSMAB/BBIY3JYJLSvxBzYloa08XOixWHs5iO5wA4kMzZaBd3
         VFcYW6tYYCGEHYH0SULrrSKcR9wWVNp/FYyPR1JFr2I2xufQwtlhnAVWtrNStCCUtd65
         MDqRUbPJzQFI2o8wZJkQ+JCdV56coe6518kZuSX2R4m5+YifjqdcOEALoZQ4Zu+Gfn84
         DmseH7QdyZhW1vqI2BjE7arNReLNwIvWMBS3ywDq3vXQjI/E1aSe8k5SHbQt5soZs+HW
         yAWw==
X-Forwarded-Encrypted: i=1; AJvYcCVky8ZN9tHj9TQzKzpxO1rP8Z4B3DgC8OG2rEVfelca6rIUvomwy+Qs6sZ+fGiyDqJs2H5iy4rYjdGshvOvH8QaZSnktFUiH5xl8mLRr8RQAro7
X-Gm-Message-State: AOJu0Yx30Xks0+QGn4Cs7F685eL+0F7vz8saDA3kBDOSqpM1A97kXSNk
	PqaneaJ8+IHU2hUYfIbG6+x7rf4E9ob16awoEPzUfMyUtTUWpBfW
X-Google-Smtp-Source: AGHT+IE3+9BZ5y349FHsh8U+bdmSsNzzPatwboP/Fkky+PG17kis8RzxrrU2nUHYNwUmRgovETYslw==
X-Received: by 2002:a05:620a:11a4:b0:795:1dc1:3b18 with SMTP id af79cd13be357-7951dc13b75mr102483885a.29.1717511101648;
        Tue, 04 Jun 2024 07:25:01 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:17:5985::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-794f2efc66fsm366399585a.19.2024.06.04.07.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 07:25:01 -0700 (PDT)
Message-ID: <62b33f6b3552bd54e2743238a3a24387e8422493.camel@gmail.com>
Subject: Re: [PATCH] media: verisilicon: Use fourcc format string
From: Nicolas Dufresne <nicolas.dufresne@gmail.com>
To: Michael Tretter <m.tretter@pengutronix.de>,
 ezequiel@vanguardiasur.com.ar,  p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	kernel@pengutronix.de, mtr@pengutronix.de
Date: Tue, 04 Jun 2024 10:25:00 -0400
In-Reply-To: <20240528130314.464867-1-m.tretter@pengutronix.de>
References: <20240528130314.464867-1-m.tretter@pengutronix.de>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_072504_865538_F1CABBC8 
X-CRM114-Status: GOOD (  12.08  )
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

TGUgbWFyZGkgMjggbWFpIDIwMjQgw6AgMTU6MDMgKzAyMDAsIE1pY2hhZWwgVHJldHRlciBhIMOp
Y3JpdMKgOgo+IFRoZXJlIGlzIGEgZm91cmNjIGZvcm1hdCBzdHJpbmcgZm9yIHByaW50aW5nIGZv
cm1hdHMuIFVzZSBpdCBpbnN0ZWFkIG9mCj4gb3BlbiBjb2RpbmcgdGhlIGNvbnZlcnNpb24uCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXgu
ZGU+CgpSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xs
YWJvcmEuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fdjRsMi5jIHwgNiArLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb192NGwyLmMKPiBpbmRleCBkZjZmMjUzNjI2M2IuLjYyZDM5NjJjMThkOSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192
NGwyLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192
NGwyLmMKPiBAQCAtMzAzLDExICszMDMsNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNv
bnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gIAo+ICAJY29kZWQgPSBjYXB0dXJlID09IGN0
eC0+aXNfZW5jb2RlcjsKPiAgCj4gLQl2cHVfZGVidWcoNCwgInRyeWluZyBmb3JtYXQgJWMlYyVj
JWNcbiIsCj4gLQkJICAocGl4X21wLT5waXhlbGZvcm1hdCAmIDB4N2YpLAo+IC0JCSAgKHBpeF9t
cC0+cGl4ZWxmb3JtYXQgPj4gOCkgJiAweDdmLAo+IC0JCSAgKHBpeF9tcC0+cGl4ZWxmb3JtYXQg
Pj4gMTYpICYgMHg3ZiwKPiAtCQkgIChwaXhfbXAtPnBpeGVsZm9ybWF0ID4+IDI0KSAmIDB4N2Yp
Owo+ICsJdnB1X2RlYnVnKDQsICJ0cnlpbmcgZm9ybWF0ICVwNGNjXG4iLCAmcGl4X21wLT5waXhl
bGZvcm1hdCk7Cj4gIAo+ICAJZm10ID0gaGFudHJvX2ZpbmRfZm9ybWF0KGN0eCwgcGl4X21wLT5w
aXhlbGZvcm1hdCk7Cj4gIAlpZiAoIWZtdCkgewoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
