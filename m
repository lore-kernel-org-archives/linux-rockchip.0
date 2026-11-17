Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB6D606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 07:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0pi+bSjj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=I9l/kxPZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=realtek.com header.i=@realtek.com header.a=rsa-sha256 header.s=dkim header.b=PcZec1R4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1UENfx4Tl86REUSQ+8RoQy0f0tGnp0MIh+ePHO25u/o=; b=0pi+bSjjHB6CaD1eOuoaHG/XHk
	9GZWb7ihCxZuavMiUiP/3lY9YDw0PaL4avtvrpXoE3GAleC8tp/kg9dImAdC2LEQQf7w5m6e7LotK
	SHlkj6Y7WrtHkKExOdbYe6hzfbraaw8OVcTTb5JfUpdnZMxH0FyVvnqWYi5euU1ZLnOHEC8XiG6hf
	3KsFIY5DJTc8yv562RL6MkMmykOnx1eSpfpJNiR7UvoIgfxuMgr28yBv54vEzfbrszoPC+IsnLmLL
	uh8MhupYEgWELJ9aeR47y3eGda3qQfUOE/xFOPfpWnQa2IKEa7ArWBsQzniyuPIDaaUYo33UKe2K4
	MgODpx3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTDKL-00000004k8N-2BhE;
	Tue, 17 Nov 2026 07:10:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTDKK-00000004k7h-032X
	for linux-rockchip@bombadil.infradead.org;
	Tue, 17 Nov 2026 07:10:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=FzKRyCI/FFKA8grj4ht9Xr1QJm0lA6wqt+zgfp62ads=; b=I9l/kxPZA5OkO0IB1pmVjhJP+i
	oGvPljRtlY18C6p4ApL7gRGnG7m644ayIcbRv9y587MSxjx1Y2XFlRWOJIQaTnkx6RAaus0r+FxIk
	P/ToeG354o7Wvj6xC3DVIKklpuP5NSJtP0vAb2CVlhWpXBYSuXLbyffFVXv+IB1IpQaggVTplwPXw
	k29Yossy+KlBkqbzxS+A32aNfopBk7HGGLezTrL4X4Hs70wmbyuOmoSGeoKOvp7/uqu2xgL7JCbEU
	+sQmjEWRiDWKgqY6foOEhQppd6Ek7pOXOJPB9BhlILu0E3UE3YnIqg5E4x/MxjIVfztPsl02g/fJ2
	8mq2v1Eg==;
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTDKD-0000000EcVz-3CuU
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 07:09:57 +0000
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 6AH79QCf8017603, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1794899366; bh=FzKRyCI/FFKA8grj4ht9Xr1QJm0lA6wqt+zgfp62ads=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=PcZec1R4U8OWmhrV0/JYKZ1fuZUZdEkrsM7unxe9AyjzSfCrS4vjodONKFDDoEHXc
	 Ne9zYgmqvup2kydBJ0gcxRrcO0dWk+K5S3re6zN6lbSJSZ2rNXxvxiE/7I/cOZ43iS
	 CdBcWTt9DyOvcephO6WP44uwyzz4OS49GU+Hmx1Pk9fxcxnpCtXguE95mW0Mmiw93M
	 aJU0k0hhQni4rN1ZHfjbUTqLge38NmKsTOjTqxNaKaRCS/Zder41S+NVLJGziIcz+X
	 7HSp6hJxj7QWT+vF9674eLEORWbpKgLCwQHldAE3/UrEp/5duRMzGwO9/qBXHONl/w
	 oXhN0bTliw8lg==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.29/5.94) with ESMTPS id 6AH79QCf8017603
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 17 Nov 2026 15:09:26 +0800
Received: from RTKEXHMBS01.realtek.com.tw (172.21.6.40) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.56; Tue, 17 Nov 2026 15:09:26 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS01.realtek.com.tw (172.21.6.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.56; Tue, 17 Nov 2026 15:09:26 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([fe80::eeeb:c765:ca73:5eef]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::eeeb:c765:ca73:5eef%10]) with mapi id
 15.02.2562.056; Tue, 17 Nov 2026 15:09:26 +0800
From: Ping-Ke Shih <pkshih@realtek.com>
To: Leonard Lausen <leonard@lausen.nl>
CC: Luka Gejak <luka.gejak@linux.dev>, =?iso-8859-1?Q?David_H=E4rdeman?=
	<david@hardeman.nu>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner
	<heiko@sntech.de>, "linux-wireless@vger.kernel.org"
	<linux-wireless@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH rtw-next v3 2/2] wifi: rtw88: sdio: combine free TX page
 register reads
Thread-Topic: [PATCH rtw-next v3 2/2] wifi: rtw88: sdio: combine free TX page
 register reads
Thread-Index: AQHddg4Mm6pGDN14n02291BdufFCsLcx2B7Q
Date: Tue, 17 Nov 2026 07:09:26 +0000
Message-ID: <e117bb9cdbb743a4853e16c33d618b50@realtek.com>
References: <20261116205739.462458-2-leonard@lausen.nl>
 <20261116205739.462458-6-leonard@lausen.nl>
In-Reply-To: <20261116205739.462458-6-leonard@lausen.nl>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_070956_261665_28B63CF7 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
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

Leonard Lausen <leonard@lausen.nl> wrote:
> TX capacity checks on non-8051 chips read three adjacent 32-bit registers
> in separate SDIO requests. Combine them into one 12-byte CMD53 read when
> the existing power/alignment check permits it, with the per-register
> fallback otherwise. Propagate read errors before checking queue capacity.

How much time will this change improve?

> 
> Allocate a DMA-safe buffer at probe and copy its little-endian values
> into the caller's array before releasing the host. Holding the host
> through the read and copy serializes access to the shared buffer.
> 
> Signed-off-by: Leonard Lausen <leonard@lausen.nl>

With description about improvement, 

Acked-by: Ping-Ke Shih <pkshih@realtek.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
