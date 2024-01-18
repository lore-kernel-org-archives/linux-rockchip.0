Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6194C47077
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 07:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETleyc1e5FfJ9t3hKo/dr3lNx4Xgg6wREH6m+tzgOQc=; b=TUIywPbmlDKROa
	8aIKzjZ7YK1bU7RVWthHjtfM6iOmMledc+resAyppzZt5QPQrRSrmC21zgr9V7DnxIIMM+JJkPcwn
	NKZq2M1/eGnpvqDCTAmqdt1pBogTrZOhlN1LrfQMKpdFPCdTsClvlhwVgdPyPNaECK6O5mhb8SJs7
	46BodgJtFeY/cu94NZYrlhcAUfFMfi7FN8c3qs1tPSiUnHvZ4I/69z6+c3G4irzZQ5rGO/SI1r5BC
	WhNb+1bia294F4roAxDfpcjfsu/uZ204I0wyKf4+dxcVDi5tFNGvVKkhQ0dTmej/hhlZhRx6iUdCi
	6NeQYGTwtKH9mBCf2jIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQMjx-001u55-2r;
	Thu, 18 Jan 2024 07:23:05 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQMju-001u3Y-2T
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jan 2024 07:23:04 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5ff7dd8d7ceso9078447b3.0
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jan 2024 23:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1705562581; x=1706167381; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5OGJ3RZb2owCakrXCOOUqKpoUQ2CDwiSsH9PsWMu5xQ=;
        b=lPxQaLevNpN3JoaV2O+dvdGjRznylFvCDE59N+VTeSj+E+TLvNcyGWk0fOT19Sf7nP
         OuMFTz42pLJY2cN1KuLaydD2sx+cCBPf5IARvo5LbSy9WPM4CqXmb6R8oZJjX8h1rEw3
         SJwEYGcWPGdCE7FSbALcerTp1lsgG5W92rl4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705562581; x=1706167381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5OGJ3RZb2owCakrXCOOUqKpoUQ2CDwiSsH9PsWMu5xQ=;
        b=OyLiE5zHKpCdVkEJNdUjTtl04ix/0Z/RQLEdr5JtbboqdMWlCq7AMEaSNhFNW6sIkJ
         H41yld2iJasKd9gOId+R0W+yZ4k8SqKt1W3IKyUD8/nyOzYgreR6/54rBCLwC1MrK/xt
         X5D8OnqfT9AUTt7N781iZK+swbnl0c7XJMmp6jQMsrr75N8/Oy6sjD/id77DYFRcTkIt
         f6L6aksgZ4x/Q192o6xWJI5Bot9ZQcweoHKHKyMMqRkiyJ1HgXB3gGN2TV+HDMwKv0g5
         fl7OtjXjAKkMclAtExJMQ+WPQRzlRmCouhwb8JYqjNd42h6VyT5RqMyYwfP8X2jaPWVY
         LUNg==
X-Gm-Message-State: AOJu0YwZTMW/7frcl63K5lrvibYcII7EJVyT/Qh/HDdmWLTNldUV6H/c
	uAwI3dPA193Boys//bie+7ijIMoMLifqxiyQ2S4QaMdLnhQRaH8NiMwu3tevT0mqsjJvoJRi/3F
	N/RvfwrVFLIn2c4YWkB3D4yjFUPWp5ha8j6+UxQ==
X-Google-Smtp-Source: AGHT+IEVUrIjlDIGGN+xZgjmIeQHFH8QXBvKV+NHjYDcUizhbk5WoqAQNvXkPuWz3wZNOO9aEnVoZM0EdCnNA0U23sk=
X-Received: by 2002:a81:4f94:0:b0:5f8:2ea0:ea2 with SMTP id
 d142-20020a814f94000000b005f82ea00ea2mr386140ywb.35.1705562580978; Wed, 17
 Jan 2024 23:23:00 -0800 (PST)
MIME-Version: 1.0
References: <CAMty3ZCq_d24p68fg1EfWCqmHyDVKZ54UgPDF09GVy0mh4ME=Q@mail.gmail.com>
 <61fa5f2f-1847-4831-a3f2-8acab93fb964@rock-chips.com>
In-Reply-To: <61fa5f2f-1847-4831-a3f2-8acab93fb964@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 18 Jan 2024 12:52:49 +0530
Message-ID: <CAMty3ZBAGLOyA_U99rHph_EoDEq8PuEJv04qonTp2hK1X8H5=Q@mail.gmail.com>
Subject: Re: Black and White Artifact on BMP (24BPP) logo during boot
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Anatolij Gustschin <agust@denx.de>, Simon Glass <sjg@chromium.org>, Andy Yan <andyshrk@163.com>, 
	Michael Nazzareno Trimarchi <michael@amarulasolutions.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Nikhil M Jain <n-jain1@ti.com>, Andre Przywara <andre.przywara@arm.com>, 
	U-Boot-Denx <u-boot@lists.denx.de>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_232302_817343_3C5E98D3 
X-CRM114-Status: UNSURE (   6.22  )
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

SGkgS2V2ZXIsCgpPbiBUaHUsIEphbiAxOCwgMjAyNCBhdCA5OjA54oCvQU0gS2V2ZXIgWWFuZyA8
a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBIaSBKYWdhbiwKPgo+ICAgICAg
SGF2ZSB5b3UgY2hlY2sgdGhlIG1lbW9yeSBhcmVhLCBkb2VzIGl0IG1heWJlIG92ZXJsYXAgd2l0
aCBvdGhlcgo+IGFyZWE/IGVnLiBoZWFwLCBzdGFjaywgbWFsbG9jIGFyZWEgYW5kIGV0Yy4KClN0
YXJ0IHdpdGggR0QgYWxsIG1lbW9yeSBtYXAgc2VlbXMgcHJvcGVyIGJlZm9yZSBhbmQgYWZ0ZXIg
cmVsb2NhdGlvbi4KSSBkaWQgbG9hZCBVLUJvb3QgcHJvcGVyIG9mIHJvY2tjaGlwIHdpdGggbWFp
bmxpbmUgYW5kIHZpY2UtdmVyc2EuIFRoZQppc3N1ZSBwZXJzaXN0cy4KCkphZ2FuLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
