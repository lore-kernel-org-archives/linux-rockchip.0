Return-Path: <SRS0=PA1q=K5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9960BC47082
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 09:56:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 08CAB613DA
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 09:56:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 08CAB613DA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA6xsPTEseA761q5IgA08SMPsRTSSC7irnzPlo7tvls=; b=Iv+Hgl0IVIk8kn
	+dyqul0XnnMOAfMaAurL1CQw93ZcZme7dL266pt21YcohTuIgHStEv6I1vExR5TH7V9Oh8MioIjkM
	VAth2Ljhg7XKGonjcPBXuVEGKu7EEdu46CsitSyCy7cToNMCRvQIy0meyvD+B4IHibueRUtSp/Axq
	kQNt/dGoW0YRIbaHBfsGLvtvTCs47fERImneP/StHZRX/UFXMyqrCATn08PpeOkp7lj2PljiM7z4Z
	8Zei3M91DFbX+hX0mASkd3SLeQFZxvAjsysaycGd2XexaUrCNhh0qx7QjfXLawebw8AvUZ+WZ8aFJ
	Bt+Q3f1v07sBXcW4t/PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lok5c-007wnH-TW; Thu, 03 Jun 2021 09:56:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lok5P-007wkX-Ha; Thu, 03 Jun 2021 09:56:24 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lok5L-0004PQ-8Y; Thu, 03 Jun 2021 11:56:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, kishon@ti.com, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/5] convert grf.txt to YAML
Date: Thu,  3 Jun 2021 11:56:16 +0200
Message-Id: <162271417225.3165003.9593649275522382168.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210601164800.7670-1-jbx6244@gmail.com>
References: <20210601164800.7670-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_025623_605840_180DC42C 
X-CRM114-Status: UNSURE (   9.49  )
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

On Tue, 1 Jun 2021 18:47:55 +0200, Johan Jonker wrote:
> Changed V7:
>   rebase
>   add compatible for rk3308 USB grf
>     add "rockchip,rk3308-usb2phy-grf" to "usb2phy@[0-9a-f]+$"
>     patternProperties too
>   add USB support to rk3308.dtsi
>     restyle
>     limit grf reg size
>     change sub nodename
>   remove applied patches
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: rename phy nodename in phy-rockchip-inno-usb2.yaml
      commit: e71ccdff376b0bd1bf4d47642b7ec4d791293b96
[2/5] dt-bindings: soc: rockchip: grf: add compatible for RK3308 USB grf
      commit: da76290fa39dc647bf7a1bac6467e66c8e465e54
[3/5] ARM: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
      commit: 2fd2300a9c17ee1c48b1b7a7fabbb90fd12a64f1
[4/5] arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
      commit: 8c3d64251ac5c5a3d10364f6b07d3603ac1e7b4a
[5/5] arm64: dts: rockchip: add USB support to rk3308.dtsi
      commit: 9fcf74b274a1dc5bcda37c34470061ef1e1130dd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
