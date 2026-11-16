Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C32606A323
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 16:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j/3eY75/;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256 header.s=key1 header.b=C08AbvoO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/twXrJv2w4xHQSN/wq9XtY7B4WPtmKF4I4rUomqyQ8g=; b=j/3eY75/eRLsgRss1kC92b5WEr
	kE7Nv8AYlWW+iqaMW6LHLu+ojjmEttFLeEJxhtWoO3m4KvjMFl4zCYlRcSpn+Q0fAWqHZF95gRaVf
	5VLI1an4zbLqag+i9BZXB81aXFSyIX8PuwPa5Q9J6xfbXZ3gcT2Bhehy7q8qTWMnfB7CAUfB6mnmR
	a7gtKpgt1ITteFZQXfxjh1pDaRns81V9jQRf9HFhtiG1OypoVBfS34+M18jDhiYVXzbxpBF941wLC
	vpNWrm1TKF8lyIDixLQu3y4EiOLFbZQaMQhcxSQUKHKMbgiVCTtcQvig0sNX1GGq7Dw4GcgXTHPAx
	XsNn/A+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSzbP-00000003EBD-3pAH;
	Mon, 16 Nov 2026 16:30:43 +0000
Received: from out-108.mta0.migadu.com ([2001:41d0:1004:224b::6c] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSzbN-00000003EAn-0tXU
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 16:30:42 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=/TmlOBmRF0Q2L4IdY2HJibxaU1MOpwjcuMv+N7kBxPY=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1794846638; v=1; x=1795451438;
 b=C08AbvoOdH/lcIRlEFaUVEUl5r+ocRuxANKCpa0wPAi2avIa2z/i5qedFZvxNmvjeGV40J0j
 5jNyFJuJWirRTH2Wc2xMHbMFG9trvPFM247+NcF/DsQa0v0Kh8GdWdgaT6tITzqoqE1XW64EpOV
 txBP53eOHzWnXzIahywrdmRY=
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 709ba1d64c3d008f;
	Mon, 16 Nov 2026 16:30:31 +0000
X-Mizu-Trace-ID: 709ba1d64c3d008f
X-Migadu-Flow: FLOW_OUT
Date: Mon, 16 Nov 2026 17:30:30 +0100
From: Luka Gejak <luka.gejak@linux.dev>
To: Leonard Lausen <leonard@lausen.nl>, Ping-Ke Shih <pkshih@realtek.com>
CC: leonard@lausen.nl, Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-wireless@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_rtw-next_v2_1/2=5D_wifi=3A_rtw88=3A_8822c=3A?=
 =?US-ASCII?Q?_filter_hardware-handled_control_frames_on_SDIO?=
In-Reply-To: <20261116100804.425592-4-leonard@lausen.nl>
References: <20261116100804.425592-2-leonard@lausen.nl> <20261116100804.425592-4-leonard@lausen.nl>
Message-ID: <86B705FE-9271-4721-BF04-4777D8D130BC@linux.dev>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_083041_415492_C51BBF3C 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Leonard,

Thanks for the update. One comment below.

On November 16, 2026 11:08:03 AM GMT+01:00, Leonard Lausen
<leonard@lausen.nl> wrote:

> @@ -2096,6 +2096,16 @@ static int rtw8822c_mac_init(struct rtw_dev *rtwdev)

[ ... ]

>       rtwdev->hal.rxfltmap1 = WLAN_RX_FILTER1;
> +     if (rtw_hci_type(rtwdev) == RTW_HCI_TYPE_SDIO) {
> +             /*
> +              * Hardware handles these frames; retain BAR and PS-Poll for
> +              * mac80211. FIF_CONTROL restores all subtypes for monitors.
> +              */
> +             rtwdev->hal.rxfltmap1 &= ~(BIT_RXFLTMAP1_BACK |
> +                                        BIT_RXFLTMAP1_RTS |
> +                                        BIT_RXFLTMAP1_CTS |
> +                                        BIT_RXFLTMAP1_ACK);
> +     }
>       rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);

[ ... ]

As far as I can see, later writes of this default can disable these frames
while a monitor still requests them.

For example, with an unassociated interface in IPS, bringing up a monitor
first calls ieee80211_configure_filter(). The following
ieee80211_recalc_idle() leaves IPS and runs rtw8822c_mac_init(), which
writes the reduced map again. A hardware restart or resume with an
existing monitor seems to have the same problem.

mac80211 keeps local->filter_flags, so FIF_CONTROL can still be set in
*new_flags but clear in changed_flags. Then rtw_ops_configure_filter()
skips restoring 0xffff.

There also seems to be a way to lose it while the radio stays on.
Associating a managed interface with an MU beamformer calls:

        rtw_bf_enable_bfee_mu()
                rtw_bf_cfg_sounding()

Both functions write hal.rxfltmap1 back to REG_RXFLTMAP1, replacing the
monitor's 0xffff with the reduced map. Before this patch those writes
left the four subtypes enabled.

Could we preserve the active FIF_CONTROL setting in the common filter
code and use it for MAC initialization and the writes in bf.c too?

Best regards,
Luka Gejak

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
