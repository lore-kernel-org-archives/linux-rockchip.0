Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 057E2C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Mar 2022 00:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0iOY8nOohKIvWvYdgWIfRSXemRzRynoLvuQJMXHuRo=; b=mimrf4BC6Q+FTX
	JBygVb63T1Gy8I7w98bjbcDqCNfYaKetSIGV3P55HqYzufZmYUv8YtuBEI1bmtO0CRSXES72pbtt+
	ipEk0N/YpuJYjvTqaRaOFqXSRFofrDMKlMb+aGszyVLOYjcUPzigQ0ZH7R7L6hFJKB5ntNrNsQv96
	9kPQSQj31XUsgf+jAIhatJyYgk3FfpG7misY0182NfkC8menWSSHFkXnUT/QKzHqFhiDbJwgPqKO7
	usNlIUHuVAmfsyjMnqQzlXZg0N7Z6BL7XIU6x0L3u3JeiKOEo0NXDPDTVHwd/SJ6w3DpbOEKHqWAF
	RYg319tgD0fs/Apd0sqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXYB8-000kq1-0t; Fri, 25 Mar 2022 00:51:46 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXYAv-000knW-RM; Fri, 25 Mar 2022 00:51:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1EC42B82708;
 Fri, 25 Mar 2022 00:51:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C45A3C340EC;
 Fri, 25 Mar 2022 00:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648169490;
 bh=o5w4forM0PQDaQou02BEP4f9ZlEL8vngVEYp+H2Z3UM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=E0xOsdDMVk16VFeeZBne45dxJSO/iA356gJi7Z4Af44CvpscVIV0Z87Faz0iu/bAL
 GJkND377RHIiVF82EvSzitCu2iM1v6FqM4TegzUSxZuK+paMFL3uRS6QV0krWB9ElQ
 ACGmqg7tAOMWr9mgjnbg3+nHKx9EN18fsLuD2DD81ZXh913Iy8HIph4zrpnOHXJtgG
 C53Cyj9wurTyTRb/gS/a95GtTSgZ7H5/VZYKv4JI+phTw9azcA2oHvJsQs6KtYLgzQ
 5/ArwYJWb5P5GEd8b2uMIGEH9kcEQ/zeUXoGsEpZwVapWRHdCxk2S4HJc8JgiWd2CV
 CAq08Lr3cumiw==
MIME-Version: 1.0
In-Reply-To: <bf62ad40-6bcf-62ae-f56a-cdc8d17456ec@gmail.com>
References: <20220324133229.24035-1-jbx6244@gmail.com>
 <f7493d93-6c8a-efa9-1f2c-a0003a6d43b2@kernel.org>
 <bf62ad40-6bcf-62ae-f56a-cdc8d17456ec@gmail.com>
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 heiko@sntech.de
Date: Thu, 24 Mar 2022 17:51:28 -0700
User-Agent: alot/0.10
Message-Id: <20220325005130.C45A3C340EC@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_175134_058652_B810FD0F 
X-CRM114-Status: UNSURE (   9.12  )
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

Quoting Johan Jonker (2022-03-24 12:51:36)
> Hi Heiko, Krzysztof,
> 
> Question for the Rockchip clock maintainer:
> What clock should be used here and other SoCs with several clock parents
> in the tree?
> 
> The clock.yaml produces a lot off notifications like:
> 
> /arch/arm/boot/dts/rk3036-evb.dtb: clock-controller@20000000: 'clocks'
> is a dependency of 'assigned-clocks'

'clocks' is not a dependency of 'assigned-clocks'. The dt-schema should
be fixed to remove that requirement.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
