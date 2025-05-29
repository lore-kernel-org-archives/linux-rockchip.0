Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2820C54FB3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 May 2025 17:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAh4JlcmAFsFSmxQv5kfV/k+OBeNfN96cHxktK0l8IA=; b=kmbHIEjReUIUSf
	of9/8beEL1MyO+4rQ7sQd+L1Jyg5B0UiOUUAW3v2HxkmU6ZTn6aULL2N5XeXRQPYWooU0H0mtg9CW
	NMOJ39HHlxMbaUa2FQr6lhKYAbR3654JkSmqXDQJQJmxuTG/txZXujR8nAaBXWMEela1ed20LHmTP
	hH9a/MPELUKNMP2SphBu7U5V0W79dzcVuMl/OSxSUz/yrfpRoDQi0MZH08YTH2K6mO4dNefV/S6Xc
	Dqznj+mG/GMtGUnTNnwvZ5GcDRurhCL5Scf1hcwPL53ut4i4oOqvIGngzNnfqnUzS++VyyHN/JO7h
	SBINaV0saCoiWcpOKikA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKgcU-0000000GF4K-3m6g;
	Thu, 29 May 2025 17:00:42 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKgcS-0000000GF3F-2K0Y
	for linux-rockchip@lists.infradead.org;
	Thu, 29 May 2025 17:00:41 +0000
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-3dd87b83302so4123225ab.0
        for <linux-rockchip@lists.infradead.org>; Thu, 29 May 2025 10:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748538039; x=1749142839; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wz8sylcYsf0e/g2Bj83ndjpBmgj030GnVYpd0gvwJ3k=;
        b=JO670wwHhoTAc8CPp6fTH7Wf7dkaWhG9Xnbg1miVXeVwkQobJ9Z95M4uQb1yHSSzUY
         7dn5xYJOualtvW81OblrFmiRzEPqraBalp2Ekgv8w3HywdvVDi5MYDFXx7v5NaKTeFT9
         g2Od23CjiBVK4JZ3aeN+uCH27v1O2GMaj/IGjuZqEGF8EjxHiLB9n9A/zO0qdXMN/LEj
         bUnLS+i9muCh5v6dHXsl3pHiDUKYkOXz/eNbE3HBvxZ1oOb0apX028pSZQKnNFfifmu4
         KXGSU70+FND8DQn2JeWkxot3AFY+NPqEkdcIBTPNtqTWa/kgebqtOET0aXd3zrfDFs5S
         D4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748538039; x=1749142839;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wz8sylcYsf0e/g2Bj83ndjpBmgj030GnVYpd0gvwJ3k=;
        b=robZaE1PPv9oR8/wJyLkj3etqCYiPHRDqITKecnLrUBe4p+LRZM8nOGle2XHTnr18c
         4HIi+FT4ytN4IvVJ5rc5KDTw2CLWbgCtvYQdLrkYkPXz9Gbg3VVqIXP+OV1hSRgTyUL0
         nuUYGDrsxFurwzgoAww88JbETwu5r3r2UmAvxl3eCj+0zU20MuZO0YTQE2ejGXqYY/5B
         vUbbDt5ZHZKKXmlNNYoD/zq0NPOh0U3IDZl7K1/2SwgXLdmRhckZ+j8kqXLXprMjrTvp
         +vZOji//g5dZA0P8HkjXken2x+kqLDw2FoOUUHZMhSPW20KL33iVjBunTZJaX2ltWGBH
         YLkw==
X-Forwarded-Encrypted: i=1; AJvYcCUEXOQtM43Uj7zKlJm+C6lnlbb7JzTcXgXsnPpk8InkwmPZyvIsP4OBYNdO2+Z7frNm+Na097zoe2i7QF3chg==@lists.infradead.org
X-Gm-Message-State: AOJu0YySh/MK6y0KxvpxOQpRUVh9wJamUrthvzoODTeW8K7w+y9dte+G
	IV13+7IEem0dU9WsV5s/diUT92dnSAe103aAbnb3xrAXnLf06ImcOIwA4QmwpuvsMRZPD0k5tfV
	1TOLsGiyNFnGyB8qwtoeHPXLHDPnnwvg=
X-Gm-Gg: ASbGncs+tWSpUq5djhDlphTB9CHpXIY+uaQvh/HuSTdXNGQXSx062xPTN5eK+UKgDXA
	qnNmVoRqREJl9+15FwfKbQGUM24lDgntpEhw/IPJrOE6hGb6qj8NhhPRLfdZWMqJDmHxA5qtHRJ
	4S/L1KgeeCzROjvU8IDbY/gJJVEg1Yay0=
X-Google-Smtp-Source: AGHT+IEyjJb190MgdwjRZw5y/MpOJIX0f6ygYZysAtuVDDlApMx5G40bgqJeidmJuOkA8YG0DhqaZtLvRLAokkzGbU8=
X-Received: by 2002:a92:c269:0:b0:3dc:76ad:7990 with SMTP id
 e9e14a558f8ab-3dd99c3e914mr7298515ab.15.1748538038104; Thu, 29 May 2025
 10:00:38 -0700 (PDT)
MIME-Version: 1.0
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com> <20250528221823.2974653-2-joseph.kogut@gmail.com>
 <20250529-impressive-real-monkey-a7818b@kuoka>
In-Reply-To: <20250529-impressive-real-monkey-a7818b@kuoka>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Thu, 29 May 2025 10:00:02 -0700
X-Gm-Features: AX0GCFvFs5pZmBZbHDiXb0YURJxT4pYR9-M5FQPF83VV1lZt1KUVAfxqyW1PamM
Message-ID: <CAMWSM7i+eyV4t3xzSXdDyGrBr101V9rG1xMgsTbpjyqpu+hjYw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Steve deRosier <derosier@cal-sierra.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_100040_598569_A7081AB5 
X-CRM114-Status: UNSURE (   8.28  )
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

I've reviewed the man page for git-send-email. If I'm understanding
correctly, I should only thread the *cover letter* of the patch series
when submitting a new version. That didn't work for me here because I
didn't initially include a cover letter, then tried to thread the
first patch in the series. I see now how that would be disruptive.

Thanks for the review, and the help with threading, Krzysztof. Parts
of the mailing list etiquette are still new to me.

Best,
Joseph

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
