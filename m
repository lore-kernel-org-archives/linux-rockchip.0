Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA4D606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 07:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=31+QEA2t;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=PD9tPR1y;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=realtek.com header.i=@realtek.com header.a=rsa-sha256 header.s=dkim header.b=n1vslqUc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+7BM2XN/jxQEBWCS6sCMm7sdjrd/5iK0t5bXsVSmw84=; b=31+QEA2t41H3NNmJXpEaRsWh7u
	yTeKHCKhIiEd5WTL+ir/dVNKNP8J6kexQz9i05tLQ8PdZd+LqKhbJ/yHquJL7LNa9i0xMJoJ8qrPK
	1bp2rem+IoNvz2pjSHc4xVxmnrfUc//HrN+5vrIfsWoGl9Ou7aYNgpGOU0+ujbYAayVM1m14ZuGKn
	GfP1wUb+kIisgmSA2/HAR1ryowXmo1BRYKTQc+OWaUMbKI6ApV53u3IDIjhzEWsK2K0qWTmMYUr9e
	CB4Lv5Cf6BJZ0uOE6Lzve0fAXqBbwhb82VvGsAgWaJaJwwAiOY8Ez0VJ7FYuVzQivtR4y/knzr9bH
	FDMbB/Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTDB1-00000004hdT-1wSV;
	Tue, 17 Nov 2026 07:00:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTDB0-00000004hdN-2aUm
	for linux-rockchip@bombadil.infradead.org;
	Tue, 17 Nov 2026 07:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=SHGfrp4bopYd7kSN9zwAjUxkO+1WPrFH+JL4BlUgktw=; b=PD9tPR1yD+r9uZnz55Vhk+L6P3
	beJRL1m6zb9aU3MGUcKJaT9h+aJ6K7V4uy/u9zbINlCwEymzmf6jxEtVqekbIXxgLWQJHB6Pu9X7s
	QiSzuhz8yo8b+vi/GimcJJiZHgU7edvIp8PB47ZRE7kdWvKBjFNBnHZbYhJgOzUL1WrACkQ8T7NOr
	nz165kWdXgVIVxqbk447oj2W2uDrOn+CSZnxd0AEcswp355CvAAVlHwETovzmh+J7Cs5sO+i+GrVW
	NPcXTB7nNrfDkJoSErNQ3FHA6x1c8sngRDxTeap6c2CvhYUQnHdjdJ7pwSN8OiLvWs9mC3EmwFJx1
	tjVViOag==;
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTDAu-0000000Ebz5-3Lz3
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 07:00:20 +0000
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 6AH6xHXE1009131, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1794898757; bh=SHGfrp4bopYd7kSN9zwAjUxkO+1WPrFH+JL4BlUgktw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=n1vslqUcXj1pLQuWKwXCdtwpkBLbkLsMIVrZaMygN7Jy03CCjFZjQs9gTqAfoJd+B
	 737HYT8fQbDi9xvPCIHAywkNejLk4S8VDHleTz17ehjuy+997z5E/L3WJ3wad+dthn
	 Qd1IIcYvMAykaGHBAOKDSRMM60KdV5TFU2d0W6mRIoZN1LQxJle9WkQBP0EJ/vNi4F
	 WxowPlyAn2xi0MmMb42VYPoZJCkhFCyZ2kmsRPcCb83SKKDh+t9O3WDrn2ltM1DiB8
	 o1RgTweYpveGFtpr9W6wyVe7wBxnvqGuxGk424lDA24qrwtPxD3+crq9jfMnreJvSs
	 vsJb8v05kZm5Q==
Received: from mail.realtek.com (rtkexhmbs02.realtek.com.tw[172.21.6.41])
	by rtits2.realtek.com.tw (8.15.2/3.29/5.94) with ESMTPS id 6AH6xHXE1009131
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 17 Nov 2026 14:59:17 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS02.realtek.com.tw (172.21.6.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.56; Tue, 17 Nov 2026 14:59:18 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS05.realtek.com.tw (10.21.1.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.56; Tue, 17 Nov 2026 14:59:17 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([fe80::eeeb:c765:ca73:5eef]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::eeeb:c765:ca73:5eef%10]) with mapi id
 15.02.2562.056; Tue, 17 Nov 2026 14:59:17 +0800
From: Ping-Ke Shih <pkshih@realtek.com>
To: Leonard Lausen <leonard@lausen.nl>
CC: Luka Gejak <luka.gejak@linux.dev>, =?iso-8859-1?Q?David_H=E4rdeman?=
	<david@hardeman.nu>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner
	<heiko@sntech.de>, "linux-wireless@vger.kernel.org"
	<linux-wireless@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH rtw-next v3 1/2] wifi: rtw88: 8822c: filter
 hardware-handled control frames on SDIO
Thread-Topic: [PATCH rtw-next v3 1/2] wifi: rtw88: 8822c: filter
 hardware-handled control frames on SDIO
Thread-Index: AQHddg20ST1VskQ6L0e3SHfK9/KuYbcx1R5w
Date: Tue, 17 Nov 2026 06:59:17 +0000
Message-ID: <acd95beb9e704a51a00e1b3a18420c06@realtek.com>
References: <20261116205739.462458-2-leonard@lausen.nl>
 <20261116205739.462458-4-leonard@lausen.nl>
In-Reply-To: <20261116205739.462458-4-leonard@lausen.nl>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_070018_214722_95602726 
X-CRM114-Status: GOOD (  13.24  )
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Leonard Lausen <leonard@lausen.nl> wrote:

> @@ -285,14 +285,11 @@ static void rtw_ops_configure_filter(struct ieee80211_hw *hw,
> 
>         mutex_lock(&rtwdev->mutex);
> 
> +       rtwdev->hal.rx_control = *new_flags & FIF_CONTROL;
> +
>         rtw_leave_lps_deep(rtwdev);
> 
> -       if (changed_flags & FIF_CONTROL) {
> -               if (*new_flags & FIF_CONTROL)
> -                       rtw_write16(rtwdev, REG_RXFLTMAP1, 0xffff);
> -               else
> -                       rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
> -       }
> +       rtw_update_rx_filter(rtwdev);

a blank line.

>         if (changed_flags & FIF_ALLMULTI) {
>                 if (*new_flags & FIF_ALLMULTI)
>                         rtwdev->hal.rcr |= BIT_AM;

[...]

> diff --git a/drivers/net/wireless/realtek/rtw88/reg.h b/drivers/net/wireless/realtek/rtw88/reg.h
> index afcdb66fdb9a1..8e220580be4f8 100644
> --- a/drivers/net/wireless/realtek/rtw88/reg.h
> +++ b/drivers/net/wireless/realtek/rtw88/reg.h
> @@ -587,6 +587,10 @@
> 
>  #define REG_RXFLTMAP0          0x06A0
>  #define REG_RXFLTMAP1          0x06A2
> +#define BIT_RXFLTMAP1_BACK     BIT(9)
> +#define BIT_RXFLTMAP1_RTS      BIT(11)
> +#define BIT_RXFLTMAP1_CTS      BIT(12)
> +#define BIT_RXFLTMAP1_ACK      BIT(13)

In reverse order, see existing pattern.

>  #define REG_RXFLTMAP2          0x06A4
>  #define REG_RXFLTMAP4          0x068A
>  #define REG_BT_COEX_TABLE0     0x06C0

[...]

> diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822c.c
> b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
> index 09315d23e2c40..5a5215c05276c 100644
> --- a/drivers/net/wireless/realtek/rtw88/rtw8822c.c
> +++ b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
> @@ -2096,7 +2096,17 @@ static int rtw8822c_mac_init(struct rtw_dev *rtwdev)
>         rtw_write8(rtwdev, REG_WMAC_TRXPTCL_CTL_H  + 2, WLAN_BAR_ACK_TYPE);
>         rtw_write16(rtwdev, REG_RXFLTMAP0, WLAN_RX_FILTER0);
>         rtwdev->hal.rxfltmap1 = WLAN_RX_FILTER1;
> -       rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
> +       if (rtw_hci_type(rtwdev) == RTW_HCI_TYPE_SDIO) {
> +               /*
> +                * Hardware handles these frames; retain BAR and PS-Poll for

I prefer the wording "not forward".

> +                * mac80211. The common writer preserves FIF_CONTROL requests.
> +                */
> +               rtwdev->hal.rxfltmap1 &= ~(BIT_RXFLTMAP1_BACK |
> +                                          BIT_RXFLTMAP1_RTS |
> +                                          BIT_RXFLTMAP1_CTS |
> +                                          BIT_RXFLTMAP1_ACK);
> +       }
> +       rtw_update_rx_filter(rtwdev);
>         rtw_write16(rtwdev, REG_RXFLTMAP2, WLAN_RX_FILTER2);
>         rtw_write32(rtwdev, REG_RCR, WLAN_RCR_CFG);
>         rtw_write8(rtwdev, REG_RX_PKT_LIMIT, WLAN_RXPKT_MAX_SZ_512);
> diff --git a/drivers/net/wireless/realtek/rtw88/rtw88xxa.c
> b/drivers/net/wireless/realtek/rtw88/rtw88xxa.c
> index 5ffa29d18168e..7aacdb64c6e3c 100644
> --- a/drivers/net/wireless/realtek/rtw88/rtw88xxa.c
> +++ b/drivers/net/wireless/realtek/rtw88/rtw88xxa.c
> @@ -513,7 +513,7 @@ static void rtw88xxa_init_wmac_setting(struct rtw_dev *rtwdev)
>  {
>         rtw_write16(rtwdev, REG_RXFLTMAP0, 0xffff);
>         rtwdev->hal.rxfltmap1 = 0x0400;
> -       rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
> +       rtw_update_rx_filter(rtwdev);
>         rtw_write16(rtwdev, REG_RXFLTMAP2, 0xffff);
> 
>         rtw_write32(rtwdev, REG_MAR, 0xffffffff);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
