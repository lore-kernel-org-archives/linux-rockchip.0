Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4895EC5B572
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 15:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zl8OMpd55dGYdrF/KJiTPpO3McwZh4U41Jxoi4UKP5Y=; b=0qLl/gZZpt7sxi
	PtKaDasmMgpLk3M5LfD042UFG3h6hvF6CexdaMiTciUtW+/snzm8UY4+v4SoXlkJHv+2sTPNvqt89
	/k7lO+wwEXVA6+KoZdJIEuQaJUrP83/aoEQTxnbTG/bi8jbaw9E3HdHfKXpvHgmoODi4EZMofXp6O
	zGwiQFIpzTC8SK4ZCbwESzI3TwTAD25ALaZL78erbwaANLuWwnuxf5jYW7H8Iic1G9aohaTcVaU1C
	LR6ow+B6TukpHh9dnk854pWFEJ1vhvmBDymgMTS41Cpz2UirvGoaqpCkchxyJMRfsU5VblMOnfTwj
	v00nIVOsKYvkZbLHP5Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwiVF-0000000A7TN-1LHh;
	Wed, 19 Aug 2026 15:46:57 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwiVB-0000000A7Rq-08oi
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 15:46:55 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-4765eec32e1so119345f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 08:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787154411; x=1787759211; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ExnKAVPk+swRg6enIhEeCZ07HSSnP/eXJ5Jbmt+6Xbo=;
        b=gnur7Goxmq6lnpj9Z9g+bZ2edcMkSMbH+AVantWDX2Uj2qa4G6NTPaPUxbO7oBpDtO
         fGGYHqWMH+f6aHxaH16ZfTxeBHfE5ekWXECj5mjrAcWQxw3Ncm41JazpLaBRjyr+uy2f
         ySnDri5HYamy52/2zLcRnt7l/6AO68Wfj/xNhrmS4ZxrD8M0LU+ZWEvTGoUBmKglX2Xe
         nDGuuN0EbJMsAjWS0cmW+AisDBkkmoCuamrgGbIwMQbi4dKXr3WiUclHeVWm2OuaIbQC
         tZiUEhU6+E4rA5FetWwFEXcrMy2UMEXlceTwdyg4b/ZfOuWy5wxCtsiJIOicHDq1ugpp
         f8Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787154411; x=1787759211;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ExnKAVPk+swRg6enIhEeCZ07HSSnP/eXJ5Jbmt+6Xbo=;
        b=Cyy/MIoMEep2Yj3bStutRJA94hEHDbtSnpD46i92HDOamkwKvCicsjmdsSRCKJRC75
         x2fRa4w+Y/yZ35X4yK9GL6JkDmC1qMTaezMH7IiJ0xLgwa6FUlPyAQcu3XzONvUdPcBO
         ms+Em5rRc+tMuttGYd8+o+u1NDusT6oGKcrOJbq6ictdF8ht6/brjBm8eHbwby5jeRvQ
         UEdWj/E3nQ432xT13owfr3f7aorkKyuyOZZeLUqnmJn5+JTVQUcZ5EjqkIqGmIZBBhWq
         dGZfvhCjBb9TLJ3cg7GpaUfPELtHYWAYXZLUIa85gFgdSM6SndEaoIILd2YSaV2fPudK
         1QCw==
X-Forwarded-Encrypted: i=1; AHgh+RoIW0fY2zrbLO4iMlAX93jtJLk9Yoc/TV1VstdrFYjwXLycq2iaRAIpukXUq2wcUqch3ch+4YfcaoasZQBW6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzaUgb2SAal69ggHVyow1Rg0bG8nbXRBGpyqUp4jnMcGanBxv9K
	svHyfgj5qZYHADSLNmbkm37Y2dQvyIBxtrvMn588SeWY6vngMFxxK94Z
X-Gm-Gg: AR+sD13t5CNw2BDqJRVCF1A0CQFiplp3mF/KtmFNXYQgzmcKqcuM0nAxW1dwujJXfAO
	L9Gc8iGFLPpAxXbmQ48UfQh7W6QVJeTDOih5oNK28Ws6nv6lykIjBbk+w9eg7qrrAluY+L2Xo7o
	XhiZTEboDr0ri0C4BFdUxMk1ABe8wZu2SXC6InTtnqEY5GbTl8X0jbcz8z3o2DO8saVCL0QZGAS
	3+yI9gaKlvINJqu0Mwcfk+PFBWwXSC5LkYWMVm/XXmn8h2vsakN5zRXRn+xUBQTasN5klnljLKE
	t0Hgwd+c3vHlbKTgZmxSlOYsyDsYGWdO1MNXF+ZIQ+sFtzIhY6HRPRKAAT0KroHAAaBmhVxQyNT
	/53febtkKZFmGc3yMbgaVQoT5TPe5O/YsDxNkVbSS1vw2S69WfikGBy0tChkW4DufY0oCgkaVPW
	ua8kPTPASEKW3atfEj6NXMWwi2eRsEjiaIe3mccA7Z/Iin8CXmpm41JBsEl00dTYt4DNNhX2z+h
	2xcvyTCr9nE+3BrffSapf3mZ7v7mYX5i98TlY4Hf73hem7YoVZqs6h61yIL5Mj6C2AaKMKPz1zX
	ltOERg==
X-Received: by 2002:a05:600c:8b6e:b0:490:ec79:3046 with SMTP id 5b1f17b1804b1-499aa0e0223mr56044905e9.0.1787154411075;
        Wed, 19 Aug 2026 08:46:51 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B929600FBC58E6E51BF6D72.dsl.pool.telekom.hu. [2001:4c4e:1b92:9600:fbc5:8e6e:51bf:6d72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499a9def415sm57189175e9.2.2026.08.19.08.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 08:46:50 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 08/10] accel/rocket: add RK3576 NPU (RKNN) support
Date: Wed, 19 Aug 2026 17:46:32 +0200
Message-ID: <20260819154634.7584-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260819105723.632029-1-gahing@gahingwoo.com>
References: <CAEWPSH7ETfw2TDjUfOvcVtDm19FC43x2vP=Lh7m+XPOGptnPWA@mail.gmail.com> <20260819105723.632029-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_084653_075486_3A992E1E 
X-CRM114-Status: UNSURE (   8.72  )
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

Hi Jiaxing,

A short logistics note so you can plan around me rather than wait on
silence: yes to both. I will read what the vendor stack actually
programs into the output stage on RK3588 (your option A vs a floor
enable), and separately force an output below its zero point through
the open stack, so the two explanations get separated on this SoC.

I am pairing that with the oc=56/88/120 sweep you asked for earlier,
as one measurement session - numbers in the coming days. If either
result is going to gate something in your v9 timing, say so and I will
reorder.

The correction itself, with the control run and the paper-trail rounds
behind it, reads solid from here.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
