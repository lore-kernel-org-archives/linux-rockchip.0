Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C62EE49A0
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 06:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FSib6XgGu9+7BwTogC5/ZfQV60B7i0E3AYH40sDfQo=; b=aq3eN5tv1u/VVd
	BAw6U6AcsDCOwIAIRUUug1/PEYwThMeuLUY8ovnNVoBhE7jQvhKCxpvZZCYkc6zbkjQVJeoW7Zy7R
	xqb5Izrs2XQI+ZpIu/qHSDrrUIkmS4dmuttCEFlt4rAAaIGNszjXjij46b/VTq3A3IAHlzRUuI+eM
	tcqtUZxBdBvnAVqZ9cQ8X1hUip58GjVF8FB2V6wkclp9sBP7FhVH3UO4d7eX1fy2KLNvjLjYZy5eB
	yF3WXnzNjinW7U4v6ZBXwqVWv/qwuik4WqW0G4tqsbzKl1yovzjmMliMZOR9VoNfozf/FNl2IfsN1
	Ss+F9ilmrLej4L8pGHTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYhmj-00HPzZ-1V;
	Wed, 23 Aug 2023 06:56:09 +0000
Received: from mail-vk1-xa36.google.com ([2607:f8b0:4864:20::a36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYhmd-00HPwz-1d
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Aug 2023 06:56:06 +0000
Received: by mail-vk1-xa36.google.com with SMTP id 71dfb90a1353d-48d14d11756so1099074e0c.2
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Aug 2023 23:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692773761; x=1693378561;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lB8ZbVq5sQ7DzHOBHLugPDAWi9TKXlIcXjvdJWhqI+A=;
        b=IClLffrpZcMu+6LKkWMb2iYMjsTjrkaUqrYA7WVBTBrZu8Rk9cEmTcQpNzwliaEYOs
         Fh9iUcv2UOIcNrn97Bt9kXa9oRjEbVR0W3uxBGa2NbMYqsgayR3isNmKww9L5bY2Y7HI
         RatRDyLvwjy/V+In9dVfKaPi6OaFcpK+NDakk0Nv89OnO9fYh5YklBNNKQABownwxaLy
         Vc/ih1L6v1WPG18V+1O9nhhKRxifefgFowtPdN/aKz/n20BVZNJSUY38+FJAGH0gEmZp
         idlDOcjuIoF4kaalYRzuLi6zFQOZYQjBzp9E75g8QeWRgjkGt3ZOSHq/LO3lLUIy5rai
         33EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692773761; x=1693378561;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lB8ZbVq5sQ7DzHOBHLugPDAWi9TKXlIcXjvdJWhqI+A=;
        b=jIjsn9YN8CaxZuON2gd/hawhRspmZNRGkaSJiWe/vhMiI4gvkPfAJl0qr618FZZDEK
         6NjpDsVORJWKYPJ8saGLOJyVQvYXhqny7DXKJ4sy95hjlNqPV2mS9pK4ZvpRClJrc2ni
         C608Xjrl4h+usN0NckjogTPAuDKgUMPQWNfuAKxzAcnhzyB3XOc+QAJBAv3LvUUYzkjZ
         5m0hfCW+GzdOe6QUlfjh587XBdHjKENrmfstUJj1obc1HMlwEHapo43rG1Rr5F1OQgnL
         Vd1RsM6H66lUkDcO0VYvHP+ztnqXLgW6u0tbmZqZRgPFqZisDoUlEK0hCRO+EOmVB0bo
         6lew==
X-Gm-Message-State: AOJu0YxKaNVApfM4W4dxpkyQwec484sNQvPBnnGYtDeoetiNOQq4x1Jo
	DIPi6DVvgL8FxqQpDTSQjVuVh6dc7bwhRYUWCkxDcw==
X-Google-Smtp-Source: AGHT+IEwjcDx1d3S7SNyrAkvaRo8eUvQkQP4M2xlywseolmmO9jwKjqIKIoGVYIjaFiR0hfjVai9PSjnU42jN3gPoW4=
X-Received: by 2002:a1f:e2c2:0:b0:48d:13e5:1376 with SMTP id
 z185-20020a1fe2c2000000b0048d13e51376mr7597851vkg.10.1692773760791; Tue, 22
 Aug 2023 23:56:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230822131237.1022815-1-lizetao1@huawei.com> <20230822131237.1022815-25-lizetao1@huawei.com>
In-Reply-To: <20230822131237.1022815-25-lizetao1@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Aug 2023 08:55:49 +0200
Message-ID: <CACRpkdY1Q0U6Yh69hW6FYJbDf7a94=UnwinuKaUnz6aqOaWaLA@mail.gmail.com>
Subject: Re: [PATCH -next 24/25] spi: spl022: Use helper function devm_clk_get_enabled()
To: Li Zetao <lizetao1@huawei.com>
Cc: broonie@kernel.org, chin-ting_kuo@aspeedtech.com, clg@kaod.org, 
	joel@jms.id.au, andrew@aj.id.au, florian.fainelli@broadcom.com, 
	rjui@broadcom.com, sbranden@broadcom.com, 
	bcm-kernel-feedback-list@broadcom.com, fancer.lancer@gmail.com, 
	olteanv@gmail.com, neil.armstrong@linaro.org, khilman@baylibre.com, 
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, 
	conor.dooley@microchip.com, daire.mcnamara@microchip.com, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	avifishman70@gmail.com, tmaimon77@gmail.com, tali.perry1@gmail.com, 
	venture@google.com, yuenn@google.com, benjaminfair@google.com, 
	heiko@sntech.de, linux-spi@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
	openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_235603_551756_EDB58C83 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlLCBBdWcgMjIsIDIwMjMgYXQgMzoxM+KAr1BNIExpIFpldGFvIDxsaXpldGFvMUBodWF3
ZWkuY29tPiB3cm90ZToKCj4gU2luY2UgY29tbWl0IDdlZjk2NTFlOTc5MiAoImNsazogUHJvdmlk
ZSBuZXcgZGV2bV9jbGsgaGVscGVycyBmb3IgcHJlcGFyZWQKPiBhbmQgZW5hYmxlZCBjbG9ja3Mi
KSwgZGV2bV9jbGtfZ2V0KCkgYW5kIGNsa19wcmVwYXJlX2VuYWJsZSgpIGNhbiBub3cgYmUKPiBy
ZXBsYWNlZCBieSBkZXZtX2Nsa19nZXRfZW5hYmxlZCgpIHdoZW4gZHJpdmVyIGVuYWJsZXMgKGFu
ZCBwb3NzaWJseQo+IHByZXBhcmVzKSB0aGUgY2xvY2tzIGZvciB0aGUgd2hvbGUgbGlmZXRpbWUg
b2YgdGhlIGRldmljZS4gTW9yZW92ZXIsIGl0IGlzCj4gbm8gbG9uZ2VyIG5lY2Vzc2FyeSB0byB1
bnByZXBhcmUgYW5kIGRpc2FibGUgdGhlIGNsb2NrcyBleHBsaWNpdGx5Lgo+IE1vcmVvdmVyLCB0
aGUgbGFiZWwgImVycl9ub19jbGtfZW4iIGlzIG5vIHVzZWQsIGRyb3AgaXQgZm9yIGNsZWFuIGNv
ZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBMaSBaZXRhbyA8bGl6ZXRhbzFAaHVhd2VpLmNvbT4KClJl
dmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3Vy
cywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
