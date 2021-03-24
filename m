Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C29FC433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 03:23:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A2FFE619E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 03:23:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A2FFE619E6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MzX0xamvFTzrJCKLWyOw5D9KMMKw2Y4g91Ppw8Wlk7o=; b=AA1b+81B1hRy3RdaI8Si0q4FMS
	ztgUi5GSM8O00/SagPVVeiznfpUoCmTqRhVdTkfsM2USlGixIDHQHq6LjSpyGQ/EBk6K7ECT5mYvI
	C6fpR+RSFDksoy/NYR+yM9hQ3GIa/c7BhqCOwRLSST7JohjPVabYLxxfyC5wMTHEGIu3CQevF8jvt
	9Y6AQ7ENBUPlgdJDGROuzNyumk0pDnm1bq385Fya90RxMjdA87TUIlEdDSpQSbL8zcdzIGC02j+P6
	YcDLcQFD3EIWIch1eHA7mDD/pTVIw7RJf1BUI9V/BHYoXhgzgEr0g2swxCF/HJOEQKKVKtFtwFc9d
	Iek/KyIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOu7G-00GEtQ-0o; Wed, 24 Mar 2021 03:23:30 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOu72-00GEr0-TJ; Wed, 24 Mar 2021 03:23:20 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 9FCEEF3344;
 Wed, 24 Mar 2021 11:23:10 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13109T139929674307328S1616556189578495_; 
 Wed, 24 Mar 2021 11:23:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cdee19ffc678ee8e11142310d3e75f1e>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v3 0/3] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Wed, 24 Mar 2021 11:23:05 +0800
Message-Id: <20210324032308.6309-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_032317_301641_92D6D64A 
X-CRM114-Status: UNSURE (   9.53  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Support power domain function for RK3568 Soc.

Change in V3:
[PATCH v3 1/3]: No change.
[PATCH v3 2/3]: Fix up the code styles and add rk3568 base on:
https://patchwork.kernel.org/project/linux-rockchip/patch/20210225102643.653095-1-enric.balletbo@collabora.com/
[PATCH v3 3/3]: No change.

Change in V2:
[PATCH v2 1/3]: No change.
[PATCH v2 2/3]: Fix up yaml code styles.
[PATCH v2 3/3]: No change.

Elaine Zhang (3):
  dt-bindings: add power-domain header for RK3568 SoCs
  dt-bindings: Convert the rockchip power_domain to YAML and extend
  soc: rockchip: power-domain: add rk3568 powerdomains

 .../power/rockchip,power-controller.yaml      | 286 ++++++++++++++++++
 .../bindings/soc/rockchip/power_domain.txt    | 136 ---------
 drivers/soc/rockchip/pm_domains.c             |  31 ++
 include/dt-bindings/power/rk3568-power.h      |  32 ++
 4 files changed, 349 insertions(+), 136 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
 create mode 100644 include/dt-bindings/power/rk3568-power.h

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
