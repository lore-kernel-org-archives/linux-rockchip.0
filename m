Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43851606A323
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 05:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Y7W/+S5F;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256 header.s=key1 header.b=EBJ0P/pD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hW++lFD9K+46DDuS7QLcVkcew0W3YT+3DuvG+z8LyMo=; b=Y7W/+S5F125oyykKz9zZQQ6KZs
	+e4a+L3lj6Kzd4uDJHZIsWNMlyt03l+1hDq9sZyFEm8SzhklU19HD5e3lwkqlwiwbWZ1W3sXXRZwb
	O3iTCAKCMSgORyMrr9UCKEePukERniT6cid6VUdo43SDAqqkeBT4JJ/+5u4GlX9rkxr/KbjE6xxhx
	MqfKDX8jK2G0oVMY7xAezmpbi+1tbRs4CLBQLOlD08XEmy8CnsxmNKVikFQlEbuxYtCihQ09R8rTx
	dd5V3nBrRPNhUNGCU9zXggAzCiqTQWXYA3PLUEIO47q8TteGBi3CQ5LXK0wf5te0lBv0RvSfIvlDu
	HT5VP3Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTByp-00000004cV5-3JwF;
	Tue, 17 Nov 2026 05:43:43 +0000
Received: from out-160.mta1.migadu.com ([95.215.58.160] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTByf-00000004cUf-3oNg
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 05:43:42 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=J1ckooAvPzmLz1hOJ24+e/tiOCRqBj9lPNTgu5UiYZA=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1794894211; v=1; x=1795499011;
 b=EBJ0P/pDrZ9PomDy5YfRY+xxEydObG8hL7ep+LSEqnWojG5RaSqjhliVUU4fWuJ+lr37d5gT
 jRz5yAtFopC+AXuYWeUjvjAqa8xySkOJQxsthIrIuoZjm4SNEdTio09+mPrxnvK4TftKFmoLoN/
 lYcggvbLzvVzCeF+hW5oD4Dk=
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 2801067375647091;
	Tue, 17 Nov 2026 05:43:31 +0000
X-Mizu-Trace-ID: 2801067375647091
X-Migadu-Flow: FLOW_OUT
Date: Tue, 17 Nov 2026 06:43:29 +0100
From: Luka Gejak <luka.gejak@linux.dev>
To: Leonard Lausen <leonard@lausen.nl>, Ping-Ke Shih <pkshih@realtek.com>
CC: leonard@lausen.nl, =?ISO-8859-1?Q?David_H=E4rdeman?= <david@hardeman.nu>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-wireless@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_rtw-next_v3_1/2=5D_wifi=3A_rtw88=3A_8822c=3A?=
 =?US-ASCII?Q?_filter_hardware-handled_control_frames_on_SDIO?=
In-Reply-To: <20261116205739.462458-4-leonard@lausen.nl>
References: <20261116205739.462458-2-leonard@lausen.nl> <20261116205739.462458-4-leonard@lausen.nl>
Message-ID: <8667155C-5EFC-47A7-887C-A2AC8F180F33@linux.dev>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_214334_246631_9651CFED 
X-CRM114-Status: UNSURE (   4.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On November 16, 2026 9:57:38 PM GMT+01:00, Leonard Lausen
<leonard@lausen.nl> wrote:
>RTL8822C forwards every control-frame subtype to the host by default.
>ACK, Block Ack, RTS and CTS frames are handled by hardware, but forwarding
>them also adds small SDIO transfers to the data path.
>
>Clear these four subtypes from the normal SDIO RX filter, retaining BAR,
>PS-Poll and the remaining subtypes. Cache the current FIF_CONTROL request
>separately from that default, using the full requested flags even when
>changed_flags does not contain FIF_CONTROL.
>
>Use a shared writer in filter configuration, every chip initializer and
>both beamforming paths. This keeps the monitor override across IPS wake,
>MAC reinitialization and beamforming, while removing the request restores
>the current normal filter.
>
>Limit the reduced default to SDIO, where profiling identified this
>overhead. PCIe and USB receive paths have not been tested with it.
>FriendlyElec's RTL8822CS driver also filters control frames at startup;
>this change retains additional subtypes for mac80211.
>
>Link: https://github.com/friendlyarm/rtl8822cs/blob/c8b944a34bba2116fcdb060362bde40242bb87e5/hal/rtl8822c/rtl8822c_halinit.c
>Suggested-by: Luka Gejak <luka.gejak@linux.dev>
>Signed-off-by: Leonard Lausen <leonard@lausen.nl>
>---

Reviewed-by: Luka Gejak <luka.gejak@linux.dev>

Best regards,
Luka Gejak

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
