Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D6CC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1557261004
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1557261004
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6M0pxSri+/FJmZzcLHAl9CbwgqD52jGUWfoHYaNMLX0=; b=S2so+/gfHh3NUKXSHsnbX8OWPa
	S8eYNMs1rCcNO7+MWo77IoUo1DMskF1v3KI/HRr6F+v3KvR2L85bnC1NEzTrn5uzj/IlO3wMgxLeO
	+TQDLXwWwV+8oAFO0FvLe3R87KpoQDhvEAhRWR75sxPPSnEuHWH/F7mgl+LBUHt9plbA71pDYIm/m
	jp2RiR1NQxmBjtF4p4Rh3M444mYRm8h8h0pAE6IUQg495P4/HYnAQNI0pnKLyHderQr2olugw5NoZ
	uwUPPRzPymmTbolO9guw1l8d7E59G7ULMXK8WR/YMPUOdEi8IpcP0qTb0hIOBgs9bVEvIrhm03S3n
	aPyZ+WBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldqYs-00Fl9P-UF; Tue, 04 May 2021 08:37:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXd-00Fklb-Ah; Tue, 04 May 2021 08:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=wub7vVgTCDoHxs/5jS+XmEbs6bCMSNg+89FjazuZavw=; b=ESvrOF2iQatfbJ3peYDM9gWOMP
 +n7vS2USlJ81imWJW075kazQWssSlPYYPUmu6DcKGFN/PQnLaQBGQCu74cnG1+OiPSL8PJlqjN7AA
 zXtRHpswOuRdXpuSFa7SMcrjGvB/clnC1p6P2DgAWrMAXsL74Elr1nJrNiuP/OxoFuVWHaGqn99OR
 v669egCx+AAx5RoodDr/zcDIJ4ZfUnuqsRX3bB4zbMNktrhtFkC1pCk7ucfDYmSOqiwRauFhACTVN
 U9eqLizT3PTbGfpC7eizRyjq1ybeU0R0f581KRbZHG/9h6F2/xsJ7EuhOKvQBXc0zCtUwJthIBB1m
 xFiYkdJg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXa-003osc-1j; Tue, 04 May 2021 08:36:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 52435613B3;
 Tue,  4 May 2021 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620117385;
 bh=P4R0wIusFfi+tbxKIZS7tgEnt8ABZzayysHovlokyMo=;
 h=From:To:Cc:Subject:Date:From;
 b=bIPqeI8pW4RBFXUepre+PYKq1BHhmvJ8C6VpOjZxh6kF+0XT6h8eqrIvVbE/eQfhQ
 DpqV+H2if46G4y+VWTPXKdUdvyoephpaqXzg3O+hvkhTJH3AvfpjtPHlcwSMmXkehY
 4KH/zPjsTHKa5MImDS81sei29P9hyeYRSiqAdFgYSFOEp3sNzXxC06kr/eOBBONFY9
 INf71MfINptRxTHQk+e0XvfqiwbXMu8zXAItR9rGfwBHn8qAG6jGtPeD9ErfF9478W
 bDg3r5cI6UyBQv42V9jjT0ZWTCcfuL9BEnXDo52lj1fjemB+Sl6zlrwgy8VkRO7Onp
 I/BenehoI9oSw==
Received: by wens.tw (Postfix, from userid 1000)
 id 2BA645FBFA; Tue,  4 May 2021 16:36:23 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: rockchip: rk3328: Enable USB3 on some SBCs
Date: Tue,  4 May 2021 16:36:12 +0800
Message-Id: <20210504083616.9654-1-wens@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_013626_149294_4959AF40 
X-CRM114-Status: GOOD (  14.23  )
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

From: Chen-Yu Tsai <wens@csie.org>

Hi everyone,

Here are some patches that enable USB3 on RK3328 SBCs that I own. The
changes are quite straightforward, except for the NanoPi R2S, which
has a USB3 Ethernet chip attached. I am aware that there's already a
patch [1] for that. This is my spin on things using the USB device
binding, with comments on how the USB ports are arranged, that I had
done but couldn't find the time to send out.

The last patch also results in some warnings from checkpatch.pl:

    WARNING: DT compatible string "usbbda,8153" appears un-documented -- 
	check ./Documentation/devicetree/bindings/
    #88: FILE: arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts:398:
    +               compatible = "usbbda,8153";

    WARNING: DT compatible string vendor "usbbda" appears un-documented -- 
	check ./Documentation/devicetree/bindings/vendor-prefixes.yaml
    #88: FILE: arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts:398:
    +               compatible = "usbbda,8153";

At least the first warning should be covered by the USB device binding

    Documentation/devicetree/bindings/usb/usb-device.yaml

while we probably should add an exception to vendor-prefixes.yaml for
the second warning.

Please let me know what you think.


Regards
ChenYu

[1] https://lore.kernel.org/linux-rockchip/20210405093423.16149-1-cnsztl@gmail.com/


Cameron Nemo (1):
  arm64: dts: rockchip: rk3328: Enable USB3 for Rock64

Chen-Yu Tsai (3):
  arm64: dts: rockchip: rk3328: Enable USB3 for ROC-RK3328-CC
  arm64: dts: rockchip: rk3328: Enable USB3 for Rock Pi E
  arm64: dts: rockchip: rk3328: Enable USB3 Ethernet on NanoPi R2S

 .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 32 +++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |  5 +++
 .../boot/dts/rockchip/rk3328-rock-pi-e.dts    |  5 +++
 .../arm64/boot/dts/rockchip/rk3328-rock64.dts |  5 +++
 4 files changed, 47 insertions(+)

-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
