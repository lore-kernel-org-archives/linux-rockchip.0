Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2CFC77B7A
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 14:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I+2K1037L+1QZcbLotxNUVYQYwxScKtAeaoJ4z2j7w=; b=bTZrzlvA/2lWOF
	Wz4QiHcHpFZeMQisSf+ZCB5lcqZhHHt2+rxCokSCbuNzN6VCaGYorSLhkydWiVA9ez7/90QoLchjq
	gJzser9Ozt+UJxoIZw+VM9GqscHROxDdzU//Qj8gqTu+pYeXD1urouW2r47I6SxHD5+gdmKlI/Bm3
	iCZgtu2KHM6MyH8F5+mdbVZx+I3ctGMJUV88aE1dapRCayzkO1XEed7xppp7jBe9m8OfgAGLBEZAj
	4vmgRNlRDiH9OunnPNyfIaOxP6CNDvznQ5cenSZgFQA2YsJhCeFd3sGA9+npF91jrrqTA/FDMyAeA
	Fd1+l9ULYgGDeQ0G5eag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2C4g-00Gr2N-2Z;
	Thu, 25 May 2023 14:36:18 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2C4e-00Gr1c-2g
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 14:36:18 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-75affb4d0f9so53978285a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 25 May 2023 07:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20221208.gappssmtp.com; s=20221208; t=1685025374; x=1687617374;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YTrMCPdlTL1iweEOJjUWd8jv+TtA4HWTo2gWq1cW91A=;
        b=DXrj04wJidNYp+VKNednunBgjkH5PcRI0VTyBaWC8acG0PWG/PzkmBdwb6j8MHgnkD
         oQ0VfLct2hMmQPtunuo+zeevb67PUFgCHdMZEOgD92QYHWQVElwTyQrCQ5ASm0Gx+Pu9
         JhXNC568hlIMbpjuuI1q12Z4dBoT4uC+2eXhxj0HKD+6q8RUpso7pGTxPnYzNsodj7U5
         gQVULxDKmPATtmrUiOn3UUF6Z7EdWH5MOflN10uGQ7iwpJ9V/zVh2EdI6GB27+Lc/HD8
         MNBpI/qiyQOMl/mtM7EJCGhcPrsc0oel21YSLbHXDw+fYVhDs/IPE3YGOONa2hTSX0e9
         UJ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685025374; x=1687617374;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YTrMCPdlTL1iweEOJjUWd8jv+TtA4HWTo2gWq1cW91A=;
        b=FgEbBTT9Lhyj03wp3uXarmVuL9RXUxfbvHq4BAy3YJ4iYQnGo31B/HmgfkvGKMAqRV
         dZNV6flny473TcnjL7RD7PfzrsU9X6oa2LXBJYqmEzcyAq/8jtUVFue75N1ifzHIIiDq
         XTqXFnaWUquCH0U6uP68sTTNOhJOyzZq6Q/u0R1+b31U7H1Tj+/zf0Z8iHGtqgv5OR7P
         ftjgCXQ8rPC6Q5najYqGMtkvwOAmA5uDiL5NqV395DsZEIT+QPp7qfN6MpJSzg8Su2Ex
         FHqFGZP6/8ByQPGucv+yShU9JYnh7Jlc0bPdgTMkCQsg9XmLpKPMfBwG4vwxNXBSBYZ8
         mVRQ==
X-Gm-Message-State: AC+VfDyYDMA39N2cOWrmjJzRkEf2usxNz6eAoqx1J80C3TyQ9Hw187a2
	t0HMxlZX6hu0V5spxITRdebRrA==
X-Google-Smtp-Source: ACHHUZ7vxFVUwY5x2/gIc5+gQX9tIGKX7e71sU1VXhlWzZALM+my5k3qy3u6+KjvRzCXWDkZHap++w==
X-Received: by 2002:a05:620a:1a0b:b0:75b:2457:2edc with SMTP id bk11-20020a05620a1a0b00b0075b24572edcmr13385035qkb.48.1685025374455;
        Thu, 25 May 2023 07:36:14 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6c0::7a9])
        by smtp.gmail.com with ESMTPSA id r28-20020a05620a03dc00b0075bcc5ab975sm256510qkm.92.2023.05.25.07.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 07:36:14 -0700 (PDT)
Message-ID: <a651486dbfdc2f755098b3f400c48ae3958eb6d8.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: Fix null pointer dereference in
 try_fmt
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Diederik de Haas <didi.debian@cknow.org>, ezequiel@vanguardiasur.com.ar,
  p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil-cisco@xs4all.nl, 
 benjamin.gaignard@collabora.com, linux-rockchip@lists.infradead.org
Cc: linux-media@vger.kernel.org, kernel@pengutronix.de, 
	m.tretter@pengutronix.de, "Linux regression tracking (Thorsten Leemhuis)"
	 <regressions@leemhuis.info>
Date: Thu, 25 May 2023 10:36:13 -0400
In-Reply-To: <6444204.lOV4Wx5bFT@bagend>
References: <20230516091209.3098262-1-m.tretter@pengutronix.de>
	 <6444204.lOV4Wx5bFT@bagend>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_073617_089119_3D0D6AE8 
X-CRM114-Status: GOOD (  19.63  )
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

SGkgRGllZGVyaWssCgpMZSBtYXJkaSAyMyBtYWkgMjAyMyDDoCAxNjoyMiArMDIwMCwgRGllZGVy
aWsgZGUgSGFhcyBhIMOpY3JpdMKgOgo+IE9uIFR1ZXNkYXksIDE2IE1heSAyMDIzIDExOjEyOjA5
IENFU1QgTWljaGFlbCBUcmV0dGVyIHdyb3RlOgo+ID4gU2luY2UgY29tbWl0IGRiNmY2OGI1MWU1
YyAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogRG8gbm90IHNldCBjb250ZXh0Cj4gPiBzcmMvZHN0IGZv
cm1hdHMgaW4gcmVzZXQgZnVuY3Rpb25zIiksIHZwdV9zcmNfZm10IGlzIG5vdCBzZXQgaW4gdGhl
Cj4gPiByZXNldCBmdW5jdGlvbiwgYnV0IG9ubHkgc2V0IGluIGhhbnRyb19zZXRfZm10X291dCwg
d2hpY2ggY2FsbHMKPiA+IGhhbnRyb190cnlfZm10IGJlZm9yZSBzZXR0aW5nIHRoZSBmb3JtYXQu
IFRoZXJlZm9yZSwgaGFudHJvX3RyeV9mbXQKPiA+IG1pZ2h0IGJlIGNhbGxlZCB3aXRoIHZwdV9z
cmNfZm10IHN0aWxsIGJlaW5nIG51bGwuCj4gPiAKPiA+IEFkZCBhIHRlc3QgaWYgdGhlIGZvcm1h
dCBpcyBhY3R1YWxseSBzZXQgYmVmb3JlIGNoZWNraW5nIHRoZSBmb3JtYXQuCj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRlPgo+
ID4gRml4ZXM6IGRiNmY2OGI1MWU1YyAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogRG8gbm90IHNldCBj
b250ZXh0IHNyYy9kc3QgZm9ybWF0cwo+ID4gaW4gcmVzZXQgZnVuY3Rpb25zIikgLS0tCj4gPiAg
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jIHwgOSArKysr
KystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fdjRsMi5jCj4gPiBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aGFudHJvX3Y0bDIuYyBpbmRleAo+ID4gODM1NTE4NTM0ZTNiLi5lYzM3ZDI2NDZmZGUgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMKPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0
bDIuYwo+ID4gQEAgLTMxMywxNyArMzEzLDIwIEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQo
Y29uc3Qgc3RydWN0IGhhbnRyb19jdHgKPiA+ICpjdHgsIC8qIEZpbGwgcmVtYWluaW5nIGZpZWxk
cyAqLwo+ID4gIAkJdjRsMl9maWxsX3BpeGZtdF9tcChwaXhfbXAsIGZtdC0+Zm91cmNjLCBwaXhf
bXAtPndpZHRoLAo+ID4gIAkJCQkgICAgcGl4X21wLT5oZWlnaHQpOwo+ID4gLQkJaWYgKGN0eC0+
dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRfSDI2NF9TTElDRSAKPiAmJgo+ID4g
KwkJaWYgKGN0eC0+dnB1X3NyY19mbXQgJiYKPiA+ICsJCSAgICBjdHgtPnZwdV9zcmNfZm10LT5m
b3VyY2MgPT0gVjRMMl9QSVhfRk1UX0gyNjRfU0xJQ0UgCj4gJiYKPiA+ICAJCSAgICAhaGFudHJv
X25lZWRzX3Bvc3Rwcm9jKGN0eCwgZm10KSkKPiA+ICAJCQlwaXhfbXAtPnBsYW5lX2ZtdFswXS5z
aXplaW1hZ2UgKz0KPiA+ICAJCQkJaGFudHJvX2gyNjRfbXZfc2l6ZShwaXhfbXAtCj4gPiB3aWR0
aCwKPiA+ICAJCQkJCQkgICAgcGl4X21wLQo+ID4gaGVpZ2h0KTsKPiA+IC0JCWVsc2UgaWYgKGN0
eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9PSAKPiBWNEwyX1BJWF9GTVRfVlA5X0ZSQU1FICYmCj4g
PiArCQllbHNlIGlmIChjdHgtPnZwdV9zcmNfZm10ICYmCj4gPiArCQkJIGN0eC0+dnB1X3NyY19m
bXQtPmZvdXJjYyA9PSAKPiBWNEwyX1BJWF9GTVRfVlA5X0ZSQU1FICYmCj4gPiAgCQkJICFoYW50
cm9fbmVlZHNfcG9zdHByb2MoY3R4LCBmbXQpKQo+ID4gIAkJCXBpeF9tcC0+cGxhbmVfZm10WzBd
LnNpemVpbWFnZSArPQo+ID4gIAkJCQloYW50cm9fdnA5X212X3NpemUocGl4X21wLT53aWR0aCwK
PiA+ICAJCQkJCQkgICBwaXhfbXAtCj4gPiBoZWlnaHQpOwo+ID4gLQkJZWxzZSBpZiAoY3R4LT52
cHVfc3JjX2ZtdC0+Zm91cmNjID09IAo+IFY0TDJfUElYX0ZNVF9IRVZDX1NMSUNFICYmCj4gPiAr
CQllbHNlIGlmIChjdHgtPnZwdV9zcmNfZm10ICYmCj4gPiArCQkJIGN0eC0+dnB1X3NyY19mbXQt
PmZvdXJjYyA9PSAKPiBWNEwyX1BJWF9GTVRfSEVWQ19TTElDRSAmJgo+ID4gIAkJCSAhaGFudHJv
X25lZWRzX3Bvc3Rwcm9jKGN0eCwgZm10KSkKPiA+ICAJCQlwaXhfbXAtPnBsYW5lX2ZtdFswXS5z
aXplaW1hZ2UgKz0KPiA+ICAJCQkJaGFudHJvX2hldmNfbXZfc2l6ZShwaXhfbXAtCj4gPiB3aWR0
aCwKPiAKPiBJIGhhdmUgdmVyaWZpZWQgdGhhdCB0aGlzIHBhdGNoIGZpeGVzIHRoZSBjcmFzaCBJ
IHdhcyBzZWVpbmcgc2luY2UgNi40Lgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1l
ZGlhLzEyNzI0MzQ5Lk85bzc2WmR2UUNAYmFnZW5kLyBpcyBhL3RoZSBvdGhlciAKPiBwYXRjaCB3
aGljaCBhbHNvIGZpeGVkIHRoZSBjcmFzaC4KCkFuIG9mZmljaWFsIGZvcm0gb2YgdGhpcyBjb21t
ZW50IHdvdWxkIGJlIFRlc3RlZC1ieTogPG5hbWU+IDxlbWFpbD4sIHdvdWxkIHlvdQphZ3JlZSB0
byBoYXZlIHRoaXMgYWRkZWQgPwoKTmljb2xhcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
