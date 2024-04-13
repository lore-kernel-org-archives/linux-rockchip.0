Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79BC6C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lD0eOKt0bPbfxamo/gIpxlgx/qPSiD3HCU4GtZG0VDY=; b=1CAy1RIVIt21uD
	/dJk0XMPq3+2jJAs3y34a10HrydPTR6+PJWPRFgMW3A+4D6H7ebcndB6mqUM7TZpaFMul3m8A5mP2
	C3Uh07rAQUSS/aEJ3/f3YhTSCw8BZfw6vIfGSo/S9LpFYkh1dOZemfTY6OM2bhJGjI59UNaY9fDA9
	yxhTqfMkPsCLUAegaqEupghZOdUfi69dvuxl6xfyOmvj0pz+MNuS+TjhGm5op+9G3gL9RdOYiitKv
	r8/2h8D175dys2vDMNsFOezrcH0T0+Cgc6tthEaAwTjr2iWiIBQ7hkFl1UoLm5466KIg2sqORdFVO
	8XZQojkTeIj8oQ/Cum8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvflA-00000003V1u-3nMT;
	Sat, 13 Apr 2024 15:57:44 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfl7-00000003V13-1Jze;
	Sat, 13 Apr 2024 15:57:42 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6ecf8ebff50so1202370b3a.1;
        Sat, 13 Apr 2024 08:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713023859; x=1713628659; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hh8gI3Xc9orusEEhaZP7ATpypY8/sW6RTqMlovJMv9c=;
        b=F1mFbt1Ub1Ck9qQDHGaFXbXR28MMCuvI4svB9Um8WKkqrl8M1nxiMNy5UuuYjD4U7t
         MLKpR3qvXu7hWKoKK3bu/5gU0jx4wKFI2wz7PQx0tvUV5X+JWIAd7Fr4/QN4l+wTVxOO
         4z2nZSiDm4g1t52T/GzB1pjJS1k62EUh73N1LRsokb++Is+BTT4TN4fW17LmQG80HMg7
         wkhy5tXxChU0SJ6C6nJlFRsKaDYVAalzKbWF9WHAf4WbQNTx9Ogs1YLcbvNdHP1bPQZp
         QJVzKVuNnN9zY0scszOwnqNm3l/4XKy59oWSgYVmDfY0f9q36sC5N+pLb52CZ6AE+DxF
         CTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713023859; x=1713628659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hh8gI3Xc9orusEEhaZP7ATpypY8/sW6RTqMlovJMv9c=;
        b=AD4pscNIhiU32UDdylYTGeznpLWXO9c0UK5bu8JwobSm9E1JnH9SyxjVz7WFpjm1/B
         za2ptmUctN7OqOODahVmkZD6n5TngHi9qfXDFLHx7m8CXkheUcyjNRoVCsP1o3mUY9c9
         RfmEEbc24VeLcgPBmYnNeOGTT6u/mUwoP+PxY2OF9LuuEuwTlQMsiz0WpCeRHzUNHtKZ
         8QPIW8di11ekgd8xHwK1j10DAmv3z2JnnYrcBU3LkLwGx03m4od0YMMwxZppNcZiUzh9
         Yckw3xsysnEWCq3Y+WpTHebnHGM+ZcEM8ANgVAPqGY/aA1vauB1i4gUYjm+5GEFxyE5X
         inqA==
X-Forwarded-Encrypted: i=1; AJvYcCXJOetsevmwpxSH+tV4b5ooyQIsKTPbXkQSKr8UdTw1jXmU2XFX7qubXF3rnGL2NWvaTnt9fWrDCCvzwYmyYWXUI5bNap3yICr+/E+9PJoDtTL2Y+46q5ao9ziKF+stpfoZWaxuIWbUxQCEo4IWBm1EXqgtxYtnsao=
X-Gm-Message-State: AOJu0YzM4V2LDST4iCrlynHx3KNUj3CAmeWwBvNKf8UVicvJETrtDsgq
	HgCsn6pqfCLXlQ6QWyJcqFnhEP9NAQQNTdT6rZ8aK5+gWFNyA0eh
X-Google-Smtp-Source: AGHT+IHmNyIuiQTOgddGulL6Vm47X53qcvJxkNfBjq5gt5nrpoeVWcF8ECY4cT4aN5LYDnQpWA1a9Q==
X-Received: by 2002:a05:6a20:9483:b0:1a7:9e84:dc51 with SMTP id hs3-20020a056a20948300b001a79e84dc51mr6467684pzb.7.1713023858942;
        Sat, 13 Apr 2024 08:57:38 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id w9-20020a63f509000000b005b458aa0541sm4334034pgh.15.2024.04.13.08.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 08:57:38 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	sfr@canb.auug.org.au,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: Re: [PATCH v5 2/2] dt-bindings: media: rockchip-vpu: Add rk3588 vdpu121 compatible string
Date: Sat, 13 Apr 2024 23:57:09 +0800
Message-Id: <20240413155709.802362-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <2a516484-ea87-444e-a89d-9fe33d08148f@kernel.org>
References: <2a516484-ea87-444e-a89d-9fe33d08148f@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_085741_374909_ABAEDCF8 
X-CRM114-Status: UNSURE (   6.25  )
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

Hi Krzysztof,

I'm sorry for my unkonwing about the kernel patching process. And I'm
sorry to let maintainers do extra work. Thank you for teaching me this.
I will do this right in future patches.

I did received a Acked-by tag from Conor in v4:
Acked-by: Conor Dooley <conor.dooley@microchip.com>

I note it here in case someone forgets this tag.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
