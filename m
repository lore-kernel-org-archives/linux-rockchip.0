Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E55DC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 19:59:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07C156100B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 19:59:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 07C156100B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkkGeiYXHvnUB00lywWAQw5+yim5gUuwHBuyDHOH5F4=; b=I0YO58CfCHzVXQ
	SbUG68xNb6/vtbQgIf7BdfPHJGkMcJ9p7O0mPk06eFkObGh68hl3JlYO1f7hqMHRaplZcoX8nvI5o
	7XtsOJ+mKsWWE0KyM+oCGCBNBrIRjJ5htpz6omYXShEMIN/9GggF0W6ATRD61s971dcJtmdnUnwAc
	6C3IWH0IXZWsZnW2QBcg5i5wAPvKzpdq73Bg15XoqXcyIXehlv0YD4DyAntw3Fy0Z2l790yIHjcDd
	NBdjAipWrWb7yKr928Y2pXTbd5fPw2enwud5yJH8VxN71a0ZPDRaloILl9fLOyyAs3UA5NaLzBV+m
	HZTB8ifmdgpRIGqoz5Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvmYj-008HCT-HQ; Tue, 22 Jun 2021 19:59:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvmYh-008HBo-Ho
 for linux-rockchip@lists.infradead.org; Tue, 22 Jun 2021 19:59:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D545C611CE;
 Tue, 22 Jun 2021 19:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624391983;
 bh=iJZU1mLgSvHpTDnNqWBtFOnV6/1UXxJ2KdDlFoEyjHQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=gRY5mODRMM8hC+ju12tpU5/hm55jqVsWj5RGVumOVSln5qXifFn9a2C69k0ZCRVdA
 LZ4JqR18GKvgbb4MoHCWGCVD5WvruVwyRoiSfj6t32VchaL54+C5kfqGUsAcrZZao6
 PDfOKdn8Wm5BCq1EZeIHluZ3sB6guD2TQRIWwrguusLOaA4ofVyDmULXUs4H0+0R8L
 C2Q1aI37arELLYy6kNs3Lxso/W3XPbSSAxZ9KvdTzJw6d31jxl6dLLAR97ZLrafqzn
 CXKoP/E3FOR2Q/Wlum5Vdn0lD9OmC1Uv2kSfIiAN7n3gmgrJJqpQVD0jsgsP0+NKe3
 3KGJ9JRFwfVBQ==
MIME-Version: 1.0
In-Reply-To: <4340280.LvFx2qVVIh@phil>
References: <4340280.LvFx2qVVIh@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.14
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 22 Jun 2021 12:59:41 -0700
Message-ID: <162439198156.3552334.16445859558117444993@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_125943_643702_C2B3080B 
X-CRM114-Status: UNSURE (   6.18  )
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

Quoting Heiko Stuebner (2021-06-20 15:31:52)
> Hi Mike, Stephen,
> 
> please find below Rockchip clock changes for 5.14
> 
> Please pull, thanks
> Heiko
> 
> The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> 
>   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.14-rockchip-clk1
> 
> for you to fetch changes up to 2adafc0512625bbd090dc37a353ddda15d525e9d:
> 
>   clk: rockchip: export ACLK_VCODEC for RK3036 (2021-05-28 17:53:19 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
