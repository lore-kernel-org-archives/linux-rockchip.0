Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E27FCC2BA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sE045H6nGetc+ZaMPq/62jyo7azrFzNLwq74EJbfbBQ=; b=C6wgVf5NGmdqAO
	nvmIcI63Jm9TCyXLz5a3OVRZkMX8UQtamuEM0Uyxj7Sj465/2+V5MIusu3YstKAr1Ws7UM6S5iR+R
	JA/BOHR9It24jvgmGNK9xmFmTxnJiolqCeL2KC47JMtpv6gi91H6W1Cgns7CuJYLdptOYtd7ZS8Om
	6xIrHEZpGOpcesFApX9ssQ2lZwoa8Umkxt0qn6HNi7oLfNfeiJuoPguLhvZdEScOsSZKc3WcTpp1C
	SXW8vNIq46+NWoFRvsh0XBoDYhg2DUfGUXPkngfggZL0vbyOwLxX3PaXhu3kIr6hcuSoaRPd0wBlf
	qUIxRKnfN+/M+kW2hqMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbRR-0000000Fmvv-3C5B;
	Tue, 18 Jun 2024 16:12:18 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbR4-0000000Fmd7-1Jkn;
	Tue, 18 Jun 2024 16:12:01 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-57d07673185so52396a12.1;
        Tue, 18 Jun 2024 09:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718727112; x=1719331912; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vdhfQI9T5+yxPiraAgbpmOt7qEOjgccH7WBORNtfHfE=;
        b=bnEWvyaEi+otZqXpzOTjuXJ8YH6goSu0cIIgG/bC3A8FJnxKy4EEs2HfxKoJBBCP33
         Mb/wB6MTo0wC/LKn/cH9mtt3D0y37eW4P7me0NwP0e2NR1zYweuXBXH608GNHJHJPhee
         qAIsbdZItsXcLvCFEFeBdK1gAVgXGlm34czYXjDnyLLeXqWo1lJu1J3ekrqcSSOG5yrw
         PPW9RTWP6Qusn1u/XbqyNthtyrAwjWBMaK5ujmORaedRVyDpH1htOji4eRtKxaADB69w
         uoKu6RYDBoBGVxgfcoToo5Pkf4BRI6vIkiR35vCsTiKzEtE2DImlYAKQz+zv4vhHH2/5
         NYRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718727112; x=1719331912;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vdhfQI9T5+yxPiraAgbpmOt7qEOjgccH7WBORNtfHfE=;
        b=PLemQHaltcm0VKcoMzfDVvqDFiJtdmvrg5lqQqNwcn6uVtOlWbEiRc0fv3g5f3oXMg
         CofozEpDfXcE2feagNQJle/r0LBrX8EecpsLJah3SMfu18b+bI5nEk6r4uJiogRRQa2l
         /aGMwUPeryDvVbXz46jzjYXzNTuF3GPQkcG/fZlwGimfIBManvutIGT66GbaL2egvY6X
         bOoI3OQ95KbnOJ+qLupwruB/33DSJJ/s6RYE/2Rcu1+Gi7GdKQAwYbRh9SucFuxPewbu
         iEd9oWxt425kkGeVDh6Iiy+UH7ygy44oW6Dt+NlnbWgrI/fJX3LbDt9kKkLixrvvyIXQ
         /uBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOW2tKxvw3tU9dOftB6PHbA6aucn73GjhZgisuilty58MynOCEYHI9f/WuW9lV8MrHQgTgHVCoIweOT7cIMnQd6y33+hqnX2jELYHby12ZV7gt4TD1p1GLrsqy+nQzw17vejKrvcoxlIbjhxsPGPf85qIqN2Y+ZkI=
X-Gm-Message-State: AOJu0YwjNqCUfQVcjKK5myJ/YImw+8ndeo+hplirivCuvMFTmgNVZ1d0
	zodKHedOn0GJsuOlZlIc9mevXkpwW7qmukN1njXmGuYHVrndfgEf
X-Google-Smtp-Source: AGHT+IEfZ9HaFQBufIL+uJmK6fz39+P64leJ9sWW5fe/okGzJN3xQA3FngvVzo6bSVhv/MbpbmaRQA==
X-Received: by 2002:a50:8a97:0:b0:572:7bda:1709 with SMTP id 4fb4d7f45d1cf-57cbd649655mr8559509a12.9.1718727112118;
        Tue, 18 Jun 2024 09:11:52 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb74387ffsm7997213a12.81.2024.06.18.09.11.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 09:11:51 -0700 (PDT)
Message-ID: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
Date: Tue, 18 Jun 2024 18:11:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 0/3] cleanup arc emac
To: heiko@sntech.de
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_091154_867478_2D44E266 
X-CRM114-Status: UNSURE (   8.33  )
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

The Rockchip emac binding for rk3036/rk3066/rk3188 has been converted to YAML
with the ethernet-phy node in a mdio node. This requires some driver fixes
by someone that can do hardware testing.

In order to make a future fix easier make the driver 'Rockchip only'
by removing the obsolete part of the arc emac driver.

Johan Jonker (3):
  ARM: dts: rockchip: rk3xxx: fix emac node
  net: ethernet: arc: remove emac_arc driver
  dt-bindings: net: remove arc_emac.txt

 .../devicetree/bindings/net/arc_emac.txt      | 46 ----------
 arch/arm/boot/dts/rockchip/rk3066a.dtsi       |  4 -
 arch/arm/boot/dts/rockchip/rk3xxx.dtsi        |  7 +-
 drivers/net/ethernet/arc/Kconfig              | 10 ---
 drivers/net/ethernet/arc/Makefile             |  1 -
 drivers/net/ethernet/arc/emac_arc.c           | 88 -------------------
 6 files changed, 2 insertions(+), 154 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/arc_emac.txt
 delete mode 100644 drivers/net/ethernet/arc/emac_arc.c

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
