Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F1EC52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 02:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LU/TfRZB8RYYwbbH5caeC+dWf2mBjvNkOrjiKFRBJ1s=; b=sqQsDeJJGpa4WQ
	KpX0m25lv2sJZ2yJ5IJf2MRbps3gJxC5rGDVgneViIeMAce62I3eQw29aykPbPUCz6cs1cYSJfKJj
	LWUtMTGyLs6MTkIbQ7Uc1BRqfOResEQjNFywxE+e0nGQS49QAc3qEGW+H+FM8X1aNuyLcIRqO2xU6
	kvxH5KmZURvCzByo0JdwFOvivNHQsLS+hwdUxbeNTBwYovvqdSe051rw6VUSxFz6I3ZSAmMi8bZOY
	oDxT4lUCMJZ4FKULx5IlOzEpMzIY7hfUDZSG0DRS6+LUbOJxwltDTVE20nT6IxMI06JPJaI4gCi5k
	leiAvpzqj+6DBJmJh7TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfrtS-000000006ZD-041u;
	Mon, 19 Aug 2024 02:13:14 +0000
Received: from mail-vk1-xa2e.google.com ([2607:f8b0:4864:20::a2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfrtP-000000006Yg-3etu;
	Mon, 19 Aug 2024 02:13:13 +0000
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-4f6d01961a7so1277870e0c.2;
        Sun, 18 Aug 2024 19:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724033590; x=1724638390; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tr4OmP8xGGsL/1Gww/d2oUqKmeZvZ5Qj0+OKcgxTVv0=;
        b=Wu8i+vdFHGCeiqRFU0mh2OQkP7vh0CEWvgop4lxpRtrxaPiidBcaa7DN1LE2KSiPTJ
         gxaKHDe3A4zapzVeSsrgOGRIaYI0WbFrd+vMr3b81y5q4M1D8VC9HPd8YxHKabzMpPbc
         0B355EzpZREeTjT7mO6r6UJMJuDx12OBDgkCc7spqtnydOICIAt1Gw+RkyV2hlxk4QD+
         HVbIlnnU4tmRrZ/C1cXSrQcoCBBhaN6BYsLqtg0Dk3njqNODTMpvUgrTjra8Cm+Kz5ga
         uequ3PzswBFaV6X4sNObPimNVhnKozzr1CFm6UeDmb2c0/mSg1LO3yIvdZO3HpO2/vKz
         6ZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724033590; x=1724638390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tr4OmP8xGGsL/1Gww/d2oUqKmeZvZ5Qj0+OKcgxTVv0=;
        b=dEmtfcNoRztWHtS/lRt0hbVcLyaPIIBpcjgNPV7E6NVs+NpoqfsDHbSNNHGjYOjFCj
         5E1fQmV/8EU9Ie9NemL/apUPD2MYLQW7+P0/gGSDbpwpdYXfxRNCKBXADNXc1L8II0qF
         xngNytSxRkn4oNlvifH/ilKa6S9NcozYXViaymGx959cgoPPkmrNKL4hTjJvQv6Vvm+K
         JrHLLQMmYXA6i1GGuqTSQmPRvMInuy+2JWNIsuTrHJV9HGRoPLISDruj8Q6lwRsQ4gJ3
         +Oa2vzFiVm0oi5BS9I6BaGe4JCII2Zifgy6Dvh0LoeW1fRaf2fddIgZyMZHKjlGwm2ve
         cfPA==
X-Gm-Message-State: AOJu0YypXtzwwTwaQ9NKzUYQ0q+KNtotvwS4NoHkV8NDS2B1ZFXfokg8
	OD2LmIWlC4xl1W7gQyiJi/MA/Keqct0CoJkfBOLgMJSG8ltc/RzwFD5h4Wl0vzgJGPG77ZCBiAg
	hq641P/RXRExmGfiIjyQZM7yMh3ZLy8ue
X-Google-Smtp-Source: AGHT+IGXzFITY/wGSHK7MzDwixkGnmeiR+eN9HqKUVlrIOI1KSiPZpowvJviUYAZ60XEPwq8T9vGUFKP4SA+cu9ddnw=
X-Received: by 2002:a05:6122:a0e:b0:4f3:207a:c664 with SMTP id
 71dfb90a1353d-4fc84bd0a9bmr6940618e0c.14.1724033590145; Sun, 18 Aug 2024
 19:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
In-Reply-To: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 19 Aug 2024 04:12:58 +0200
Message-ID: <CAAMcf8DZu4B2AN+=8xP3wuknqUtD-e-v+Ej31=08ibPfyL+dGw@mail.gmail.com>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-spi@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_191311_934101_A9123043 
X-CRM114-Status: GOOD (  14.57  )
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

T24gU3VuLCBBdWcgMTgsIDIwMjQgYXQgODoxM+KAr1BNIFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNi
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPiBpIGFtIGEgdXNlciBvZiB0aGUgQ09ORklHX1NQ
SV9TUElERVYgZGV2aWNlLgo+IEl0IHN0b3BwZWQgd29ya2luZyBiZXR3ZWVuIDYuOCBhbmQgNi4x
MC41Lgo+IFRoZSBTUEkgYnVzIGl0c2VsZiByZXBvcnRzIG5vIGVycm9ycyB0byB1c2Vyc3BhY2Us
IGJ1dCBubyBkZXZpY2VzCj4gYXBwZWFyIGNvbm5lY3RlZCB0byB0aGUgYnVzLgo+IFRoZSBwbGF0
Zm9ybSB1c2VkIGlzIFJLMzMyOC4KPiBUaGUgb25seSBzcGktcmVsYXRlZCBtZXNzYWdlIGluIGRt
ZXNnIGlzOgo+IHJvY2tjaGlwLXNwaSBmZjE5MDAwMC5zcGk6IFJ1bnRpbWUgUE0gdXNhZ2UgY291
bnQgdW5kZXJmbG93IQo+Cj4gUGxlYXNlLCBjYW4gc29tZWJvZHkgcmV2aWV3IHRoaXMgaXNzdWU/
Cj4KPiBSZWdhcmRzLAo+ICAgVmljZW50ZS4KCkkndmUgdHJpZWQgdG8gYmlzZWN0LCBidXQgdGhl
cmUgaXMgc29tZSBzdHJhbmdlIGJlaGF2aW91cjoKVGhlIG1lc3NhZ2UgIlJ1bnRpbWUgUE0gdXNh
Z2UgY291bnQgdW5kZXJmbG93ISIgY2FuIGFsc28gYXBwZWFyIG9uIGEKZ29vZCBrZXJuZWwuCklu
IG9yZGVyIHRvIGhhdmUgYSByZWFzb2JsZSBpdGVyYXRpb24gc3BlZWQsIGkgYW0gdXBkYXRpbmcg
dGhlIGtlcm5lbCB2aWEga2V4ZWMuCklmIGEgZ29vZCBrZXJuZWwgKDYuNi4zMCkgaXMgY29sZC1i
b290ZWQsIHRoZW4sIGFsbCB0aGUga2VybmVscwprZXhlYydkIGZyb20gaXQgd29yayB0b28uCklm
IGEgYmFkIGtlcm5lbCAoNi4xMC41KSBpcyBjb2xkLWJvb3RlZCwgdGhlbiBhIDYuNi4zMCBpcyBr
ZXhlYydkIGFuZAp0aGVuIHRoZSBzYW1lIDYuMTAuNSBpcyBrZXhlYydkIGl0IGJlY29tZXMgYSBn
b29kIG9uZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
