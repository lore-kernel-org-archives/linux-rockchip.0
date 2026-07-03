Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E062BC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 05:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlQnS+LRMQH57IoUgQIT1vA3evqXVu4pvheXuA/bAaY=; b=MSv9Bj+z9uDNf1
	k1fvuTg2U7Gznhk2l/HrqB+MPZB7v4tMmMEFwJRWiTOg9IKAfQwJM9dLnb9DVNGHyteuoghKhCOHD
	mvrkGersMQ+yHihTX5YgEdQCavanf3d1ALHv6EwmQfub6AEtkd4HXt8KgzzwVkscwq4L8E9Rgh4K1
	CxaYHFCfQWryl112td4byKH9HexyGxBVMI7l6LioElOP7yJ1yLLWsUUz7xAeMxvRLR16xwQWat0EN
	tvRPqvvKnLhbA0Zx9ta4rU9lygD/UvS8Qr3jXgoUyhmIdhHKPqFB06hjVBeeNOSdhFouFAnIV4DVP
	fmcwBwX+0bKOcGY4ffCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfWfC-000000066IX-0zcj;
	Fri, 03 Jul 2026 05:42:10 +0000
Received: from out203-205-221-153.mail.qq.com ([203.205.221.153])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfWf8-000000066Gj-3RrQ
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 05:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783057321; bh=ViqeHQLIZm0HWnSQexz4QSSM3m74KlPcBjrXGGI/Zew=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=CQWXqKrY4WQhgdQBLj533cjlb+QPOFKlA+nk7B29YRJpZHOzSGQ5UwbsSvwogneYp
	 QCxKZhizxjkhHXVSQQn7BGj3npq5XMTr0FiJeiTUN3gvWB/7SWdGdefwMlEM3HiwBX
	 Wx6E7mvv1ZbTej5eiu2+j4EF/yjJtMc168HVlB8I=
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
X-QQ-XMAILINFO: NBGkhoQ8491PceFq1cOFzrfl6cKUIB8C33gPhPjpIur5KR6W4qQ36+vEohq5KR
	 bGdPokva9jQxNFgyFb/Zf7kJsbkoCTODLj1Ke5p61gsjsGiPaOtkQRAoy8rTCxyxhTQBeyF4FyekY
	 73uyxaZdMdqFI7Jl2f5fEXgEpQ7iHLRhj8RYcUPHTcgRxcUeW9fRW1PTfkFEyRana+WCTkY59rzDR
	 g6UrARgeeGGpdn0MnE2YlkwPNTAlY00I+LWHGJ8px+WsUjOPZ6HWKHOgVfP+IMuX6uf3BE2sFRvGS
	 neN000bWmA4Wij4iPe40l6Ws6vXyQdJb7uXiXK0oHo95zQX8OdXrnfPkwiKtZPPJqZHlMckh01EYC
	 ucInO8HwwMzap+1YxiYdIn/7045WcXw10f4K5giaLoQYOuV3+jRo4yvqGQn1gFQR99zcY66QLSFE7
	 20jumZIl0hj9PZAaROjipkFpJkO7egEuVUYVCqwn/tT6XaohVH7uEHQz9CiGMSBpNfNnIBB2ui0qs
	 cmPeL91PvOzPlTzOvm1c3pTE1WPFRkQxoYaOM8KAuaLlasY5ka+a1wUZYLZ4HTr3PDAF5DLZ1MBtm
	 kinXWMzb/vk70AAncpcacO2fP3L+Dik6eoFOqOiCbrvATDNGMnyx2IjidKt9zDNNte8Iz3+QXQY9n
	 sbBZKvq4koPVTzwCrQRVxMa3SYIbrnm239E5uLbcUoHZ0p58gIzrNbHhTSI8yEsbzKzmEHcPETB6r
	 4IxMDbcPNnMViUec9Imsp3INKPJB0XILlV1tJNTuPSK/FPLdRr61NRuQ8JxE8lO1mFqy7AZ8ZaLi2
	 0Ot49k1RHzqYSc3R/6sINM4QRtUCHGVuwiKecEBQnJr9LbmuHAsSy0MR1UEO/IYSg0lCjGNaoHQIf
	 VWzhEtLME08xFBylTHtFCPSVjlwDAgUZFE3oON548mTfQM+pznObBLQqvf8hz1zOYNsnwG879O6Mc
	 zByhMCrKwY0j6yEU/5C3APaP83efQcIBh2A3clfa5z//GdGkpYRLoWoQ5gdDWMCXVXxZERPF9nvnL
	 1eNJgVWsctkAx9cQxC9j3D9aeYihMb7ZVDXIg
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>
Cc: "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?cm9iaA==?=" <robh@kernel.org>, "=?utf-8?B?a3J6aytkdA==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Y29ub3IrZHQ=?=" <conor+dt@kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] can: rockchip: add RK3588 CAN-FD support
Mime-Version: 1.0
Date: Fri, 3 Jul 2026 13:41:59 +0800
X-Priority: 3
Message-ID: <tencent_358CC86827C08D8405142316F9053629D00A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_C422347432620914231601BC882C7E604D08@qq.com>
	<20260702-accelerated-shoebill-of-elevation-76f536-mkl@pengutronix.de>
In-Reply-To: <20260702-accelerated-shoebill-of-elevation-76f536-mkl@pengutronix.de>
X-QQ-mid: xmsezb41-0t1783057319tq7q6pl5z
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_224207_180764_935D6E65 
X-CRM114-Status: GOOD (  13.48  )
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

Hi Marc,

> Then CAN-FD is broken. :/
>
> Maybe in a later patch we can hack something, to allow working
> configurations.

I did some more tests and found that the immediate bus-off with BRS is
related to the transmit delay compensation setting.

After setting RKCANFD_REG_TRANSMIT_DELAY_COMPENSATION to 0, i.e.
disabling TDC, CAN-FD with BRS works on RK3588 in my setup. I tested the
same command with 500 kbit/s arbitration bitrate and 1, 3 and 5 Mbit/s
data bitrate.

The 5 Mbit/s data phase test setup was:

  CAN clock: 300 MHz
  can0 <-> can1 directly connected
  no other devices on the bus
  bus termination: 60 Ohm

  ip link set can0 type can bitrate 500000 sample-point 0.8 dbitrate 5000000 dsample-point 0.8 fd on berr-reporting on
  ip link set can1 type can bitrate 500000 sample-point 0.8 dbitrate 5000000 dsample-point 0.8 fd on berr-reporting on

  cangen can0 -I 2 -Li -Di -p 10 -f -g 1 -c32 -b
  cansequence -rv can1 -f

The test ran for 15 minutes. The receiver reported continuous sequence
wrap-around messages, e.g.:

  sequence wrap around (0)
  sequence wrap around (1)
  ...
  sequence wrap around (37218)
  sequence wrap around (37219)

The interface statistics after the test were:

  can0:
            re-started bus-errors arbit-lost error-warn error-pass bus-off
            0          0          0          0          0          0
      RX:  bytes packets errors dropped  missed   mcast
       150667356 9528377      0       0       0       0
      TX:  bytes packets errors dropped carrier collsns
       150667356 9528377      0       0       0       0

  can1:
            re-started bus-errors arbit-lost error-warn error-pass bus-off
            0          0          0          0          0          0
      RX:  bytes packets errors dropped  missed   mcast
       150667356 9528377      0       0       0       0
      TX:  bytes packets errors dropped carrier collsns
               0       0      0       0       0       0

There were no bus errors and no bus-off events in this test.

> Can you update the description of the quirk for the rk3588 and add how
> to reproduce it?

With TDC disabled I cannot reproduce the BRS bus-off problem anymore.
This also looks different from RKCANFD_QUIRK_CANFD_BROKEN, so I do not
think RK3588 should use that quirk.

> Please keep it disabled for now.

Given the new test result, I plan to send v4 with the RK3588 TDC register
set to 0 and CAN-FD enabled for RK3588.

Regards,
Cunhao
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
