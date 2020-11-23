Return-Path: <SRS0=W4bh=E5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 064B8C63697
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2020 20:44:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 905452083E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2020 20:44:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="PvQWR1b3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1IFkrbs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 905452083E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Subject:References:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p72k+/Q6LDfWtIKsslxzZJCwyqN+eAS937MQf18mkSw=; b=PvQWR1b3SuS2iEpDAQZz+LYru
	5Vil+DyAhABDVI5iQSsmIdcdJFns/4GNELjjsoPhJe/urVRem5GkGG8XFf9tdajJNp+IKC6H0tH0J
	I6pdwIE2axZG3si8XCwZvvWnM9/3liIiWjIe/AVAB49rXlTnd7LEIyD1FDN2cG51GBHUJAWQX90D9
	rH4uHT32pqevT4dDjlJr4fH0dgktklLvxlFds1/JYSQxWmDYdioRFyDBWPpOH5XmuaGQQ4C6JCe6o
	qFjtwGxhdce8sanVnvdXrw4T3ZFumUazkFikMQjc/SB8F9fNMw9dEA6n2ckkXr62Qrz6FOZv7h/+S
	0AtBqZ4fg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khIhT-0006vp-3g; Mon, 23 Nov 2020 20:44:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khIc0-0004VG-9U; Mon, 23 Nov 2020 20:39:14 +0000
Received: from localhost (cpc102334-sgyl38-2-0-cust884.18-2.cable.virginm.net
 [92.233.91.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44D2A204FD;
 Mon, 23 Nov 2020 20:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606163938;
 bh=A8e5XsmrEj94F0Lbxy4tU9ohPxOZwgP/VW6wbdCvxdI=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=F1IFkrbsk2ZUP+5vsvu62iGXHiaCjEomOSw7B1hCcEu6ne6r9Vq3NlvF2FdwUk2l+
 UNk+lt6HuuoAXyvHKn2uSogZpgdB5YUt5NoxHYVO22Y5vhxjxveY8t5+pmdZF/dQsc
 vgOoQHbCyxfMximLrhvrqzecmlcxwQp9kGhC2l/Q=
Date: Mon, 23 Nov 2020 20:38:35 +0000
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Cheng-Yi Chiang <cychiang@chromium.org>
In-Reply-To: <20201118043852.1338877-1-cychiang@chromium.org>
References: <20201118043852.1338877-1-cychiang@chromium.org>
Subject: Re: [PATCH v2] ASoC: hdmi-codec: Get ELD in before reporting plugged
 event
Message-Id: <160616391558.20973.12207964506823429764.b4-ty@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201123_153900_478901_679E5450 
X-CRM114-Status: GOOD (  13.66  )
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Srinivasa Rao <srivasam@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Rohit kumar <rohitkr@codeaurora.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 dgreid@chromium.org, judyhsiao@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 18 Nov 2020 12:38:52 +0800, Cheng-Yi Chiang wrote:
> In plugged callback, ELD should be updated from display driver so that
> user space can query information from ELD immediately after receiving jack
> plugged event.
> 
> When jack is unplugged, clear ELD buffer so that user space does not get
> obsolete information of unplugged HDMI.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: hdmi-codec: Get ELD in before reporting plugged event
      commit: 25ce4f2b3593fa6bba70ddabbd2ee297b262784f

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
