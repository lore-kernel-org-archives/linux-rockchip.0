Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C4EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 20:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZD8deuDFrSUQSZvCa9GKC6xnj4gLjXXva3gGVzwUnv8=; b=Ld84LmaEKjKOAE
	CCn5Ct7BOyZs8chhNamsgpDd3zDBXULEC/pEw3Ehqx9anMg7tV9G7UrmUE/1G/8FKTF97SjvFVSHt
	/Q8JmCtE+0AsILY/KtcUQiMBmF7J7BCEeVJ1KO5gWIFsVz4nkeYpBd5r7G00yZYCZtQGH0L5wP4d4
	StV5tgaX1fBhcJQzNw0IuAf3P9GcYZxza/0mTHTpkOEnBlSTWa79avlZrQiAmKQeUJqlq6bJ/Pfu/
	8AbJSjgS3D0VO6eJ4EmnPt0MpDi7QMIbJYNqH7lGd1wqnnjlX6cmNvd1gLBlE0PZmqJLyDojmsiLv
	+olEnItnv0x4AZD0IBvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nakDP-00A05c-6G; Sat, 02 Apr 2022 20:19:19 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nakDF-00A02J-Sk
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 20:19:11 +0000
Received: by mail-wr1-x42d.google.com with SMTP id q19so1890928wrc.6
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 13:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=efzOv4dIr4tgBETsjp5OsgnPN6Aum/KcEtDZ5+WY/5s=;
 b=NWCjcZfwqzrcjp5G5OuxNnq/23Iby1ljMuBql2dbBOBMNfS6NzDqEVqTbC0EETLXxw
 9U9H72AWN9sdKdf4Ds5vMKB0jy7J8JqOVB8NWX6zyWmv1ZNy9P71C9heOmKCvJhSX9sB
 rJhUI5CgZwfD5XZxm7gS9hELr3qWF9wY3KHePW5cvO9ismWLhNC+9vbjVaawNAWYHt3E
 t1OtmWsPSjuP1X4If5aUxoxG3bxQBBSDeMfnljMbpCyH/JvOStbnsesYxBL1Tg+gVmPi
 r7ZDAFCaXKIaNjkgnKj9OOtz03dpR6cthm3YvqSBnJZ+8bELz8fvkBGlhVL8ViSPc9RW
 6wFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=efzOv4dIr4tgBETsjp5OsgnPN6Aum/KcEtDZ5+WY/5s=;
 b=dwcu6Lf0ymQyXD7lfb2x3CCS59wUHfNQDQmpdbvsfv7MGRyD1rjAb3Sa2F5MMD+ewY
 0+MD9wehEg/hPs8mdZlPYrRZ5vzkBRO+EoCCUntgmGy3zDCLJnJhba22w7s7xRN2FAHz
 4kjv++4rZYaHpjtpYeVdC3S72qqOnrz71ArXM3XpOJd71IiirCEMweDH48qy3IQVKSnL
 whEfOSnW53JHP9s8bXhuMIC0/yKs1QhU4A8+nS1Ze+9yOxvK+0KbHcOW3BgS5x0L3UyC
 btjxLXJUmWjxIRDPL6YLNUlHuEAqmXk4poz0tKRS9VBtIN3XjOEvtGFonSfAIa1vExm3
 fzLw==
X-Gm-Message-State: AOAM5312xjZEh1dlULL/gafFcN5RpJJQgZmjwXzCx1f4pAoqm5xy5Jdq
 cQAefyqMHLtQBIf0FcoouM+tLA==
X-Google-Smtp-Source: ABdhPJwwADkU22Qt/uwzkEAdoHaiz77EIhH44oK6ZYfgfzgGV14uHRVicGD7jKPWsdyDYtAt/fb4Sg==
X-Received: by 2002:a5d:58d9:0:b0:203:fc5c:ba87 with SMTP id
 o25-20020a5d58d9000000b00203fc5cba87mr11845270wrf.79.1648930746405; 
 Sat, 02 Apr 2022 13:19:06 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 2-20020a056000154200b00203ee1fd1desm5810812wry.64.2022.04.02.13.19.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 13:19:05 -0700 (PDT)
Message-ID: <793a88b8-148e-c9a0-3c21-4f15380e1085@linaro.org>
Date: Sat, 2 Apr 2022 22:19:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 28/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Content-Language: en-US
To: LABBE Corentin <clabbe@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-29-clabbe@baylibre.com>
 <30305936-4b69-e1ce-44c2-0d1d113b460e@linaro.org> <Ykitm1uLmQtNy3b2@Red>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Ykitm1uLmQtNy3b2@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_131909_953964_6635572B 
X-CRM114-Status: GOOD (  10.11  )
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

T24gMDIvMDQvMjAyMiAyMjoxMCwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgU2F0LCBBcHIg
MDIsIDIwMjIgYXQgMDE6NTM6NThQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSBhIMOpY3Jp
dCA6Cj4+IE9uIDAxLzA0LzIwMjIgMjI6MTcsIENvcmVudGluIExhYmJlIHdyb3RlOgo+Pj4gVGhl
IGxhdGVzdCBhZGRpdGlvbiB0byB0aGUgcm9ja2NoaXAgY3J5cHRvIGRyaXZlciBuZWVkIHRvIHVw
ZGF0ZSB0aGUKPj4+IGRyaXZlciBiaW5kaW5ncy4KPj4+Cgo+Pj4gIAo+Pj4gICAgcmVzZXQtbmFt
ZXM6Cj4+PiAtICAgIG1heEl0ZW1zOiAxCj4+PiArICAgIGRlcHJlY2F0ZWQ6IHRydWUKPj4KPj4g
V2h5IHJlc2V0LW5hbWVzIGFyZSBiZWluZyBkZXByZWNhdGVkPyBEaWQgd2UgdGFsayBhYm91dCB0
aGlzPwo+Pgo+IAo+IFNpbmNlIEkgdXNlIHRoZSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0
X2V4Y2x1c2l2ZSwgdGhlcmUgaXMgbm8gbmVlZCB0byBoYXZlIHJlc2V0LW5hbWVzLgoKVGhlIHJl
c2V0LW5hbWVzIGFyZSBub3Qgb25seSBmb3IgTGludXggZHJpdmVyLiBJbiBhbnkgY2FzZSwgTGlu
dXggZHJpdmVyCmNvdWxkIGdldCBhbHdheXMgcmVzZXQvY2xvY2svZ3BpbyBieSBpbmRleCwgbm90
IGJ5IG5hbWUuCgpBZGRpdGlvbmFsbHksIHRoZXJlIGNhbiBiZSBkaWZmZXJlbnQgaW1wbGVtZW50
YXRpb24gaW4gZGlmZmVyZW50CnN5c3RlbS91c2VyIG9mIGJpbmRpbmdzLgoKVGhlcmVmb3JlIHRo
ZSBkcml2ZXIgaW1wbGVtZW50YXRpb24gZG9lcyBub3QgbWF0dGVyIChvciBtYXR0ZXJzIGxpdHRs
ZSkKZm9yIHRoZSBiaW5kaW5ncywgc28gZm9yIG11bHRpIGVudHJpZXMgdGhlIHJlc2V0LW5hbWVz
IGFyZSBuZWVkZWQuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
