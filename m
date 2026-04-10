Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E03AF36BB8
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 06:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0WJn8ljdTXZsUhD66i//+Z8TT+Ydmmvm9/1duhTLHQ=; b=I4iJAvjuvROWNb
	C1GKxhIl6bYZAKzF9LppNYB3OeXLjsJQxGtzOQRkhb+mWkQ6hl3oEGu9gKQlqhd0guEkQV2/JxKBq
	TabIit4VWQQGM3TtpMg6WtqCcTpXX9LgTA0phG6006he7yGjsFSd9vFOkaen8jl1omeKI9NW1jVXT
	Igr7dU1DAWLlg9sts2yCksSdasz307226jtPzMByeaK4sM7+KlmgqGLJUMKGqV3+TsObe2bwY8oXG
	v0q+NjZ4Dk84+2EbSUpooyoVOcppUusu1J3B+veo0D8hS+LRZmhLSXATqHu0qVjpUq8rNoMIGal1q
	EsPX8JuU3tO51CV8WBww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB5KA-0000000BgKx-39AH;
	Fri, 10 Apr 2026 06:26:38 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB5K8-0000000BgJK-3bTt
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 06:26:37 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-6708cc2d6f6so284126a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 23:26:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775802394; cv=none;
        d=google.com; s=arc-20240605;
        b=Y8Ku24Sp60LYBZPy2GtiNqGUQcOYIm4w5+fokSAlSuuFhSYn38u6s8tVd/qFUNEFBz
         JsqYiKWOV+RIGLbXGZUUnX8lkxxWDzuPmWez2877BkCeJTKvtfASvl996ySvDkM71hoH
         GY+2dGH8ydFgSR81dvxMJ8dK5u2lpbZt89bfL3gDdalj5fkvFmzB9SDzl7ZWKeo65L09
         kOGrfQ3Uz1K3Y9YTcVWO9B0JV/zMuzqQbXMbX3qbMz4fut5n6MXCzqheBP//oFV6j8f9
         +EPgLSV76l1X0byPChUHj+dWAxrgdBWg2gFl9fDxWtVaOjieetl50OXTy1MrInY6pL97
         HJNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k6E6Sf2wjux48UXY2LuhatqglhNB6b4e2gWC39/mIIk=;
        fh=uSAotT7WGrr1XjFM9bN5oWeDHai+kRxQD9vAbYgRXjc=;
        b=F9aBAnuPst8GLsI8wwhvrd/wJn5jhwc+AqNju42PEWnZl4TJ7nDuQc+TC5aT7nObuO
         7WdRV+HS15lVe3OEEPHHdmyC86W5TPqPrQxIk9thuOUuNCbpAHe8n1PeP0UGXAiG6zoW
         cvToFPs+dnXhQ3dMF1jvc+2e93GyInuQNWKfZ3H/1XUZpiBBDN4eDTnzQBijBEU6e/p8
         kI0AO1ytaJ51f2HogfGHMNyuXYQt6U+AdJsm9pgKKeSQcYM45AIYveVWFwxmhMBmLwKu
         VkDitNCj1nNHj9g9uPHbM+v7copmjo+0t2nkdnZ6D0vkJyKmL00KNnFABfz63NZD01/5
         uxkw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775802394; x=1776407194; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k6E6Sf2wjux48UXY2LuhatqglhNB6b4e2gWC39/mIIk=;
        b=G/cxNHIq0sl83O2DmWC7oq2LxavZwiKaXuP6+3dW7JfmsPVkTV1gmrYlEnXDlX3Vrz
         j55Ei9zoeuYniPT//0mG2B+8pSGYfnWAIb5wDYo4Z3T6ct+5skHsCNpM1E8Ul/+gfA+f
         ez9WlFpmLgA+CbRZxM1gLYlwVaUsuQSOojTKGjKrnwABlBOZe0hdDmqeXETJtDQ6UIHr
         wFZElpfnzXvF3MAvVwOIWGeT5F3nnd+j6mM3jnPCHQitkRNUxBJLDvZZKC8uD7crEa1k
         MZwelw1jo+WPXkaMf1Je6IKSmyAi0LQlKPJxu4FSxfVS29MZbthBDVJpYyGT60O2D5vn
         ftDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775802394; x=1776407194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k6E6Sf2wjux48UXY2LuhatqglhNB6b4e2gWC39/mIIk=;
        b=CZ/3EoT6uwpcaG3PUwfZb1nwPoiIwCQerVYlXXvUQf7QvbPnBZvEoS7S1sbKycl5GM
         Sh2EP+5/zA6JKgKIF5uXb5HvpM4DQQ4obd/gSzeoUnyGvrzFT5mNALOeP6wa7CK6INEE
         lEily8gjhaS78khFN42o5ej9vCikLL8EjK1lXX3WMMzRb4cb4EBZvUEEy6Pt7QCrv6EV
         856qaNC3SAGJ62/DwfM4f6ophcxq9QRfhN/WVKMsfJi7a6EK5QmATcxjmo9vchjgcYES
         dMx1SwwTym4vJ3pXtRDxrfkpjVAulYK2vSpjWOc9A2h59D5dhG+oseqz8xpUU7FfKRfW
         /gSA==
X-Forwarded-Encrypted: i=1; AJvYcCV7y5gWYljhYxZcKnrZqNgB5m9bb5QWXt/xSggocli7gLmG194aHrANBbsQbiq/VK/BmeZlO/EG0PU8EJ9t8A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxlMTW9X4hMQ0066U/VvJTCUhcmrGlXVB2tDrV9ehz8gtMjc8K
	bxobKq6XPMwYhX1l3nLW6EbHbGRvDzAKFnc8x1+pHuWM8cIIy/yla8fL/oNzU81GsUNU8+fRRy8
	xCJBhiY3oDB3quu3Daazx5SCfFXAmb00=
X-Gm-Gg: AeBDieuhGZCNcA8GzwiClBRm2uRgSt8spYiPJlALdj8+vdNlHZ6JyHC92Yr6B5WxV9J
	j9KsjCpxvNLHszsN/5GxI+9fW5+5DPU+63+3WjqSGU0JEM7J6wW/Tmyxh6VvMzjdjGSql1zVms9
	wjukfI0JzmIViWL8ZHCUjE1KZyJX5cDoEZd+9ByPfhqTyPFu4Q7REOXaV/Bz984zvkvKWkGJvPc
	lKrsB+tTg2693XPX0cz7ovgb708mxkZYhwq6OTDfkKkVUzNThDWkHDEMAt/ExHBHc3OgWHtTS5g
	BTXABg==
X-Received: by 2002:a17:907:8b98:b0:b87:d09c:1825 with SMTP id
 a640c23a62f3a-b9d72792c0cmr109602066b.13.1775802394103; Thu, 09 Apr 2026
 23:26:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260409044939.7647-1-linux.amoon@gmail.com> <0ee54525-928e-a1ce-ec2d-1f85cf15abbc@rock-chips.com>
In-Reply-To: <0ee54525-928e-a1ce-ec2d-1f85cf15abbc@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 10 Apr 2026 11:56:17 +0530
X-Gm-Features: AQROBzCIL4-FKUNlkvast46wQIb2LKuGLtf3o67YP5zyFepCASgnCq98IhRcFwg
Message-ID: <CANAwSgSE5NxxKC7WVvisxB1GsNOoY3X8Ar3t2BCQzG0MrouXdA@mail.gmail.com>
Subject: Re: [PATCH v1] phy: rockchip-snps-pcie3:phy: Configure clkreq_n and
 PowerDown for all lanes
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, Niklas Cassel <cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_232636_906506_CC5D92D9 
X-CRM114-Status: GOOD (  15.78  )
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

SGkgU2hhd24sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzCgpPbiBGcmksIDEwIEFw
ciAyMDI2IGF0IDA2OjE2LCBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4gd3Jv
dGU6Cj4KPiBIaSBBbmFuZAo+Cj4g5ZyoIDIwMjYvMDQvMDkg5pif5pyf5ZubIDEyOjQ5LCBBbmFu
ZCBNb29uIOWGmemBkzoKPiA+IER1cmluZyB0aGUgcmszNTg4X3AzcGh5X2luaXQgc2VxdWVuY2Us
IHRoZSBkcml2ZXIgbm93IGV4cGxpY2l0bHkKPiA+IGNvbmZpZ3VyZXMgZWFjaCBsYW5lJ3MgQ09O
MCByZWdpc3RlciB0byBlbnN1cmUKPiA+IC0gUElQRSA0LjMgQ29tcGxpYW5jZTogY2xrcmVxX24g
KGJpdCA2KSBpcyBmb3JjZWQgbG93IChhc3NlcnRlZCkgdG8gbWVldAo+ID4gICAgc2lkZWJhbmQg
c2lnbmFsIHJlcXVpcmVtZW50cy4KPgo+IGNsa3JlcV9uIGlzIG5vdyBmb3JjZSBhc3NlcnRlZCB2
aWEgY29udHJvbGxlciBkcml2ZXIgaWYgc3VwcG9ydHNfY2xrcmVxCj4gaXMgbm90IHNldC4KPgo+
ID4gLSBBY3RpdmUgUG93ZXIgU3RhdGU6IFBvd2VyRG93blszOjBdIChiaXRzIDExOjgpIGlzIHNl
dCB0byBQMAo+ID4gICAgKE5vcm1hbCBPcGVyYXRpb25hbCBTdGF0ZSkgdG8gZW5zdXJlIHRoZSBQ
SFkgaXMgZnVsbHkgcG93ZXJlZCBhbmQgcmVhZHkKPiA+ICAgIGZvciBsaW5rIHRyYWluaW5nLgo+
ID4KPgo+IFAwIGlzIHRoZSBuYXR1cmUgc3RhdGUgd2hlbiBsaW5raW5nIHVwLiBJIGRvbid0IGtu
b3cgd2h5IGl0IHNob3VsZCBiZSBQMAo+IGJlZm9yZSB3ZSBldmVuIGRvbid0IGtub3cgd2hldGhl
ciB0aGUgZGV2aWNlIGlzIHByZXNlbnQuCj4KT2sgdW5kZXJzdG9vZC4gVGhpcyBzdGVwIHJlc2V0
cyB0aGUgbGFuZXMgdG8gdGhlaXIgZGVmYXVsdCBzdGF0ZSBmb3IKaW5pdGlhbGl6YXRpb24uCkni
gJlsbCBjb2xsZWN0IGFkZGl0aW9uYWwgaW5wdXQgYW5kIHZlcmlmeSBpZiBhbnkgY29uZmlndXJh
dGlvbnMgYXJlCnN0aWxsIG1pc3NpbmcuCgpUaGFua3MKLUFuYW5kCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
