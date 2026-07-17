Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E748C44515
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4yzsi+RNlCcMkKLi45HbpDQ/WSTCwZivcTW+5iqTs0=; b=lDvU+iVH+9W1gt
	y2SP8bleN6LCA1frhhcPcpwHaKxyRYQ7nvKT26h2eXhEejeP+Q0ksGnPm8WSnb/R63Agmb9NXea1C
	VTv4UOMsjQaGPiEmMSJgSzlgVctCCzoR1BaLf2mG0fdVkqT0ygNEFlpMT9jn9stIz2SF1ROU0rogT
	zmMdaPbRHhQUxR2PLzr5pcpqcv7gzQeUytabaDGp7HZRWSuz6EUoWTC0wEBTU5LZVGq1YGesJABO7
	PUC/+FLIkcyjB5z38YUMYMhtfS49/r+JLarG3F8ls8aK0eNgB1tdyd2AKeFZ/mu/BWLSyQbWRGuBB
	E32Vd05mDZl+0Y72Iv3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkkmg-00000002eNi-1OuE;
	Fri, 17 Jul 2026 15:47:30 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkkmd-00000002eMy-29t8
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 15:47:28 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4954c9f380bso3843135e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jul 2026 08:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784303246; x=1784908046; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8cxfayQFlNnwIQkxkgk362Uhlt0jtcBW5Ai1XuO+SqU=;
        b=mWeKBHj8Te15Z4oSUungF3gWSvPfE2iqh7v/nccJC0KHQmtFU44xys8E0mXk5PAodG
         5F/6G9udsYc4tIkzGGA2GmRywb+fyb+jQ4BMSNVO9kA1uIGGrZo6xRFc9JqKnBLHltuY
         wNhRbA2NoDVClhfly1y47gZ8rkPpNBWYcSSWiWJVR2TlmqR5bBe1/48d7slRq4hAVVx2
         zSG6pEQnRmOqdsmiyAZMed5OUJzsKOHKU4x2pr6byAf4IBUC3uCkaj46QDfo/4ApaPba
         nfM6Exg5t28PIsrHs205lC+TBgX16vo70z9CSDQQ7ojp88TYLriPKqRRkEGqMfUoEcc9
         m/GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784303246; x=1784908046;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8cxfayQFlNnwIQkxkgk362Uhlt0jtcBW5Ai1XuO+SqU=;
        b=AEbmOeVSGuJIsdIeNCyUSNIIIVZOvUYF0vpDVURPxU3RHm/JmZ1vm7vUNV/5IEYGj4
         b7TqwgMSQp5oMZ6H4l/YESOflLqmubQsUC5IstENBXtiNebmrjexLvej97ovuxyVKCyB
         Mn6+L9ZDnX/CJpUbmugUTWcYqlXSbRPwiq2K2Na7VHYVuIP7+gV0DmADWImqzhxP3duH
         wM2LLSJhw1Krv0271bnmu8KZ2RIRwiV/LsM8yUV6m/ZNSCB1RA0TZMjlpw6mly1AOEuv
         7oabKUr+VG8lDfokB3WrGI2FidiFIL8rPcGdpaM0Jql1AyC5DP98ByeLK7j2QwZl1hlD
         kiBg==
X-Forwarded-Encrypted: i=1; AHgh+RrJyQWRC4Q+IK5Xf6q3gQcP8Ief0r1PlAzIOEkbGzZWOaiUuyxZZN0/ym1IHfbYdsZaOmgUvBCpjYJsyrStwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFnOD/pPhZkLgYzHoqDzUM+QJ/K0ldUw6bXiwZ0HvVhV1UBIRy
	mckCJ5qQ0vKOoNiYfq/6evLq9wkAHx4jsiMN88JIFaFijpK/eOKCrIA=
X-Gm-Gg: AfdE7cnuquIk/h6UGU20NHLI4TbuXF2alcgvUkBz1YODCDNwYr8Xj6pOg7/IfV8RIVU
	kmCj46JdtbYdzIZTiZFFWeeHugzagXuVX/BSdee7GQt08mmhXjZUbFfjjs+hwiBNrWZv3tv3IqJ
	n9wIyeuv64z6oPYHdVeXBG+RXYNvn/onJ6CCB/KbL0b+n4H3p2Wf6a63hBRhHcc/jD1NNtGx+UG
	EOds05ITKuOtAmQ8UXvFUyu+L8cJywA37lEjHlgXcvlrfPdivbjKnDXaD79/91ddXujToCrkqVT
	kw7gjKXXuEvxWgPK2rdtw7TGwhB0D+XkUku/WGl+NXTGcQY12RrWJX6lJqF5HWsBQYBtg4YhxSH
	9DsEHoudXJOVdtFdM5TajpPTz6O6uGbaX22ugDry6/h8c2vDtg6cyBLQSwQX74axeh4BuON+qjV
	ED/gNoqPWW5zx2NlNHqMB/1wn2GyMTRrVbvzSresvSzCbVcXpIP9HatuJ7RG9OLGM=
X-Received: by 2002:a05:600c:26d4:b0:495:4075:7dfa with SMTP id 5b1f17b1804b1-4954a51e4abmr20886145e9.35.1784303245457;
        Fri, 17 Jul 2026 08:47:25 -0700 (PDT)
Received: from localhost.localdomain ([151.43.147.3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954a2b074csm59211035e9.6.2026.07.17.08.47.23
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 17 Jul 2026 08:47:25 -0700 (PDT)
From: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
To: nicolas.dufresne@collabora.com,
	jonas@kwiboo.se,
	detlev.casanova@collabora.com,
	hverkuil@kernel.org,
	mchehab@kernel.org
Cc: ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] media: rkvdec: fix clk reference leak on unbind
Date: Fri, 17 Jul 2026 17:47:16 +0200
Message-ID: <20260717154716.84346-1-pavone.lawyer@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <6c3081fed130534ac0d5cf83c7658bb13e0bfc7b.camel@collabora.com>
References: <6c3081fed130534ac0d5cf83c7658bb13e0bfc7b.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_084727_561577_53CF0666 
X-CRM114-Status: UNSURE (   4.80  )
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

VGhhbmtzLCBtYWtlcyBzZW5zZS4gUmVzZW50IGFzIGl0cyBvd24gdGhyZWFkIGFzIHY0OgpodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRpYS8yMDI2MDcxNzE1NDUwNS44MzkzNS0xLXBh
dm9uZS5sYXd5ZXJAZ21haWwuY29tLwoK4oCUIFNhdgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
