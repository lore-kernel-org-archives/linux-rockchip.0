Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4918C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 05:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebjxBFMK02cGQhoG0MkggRL+M13OY/uy68TrBG0sOkE=; b=OMlTpNJompIThQ
	/I3KIxOFCICleKpH83kQqe1jNiq2hZiqkdFVWjfEyse25NoF92dnB+ddAIKoJQ9bz7CGeRfMgGTaw
	T+wAKRV7Feg2PZ7Mj+GgYf6LZbkQp12keV22G1Ss4rRGKqlEam7cRx0/AsOS/GEh6nt3+AgmaXw5y
	UCDD10f7RC7jnsTHhjV8XIVhRkiILkrxshPDwHOrZ2m8kZ5c3hMC+kH+qUlr5Bk2PaXvS0xXibc66
	FICnKKvuOoiUPAMyPoxLGVP3hE5vX5HOERw30e0/fC5s7B1jgnMUlT4Lo25mBuTbLvzqEC6EC0Ybc
	yq+g/hb1vUdvRffW/jBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnXff-00000005uR2-2qh8;
	Fri, 22 Mar 2024 05:42:27 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnXfc-00000005uPM-1kk1;
	Fri, 22 Mar 2024 05:42:25 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-dd02fb9a31cso1723782276.3;
        Thu, 21 Mar 2024 22:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711086142; x=1711690942; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=syQU4MzVCz7AvYGIe8yfFD1S+gjF2dNgawBt5pjfbVU=;
        b=lHcf8uYNU2sOp71KCh5v3T2qxg2TwOv43Jc2oJHkMQ8HeVFKW8Apxm8irVCXRmdXQ3
         OelttJkP/8+wvAltIbpxw51HZIn/uk0V3aKaWtFV6Nq9u3WBg14o/Rvapdidqi1aeGjG
         /HijSbfvz2cWdXVKHZ5idqT+TnWQRxkDNXs0IFU0Ujbi4cEiSiyLEgx0vGkqnF7KhD4k
         WlTjZH764D5iNw3XoWaALG1mSJ+STp0zQ1uTrr3HDEQger9rdnha2iZcfRASE5QFKXMD
         ME0QfubjW+fwIIdcluAbyHtJVLRJzM34PkdxO1LF5N1KKPkWOy0zjvUsMsqrSnvvvnR2
         xKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711086142; x=1711690942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=syQU4MzVCz7AvYGIe8yfFD1S+gjF2dNgawBt5pjfbVU=;
        b=X3zuB8jstVxh6j2XrAK6i18MMl3WC61WNUHzRe2qUOGI8Gc6aEnlNyplVjYorqAB6Q
         S3ijUfWWtiTa+LWNeAIPjZrZp5oN6VWT4uSVQH1AuhG3/4YBWG6JFIQgiS5HoNQoSE5M
         Rrk2wv5UnxqWfzyRzTpTR0YQ2D9T9aMiUyVunnSe5g/9t2Eyfh1RkyNMIqYk/3FchODe
         XOC447BTnE/NqGQlBR+gmkFOCVIc6SgdzKsAmeiYMIqucZlHxGbIaNZ+C0kjJSJedhVQ
         nk6qkIoEJC0LkS7Xp/mZTZKGUUp1UOaLlltsrN32Eee7PpsQ3+tTuOTjrmkPZmDhZ8O/
         iULg==
X-Forwarded-Encrypted: i=1; AJvYcCW2Gh7eGklYoUr1LFfRO6XTeEv+PAm+dPVTjoZgzoVQ3qq5XAx790JsHOzmI92IVJfBQJji8SK39XqUGLjbJOqU1w/5CwIHXrEFDwIiBz5HqobJ1UDBVEItE1Vs90IhVgMdykK13/aNlxPbJr9xf7/GB54Ly3ht/nM=
X-Gm-Message-State: AOJu0YwNQYLhVNBlSMGAq6P/FHL0KM+8gCkSsDK67nFmjf8gDjjYeJlw
	iT6bX0GS5A5U8F8fzbLzbP5MMxvCg0/nI6TTXA2RfVZaTU+0InOf
X-Google-Smtp-Source: AGHT+IG5/HFcpIVuILl2KkuQ/ocANf+70Zxb3vvKytmJwJpKn2jAkIblj8+2Ctb2nem9pOzNcGOVVQ==
X-Received: by 2002:a25:2644:0:b0:dcc:79ab:e51a with SMTP id m65-20020a252644000000b00dcc79abe51amr1239785ybm.57.1711086142078;
        Thu, 21 Mar 2024 22:42:22 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id w11-20020a63af0b000000b005dc884e9f5bsm813831pge.38.2024.03.21.22.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 22:42:21 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: liujianfeng1994@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	jacob-chen@iotwrt.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	mchehab@kernel.org,
	robh@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v1 0/2] media: rockchip: rga: Add rk3568 support
Date: Fri, 22 Mar 2024 13:42:11 +0800
Message-Id: <20240322054211.3508301-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240322052915.3507937-1-liujianfeng1994@gmail.com>
References: <20240322052915.3507937-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_224224_479178_B62F4582 
X-CRM114-Status: UNSURE (   6.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I am really sorry guys, this patch is for rk3588, I wrote a wrong title.
Do I need to send a v2 patch just changing title of the cover letter?

Regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
