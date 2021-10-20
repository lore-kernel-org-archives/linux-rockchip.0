Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EED5C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 08:07:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB90061038
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 08:07:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EB90061038
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0stV4z0l4Barl167TQZRZ5DACQCYbjghRkVlAOR9Ys=; b=XZNCkQMF4t2+gt
	o5Arguz4QzsYK/svP0XsdFIJlA8cb2YUpKJYczAZbr0Wfnb3IABHGTSOyX6dvZHzmssFdWEp/t7VS
	6yInEszJ7+6f6/xVOkXn0iYhTtijbnjVeLmeVoO9Xbb+r75WVP0Pw1J40lGAPCZK6oExV0h6chnod
	fjAl0jVRlcQC43M6xdqCJiDpBkSd4O6YKGeVgWGIcWa2V2pyzh7JJ9/meC99ZACPmgIWmg/r6/XoT
	KWbGohyDZdVvaK9ovTpSq56OEtUumXy3T7YaIiwVFcjWlzNGbDw+KIgQA6tfD1SC19Q5xq1xyZXw2
	T9t9sTd3aLpc/ekbuOBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md6IX-003her-NN; Wed, 20 Oct 2021 07:46:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md6IE-003hYL-SC; Wed, 20 Oct 2021 07:45:48 +0000
Received: from [213.208.157.36] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1md6IA-0002EF-W5; Wed, 20 Oct 2021 09:45:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org, kishon@ti.com
Subject: Re: (subset) [PATCH 1/2] dt-bindings: phy: rockchip: remove usb-phy
 fallback string for rk3066a/rk3188
Date: Wed, 20 Oct 2021 09:45:31 +0200
Message-Id: <163471592707.690007.3298750911238930727.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210828111218.10026-1-jbx6244@gmail.com>
References: <20210828111218.10026-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_004546_939279_6AF2C8E9 
X-CRM114-Status: GOOD (  10.59  )
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

On Sat, 28 Aug 2021 13:12:17 +0200, Johan Jonker wrote:
> With the conversion of rockchip-usb-phy.yaml a long time used fallback
> string for rk3066a/rk3188 was added. The linux driver doesn't do much with
> the GRF phy address range, however the u-boot driver rockchip_usb2_phy.c
> does. The bits in GRF_UOC0_CON2 for rk3066a/rk3188 and rk3288 for example
> don't match. Remove the usb-phy fallback string for rk3066a/rk3188
> to prevent possible strange side effects.

Applied, thanks!

[2/2] ARM: dts: rockchip: remove usb-phy fallback string for rk3066a/rk3188
      commit: 97ef6931208f7ab09f52dd291320aa53878aaa53

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
