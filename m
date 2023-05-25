Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6CC6C7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 14:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHxlsmf+v3qhEm4+eyXViHYxAkj6xdZnbmyPKEW78Cc=; b=KBEjSbBRx0ad/O
	aWRYm1pAJ/u//AnjnQe0CJm2TsWv0wmgL5+aszFLZjuRZBcmvq6ge4a+F+HUKvoJdaK+IvRZjGwVV
	qCOHIYCek3nlC/ul9IZSoUhrXwZ8aHNE/wJHvF5yzZtJ+AvolZu5JPJwNDtQIJNuE0SbhivLSDwzo
	1preQft8grb9W7VT9eOLdBEtHDE6P/pAPU0Bz8VjO+KYkyaFDPjHkj/83i5lnfmRpOAUQyHADlCzL
	/HbX+3jkmpAKyKealLa5LPF/nfcxpX/7oxlxkjZV+xXqqA+AZVTzn4xY2/ZZHKLxurhA32RJppshj
	9yDnJKfS2c1P0shMDKWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2C71-00GrFh-0N;
	Thu, 25 May 2023 14:38:43 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2C6y-00GrEb-2t
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 14:38:42 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-3f6c0d651adso10912431cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 25 May 2023 07:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20221208.gappssmtp.com; s=20221208; t=1685025517; x=1687617517;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0f9zosjqMlsKxrwPxbLObDGRgCG2pdSvt+egeV9ZTpI=;
        b=zEYcmpTPQQMbgKC0O74lib28sf6Gp5zZZDMnZA8Atgecy6o+YBV9WrThB6qJ/MQRmo
         b9L2481fIU5KiSbGXItrTGKzfC1nNQ/sOK/l2L66rU8mi1l0kITP4xcHpxlDW5Tcwk7w
         E0IyYAZjKGLrIbzkWr4WtIl4VEuoNl9afNV1s3t2XNg6xoIty4AAr69kNBCThJ6NpGcK
         JlyEO5Drgl6aISoM/Hn1mMv1j+QtvIZF2FFc4tYdE4TX7orn6vW5pd1rgwgWAFFgCqB/
         jAbhKHzsZfQqTcm7UShXAq34s/MP4bi991IGwM1hP3b4vnXg6y9GCSVGTmkKUI1lT+av
         dEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685025517; x=1687617517;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0f9zosjqMlsKxrwPxbLObDGRgCG2pdSvt+egeV9ZTpI=;
        b=TZU55hXQh0F+R16kDIgB4xDPqGOBtPDQxggESk0M+3pvVcIb/qYvi348sJ3/vghX93
         mFiOjjOg0I+7HqnXcrpc7aX7V4Y8obTefMjpd9dayHSGZQFuMnmZFjtdKD1RQl0EKx1P
         yD6rlnb6ttD9BI34C4Tgd4y/KX3k6s/8H6GpSRafOKNISzq3p2B/JeeawqBv0zhbWhIe
         1nAK5EDVurkAv/9kq/Z/8i4GQn2cHnsI12mtbYNvJS6JCh0EmRnb+1pYJOy7NHlWZvbI
         YYzlMjrndEtSaHlgy8YZMBPrCROW1JS2jPYGyeBIunMB0w4ip8Th9L0T3kcip327AkQE
         BxxQ==
X-Gm-Message-State: AC+VfDygPmgKHeRZGQawrcAy/qoRK5orqDjWsmQyjKnWQdpZ7kovjRSP
	eXqEsvY7gYBhlaz5fnybay6LYg==
X-Google-Smtp-Source: ACHHUZ5uKkem4rzpORqlmAvVksTmQLXSZqaJg4eis1lSTWquItQD7Q7SiUkmQinD3BkzoNsMVAGL2g==
X-Received: by 2002:a05:622a:4d:b0:3f4:427:dbb8 with SMTP id y13-20020a05622a004d00b003f40427dbb8mr32435955qtw.2.1685025516934;
        Thu, 25 May 2023 07:38:36 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6c0::7a9])
        by smtp.gmail.com with ESMTPSA id a3-20020ac87203000000b003f6be5256d5sm447863qtp.19.2023.05.25.07.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 07:38:36 -0700 (PDT)
Message-ID: <118d51d7734d6673ed1d90b09533fab50ece4b78.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: Fix null pointer dereference in
 try_fmt
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Michael Tretter <m.tretter@pengutronix.de>,
 ezequiel@vanguardiasur.com.ar,  p.zabel@pengutronix.de, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl,  benjamin.gaignard@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	kernel@pengutronix.de
Date: Thu, 25 May 2023 10:38:35 -0400
In-Reply-To: <20230516091209.3098262-1-m.tretter@pengutronix.de>
References: <20230516091209.3098262-1-m.tretter@pengutronix.de>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_073840_933495_DD632AFC 
X-CRM114-Status: GOOD (  16.13  )
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

TGUgbWFyZGkgMTYgbWFpIDIwMjMgw6AgMTE6MTIgKzAyMDAsIE1pY2hhZWwgVHJldHRlciBhIMOp
Y3JpdMKgOgo+IFNpbmNlIGNvbW1pdCBkYjZmNjhiNTFlNWMgKCJtZWRpYTogdmVyaXNpbGljb246
IERvIG5vdCBzZXQgY29udGV4dAo+IHNyYy9kc3QgZm9ybWF0cyBpbiByZXNldCBmdW5jdGlvbnMi
KSwgdnB1X3NyY19mbXQgaXMgbm90IHNldCBpbiB0aGUKPiByZXNldCBmdW5jdGlvbiwgYnV0IG9u
bHkgc2V0IGluIGhhbnRyb19zZXRfZm10X291dCwgd2hpY2ggY2FsbHMKPiBoYW50cm9fdHJ5X2Zt
dCBiZWZvcmUgc2V0dGluZyB0aGUgZm9ybWF0LiBUaGVyZWZvcmUsIGhhbnRyb190cnlfZm10Cj4g
bWlnaHQgYmUgY2FsbGVkIHdpdGggdnB1X3NyY19mbXQgc3RpbGwgYmVpbmcgbnVsbC4KPiAKPiBB
ZGQgYSB0ZXN0IGlmIHRoZSBmb3JtYXQgaXMgYWN0dWFsbHkgc2V0IGJlZm9yZSBjaGVja2luZyB0
aGUgZm9ybWF0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVy
QHBlbmd1dHJvbml4LmRlPgo+IEZpeGVzOiBkYjZmNjhiNTFlNWMgKCJtZWRpYTogdmVyaXNpbGlj
b246IERvIG5vdCBzZXQgY29udGV4dCBzcmMvZHN0IGZvcm1hdHMgaW4gcmVzZXQgZnVuY3Rpb25z
IikKClRoaXMgcGF0Y2ggaGlnaGxpZ2h0cyB5ZXQgbW9yZSBpc3N1ZXMgaW4gdGhlIGRyaXZlciBk
ZWZhdWx0IGZvcm1hdCBoYW5kbGluZywgYnV0CnRoZSByZW1haW5pbmcgYnVnIGlzIGV4dHJlbWVs
eSBtaW5vciAodG9vIHNtYWxsIHNpemVpbWFnZSBiZWZvcmUgU19GTVQgaXMKY2FsbGVkLCByYXRo
ZXIgdGhlbiBrZXJuZWwgb29wcy4pLiBDb25zaWRlcmluZyBob3cgbG9uZyB0aGlzIGhhcyBiZWVu
IGdvaW5nLApwbGVhc2UgY29uc2lkZXIgbWVyZ2luZyB0aGlzLgoKUmV2aWV3ZWQtYnk6IE5pY29s
YXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gIGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyB8IDkgKysrKysr
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIu
Ywo+IGluZGV4IDgzNTUxODUzNGUzYi4uZWMzN2QyNjQ2ZmRlIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+IEBAIC0zMTMsMTcg
KzMxMywyMCBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0cnVjdCBoYW50cm9f
Y3R4ICpjdHgsCj4gIAkJLyogRmlsbCByZW1haW5pbmcgZmllbGRzICovCj4gIAkJdjRsMl9maWxs
X3BpeGZtdF9tcChwaXhfbXAsIGZtdC0+Zm91cmNjLCBwaXhfbXAtPndpZHRoLAo+ICAJCQkJICAg
IHBpeF9tcC0+aGVpZ2h0KTsKPiAtCQlpZiAoY3R4LT52cHVfc3JjX2ZtdC0+Zm91cmNjID09IFY0
TDJfUElYX0ZNVF9IMjY0X1NMSUNFICYmCj4gKwkJaWYgKGN0eC0+dnB1X3NyY19mbXQgJiYKPiAr
CQkgICAgY3R4LT52cHVfc3JjX2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNF
ICYmCj4gIAkJICAgICFoYW50cm9fbmVlZHNfcG9zdHByb2MoY3R4LCBmbXQpKQo+ICAJCQlwaXhf
bXAtPnBsYW5lX2ZtdFswXS5zaXplaW1hZ2UgKz0KPiAgCQkJCWhhbnRyb19oMjY0X212X3NpemUo
cGl4X21wLT53aWR0aCwKPiAgCQkJCQkJICAgIHBpeF9tcC0+aGVpZ2h0KTsKPiAtCQllbHNlIGlm
IChjdHgtPnZwdV9zcmNfZm10LT5mb3VyY2MgPT0gVjRMMl9QSVhfRk1UX1ZQOV9GUkFNRSAmJgo+
ICsJCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQgJiYKPiArCQkJIGN0eC0+dnB1X3NyY19mbXQt
PmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRfVlA5X0ZSQU1FICYmCj4gIAkJCSAhaGFudHJvX25lZWRz
X3Bvc3Rwcm9jKGN0eCwgZm10KSkKPiAgCQkJcGl4X21wLT5wbGFuZV9mbXRbMF0uc2l6ZWltYWdl
ICs9Cj4gIAkJCQloYW50cm9fdnA5X212X3NpemUocGl4X21wLT53aWR0aCwKPiAgCQkJCQkJICAg
cGl4X21wLT5oZWlnaHQpOwo+IC0JCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9
PSBWNEwyX1BJWF9GTVRfSEVWQ19TTElDRSAmJgo+ICsJCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19m
bXQgJiYKPiArCQkJIGN0eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRfSEVW
Q19TTElDRSAmJgo+ICAJCQkgIWhhbnRyb19uZWVkc19wb3N0cHJvYyhjdHgsIGZtdCkpCj4gIAkJ
CXBpeF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSArPQo+ICAJCQkJaGFudHJvX2hldmNfbXZf
c2l6ZShwaXhfbXAtPndpZHRoLAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
