Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3797A606A31C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 22:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xfu7m18q;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256 header.s=key1 header.b=sfBSw6/b
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qB+2Nd4x4Sp+ad47lOYnJdiLSfy0zeAo4OYJoPE6IbE=; b=xfu7m18q27p6BtOlUX5tyllqux
	8RuH0qJICJYlzQrYMXiFdrapkG3/m/20jYt3Eav6zAk6xFNYiNf44t1iX6AG/WvcEDWsMYnYqgtBv
	ClE8vu904/eH5ryu1pmWo9+uaQ2neUE60iV6lcowGpjzbYrHge6DLiV8Jk23KOck9Hd3y8z6rw23P
	9JXCQryx+FL9BMSWLnFuP2zytVWegOHk7+7DbvlxoSQq+nVvRsOPjCeuW9L9G/7fPf0x/vVUXPRu0
	9HcLYSiZQo7BF3xmlqTCHPkSC6CZPGobUVN57fw0y0XsSH9nuNFT+RJ+67bPkIllS91ZfF34W/bkg
	OP+z0b/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Y2-0000000413t-3qZy;
	Mon, 16 Nov 2026 21:47:34 +0000
Received: from out-222.mta1.migadu.com ([95.215.58.222] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Xu-000000040xX-2y4d
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 21:47:34 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=nUW0iBV2ECp8Knrlsr623UaAJvJftGJk+k9uQjhfGqk=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1794865642; v=1; x=1795470442;
 b=sfBSw6/bSHN/JSw4jOBe8oNgt8XcrtLUFpryy24FX7sJ2bCXaeOCGvv5rCpo5X6GqbmRy6Ce
 Z1j08+l/6zZcSXoy38y12OBYAlcFOk0aq00ZWg9cflYDUrqKBDQud6lFrQjFwErPxulhkB1j5ky
 EcogVyY0AQcLksXNYVHeZQTw=
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 3f9456e79de43322;
	Mon, 16 Nov 2026 21:47:22 +0000
X-Mizu-Trace-ID: 3f9456e79de43322
X-Migadu-Flow: FLOW_OUT
Date: Mon, 16 Nov 2026 22:46:14 +0100
From: Luka Gejak <luka.gejak@linux.dev>
To: Leonard Lausen <leonard@lausen.nl>, Ping-Ke Shih <pkshih@realtek.com>
CC: leonard@lausen.nl, =?ISO-8859-1?Q?David_H=E4rdeman?= <david@hardeman.nu>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-wireless@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_rtw-next_v3_0/2=5D_wifi=3A_rtw88?=
 =?US-ASCII?Q?=3A_reduce_RTL8822CS_SDIO_request_overhead?=
In-Reply-To: <20261116205739.462458-2-leonard@lausen.nl>
References: <20261116205739.462458-2-leonard@lausen.nl>
Message-ID: <0867C5E9-DDCC-448A-A22A-9AEEFE009358@linux.dev>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_134727_031911_D38B9080 
X-CRM114-Status: UNSURE (   4.09  )
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
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Leonard,

On November 16, 2026 9:57:36 PM GMT+01:00, Leonard Lausen
<leonard@lausen.nl> wrote:
>Reduce RTL8822CS SDIO request overhead by filtering hardware-handled
>control frames and combining adjacent TX-capacity reads.
>
>Changes in v3:
>- Include monitor-filter correction in patch 1 as suggested by Luka Gejak.
>- Cache the current FIF_CONTROL request even when changed_flags omits it.
>- Use a shared filter writer in every chip initializer and both
>  beamforming paths, preserving the monitor override and normal default.
>- Keep the TX-capacity read optimization unchanged from v2.
>

Thanks for v3. It looks good to me, so for the series,

Reviewed-by: Luka Gejak <luka.gejak@linux.dev>

Best regards,
Luka Gejak

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
