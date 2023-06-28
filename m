Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DFE1EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jun 2023 09:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t5F2FeOHCeQchybUOFO5+1Ug0TJYusXxr3NGyxUekls=; b=N0HMKGXqROJD9sAHRlc72ADePQ
	WaXoDm1Xfau0sq82iBFdVR4+vhP1oYOCm5EL8ZTyD4hb0ELEFiguGPXCoAHTZYS5FwIjATxmpghGf
	QFif2estfrHR8tH9xkUeZbRPn/c1shWaJxCJoY0BBTdliurWZZumrdSJM8hKhGKyUPXlKZ/FxORoD
	g1bXTD1MQJlxBRMaT5EIEPLs91vWATDaP8OlQVTfPNtKZX95Wm4CzJgEQk4A/RUZIH4OMwyqHYKnT
	KmiJdCr+L5McQijLwqFDSaDdIrPNFq3UzuqGADMeM4oxTdERDM2Pryq/iOnK7dzxHI18cPIYR8yba
	33ncjgDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qERM7-00FEWT-01;
	Wed, 28 Jun 2023 09:20:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qERM4-00FEVh-0N;
	Wed, 28 Jun 2023 09:20:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 179F761251;
	Wed, 28 Jun 2023 09:20:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41714C433C0;
	Wed, 28 Jun 2023 09:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687944050;
	bh=xbdGpsaqMy0AVC0EOgunhe2acN7Vu4AxdSX7S3FRUiU=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=g0474YINv3uDNdTbUo8X410vhgAJgPveL++ZAIQAGYaQahMVt8WBpPwUwuRkyVpAN
	 r0CqLPPLWS/AiYEO2DYT6WPFNhGTDX7T625lXQ4PAarDHlta7fro6CvE64IKMXomld
	 D2cV48Cw4UYN5yq8VqXCG4ogo3vclUz8HF/YW3zbdTxQ3UGAq6xEkzrXiQWdJ/g4HZ
	 69KYCgWqKz8nJ2QNH0Sgo3GwiPYC4aJsAjkn/IpaTqoO8zBlNsT6THyotnEsiydwRu
	 bhX+Cf6FS6dmTpvpxoIS+9xTkzF4RCuL+HkPRI7nGw1QjQ3Ow6XgwliDk4gkYpI/As
	 QGXTZjlhx4rvg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 20613C41671;
	Wed, 28 Jun 2023 09:20:50 +0000 (UTC)
Date: Wed, 28 Jun 2023 09:20:54 +0000
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: linux-rockchip@lists.infradead.org, bugs@lists.linux.dev, 
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org
Message-ID: <20230628-b217334c8-e0d65189aaa7@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: rk3328_mux_recalced_data OVERFLOW noncontiguous CARRIED bits
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_022052_222287_F70DAE24 
X-CRM114-Status: UNSURE (   7.02  )
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

antwain.schneider writes via Kernel.org Bugzilla:

for the uninitiated who want to join in, the trm being referenced is here[1]
and since this problem is directly related to the rk3328, other vendor kernels have adopted the related changes, for example the firefly roc-cc kernel[2]
i can't imagine why this bug is allowed to remain open leaving many people unable to experience the joy of completely functional gpio2 b4 and gpio2 b7, unless you think the pins work fine as-is and commiters are randomly applying code to forks

[1] https://opensource.rock-chips.com/images/9/97/Rockchip_RK3328TRM_V1.1-Part1-20170321.pdf
[2] https://gitlab.com/firefly-linux/kernel/-/commit/d69af8ab6534bb28c1556076f08d2a5ab4935d95

View: https://bugzilla.kernel.org/show_bug.cgi?id=217334#c8
You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
