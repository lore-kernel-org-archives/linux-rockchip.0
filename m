Return-Path: <SRS0=cCFl=KE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F267C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:57:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 921CF61055
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:57:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 921CF61055
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M0a1nupDIGe9xdNSSXcdtGZOGnQo+eN7/apiY4ovoB8=; b=De260127Od47abd9UNFzxWp/q
	RQ0SPKNGr/RV064kjToCg7MqUxXRmYqg4VvgDx9zTdne2+qTsxemOwyoNsuboB+/jU4GsRS/fzHsq
	muqkIWhLSQu36I3dDlJy+qwWIgKe9sSw29UlokQpS4M+8BPmccY56KsDD7Oy8r1C/MMpX5oX75WTo
	AEhcg0XI13UbpIhmwP7pfPQxDVHXk9/ScRwFjvuOZ9ZC1uaDTlpPO7lUrQVxAdQp7Af872WKMNHYp
	NvFVeTMuHhyxCM0CT/j3boPMywapus1SxPk5LFWwtGwNBZocJRJ7Gir0eLM1pD036N5Ba2seUqWP5
	Kccq0e30A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftIO-00CYAI-0Q; Sun, 09 May 2021 23:57:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGf-00CY0f-1G; Sun, 09 May 2021 23:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=MTpfcJhGLrxUFjFFsbIbcpDMqB8z1u9G8s9JrP7zDdg=; b=X/8Z1ZU5frflBKdkYraENljFR5
 TayWUbHnka+JZggKndJ6wQpyn5v15GfyOgKHh5cB2Ifr59MGx5suMWUtzCMCBOHjPIijEC/RbT9P/
 A+tMVMy1VkYfxm4BuJriVp9X9lpROTYzgKGe+OACVWkyKzfyXrtkBIxeX78earBcCstt49ElxSMkv
 ymWJMfdE1ibUahDXtNeY3qvssgkRzf3WMfCjTeM4eNWx/jPXl0Sd8dyj0nF8Z2snhC5uW7xzuHY6N
 1H4PBQC52mheGJcieWrZXzjMekUR3c9V3mmHUZ9SC3dN1xvemUz1faC5NkdN6ZTdTp6gTfyIWeHIR
 cKyGmFFw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGb-008A0o-Sl; Sun, 09 May 2021 23:55:23 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftGU-0007y6-Cu; Mon, 10 May 2021 01:55:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: fix pinctrl sleep nodename for
 rk3036-kylin and rk3288
Date: Mon, 10 May 2021 01:55:07 +0200
Message-Id: <162060449718.1266480.9605079619831759008.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210126110221.10815-1-jbx6244@gmail.com>
References: <20210126110221.10815-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_165521_944843_46E1F2DE 
X-CRM114-Status: GOOD (  11.22  )
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

On Tue, 26 Jan 2021 12:02:20 +0100, Johan Jonker wrote:
> A test with the command below aimed at powerpc generates
> notifications in the Rockchip ARM tree.
> 
> Fix pinctrl "sleep" nodename by renaming it to "suspend"
> for rk3036-kylin and rk3288
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml

Applied, thanks!

[1/2] ARM: dts: rockchip: fix pinctrl sleep nodename for rk3036-kylin and rk3288
      commit: dfbfb86a43f9a5bbd166d88bca9e07ee4e1bff31
[2/2] arm64: dts: rockchip: fix pinctrl sleep nodename for rk3399.dtsi
      commit: a7ecfad495f8af63a5cb332c91f60ab2018897f5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
