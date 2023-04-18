Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 865D6C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 19:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRyoVqwUgtCOKclqOIhbe880jt7pwommw9WN5Rpdgag=; b=2gGmp1Ah2/cxoV
	ZKILhe2T9iK+BlfDtTK681ruHpqs1jU9znxBxzZpNTIPlWDwVRXL5szvEHd4P4O6LLu/npHjIPvvZ
	2fSOX++UDA5C+zgB5QlqeClm7+RGJE98aLrdIEtoGBsed2vrroCW+HlP95EvH+C5k7dLN4qwTr30c
	tIVJxDQ8ijF8qMJIOS9ho/49zEcX/iGQ8Kv+d3EiVGUfUqG3RD1SziDoSiY32aj4LpzEiQIHiW5ig
	KxsTOWQ10Wp4C0d6w+NPf8xR9GT9FPSwMYMtVNRMX0k7XmiddFfZgzH7O/LclCuRIOM2j6QG3UvD7
	yS2cR61P32wZkqGLBINg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1porNP-003DXe-0T;
	Tue, 18 Apr 2023 19:52:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1porNM-003DWP-2n
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Apr 2023 19:52:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C589462E69;
	Tue, 18 Apr 2023 19:52:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D9F2C433D2;
	Tue, 18 Apr 2023 19:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681847545;
	bh=QasSaerAtohg7ykreL21ffqcC+7SvICpzBMcX8ZdkA0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=XuslHpNzXY2xmqlQ4PlmaTwTOJZwZ9CFEeSfukfQTbI/NxA9GOdxlBSBKAWvi+LDI
	 iA7Qy08SpiN2VRnWXBiowzovDpwNslABKmInOPYD+tqPCpUrJ9WL76EL0UyQ18RVyJ
	 rU2BzEnjnJrJxicH00JyoOyi/lGJcd/qAJyPwyW4d0LHGo20b9KTfqVqZWCmp617c3
	 f1lohOO4H9QsA0Ra0m2hIROf99tet4ZNsuWVpc12rVfY85t7EKpzQ084++lAY5MqQy
	 E1B2qDIFQI8dMljLHWzj3JryUcBbQnuPsc+iin23FQDlnKQxu6pIiTpcsIT+RtuSP8
	 FfE+eSyR99jbA==
Message-ID: <56408ef68eff1456426ef0e62fdb3b99.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <3292931.atdPhlSkOF@phil>
References: <3292931.atdPhlSkOF@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.4 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 18 Apr 2023 12:52:22 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_125228_962489_1513C3F3 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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

Quoting Heiko Stuebner (2023-04-17 16:46:35)
> Hi Mike, Stephen,
> 
> please find below a pull-request with some small Rockchip stuff.
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit fe15c26ee26efa11741a7b632e9f23b01aca4cc6:
> 
>   Linux 6.3-rc1 (2023-03-05 14:52:03 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.4-rockchip-clk1
> 
> for you to fetch changes up to 64042c28c3bb6729df8e2fda89bc7ebbe3790907:
> 
>   clk: rockchip: rk3588: make gate linked clocks critical (2023-04-18 00:54:04 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
