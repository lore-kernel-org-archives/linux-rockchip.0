Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D500CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 17:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ChszmCN6iay6hX/5pYIJlHwp/myZ/ux8Q5fwTJwP4Ks=; b=4hCTxE6Za8MP8bvpPVuSewFhq7
	+CeIJz1p+k/uwjhunw1G1DUa0IWTqqEZ6EjJoFkb9Bn0vgzA3KtYCswscO9rH5zLts7j4slQr3Q10
	TVLXYxr1QIw0KABQ9tCkrk9YcVuBXfqhyYGlfla51HX2GprwPX6hCd/hiFhX22spPZ6EfqPfOTDug
	dZ7tCVuW957IXKHmU6ERbXQ3he/PyflB8SAVa21atCVjJQTRsUMZB0rbzQNZ9DMBnMkGZHxttAaDA
	syYaprK+Ri8kGf7df7bOnKstpc6iSm4i8PBf3V5fF94aVvDKD2Lt+/SweXnq8cSm/JAK1AGhBVoB7
	fq0rJZoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD4Ko-0000000CZN5-19CH;
	Sun, 26 Oct 2025 17:15:14 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD4Kk-0000000CZM9-48h1
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 17:15:12 +0000
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-b6d2f5c0e8eso786914466b.3
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Oct 2025 10:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761498909; x=1762103709; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Da7n/lRyiS06YbMDRGJe/PhIKNbj4s3MR8oTEu6nwl4=;
        b=dJA5ZydhJmIuXVTVwhGXRkRyaRnVQoUxOoA1mHFaCOq/BHKrxk98FaEAQt3+g/J3g+
         gCwqzgWQLX8Ca1f0dkHCxTQFljaQ2cqWF7FoZ9xQmbA89g6qfa5JRp6ZTr6qLmqdBeQA
         Ecc+LFJjEj2boYWv2Nual1ph2U0/FKYuNr8+KAKkkciSmLTs3SU+VZ2iOw7gjrEhZ/RG
         C/NUO+AIfuPey70pAS9KqJPxSKj1lhbbGpSTBEq1IjnZuEjJ0soXyAAGLlS863PvntSv
         lqMxo1m0tkqcrhyV4BA32+cWyOS8F+g4GtD5vJnzkUltnDuvj+CpC/ERcx2m9MAS34iE
         ldnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761498909; x=1762103709;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Da7n/lRyiS06YbMDRGJe/PhIKNbj4s3MR8oTEu6nwl4=;
        b=l4nJubsx0QExjgHb7Vudd9HO7e5pNzpmrIBMWDANzuHLRrnj/6RqcXnHulCtMjBKaF
         CFQ8SBKH7wxtIt4beW2aPivw6UCZgLR/FNWpJvSW2/jSx2XEPuqYd1lKwxaVqD7OoFoP
         ZUjveIMC5iEWfPCmu7W6rVW7JGkiW69EMFLk5+0RHPOC5KapxOh1ZKIvQYcU7cO/Zmc6
         aka0yAMhWEreU49RrrVYmVW85IRsbvnW3OYNNdFbvSJ3gdEZViTJxVsHh26AN1xuXYkO
         PosmhVJNuEY8QgNgK9Iihg3ZWNKep10ceuOTbTInIhQ/7AxJaz8RlaU3TgZDBYJrDZ+N
         AZ8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVOCRFyz+V93jkCEYB7sXakId90Et0No+PAktQWlI8+SqCJI+pZVaWNmXC8Gq5iAcWiGV4sQ7nK0gcwB3WBuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyddhJTPazReCXxMQZT3c1VnUXa43PvGX0ca7CflHZZ6fAppsNv
	DV5AYcXVCpLxNpj6W03gAQgYXxqm5hDD6lF8TI04cVknpCUS8vTvIBULqzDX0F2JO3VGgFuOYaT
	Bq1dWOyWm4JyL3OIsGb5eSAs/XdxBjqo=
X-Gm-Gg: ASbGncusxWPxiRJH/MkggXc8sFSWOWMuI3T1BNzfNmsHw0AkckNo7aeeJez9XK5Ym/j
	SfvdQha+PWlWqOeLXpFwr6p7KZe0FGLYBJzC9tkgK3b97l9NDnZ3nOlD9eaknCBpTlVoD+7pBcm
	43wEKxjHUL7OcR79AMP0vO1ANjE8G7dgs6WzlUX3o2dLPvyhZ9qVLO6loBAhMOiIioDeDgoqajV
	+Md9aYj9XZKmiTzkijR7w2lg//UnYMJa2O0t8UyB52iVWcFPvfMg2gQyewYYvh06+L12nXnOQ==
X-Google-Smtp-Source: AGHT+IFzqU3QsaPE1MW2duZ8/dKVM5Mj7D0icnFlvp/4DYRo9NMCY1YBcoIDI7zlJrtuI8cbSwsY9j7dHSYnlbDke2o=
X-Received: by 2002:a17:907:1c81:b0:b6c:8e24:21f with SMTP id
 a640c23a62f3a-b6d51c325c6mr1741819066b.55.1761498908937; Sun, 26 Oct 2025
 10:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <20251026150358.1078453-1-coiaprant@gmail.com>
In-Reply-To: <20251026150358.1078453-1-coiaprant@gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 27 Oct 2025 01:14:56 +0800
X-Gm-Features: AWmQ_bnvhjvqwSYSkZyszEhUHRG058LD6n9gayksgoabyqflquBOY2fvBCiBW_0
Message-ID: <CALj3r0jVPGtVtHUwxmxjePkj4T3jZD5JUHfJL6xa6h8CAKHRzw@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add NineTripod
To: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_101511_045105_5E837F29 
X-CRM114-Status: GOOD (  11.54  )
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

U29ycnksIHYyL3YzIGNhdXNlcyBjb21waWxhdGlvbiBlcnJvcnMsIHdoaWNoIGFybWJpYW4ncyBi
dWlsZCBzeXN0ZW0KYXV0b21hdGljYWxseSBpZ25vcmVzLgoKdjQgaGFzIGZpeGVkIHRoZSBidWls
ZCBmYWlsdXJlIGlzc3VlLgoKOigKCi0tLQoKSSdtIG5ldyBoZXJlCgpPTUcsIEdtYWlsIEFuZHJv
aWQgY2Fubm90IHNlbmQgYXMgcGxhaW50ZXh0IG1vZGUgOigKCihSZXNlbmRpbmcgd2l0aCBjb3Jy
ZWN0ZWQgQ2MgbGlzdCBhbmQgcGxhaW50ZXh0IG1vZGUsIHNvcnJ5IGZvciB0aGUgbm9pc2UuKQoK
Q29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4g5LqOMjAyNeW5tDEw5pyIMjbml6Xlkajm
l6UgMjM6MDTlhpnpgZPvvJoKPgo+IEFkZCBOaW5lVHJpcG9kIHRvIHRoZSB2ZW5kb3IgcHJlZml4
ZXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+
IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVz
LnlhbWwgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVz
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVz
LnlhbWwKPiBpbmRleCBmMWQxODgyMDAuLjM3Njg3NzM3ZSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBA
QCAtMTEyNCw2ICsxMTI0LDggQEAgcGF0dGVyblByb3BlcnRpZXM6Cj4gICAgICBkZXNjcmlwdGlv
bjogTmF0aW9uYWwgSW5zdHJ1bWVudHMKPiAgICAiXm5pY2VyYSwuKiI6Cj4gICAgICBkZXNjcmlw
dGlvbjogTmlwcG9uIENlcmFtaWMgQ28uLCBMdGQuCj4gKyAgIl5uaW5ldHJpcG9kLC4qIjoKPiAr
ICAgIGRlc2NyaXB0aW9uOiBTaGVuemhlbiA5VHJpcG9kIElubm92YXRpb24gYW5kIERldmVsb3Bt
ZW50IENPLiwgTFRELgo+ICAgICJebmludGVuZG8sLioiOgo+ICAgICAgZGVzY3JpcHRpb246IE5p
bnRlbmRvCj4gICAgIl5ubHQsLioiOgo+IC0tCj4gMi40Ny4zCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
