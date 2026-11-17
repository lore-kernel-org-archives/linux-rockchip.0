Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA31606A323
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 05:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aiXSR+vJ;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256 header.s=key1 header.b=aS5NVWKJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=93RRz50tI+xJs3rwMpPxVx9IGLptAIG+gQ2cbFMJSCs=; b=aiXSR+vJQpHWro8KOkQHctF6Cv
	bJYp4ExQmlXkRuWYjbSggEyCtohEbED3M1rGulSmN5I5FeVeusCVoJM2MvHbNvFhl+Zd/heBk2FFk
	PJlZOG3wb6NFS0Beoe7FjEsiPcEEbHhv1tnW2JDgqqAGaBSBhRRZhgusqlbvc5AW4zYPhsT7PhmQ2
	hsrygJvSC/g+++ce4mHcxnlRx9s+pdVVcsvp7msMfgamPb7tjH2U9zgFrL0QiSd5gwDyAguueKofB
	hmTzDl/6OnJ2T/WMYrz2AZnH5gkPUrcuDxpfpDbOGX/oXDGlT/6/4/zaN2AucZo0o4AoS5ar8BpKr
	jP6Xhvlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTBz1-00000004cWv-3afr;
	Tue, 17 Nov 2026 05:43:55 +0000
Received: from out-184.mta1.migadu.com ([95.215.58.184] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTByz-00000004cWN-2oad
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 05:43:54 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=/hp3mzoQPunJuzlAQ0Nu0QxoCcTF9DX1oZZFPLvhRzY=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1794894231; v=1; x=1795499031;
 b=aS5NVWKJ5TIFNsaAlno5sZFPZVDirwr2ECYGAHVe1FuSfxsGuGLe1/8vOE18eciztqugtOGB
 kkNlmoaO4mCiPHLR5C443Vhg4E+wOMRAqigsZ37tqdmogjpPi+NyxJxEkH3lNpMBWtUfvzSKAvd
 YEJZNZhfN3HKtMU8ohOGFXmo=
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 3695ad99563aa3f3;
	Tue, 17 Nov 2026 05:43:51 +0000
X-Mizu-Trace-ID: 3695ad99563aa3f3
X-Migadu-Flow: FLOW_OUT
Date: Tue, 17 Nov 2026 06:43:47 +0100
From: Luka Gejak <luka.gejak@linux.dev>
To: Leonard Lausen <leonard@lausen.nl>, Ping-Ke Shih <pkshih@realtek.com>
CC: leonard@lausen.nl, =?ISO-8859-1?Q?David_H=E4rdeman?= <david@hardeman.nu>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-wireless@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_rtw-next_v3_2/2=5D_wifi=3A_rtw88=3A_?=
 =?US-ASCII?Q?sdio=3A_combine_free_TX_page_register_reads?=
In-Reply-To: <20261116205739.462458-6-leonard@lausen.nl>
References: <20261116205739.462458-2-leonard@lausen.nl> <20261116205739.462458-6-leonard@lausen.nl>
Message-ID: <4DA7AB91-A420-4C91-B57F-B39FD5DF6696@linux.dev>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_214353_856303_E34CF95F 
X-CRM114-Status: UNSURE (   3.54  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On November 16, 2026 9:57:40 PM GMT+01:00, Leonard Lausen
<leonard@lausen.nl> wrote:
>TX capacity checks on non-8051 chips read three adjacent 32-bit registers
>in separate SDIO requests. Combine them into one 12-byte CMD53 read when
>the existing power/alignment check permits it, with the per-register
>fallback otherwise. Propagate read errors before checking queue capacity.
>
>Allocate a DMA-safe buffer at probe and copy its little-endian values
>into the caller's array before releasing the host. Holding the host
>through the read and copy serializes access to the shared buffer.
>
>Signed-off-by: Leonard Lausen <leonard@lausen.nl>
>---

Reviewed-by: Luka Gejak <luka.gejak@linux.dev>

Best regards,
Luka Gejak

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
