Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48459C44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 07:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7ZW9IjzfkO5IgE5+AMh+aDSjkv7E+xwh/oJdm6gJug=; b=K8z4HPO9VIKLUG
	/D24BdTMHTSudI3kmQgd/TZPBmNRZOhEUeMVEsPqrsIC5YwmBotzvIFlE4FKpkfA06Dc5VJ/Auwzm
	3FXh/srZ32sXi9N1xYV35EvXl33PCZPv7iGJGwg4SvvAVwqBaoKLX7IyowsIE7UGs4Eukd6W/Pqrz
	OXFlI1IqhtomYyqfFG4wyYZ77UjBIuPacHJTgTy3dZ3PYYLAYSYZ6VnY7/1Ors9M19w1hh0Qsi8Cz
	MY+uXz3Ty0HON6XIlrbA+ETKVxTtUQLfCfXvFmGRyvKDWPLVAHgk+pALEezij4GOlm02NjXjKuLDj
	0GH9kgIL+cJEWrFoFy3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wju5m-0000000E2Fo-0HOD;
	Wed, 15 Jul 2026 07:31:42 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wju5h-0000000E2Dd-1fGL
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 07:31:40 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 23358C2B9C3;
	Wed, 15 Jul 2026 07:31:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2B90B6035C;
	Wed, 15 Jul 2026 07:31:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B5BFB11BD3BAD;
	Wed, 15 Jul 2026 09:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784100693; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=cXCHgsII61RG+BUBR7dsv7oD4lN1OAQX9QZyrYgHcvA=;
	b=xCZht4U04fO/TOsAkFDrKLYpZe1uko0+yNhTkhKLYV0ZEv+3eqD4UtcWXskfavCsrolDcR
	NFxZ3wQdjcKFa+RY6/xRQDnO1bE0wu4Jh1lfp2lUchK8hLun1idHajZmvE1bpN6ubuCgon
	otdq3TlljGiyQPUJxFWAOpqs8gTm33txPz0cTwKtS0rMQoW3lKe1gQ8r/lRTfmVuXno+aO
	G4mB2VF6oh3dgaWwkO7FkmHqTk06eL+7WQv3927/CHT768lK30Fpjds4I/4x1ftOCqpsc0
	DOGMvje48XYFUqfRj7bcusaxmbaW+ktUD4PPjCy9Eq1wzmCGryTs6PE1uE5deQ==
Message-ID: <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
Date: Wed, 15 Jul 2026 09:31:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
To: Coia Prant <coiaprant@gmail.com>, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch,
 robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de
Cc: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, Christian Marangi <ansuelsmth@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-2-coiaprant@gmail.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <20260714191341.690906-2-coiaprant@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_003137_721140_075B58CC 
X-CRM114-Status: UNSURE (   7.48  )
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

Hi,

+Christian

On 7/14/26 21:08, Coia Prant wrote:
> The current XPCS creation logic in stmmac_pcs_setup() is problematic
> for several reasons.
> 
> First, if a device tree specifies a "pcs-handle" but no select_pcs()
> callback is provided by the platform driver, the created XPCS is never
> used. The phylink framework requires select_pcs() to actually return
> the PCS to the core, so the pcs-handle property becomes effectively
> useless without the matching callback. This is confusing for developers
> who expect that specifying a pcs-handle in their device tree should be
> sufficient to enable the PCS.

I think Christian's work on fwnode PCS would help a lot with that PCS
handling in stmmac:

https://lore.kernel.org/netdev/20260618125752.1223-1-ansuelsmth@gmail.com/

I don't know when Christian plans to iterate, it could be worth using
that new fwnode mechanism here ?

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
