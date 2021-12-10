Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC7EFC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Dec 2021 22:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6hRH8iybFamQp1+hVfJ2s3yL8H85WrjSGRxiMV5AZ8=; b=MQLowNdoOACML7
	XW5+cHxw2JURdOqzCz9fed+8CfaKzwhERXBnH4MAlBYwLCJRHu0YrmgyJ+GeFJ311Zm8L7ogEZwtH
	bMK0vghQ76MTT6ey3/Iu3q3DA9r1SbFoNpkl01NvodA1cwSlN+Mk4ADIK2JkS9L4JyHk9i35D+pac
	4ioxU8bCHiTBJqkU34E/ItmOU7iQRrKEa0k0yBXN7zHtyzQrJVpKpFMySgOHbX8KOc1IFVZc8Mlg1
	OnUX1QSkzKKwO8HNqZU1HID5FKBAxaUSWQKbXDZk4d8HOMi3XDnfAkyTdyaGpere4GkddFHoo2ib9
	wHxekFuJA0tVIRaSl/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvo0x-003vEU-3k; Fri, 10 Dec 2021 22:05:15 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvo0u-003vDr-LM; Fri, 10 Dec 2021 22:05:13 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 w6-20020a9d77c6000000b0055e804fa524so11031820otl.3; 
 Fri, 10 Dec 2021 14:05:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2dMy2ccSXUiOxzp17oR0X17bV5Nb5Y8Jh1nQyTboayI=;
 b=oqLuAe60bJmUpPq6o8ljWAx1uZQj+8oSmCkNggroa9rh/1l7CVJee/YTpnefAxM9IY
 +KaYOhxlpQTW5Z6yw2TgX5QCoywZF2OFfdeQpRyFMFSZ3aTkKLxfY5i6LVUyCy8O1+U2
 woYqbMo/bmG23kMq9Ovk6C1CzeH7xb/0ASsL9SabQD1MaIlCHMzlF9wGlbf8QMh7An8q
 xKmyIaYn4Ta8XMn/vt1tJQBhj6/Wq39rsPNM3NysQDwaR4cbbZj57zplQKB0snOFxcA/
 fSgRz1UxHmqq6T7sc+3ZHNPF4MT5cxT5upOj3P1MFvmx33h0v7rUl8pmsFcrr9TnGJQ4
 rcBg==
X-Gm-Message-State: AOAM530bIddTX8rcuc1eAB78QWzi/Jm+8wzclS3vk+B09PESMdgSlQ4H
 7ZnmJ5Z1rlW+N32WAXskFnbMOwCD2g==
X-Google-Smtp-Source: ABdhPJw6EI08juHFtgZ2csESYGanxWcDqf3j87/bCR7OcZ5rHj4ctMPqpY5EOZaNwtLTfJAWzoib9g==
X-Received: by 2002:a9d:2085:: with SMTP id x5mr13353687ota.228.1639173911869; 
 Fri, 10 Dec 2021 14:05:11 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k1sm722390otj.61.2021.12.10.14.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 14:05:11 -0800 (PST)
Received: (nullmailer pid 2009158 invoked by uid 1000);
 Fri, 10 Dec 2021 22:05:10 -0000
Date: Fri, 10 Dec 2021 16:05:10 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: p.zabel@pengutronix.de, robh+dt@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, yifeng.zhao@rock-chips.com, devicetree@vger.kernel.org,
 kishon@ti.com, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 linux-rockchip@lists.infradead.org, cl@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH v4 1/4] dt-bindings: mfd: syscon: add naneng combo
 phy register compatible
Message-ID: <YbPPFkWDByS3jmEM@robh.at.kernel.org>
References: <20211208185449.16763-1-jbx6244@gmail.com>
 <20211208185449.16763-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208185449.16763-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_140512_727982_8C7281D7 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, 08 Dec 2021 19:54:46 +0100, Johan Jonker wrote:
> Add naneng combo phy register compatible.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
