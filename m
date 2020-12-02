Return-Path: <SRS0=yk8M=FG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79FA2C64E8A
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Dec 2020 07:24:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2AAF22203
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Dec 2020 07:24:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F2AAF22203
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0YnVU5eNYI9e/9cMh3TLXYVlif/HD5iIgFfzttierxA=; b=Q+12H+EQV8Sss6DMULs6UZRd7
	lq0znwq/DT7NRwx8p+rTSIXwtZO+Izxk+cPDBDw//LUlPFnaNzswwYl39JHLBADScVm/t2neaRTOW
	AZsfjZg1sxRdyb2n1Gbso2W03zWHFc8EuePrizfVyWt9U3IpfIwbgte2xjM2OPgVVloiCTgSWQnAU
	vZiDtfKHMY183B9444ZZ3ik7FrE9bB1cPbb2vWN0L/WV3NrLT6OnG0oD5EcMq1jJ9F8MQJVsia76Z
	zUil1Di0Xk3Rip/DB040niGNbIeUGQIdf3OuRdkzBJuzdI86DkyfWo9Y0aetuB1yw2djFFsq8KFST
	fiFib64kg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kkMUi-00066k-8w; Wed, 02 Dec 2020 07:24:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkMUf-00066C-74; Wed, 02 Dec 2020 07:24:05 +0000
Date: Wed, 2 Dec 2020 12:53:58 +0530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606893843;
 bh=GP2qsRdMb9wyNunurbinjChqWadXkhBC/ArZI74JxWA=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=BY/hSeVVS2HEYLGI4+RNlqebVKqloj6PeyLHOs1CeHaqGJ3Q0Ov+1XH5AwktRtqPf
 LqJJz4mw4wAEVzSOJnup1Xy30qMPU1xfV29YfQ3s0YtXRRtUaaxh7J1yUqxKXeeCZV
 vZgCh5aqqYkyGS+tsWOXf8uZKqk4qp6KAD2dTNHE=
From: Vinod Koul <vkoul@kernel.org>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Subject: Re: [PATCH] phy/rockchip: Make PHY_ROCKCHIP_INNO_HDMI depend on
 HAS_IOMEM to fix build error
Message-ID: <20201202072358.GI8403@vkoul-mobl>
References: <1606216287-14648-1-git-send-email-yangtiezhu@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1606216287-14648-1-git-send-email-yangtiezhu@loongson.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201202_022405_345856_7089FCD0 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Xuefeng Li <lixuefeng@loongson.cn>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 24-11-20, 19:11, Tiezhu Yang wrote:
> devm_ioremap_resource() will be not built in lib/devres.c if
> CONFIG_HAS_IOMEM is not set, and then there exists a build
> error about undefined reference to "devm_ioremap_resource"
> in the file phy-rockchip-inno-hdmi.c under COMPILE_TEST and
> CONFIG_PHY_ROCKCHIP_INNO_HDMI, make PHY_ROCKCHIP_INNO_HDMI
> depend on HAS_IOMEM to fix it.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
