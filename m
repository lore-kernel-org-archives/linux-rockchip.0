Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 184D4C636CA
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:45:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E0416128D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:45:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8E0416128D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tl73LybN+XM6M6UMRXHNu1NDqkbwmKOKDFetfAFAwDo=; b=OwmTvf6bHjFuMo
	ZuQldOSXZGIpge4k+CMnzgT8xdZ/n3ElqgnucDSxidWgGlKlFWpq552Zi57kWQ+BjZ+AoOMTmiN9g
	l/xfeN8XI4bmJLxF+CvHa708/c4kdzxJw8Z+OmoSEpJg5+tjdnV4paavKSC8xRe9VfwVT65Uj3JHi
	UI0zywXeqALrSz3eMR+F6e5H2k+7lb0YJU8LCsxmlzeuO+GqFFekWVfSdfzMcWkQsPAjrEM25uJFc
	I8kKum7FhtCTaLn8ArdIY5QHZh1hdQmkMAM+Y9alUmcr29DQRhqgVT9o27p4EwXYuohOLs0DJms1F
	80PRYrNXdtM2NDZwopKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4A6M-002Vef-Az; Thu, 15 Jul 2021 22:45:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4A4M-002UlU-JT; Thu, 15 Jul 2021 22:43:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4A4I-0005t7-Bw; Fri, 16 Jul 2021 00:42:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: power: convert rockchip-io-domain.txt
 to YAML
Date: Fri, 16 Jul 2021 00:42:53 +0200
Message-Id: <162638886252.651069.5910265386480251787.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625111746.6269-1-jbx6244@gmail.com>
References: <20210625111746.6269-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_154302_677302_6BD072BA 
X-CRM114-Status: GOOD (  10.27  )
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

On Fri, 25 Jun 2021 13:17:43 +0200, Johan Jonker wrote:
> Current dts files with 'io-domains' nodes are manually verified.
> In order to automate this process rockchip-io-domain.txt has to be
> converted to YAML.
> 
> Changed:
>   Add supply properties for:
>     rockchip,rk3328-io-voltage-domain
>     rockchip,rv1108-io-voltage-domain
>     rockchip,rv1108-pmu-io-voltage-domain

Applied, thanks!

[1/4] dt-bindings: power: convert rockchip-io-domain.txt to YAML
      commit: 742f62cb06720c12677f0bb05c64c9eeab34c8ec
[2/4] dt-bindings: soc: rockchip: add rockchip-io-domain.yaml object to grf.yaml
      commit: 959e131fb5c3a08293178e94a184b5bf28974bb4
[3/4] ARM: dts: rockchip: add io-domains node to rk3188.dtsi
      commit: 453da32aca12d91b096934a4870ec72e34d61447
[4/4] ARM: dts: rockchip: add io-domains nodes to rv1108.dtsi
      commit: c0728a2732f0fe2b5e7c57b8c0c170352ace6476

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
