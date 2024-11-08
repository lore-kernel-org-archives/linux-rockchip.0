Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9FBFD5C0F0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 15:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSeVlxar9EtPyXCfqFxqnIAJU6LyGFZ439dDzldC4iQ=; b=w+o5x+E0yD4tjN
	lwC6IfcUkwTFdnm7LtCbGgui1Dei9etB5CY90bHZGHEcfhogkRBvy31JiMujRZvozSNCDCrAWkX2B
	NcaPYUwDls4PXqE0hQ4Ayh1f5v9FDcoxkwFmUg2dW73xkYv1CcqNQBd+qEnEjwaCKfwoQZnmORWBZ
	gNML3jMgtHH2T+VC5Swkw9gmO2RBJ9WW5uk9RSs+aST88kdYP02905Gwo/EW+6GN4jXsRx4BWgjOr
	Vbyy0srZ/HmYXAPz68n2q0pA5z1fP+YUFgRmFS+NXVGylvgGCBtsC9pPZOGgwKKan6WH+Uo59cGiG
	dJ/arJEgb+fkpFICx7ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9RD2-0000000B5mZ-40vw;
	Fri, 08 Nov 2024 15:47:40 +0000
Received: from smtp.domeneshop.no ([194.63.252.55])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9QYA-0000000Axgs-19qi
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 15:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=skogtun.org
	; s=ds202312; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:Sender:Reply-To:
	Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=m9KNQYKKXeeykuZBwDGjsW+qvLDcewA69SOG2PRvurA=; b=7
	XDt/9sDo9Yx28ct5O3xDSpsQbsdrD9F2/YSjPbm/8xn0F5xiGlhR8Hz3a8OFTsV0plwqoA6jqob4t
	Q8kH1ahnt8Q4T8r7NgfW1LdsprXHp+ReKpdyvRSZKI+JtsVJ4DsMh2eiHMJIU9LvO7i9tIWHPHjKH
	FLuHYLKD+yTOalGcPZcLIetYj8ssuTmJQqjD+GkU42BKt8qIZHys/eYjopBAZGkBgpjhjAQgBK5aZ
	drdy78b/WOzft5AuXe4d04PW9CqaWS3YmJPc5f0wB+YdyNOueILCd5nPere7eSUYTH3D9e/H86Ru2
	egV125xHg7V4JuOx6SN4c3NwO87Fz7F7A==;
Received: from smtp
	by smtp.domeneshop.no with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	id 1t9QY2-00CSMU-OW;
	Fri, 08 Nov 2024 16:05:18 +0100
Message-ID: <93f4889a-90ed-460d-b5bc-d566031b75d3@skogtun.org>
Date: Fri, 8 Nov 2024 16:05:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Q: Kconfig: 'If unsure, say N'
Content-Language: en-US
To: Diederik de Haas <didi.debian@cknow.org>, linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <D5GVI1Q30BTS.1ZVQ4YC4OJYEL@cknow.org>
From: Harald Arnesen <linux@skogtun.org>
In-Reply-To: <D5GVI1Q30BTS.1ZVQ4YC4OJYEL@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_070526_673577_36499CCA 
X-CRM114-Status: UNSURE (   3.98  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Diederik de Haas [2024-11-08 15:39:30]:

> In quite a number of Kconfig help text entries I see this:
> "If unsure, say N."
> 
> But that raises the question: How can I be sure?

I usually interpret this as "If you don't know that you need it, you 
probably don't".
-- 
Hilsen Harald

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
