Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA9EBC54E58
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 12:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMqCfi0NhD91I6moHuBdqsFjqI35jQFBRhAORa3Vo2k=; b=WiLdWnvg9kTIFb
	Wf6rIlepVQIyvYkr3EZpO+w37OgVPupN0/Z7+NdO+hWOOcfdgV2X8NCSwirp40FJ3z5Re9zwAtiIK
	yyJjUbaen6xG/+0TOT1u8gs1FLELqFZpKsMBmsEVb0LhcOCbOg3DIAzkSgnW4LGswTZ3kaLq8lbQS
	WZA9h7i2sndIpmfpcF2+XxgOZWitjczUjnmsZcHUz/yA8zSx0tgS3/Nqm3FiuZ24op/NqxfcpEKIU
	fZMI095HjO6f03j+IObOeDRalJ0KP2i0TfTuAr0nPLVcal9MbIvJspUanE1J35MO3UQgiZO8f454N
	zFtLAeKb9O5H8EaALm9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6wy-00000000E0s-2hNv;
	Fri, 15 Mar 2024 12:46:16 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6wv-00000000DyN-1C6l;
	Fri, 15 Mar 2024 12:46:14 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1dc29f1956cso14286075ad.0;
        Fri, 15 Mar 2024 05:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710506766; x=1711111566; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=20IG33nOEwuRR1pUFhualjUElca3LxWrnrxj30/jnfE=;
        b=ns9KEZ3PHOrRMnARKa7AM//jSh9AfRcIBu8HvblVEKu/fPdYlBeDmLExblpqHJ6eZB
         xMxBw0eYRC75xub9WNlh4at76M62rc2Cr7cPdf1uDIez+y5ly5AZO69/wEbczxNRieGc
         tlBn1UzhZxcDAO+0Pzb5u9fLXvCnMGdctQV88lMr56yR263N7830UtVZ6DvajKrcVjTL
         7kETI8CcXFtGDiPGzZKLiawd4ArLqbxt9TGQhzrFEJNP/523jt9wHfVMfaEvPWDKIHEx
         UYsvOcnXhTq12RBCV9DKzY4mPB68sVblOzvYLIGZ6JeXl482MzeHXtVPDRv9wd65OEF3
         96vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710506766; x=1711111566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=20IG33nOEwuRR1pUFhualjUElca3LxWrnrxj30/jnfE=;
        b=GFwXRpaT5OBld4EMANm+c2kIXBvAb/AwL8SRSO50N8YAX4IyAa6dbYiE3YnON/gI95
         aiknxmp40CVm6r/hk62w+frFzoziNMijLIcaCXzTYTiqPfZp7nxV8cCM60uVKRP2sEyi
         53m3WIcDYDyEoXL7Re7nMu/dRSoudsyBT9IyWKpwhP2mqH1ciUuDkGgiOMZ/bQ7E2iLX
         sVNGHOLjNHB/4q9Ko5QAV1sYLi7NmGTgX1FUX728ms7kjYlKsD8i7K31xAn3unx/lWWq
         AHcF3hnTn8YcvkKslIKwne/mPdI+nbKAnVnGB34oqpFMFmIag6dVzn2JjeRtyaS4Xaxb
         4O8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVextAWRGUAoLJ0885QdA2bEKeOjYA/HpeSlouE2A6Aalkg0vwZzRyojC9HLsavQ6XqZmpuYeDAFkBUy/GOcCUOeJan/0bkcMkDwRWQCdynrKOmHiWJtmcxEAKFUwRTlSUYrH/VyhVoeDXxGzTFp2huIAYZvH0djgc=
X-Gm-Message-State: AOJu0YxEv2AIlpcfzkPCOQRXK6FvFzWKUNbHj6eMFNtxLofF2OqJwWpV
	j9lmIHK5LZLkUJXcsHzPmg1oJ4KEP9v/Y6ItdZ4k+jIKuIdq9WEk
X-Google-Smtp-Source: AGHT+IG02f1X4y/QUdftzJYm61fhlTwyzXwLwDPtt/QNDq4srYRtBpaVtW1waLd2bomU7sgQ/vdLlA==
X-Received: by 2002:a17:902:ed0b:b0:1dd:6f4c:c67 with SMTP id b11-20020a170902ed0b00b001dd6f4c0c67mr2864513pld.24.1710506765775;
        Fri, 15 Mar 2024 05:46:05 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id q13-20020a170902dacd00b001db616fa11dsm3695125plx.238.2024.03.15.05.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 05:46:05 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	knaerzche@gmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sfr@canb.auug.org.au,
	sigmaris@gmail.com
Subject: Re: [PATCH v3 2/2] dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible string
Date: Fri, 15 Mar 2024 20:45:56 +0800
Message-Id: <20240315124556.2405143-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <9414316.4vTCxPXJkl@diego>
References: <9414316.4vTCxPXJkl@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_054613_331379_C2F82715 
X-CRM114-Status: UNSURE (   8.74  )
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

SGkgSGVpa28sCgpGcmksIDE1IE1hciAyMDI0IDEzOjIyOjE4ICswMTAwLCBIZWlrbyBTdMO8Ym5l
ciB3cm90ZToKPmF0IGxlYXN0IHRoZSByazM1ODggaGFzIG11bHRpcGxlIHZ7ZC9ley59cHUgYmxv
Y2tzLCBzbyB0aGlzIGNvbXBhdGlibGUKPmlzIHZlcnkgbWlzbGVhZGluZy4gQXMgeW91IG1lbnRp
b24gaW4gdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiBhbHJlYWR5LAo+dGhpcyBkZXNjcmliZXMgdGhl
IHZkcHUxMjEsIHNvIGNhbiB3ZSBwbGVhc2UgdXNlIHRoYXQgaW4gdGhlIGNvbXBhdGlibGUKPmFz
IHdlbGwgdG8gZGlzdGluZ3Vpc2ggdGhpcyBvbmUgZnJvbSB0aGUgb3RoZXJzIHRoYXQgaG9wZWZ1
bGx5IHdpbGwgY29tZQo+bGF0ZXI/CgpTaW5jZSB2cGR1MTIxIGlzIGluIGJvdGggcmszNTY4IGFu
ZCByazM1ODgsIG1heWJlIGl0J3MgYmV0dGVyIHRvIGNoYW5nZQpyazM1NjggYXMgd2VsbC4gQnV0
IHJrMzU2OC12cHUgaGFzIGJlZW4gaW4ga2VybmVsIGZvciBhIGxvbmcgdGltZSBzbyB0aGlzCndv
dWxkIGJlIGEgYmlnIGNoYW5nZS4gSSB3aWxsIHN1Ym1pdCB2NCB3aXRoIHJvY2tjaGlwLHJrMzU4
OC12ZHB1MTIxLgoKUmVnYXJkcywKSmlhbmZlbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
