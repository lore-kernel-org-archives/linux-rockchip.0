Return-Path: <SRS0=wzRa=IX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80786C433C1
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 00:51:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6A5C861A13
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 00:51:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6A5C861A13
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T0Nhta83DvqLAc84IUtVGpKbHZNxCk4GTyc49vQ7EJY=; b=QlDvGegSWo3KIXZ7FnaK86+fw
	YpDWqC8O2A5elvbM5mM3yv60MB+/E3saGjZLok/E++Q5kgNed8j1O3FlasRUX/kWTnoFzm47K5jdM
	r9k1YAB/GV5ZHU9r19m5/RmiCWy7i94BcvwfYlAcEEPapwaxGsh1IwcLO9p1pAIODsO88ku84Wh20
	3RSYTu4WVs7cs1rwEn8fPlRz8mBdnFDc1ltykXNF70PmOPIRjm+ZKwvKeIKqe9RUiD5iNz/Ccou/Y
	ZBc84/8G1kXj00/HjzYbxfvihzgqcrZ13a/hkLdZTUrpUk0YMBx3WIRgW4rFAZhT2GvTwdJic5JWh
	s0b8lEO3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPEDP-000Oba-Kg; Thu, 25 Mar 2021 00:51:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPEDE-000OaL-I2; Thu, 25 Mar 2021 00:51:03 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lPEDC-0003K7-5V; Thu, 25 Mar 2021 01:50:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-rockchip@lists.infradead.org, gregkh@linuxfoundation.org,
 balbi@kernel.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v5 1/8] dt-bindings: usb: convert rockchip,
 dwc3.txt to yaml
Date: Thu, 25 Mar 2021 01:50:55 +0100
Message-Id: <161663335606.1190848.13995758068048147033.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209192350.7130-1-jbx6244@gmail.com>
References: <20210209192350.7130-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_005100_719336_9A74028F 
X-CRM114-Status: GOOD (  10.28  )
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

On Tue, 9 Feb 2021 20:23:43 +0100, Johan Jonker wrote:
> In the past Rockchip dwc3 usb nodes were manually checked.
> With the conversion of snps,dwc3.yaml as common document
> we now can convert rockchip,dwc3.txt to yaml as well.
> Remove node wrapper.
> 
> Added properties for rk3399 are:
>   power-domains
>   resets
>   reset-names

Applied, thanks!

[7/8] arm64: dts: rockchip: add rk3328 dwc3 usb controller node
      commit: 44dd5e2106dc2fd01697b539085818d1d1c58df0
[8/8] dts64: rockchip: enable dwc3 usb for A95X Z2
      commit: f227197bdf91a58903753ff18f5d0ad8f170e4b5

Changed the title of the last patch to the more appropriate
      arm64: dts: rockchip: enable dwc3 usb for A95X Z2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
