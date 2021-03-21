Return-Path: <SRS0=Ii8/=IT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7595C433C1
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:15:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 44E7B61947
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:15:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 44E7B61947
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wAc6Z6EgBpKV3bq6lpUS2GQ+ldZOhZbd8rO6v6VlQTQ=; b=jw94426NRnz8BetgBNxKzb2V0
	S7HVuJHPyR3MZm0FtKjP0EMpOqmZ0hDOnRoxyOA6T65YKVoyM4lgJIYO1mN5rFNH4JPELq6+NptfA
	ir+gXRA+4rvur9fxqSUkhP6Xlc22XMQJpdQWfvEMXvzY3+E1uRTx4bFUK8F8B6uOvW13Qpgz/4zsc
	1hN4tyz85LbbGkc0/mjcYvJ299sxoksA8l3TZG3krV4N43GvDohULoFnom6vO0X5576z6JZ0gqNVy
	9Va7Jh8r0vSQlZqpPIP8kWvgTiW5AjpYSJ47SpqqBPMtc/XHbK4XdJsIJeI3AgKMTa3SkIujMQw0R
	qqqU5dSOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO4Tk-00AKre-8b; Sun, 21 Mar 2021 20:15:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO4TC-00AKmX-41; Sun, 21 Mar 2021 20:14:46 +0000
Received: from p508fc3a3.dip0.t-ipconnect.de ([80.143.195.163]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lO4T7-0007Oi-UH; Sun, 21 Mar 2021 21:14:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, cmuellner@linux.com,
 finley.xiao@rock-chips.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: synchronize rk3399 opps with
 vendor kernel
Date: Sun, 21 Mar 2021 21:14:31 +0100
Message-Id: <161635763247.767241.15196995855292324141.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210225133322.3420724-1-heiko@sntech.de>
References: <20210225133322.3420724-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_201444_224750_165AADE1 
X-CRM114-Status: GOOD (  10.15  )
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

On Thu, 25 Feb 2021 14:33:20 +0100, Heiko Stuebner wrote:
> The vendor-kernel did increase the minimum voltage for some low frequency
> opps to 825mV citing stability reasons. So do that in mainline as well
> and also use the ranged notation the vendor-kernel switched to, to give
> a bit more flexibility for different regulator setups.

Applied, thanks!

[1/3] arm64: dts: rockchip: synchronize rk3399 opps with vendor kernel
      commit: 6daae8ff20b8e9d67c282ba37c63e1a7ee3c2206
[2/3] arm64: dts: rockchip: used range'd gpu opps on rk3399
      commit: 6d5989a36e60614e12949c6c2dac368b380bf2ca
[3/3] arm64: dts: rockchip: drop separate opp table on rk3399-puma
      commit: b417764daa2d7e1325fe926144ffcb4b2bbd8d25

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
