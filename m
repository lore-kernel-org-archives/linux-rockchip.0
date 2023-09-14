Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2EC7EEAA52
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrgiMeoACL7R06LvCjgp1e2vYeZJfx51NBFdYgk9SpI=; b=zZfa8nYlqFxvrI
	3xdpBxHEtmAaRwy/7JQWgyCkUv5OkPFqrfAYKumtnZ9PW0JxnAmXg9HTNVzkfnKD0y3/jTI1n1vdi
	ctF3++PTJ7PhegWm9aAtwiwskglGd3ukiIhoE08nodkXd7hCgQWDQxYpHPhMMuHzYwoODqINPO+ie
	UMkARBVA26I626PouVMFDzzlI8kgaNntg1dl3EOGfb8wTTv4w89An7++HjodJdWm8F1uH4cssuh7e
	rZMrt3EbUtIoUXSiDkwvZ0LKDSbBlmwaG5vFUYxphKGl6lMXoOtu1DBi9kAwy4RfLGEcB4VdIqMXx
	OTWDr5nA4o9Y2XGl0Dpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgoYt-008pE9-2P;
	Thu, 14 Sep 2023 15:47:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgoYq-008pDa-1n
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 15:47:21 +0000
Received: from mercury (dyndsl-091-248-132-131.ewe-ip-backbone.de [91.248.132.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0751A660727E;
	Thu, 14 Sep 2023 16:47:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694706439;
	bh=BFXg+eiGm56PIuoHY4sJWN6imZT6VBrEHcdIVjqZMV8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fMjGX392d+eycmU1JptKG5B6QxJoOfylTA4Minb45ZgdSn5XxyC86vUQatfMAvhx8
	 QTmxuiF70gxHDetoTOWv0C3CQGizkLJ/xFNv9nD5aY8Vc5zUBK4QqbxDL7LlhcT5yR
	 eHScGpGQo9F/g5mKA2nXseVddd8szH0AQXIQH8hJBNoyJiShmC/Qp1LH+59lrTtZo5
	 k+NJJSctEfis1fvXwyEnlgwzZt6NVWGI71ld6SpJK0rGGf4ppPVrXfAcaBWnbVL2od
	 7X/ZTCseZs08RlAxcSb8BQWt8A+jJwr7hroCqzG6SWJL4kryQfYwaZW/iCZSIwJ+8m
	 1TQlc6FA6njMw==
Received: by mercury (Postfix, from userid 1000)
	id AB7E8106098B; Thu, 14 Sep 2023 17:47:16 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, 
 Maximilian Weigand <mweigand2017@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Maximilian Weigand <mweigand@mweigand.net>
In-Reply-To: <20230601-rk817_query_at_resume-v1-1-630b0adefbd9@mweigand.net>
References: <20230601-rk817_query_at_resume-v1-1-630b0adefbd9@mweigand.net>
Subject: Re: [PATCH] power: supply: rk817: query battery properties right
 after resume
Message-Id: <169470643667.728745.9541919851740286656.b4-ty@collabora.com>
Date: Thu, 14 Sep 2023 17:47:16 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_084720_734589_73D75F12 
X-CRM114-Status: UNSURE (   6.53  )
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


On Wed, 14 Jun 2023 20:10:43 +0200, Maximilian Weigand wrote:
> The driver reads battery properties every 8 seconds. In order to prevent
> problems with wrong property values right after resume, trigger an
> update of those properties on resuming the system and restart the
> 8-second interval from there.
> 
> 

Applied, thanks!

[1/1] power: supply: rk817: query battery properties right after resume
      commit: 1769142a14c34a8acd67657bc3e637f22f75e026

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
