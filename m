Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D4BC021A4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Feb 2025 13:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvyDASrp1DtPJMRllpcEWjSyUyhJ445WAgyKTn9VptQ=; b=JZHcQfDXYgCKVL
	XdrOHVt5u2W72iS6Yu2lNkjFDLDGsP2Z6JGAKY0EgRLxQ32EhXU3Qfhjh1OWNsu4cM6gF91KxbmRa
	VI8q6OPGuFdgZExm4Z8hpZqAZHAFNcUSFdXu5YIFklXtCR3pRYvmni2uwo27+lsLwjQqeZ0Vp/3/r
	AQQK0OxSriplutLpvckCTQa4rgTlJS+L9nKs/HxV0AFscJbc3aCufFznmOLkK+CYSOtEm6RTbxNFP
	ohSPdSesENHFmdw68lak4a2d8UhO7JYXEyDVq944Qlzvs2EgvMyoaF9N0sWLprKS0ppo1iLqDA249
	POajFEcUoGrR+6P7UE8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tivmo-0000000F1Ri-0N8m;
	Fri, 14 Feb 2025 13:31:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tivZp-0000000EyB0-0R3y;
	Fri, 14 Feb 2025 13:17:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2F42DA42A49;
	Fri, 14 Feb 2025 13:16:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 734BCC4CED1;
	Fri, 14 Feb 2025 13:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739539072;
	bh=jqUXucE5Y4nnB+VCTZkmpXrxMC8l+mi2tGy84H4NNcY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TA6GhCrkdeoyZ5SzBg9K1++CCYtZopNSkfoJKp5TVTl43wxm4RcZRUW7L4mc9XA4j
	 Cvp7r53ipc1n8369y0LS7agRgFAKbncFPfWorj3pja+EVgr36Ze+ihNdpuBLo3YnZz
	 t7lwQkzNHaYJnJNTV6DQ7BFsjhIGh+Qitu8Wx2SiAQCL2i8XzEG5w6G/SfPN+6rv0I
	 0YszU2thKURbZ0BWZABEOxx0FFkThvpXD8q3o//j9vRt/8B9A5jfPk9P8X5XJZTJfw
	 hln7ZL23ICgjtu+/k1+9/3W8VtJXeIMWSMgkRmF2803s2sCs9f7lLNK1YIPPxn0jOU
	 xqkI0KWRLUzdw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, heiko@sntech.de, 
 Damon Ding <damon.ding@rock-chips.com>
Cc: dmitry.baryshkov@linaro.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250205105157.580060-1-damon.ding@rock-chips.com>
References: <20250205105157.580060-1-damon.ding@rock-chips.com>
Subject: Re: [PATCH v7 0/4] Add eDP mode support for Rockchip Samsung HDPTX
 PHY
Message-Id: <173953906904.3648.15167583228887227483.b4-ty@kernel.org>
Date: Fri, 14 Feb 2025 18:47:49 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_051753_199055_F5A25DC7 
X-CRM114-Status: UNSURE (   5.17  )
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


On Wed, 05 Feb 2025 18:51:53 +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=927102
> 
> Damon Ding (4):
>   phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
>     ROPLL_REF
>   phy: phy-rockchip-samsung-hdptx: Supplement some register names with
>     their full version
>   phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
>     registers
>   phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588
> 
> [...]

Applied, thanks!

[1/4] phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and ROPLL_REF
      commit: 2947c8065e9efdd3b6434d2817dc8896234a3fc0
[2/4] phy: phy-rockchip-samsung-hdptx: Supplement some register names with their full version
      commit: f706024107204cb0b640bac35ea47e7b91b8c71f
[3/4] phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all registers
      commit: 2dc8224e3758c5d6387786ea1d74d2d510149b1a
[4/4] phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588
      commit: 8f831f272b4c89aa13b45bd010c2c18ad97a3f1b

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
