Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45698606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 00:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=g5JCwoDx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=SMAzbn8L;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=realtek.com header.i=@realtek.com header.a=rsa-sha256 header.s=dkim header.b=oL1e9aht
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3AHC0fupkAHMloCEHeJF07n/WWOIwsL2kQAUwQzhDmE=; b=g5JCwoDxJfMuQZ1SjV6tpmSCH0
	6KUZ3w5w8xKxDRbE5GNla8Gw9pQmFowUFFQeozs9JtsLYP87cM6de5lVFbjN19fWyvv5aEb21uFI5
	KKB/C9IlHJtkWtZgi2IFCFMLwrB9Y0ZWiJj0G/syybr947FvGixzv8rEx2G8X+T/szKgLym7AxYN0
	LenV+KLfAIj2Tohlaj504CHHi/RkOZAOJR6bDYUa8BJmxvSeIu5VrwoNbrvC4Q01XhS6DErtCqty6
	cxBgsBb76zloiVQEpvRCoOff9T3DtIo/u+nDNogjpkI94YsS/05oBcogCdp0/M7t4q/nPfdilVvTB
	vz+gK8eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT7UR-00000004GzE-1BcC;
	Tue, 17 Nov 2026 00:56:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT7UP-00000004Gz5-3mE0
	for linux-rockchip@bombadil.infradead.org;
	Tue, 17 Nov 2026 00:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=KkSocnQnBgp0BjKmXIH5z0p/YimYzgerqDGPhJWVJlI=; b=SMAzbn8LDW3ATFlKTn6NQ24wER
	xfKLeYiGk8O9+TJrIluVPFSJxxW+yUYmHF3aQaemmGLYAAeWjlHAqA5eiS8IEeNWHDXLSc+wW0ld1
	G+7n6KoBP1VqOokZCxI4bV7XHACXqw6395batATL6XmclENMrK4eKIGGY3V9KMU+T/e/NlESgMR/L
	XDHYsMiKaePMXIvQOrhOcw8rJXwY7wTqwSQ/Mv9P8uGP0ZVMoDwPfhJpfS8cTSNZMg9Wqvbe46CGu
	l3FeNvcLxsR05Iffl+tgUUTfo8XMLNMQIJo3LVt5XRBndqCyEfGsvCycIlV9fCcE8dJWzIcRjq19T
	tcWVRCEw==;
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT7UJ-0000000ESKw-3vyH
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 00:55:59 +0000
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 6AH0sStqD3918343, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1794876868; bh=KkSocnQnBgp0BjKmXIH5z0p/YimYzgerqDGPhJWVJlI=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=oL1e9aht0xw+xPgT6bG4mzsI3sCTBce+3uXc0QQvc6nWXtKdHJkbtoRD2SHLS4f+O
	 59wO1VVpl2gWqkNx49vn/PhesL6QYAVtyDdrpkM2O0U6CfmhuN9xWFMmEfB0YAdKgG
	 BwXzwkxn7ka6sQNREGqhApoYsaByzsHStT9mPMhLT4pOTyx0s3iv29OCYT0lUbFvLk
	 8FrdasxT/sLVpdZa/bEgTJnJrhO3eA2OkpwOjB47pkWhmjGhtx1kaJ1gNn3DXWF8mf
	 CLgY1fyNXR7VhDMcfwi7gWrMeH1swAgP9xTIg3nk5FiFDKPxHBnSnG7ZwB/1CEi9Vt
	 BSCqGVow1eapA==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.29/5.94) with ESMTPS id 6AH0sStqD3918343
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 17 Nov 2026 08:54:28 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.56; Tue, 17 Nov 2026 08:54:28 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([fe80::eeeb:c765:ca73:5eef]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::eeeb:c765:ca73:5eef%10]) with mapi id
 15.02.2562.056; Tue, 17 Nov 2026 08:54:28 +0800
From: Ping-Ke Shih <pkshih@realtek.com>
To: Luka Gejak <luka.gejak@linux.dev>, Leonard Lausen <leonard@lausen.nl>
CC: "leonard@lausen.nl" <leonard@lausen.nl>, =?utf-8?B?RGF2aWQgSMOkcmRlbWFu?=
	<david@hardeman.nu>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner
	<heiko@sntech.de>, "linux-wireless@vger.kernel.org"
	<linux-wireless@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH rtw-next v3 0/2] wifi: rtw88: reduce RTL8822CS SDIO
 request overhead
Thread-Topic: [PATCH rtw-next v3 0/2] wifi: rtw88: reduce RTL8822CS SDIO
 request overhead
Thread-Index: AQHddg2EVbbHh10fu0+8z00k0SLpZrcwtZYAgAC6T7A=
Date: Tue, 17 Nov 2026 00:54:28 +0000
Message-ID: <b2ccb54c9b264722b2fac5ddbf854379@realtek.com>
References: <20261116205739.462458-2-leonard@lausen.nl>
 <0867C5E9-DDCC-448A-A22A-9AEEFE009358@linux.dev>
In-Reply-To: <0867C5E9-DDCC-448A-A22A-9AEEFE009358@linux.dev>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_005557_289039_4A37D494 
X-CRM114-Status: GOOD (  11.95  )
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

Hi Luka,

Luka Gejak <luka.gejak@linux.dev> wrote:
> Hi Leonard,
> 
> On November 16, 2026 9:57:36 PM GMT+01:00, Leonard Lausen
> <leonard@lausen.nl> wrote:
> >Reduce RTL8822CS SDIO request overhead by filtering hardware-handled
> >control frames and combining adjacent TX-capacity reads.
> >
> >Changes in v3:
> >- Include monitor-filter correction in patch 1 as suggested by Luka Gejak.
> >- Cache the current FIF_CONTROL request even when changed_flags omits it.
> >- Use a shared filter writer in every chip initializer and both
> >  beamforming paths, preserving the monitor override and normal default.
> >- Keep the TX-capacity read optimization unchanged from v2.
> >
> 
> Thanks for v3. It looks good to me, so for the series,
> 
> Reviewed-by: Luka Gejak <luka.gejak@linux.dev>

Since I'm not using b4 to apply patches, could you please add your tag
to each patch? Thanks. 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
