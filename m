Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0DFFC46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04sOATriVr4KkERXo1mYT4MRRBm6+5aWcAyxNft94ZM=; b=oKaewfcLVv0an8
	y7UwCQX/OG3Aq/2AyN8zN5Gx7+1EHV9Rd6gxdV27kl1ScRdL3yl/5ODIdw0hPpV4UevdPSaPfN48L
	YREqsamjVe/Mrwhkfvr3CCYIdMEibJf5MKn/+Prth+zJOX/J7DRd9bCRXWe29y06bYPB43fr78HR2
	f86r5WWgn6LrvqQTEzBYvBgwWDAnCdoHJIsEU6YppfDNNLMp6XlmRzPb8DhXeOvye5SNmGcvbipJh
	pVSLz+b14UadYxsP20P4d6wQCCHRTftFhCmQSuqaGMVCCFGmPpSjqMB45PpESEe0ZLB/RDUfvFIGd
	4zhJeg4HjOmhksSfQgYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYgj-00AuiR-D1; Wed, 11 Jan 2023 10:50:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYev-00AtYt-CX; Wed, 11 Jan 2023 10:48:42 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYen-0004Wz-VB; Wed, 11 Jan 2023 11:48:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3288: add power-domains property to dp node
Date: Wed, 11 Jan 2023 11:48:28 +0100
Message-Id: <167343400178.2680857.16763957383621021905.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <dab85bfb-9f55-86a1-5cd5-7388c43e0ec5@gmail.com>
References: <dab85bfb-9f55-86a1-5cd5-7388c43e0ec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024841_450753_D42EC6DB 
X-CRM114-Status: GOOD (  10.25  )
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

On Wed, 28 Dec 2022 21:17:32 +0100, Johan Jonker wrote:
> The clocks in the Rockchip rk3288 DisplayPort node are
> included in the power-domain@RK3288_PD_VIO logic, but the
> power-domains property in the dp node is missing, so fix it.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3288: add power-domains property to dp node
      commit: 80422339a75088322b4d3884bd12fa0fe5d11050

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
