Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3121C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 13:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7dXG2nW5v/4VpufxfJ3mdfgPgZq+Z+1rVjf16ojL5I=; b=r8AdOOz65DJ0PY
	cl5tVtVZpgnVZA+UkrHbGn9NZpS+440OW386mepddpkChxomMSwor5tiCNle1gqUccJn45Xfgb3cG
	8gXLxMwdnx/bn0A+0JSiALVJfuHE8VgA9BDJ3lZ6+1Yco+PHDO7DAcFzGk+ndzv7Pjvxpz0sP30oO
	mZ19nwKR/Ni/QXdzxV3XZZ0wGxF7S9pttk1+SGn5Ccabzd9UzhX/dn1wUcwgrS0U2pg22FnNVtatX
	Ro2oI54jJvXlyyJ05K/RZeCOMuW01Dq3YxEtBh2KbpM6XToprfJ7bDKF+yaqlD9yFLvQjP+BtqIM8
	pQwU00xalJ8nhZbBmWYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfkT-00CRNb-Fq; Mon, 28 Feb 2022 13:07:33 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfST-00CKSq-Bh
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 12:48:59 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id d3so12232278qvb.5
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 04:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=+8I/V7LMKeEgdjfech8pVN3rLVcrkyoXC3NkYpHqx50=;
 b=UzEaMg7JeXuUGaFUzjzNTjWqymgIKqaEVBGX/ytQjyMN6OC9OOJ0/nKWUdYq5uxvI3
 /dra9cjZKvXzgDUebBGOWC5W7Vex1+dDK2vfDgq6DQqBF0xV3OAaHLTrixCGbjpTrelZ
 oKZ4YLNuUVKHI8QeYETFk0iXjog6Qe7igxM3RkkXzBUgb0EBNE3mMMQlLlQIEemz/1up
 y2yUjx+uzFN2xwsKNATwGf4tXX+27dJGIKH1fBmD8Ml/FNURZakDjIMB+01PmrrJ9Nh8
 VkFceIVqIYMtP9KCjfKcXhhAJeXp9s+7UxbIONneuk+b62r95b0yzSskFZltmHazBbRR
 26aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=+8I/V7LMKeEgdjfech8pVN3rLVcrkyoXC3NkYpHqx50=;
 b=JXAlNm8xMN9Txm95ZosSntM8czdkECNl+BxSHE7u0EayoVVrHzi54UzMR39A6cGa12
 Xq8TvSzQuCdhgg71mqtjAM0WmLNc4X+FBaAjlDaoAFP0dZ1tJR9iIHGlfWHs6dOx/1Nl
 zaFCqBPWZv/YdyDZ3hkW+uWpsrLSES9al9nnUhEryHTG0JF6JnAZUGi8KLIxtuQ7LvNZ
 jfKqXgcE5PK+TpHJYvQ+HjRIhn6RI7dD989SigwzsqiMPWzlYY1e9XihXreT6iHRrICR
 +oSHkTzMhAmeA3tG0/BN1sLhMU4K9/0NVaxzfBraoToF4fcrOnYXmjG4vWY9qsHTc9f2
 e4rA==
X-Gm-Message-State: AOAM531RZxRQ1GUhcfEQACtu9yhURqumCKumpSx3e8pGHheVrNxzrIcd
 yWxNW4m5tOLJ9ThaOE9NjtwoTw==
X-Google-Smtp-Source: ABdhPJx3Zx++4poidmZxiaKiNp7huRBp+c07iQ/2xxhDNM88zR5W38PXzrrhlyBTtk2qm0T1kR/z9Q==
X-Received: by 2002:ac8:59c8:0:b0:2de:5f4:7e84 with SMTP id
 f8-20020ac859c8000000b002de05f47e84mr16487539qtf.97.1646052535083; 
 Mon, 28 Feb 2022 04:48:55 -0800 (PST)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 y24-20020a05620a09d800b00648c8ba03c1sm4906437qky.107.2022.02.28.04.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:48:54 -0800 (PST)
Message-ID: <1b2ce01fb04f29cca58d40bd81d9f4cc46dcebf8.camel@ndufresne.ca>
Subject: Re: [RFC PATCH 2/8] media: Add P010 format
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
 ezequiel@vanguardiasur.com.ar,  p.zabel@pengutronix.de
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org,  wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,  linux-sunxi@lists.linux.dev
Date: Mon, 28 Feb 2022 07:48:53 -0500
In-Reply-To: <20220227144926.3006585-3-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <20220227144926.3006585-3-jernej.skrabec@gmail.com>
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_044857_524477_5D95A996 
X-CRM114-Status: GOOD (  13.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

TGUgZGltYW5jaGUgMjcgZsOpdnJpZXIgMjAyMiDDoCAxNTo0OSArMDEwMCwgSmVybmVqIFNrcmFi
ZWMgYSDDqWNyaXTCoDoKPiBBZGQgUDAxMCBmb3JtYXQsIHdoaWNoIGlzIGNvbW1vbmx5IHVzZWQg
Zm9yIDEwLWJpdCB2aWRlb3MuCgpUaGVyZSBpcyBhIG11Y2ggbW9yZSBjb21wbGV0ZSBwYXRjaCB0
aGF0IHdhcyBzZW50IHByZXZpb3VzbHkgKHdpdGggZG9jdW1lbnRhdGlvbgphbmQgYWxsKToKCmh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8y
MDIxMDYxODEzMTUyNi41NjY3NjItNS1iZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tLwoK
cmVnYXJkcywKTmljb2xhcwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVy
bmVqLnNrcmFiZWNAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92
NGwyLWNvbW1vbi5jIHwgMiArKwo+ICBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3Rs
LmMgIHwgMSArCj4gIGluY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaCAgICAgICAgfCAxICsK
PiAgMyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jb21tb24uYyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1j
b3JlL3Y0bDItY29tbW9uLmMKPiBpbmRleCAxZGIwMDIwZTA4YzAuLjRlZGUzNjU0NmU5YyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWNvbW1vbi5jCj4gKysrIGIv
ZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jb21tb24uYwo+IEBAIC0yNzUsNiArMjc1LDgg
QEAgY29uc3Qgc3RydWN0IHY0bDJfZm9ybWF0X2luZm8gKnY0bDJfZm9ybWF0X2luZm8odTMyIGZv
cm1hdCkKPiAgCQl7IC5mb3JtYXQgPSBWNEwyX1BJWF9GTVRfWVVWNDIyUCwgLnBpeGVsX2VuYyA9
IFY0TDJfUElYRUxfRU5DX1lVViwgLm1lbV9wbGFuZXMgPSAxLCAuY29tcF9wbGFuZXMgPSAzLCAu
YnBwID0geyAxLCAxLCAxLCAwIH0sIC5oZGl2ID0gMiwgLnZkaXYgPSAxIH0sCj4gIAkJeyAuZm9y
bWF0ID0gVjRMMl9QSVhfRk1UX0dSRVksICAgIC5waXhlbF9lbmMgPSBWNEwyX1BJWEVMX0VOQ19Z
VVYsIC5tZW1fcGxhbmVzID0gMSwgLmNvbXBfcGxhbmVzID0gMSwgLmJwcCA9IHsgMSwgMCwgMCwg
MCB9LCAuaGRpdiA9IDEsIC52ZGl2ID0gMSB9LAo+ICAKPiArCQl7IC5mb3JtYXQgPSBWNEwyX1BJ
WF9GTVRfUDAxMCwgICAgLnBpeGVsX2VuYyA9IFY0TDJfUElYRUxfRU5DX1lVViwgLm1lbV9wbGFu
ZXMgPSAxLCAuY29tcF9wbGFuZXMgPSAyLCAuYnBwID0geyAyLCA0LCAwLCAwIH0sIC5oZGl2ID0g
MiwgLnZkaXYgPSAyIH0sCj4gKwo+ICAJCS8qIFRpbGVkIFlVViBmb3JtYXRzICovCj4gIAkJeyAu
Zm9ybWF0ID0gVjRMMl9QSVhfRk1UX05WMTJfNEw0LCAucGl4ZWxfZW5jID0gVjRMMl9QSVhFTF9F
TkNfWVVWLCAubWVtX3BsYW5lcyA9IDEsIC5jb21wX3BsYW5lcyA9IDIsIC5icHAgPSB7IDEsIDIs
IDAsIDAgfSwgLmhkaXYgPSAyLCAudmRpdiA9IDIgfSwKPiAgCQl7IC5mb3JtYXQgPSBWNEwyX1BJ
WF9GTVRfUDAxMF80TDQsIC5waXhlbF9lbmMgPSBWNEwyX1BJWEVMX0VOQ19ZVVYsIC5tZW1fcGxh
bmVzID0gMSwgLmNvbXBfcGxhbmVzID0gMiwgLmJwcCA9IHsgMiwgNCwgMCwgMCB9LCAuaGRpdiA9
IDIsIC52ZGl2ID0gMiB9LAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92
NGwyLWlvY3RsLmMgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMKPiBpbmRl
eCAwNDhmMzI2YzU3YjkuLmE4ZDk5OWUyM2U1YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlh
L3Y0bDItY29yZS92NGwyLWlvY3RsLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92
NGwyLWlvY3RsLmMKPiBAQCAtMTI5NSw2ICsxMjk1LDcgQEAgc3RhdGljIHZvaWQgdjRsX2ZpbGxf
Zm10ZGVzYyhzdHJ1Y3QgdjRsMl9mbXRkZXNjICpmbXQpCj4gIAljYXNlIFY0TDJfUElYX0ZNVF9N
NDIwOgkJZGVzY3IgPSAiWVVWIDQ6MjowIChNNDIwKSI7IGJyZWFrOwo+ICAJY2FzZSBWNEwyX1BJ
WF9GTVRfTlYxMjoJCWRlc2NyID0gIlkvQ2JDciA0OjI6MCI7IGJyZWFrOwo+ICAJY2FzZSBWNEwy
X1BJWF9GTVRfTlYyMToJCWRlc2NyID0gIlkvQ3JDYiA0OjI6MCI7IGJyZWFrOwo+ICsJY2FzZSBW
NEwyX1BJWF9GTVRfUDAxMDoJCWRlc2NyID0gIjEwLWJpdCBZL0NiQ3IgNDoyOjAiOyBicmVhazsK
PiAgCWNhc2UgVjRMMl9QSVhfRk1UX05WMTY6CQlkZXNjciA9ICJZL0NiQ3IgNDoyOjIiOyBicmVh
azsKPiAgCWNhc2UgVjRMMl9QSVhfRk1UX05WNjE6CQlkZXNjciA9ICJZL0NyQ2IgNDoyOjIiOyBi
cmVhazsKPiAgCWNhc2UgVjRMMl9QSVhfRk1UX05WMjQ6CQlkZXNjciA9ICJZL0NiQ3IgNDo0OjQi
OyBicmVhazsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oIGIv
aW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oCj4gaW5kZXggNzcyZGJhZGQxYTI0Li4yMTFi
YzExYTQ4Y2IgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oCj4g
KysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oCj4gQEAgLTU5Nyw2ICs1OTcsNyBA
QCBzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0IHsKPiAgLyogdHdvIHBsYW5lcyAtLSBvbmUgWSwgb25l
IENyICsgQ2IgaW50ZXJsZWF2ZWQgICovCj4gICNkZWZpbmUgVjRMMl9QSVhfRk1UX05WMTIgICAg
djRsMl9mb3VyY2MoJ04nLCAnVicsICcxJywgJzInKSAvKiAxMiAgWS9DYkNyIDQ6MjowICAqLwo+
ICAjZGVmaW5lIFY0TDJfUElYX0ZNVF9OVjIxICAgIHY0bDJfZm91cmNjKCdOJywgJ1YnLCAnMics
ICcxJykgLyogMTIgIFkvQ3JDYiA0OjI6MCAgKi8KPiArI2RlZmluZSBWNEwyX1BJWF9GTVRfUDAx
MCAgICB2NGwyX2ZvdXJjYygnUCcsICcwJywgJzEnLCAnMCcpIC8qIDI0ICBZL0NiQ3IgNDoyOjAg
MTAtYml0ICovCj4gICNkZWZpbmUgVjRMMl9QSVhfRk1UX05WMTYgICAgdjRsMl9mb3VyY2MoJ04n
LCAnVicsICcxJywgJzYnKSAvKiAxNiAgWS9DYkNyIDQ6MjoyICAqLwo+ICAjZGVmaW5lIFY0TDJf
UElYX0ZNVF9OVjYxICAgIHY0bDJfZm91cmNjKCdOJywgJ1YnLCAnNicsICcxJykgLyogMTYgIFkv
Q3JDYiA0OjI6MiAgKi8KPiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfTlYyNCAgICB2NGwyX2ZvdXJj
YygnTicsICdWJywgJzInLCAnNCcpIC8qIDI0ICBZL0NiQ3IgNDo0OjQgICovCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
