Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BB5AC5DF72
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2026 12:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqCbNvEP/qY3TbuScc3HdD3DlrKv3HLs0my4xMmfE3Q=; b=SZiH701zKFbwjq
	Fu0cGJNMsSLskUpeVAmMfCVEVgDxs49b3edEXN3vTpGqAavIcwVzWSqRDiFP+9VbwAazLBgxJuEgQ
	B2ZozXFA01ypBK/S0br5vbkNppH1td23UkLZE7Ay+zAXJVLzgqh+G3A6XpoOGOIyw7aKbWUqzw+VP
	8WRi023d2VotLDhL0SqrBvIcIDggCw1a7lVBG26W5N9Q7m87a1IvhEYKQe7Wc9q3V36VbSwNkTtBt
	KKaSpQJqN4aP1qS6KtKY0U7aH3mwtPZN0OR2dz1675UJmEPAi+DmVNNhxm+JjPMWSvwvUVJmqQPmt
	rk+PJNNO0F5oVsGh11bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPf-00000003oZY-0UUz;
	Sat, 15 Aug 2026 12:22:59 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPb-00000003oVL-0ZKF
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Aug 2026 12:22:56 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-4706f016316so100472f8f.3
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Aug 2026 05:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786796573; x=1787401373; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=TirLXIkL7LnIScBUrSArng9CTkRR+rBC+k3EPl6uhAkoXN4Srlp+4dh6RCJxjKr8S8
         7oHpyjFTjvxVnG4Qr4TZCzvWtc3r7ijz5p9xMWHevoOfDxyaj+gJ91CyjAoQi5kLUitJ
         ISyQJfySEZQBQg/SZkuuE4Ac8Uz2BwEwJiIMyks4c83HJ3Y15rJ+g/u/hsYCrGxX6v7d
         R0ZHPXHrpznvFn9t5MvGaddeJ76ncgH+u3mXiCtWPogJvmZtc2CQiEKyglKhX2nqQYFQ
         WCXYVI4ZB4u8Qp7SjvfiPY2dxFM8MnUD7DWgg4yWyVVFDy/BRJNTbwmBXvFrEK/GzJgt
         5JGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786796573; x=1787401373;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=muRhNmbKn23oYjo7WQHPwIqnniurYWSB/ejA1UZL64ZrcO9JdMLVPBlokcelqMK3e2
         npziYI69JV5gfnUeyTrJUXFqBy7GbSjGwuJwmhY4obdtMkPW07krhbxGvo9JZQNGNYc/
         CwcXCDynYwKWUcDxgGAf4E/hG9f1YtuwqWRmY0ess4nCOF1+69Uh1NuaTjQlcV6bthc4
         VoyK+EHwhPWdZniCNfyFzImrhWQuqyrxpqy+RI0UnxZEV4rFmoj/KLZnu8BwZkP8JW8x
         b6KQJVBBHJIU7rqj4zqH/9Mo1SzpJwhQ7ElD/axN+xT8Y6052R8o0wiwDfQkpwOjEdKU
         Mebw==
X-Forwarded-Encrypted: i=1; AHgh+Rq75jl8C5oIvV/hMllfu3Jnp3TEHXCfbX2njcjGEBqXyJHMS2gCb4kZwawJ9F/MEADODkLeePsGERDl0rNThQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1z6yI2omC15wq6wIuWM8KErxpZA3yKopzQLQCAWHk2iEMx9Ah
	Mglkk+6D0yPzUHSZWBkxWABTAzGRASsIVKM4G8hH0eIAlZsLzCyG223B
X-Gm-Gg: AR+sD13udGewFrn2WVcqbcA0Ne5/sRB4ZaDZ8pMhKwAsR3eBBFEHQ5a07UUOEG5SSVJ
	9XAQgA2oIN5qpf558hlXG7AR0twMyId9NeBPNJriYn0sHeJS0yKLhlf1NpmbGI2QWhhJ83NyGkp
	P/05HQnPC4DNJSEro5oneftZ37RaTgOx9ImT1UI4so0toFgvmhCmkKPtBsgIlGmrwhZOkOSaZP3
	zzk5f8dsd6DilWXjyDcrB4hRKslsaejjIKtCgR2Cu8GFK9tjEXIAVSKgP5p45x/2FgtjjHRYHwP
	0eraxLD510Lyk9w7uclAhnK92l5gAVhtblshGEF8ShDQy+ODiaSB00LVBeQwDQ+z5rV0V8AoQHE
	6CTcVGTDGXQCx3EUm2TmWsq00Ixb6jAMSErmWVkaw/csP1DBWCsjsRgpU4X6rSUeURRljaASouy
	mMB6aW0CHOHUGfzCYOe8BC77lZiECWXNIJteeVqxsXUcx3LYsQ7UsH/76kI4J9kc1AAMJdrWvEW
	rGpzNP00QaHvhwbh00gA/lKCxLcdiW1eRQLKj3OHmZcBfBQ9D2lc7t4SG/jv8bjrDrxKg==
X-Received: by 2002:a05:6000:2585:b0:46f:7d90:8124 with SMTP id ffacd0b85a97d-481607738d1mr8826047f8f.2.1786796573266;
        Sat, 15 Aug 2026 05:22:53 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B932600BF05B505F15B0ECC.dsl.pool.telekom.hu. [2001:4c4e:1b93:2600:bf05:b505:f15b:ecc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f1fff25sm26930649f8f.3.2026.08.15.05.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:22:52 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v14 31/38] usb: dwc3: rockchip: support PHY reset notifications
Date: Sat, 15 Aug 2026 14:22:34 +0200
Message-ID: <20260815122239.65405-4-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-31-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com> <20260813-rockchip-usbdp-cleanup-v14-31-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_052255_214021_DB50F4D5 
X-CRM114-Status: UNSURE (   4.69  )
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

Tested on Orange Pi 5 Plus (RK3588), 7.2.0-rc7 from rockchip-devel at
ea51774c5c42; details in my reply to the cover letter.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
