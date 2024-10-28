Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE73BD10C0B
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 12:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vahLYEHP+MbXtuxH89viRV9V0AtpmDJ6NpZIsavFO10=; b=kpnn1qUw6hcDpQ
	5XYF4UupTLEYR4itokBo+UtSOpz3UjiM+VTHxRsvT3lFmXlcJ3LD9cNAe2I47tqgkZOq7GxagqC7A
	xhuYHOo176pR7xHj6Na7gX7TOeuWSvsMzSBIn5T+gU4EDeYG7cgFjZCMtdfc9/4OibXg4jon22fwx
	GhgVmfg0PPiUi+iH9A9rELQ7qgm8D1cu3iJEsYP/mhPwJBuS10FpqB75o9dr68IOiUnE1bm6Zg1jn
	U34dz+4kV1QDTIGKuKKZ7kDL0bE3WZfoMFTLltAzRpFcZoqN44jLa41rBIlWugw5bCziwXSRHZzEq
	QPmCURNGU9szj4/SfXKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5P69-0000000Ao2l-3oN9;
	Mon, 28 Oct 2024 12:43:53 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Oxn-0000000AlpQ-147j;
	Mon, 28 Oct 2024 12:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=06mJV
	PJym0SyHcFccgWpKccgGv9LEF4FLJZs0IEec+Q=; b=OeRpjGEB8g1dhDGftQnCV
	e0FHTp2fBxnmuQS5j6Xky+9ZNOJqi/YFVYeXcQaZLtg1qGvr+WqkO30cFeXFpJB6
	4zR/9+1USs8OvcCZqdRPrBSsIU108r584rVX12sr1z0utuT++Ec0brgciEtOMd3I
	3DeVbc3l3IIshgkwgL3KPI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wD3f+b5hB9nytgkBw--.9113S2;
	Mon, 28 Oct 2024 20:35:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 0/3] Enable hdmi for rk3588 based Cool Pi
Date: Mon, 28 Oct 2024 20:34:55 +0800
Message-ID: <20241028123503.384866-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3f+b5hB9nytgkBw--.9113S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Wr13Zw17JrW5Jw1kXw1UJrb_yoWxZwbEya
	47ur9rZa1rZ3Z5JF9xt3WUWa9ak3y5W34UJayUtFy7tF97J3ZrX3WrGw4DZ3Z8AF17Zr4x
	AayUArZ7Ww13CjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRAqXlUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRKGXmcffS5+5gAAsQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_053515_731969_0EF6D914 
X-CRM114-Status: UNSURE (   6.08  )
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

As the hdmi-qp controller recently get merged, we can enable hdmi
display out on these boards now.

Changes in v2:
- Remove enable-gpios as it is unevaluated
- Remove pinctrl setting as it use the default

Andy Yan (3):
  arm64: dts: rockchip: Enable HDMI0 for rk3588 Cool Pi CM5 EVB
  arm64: dts: rockchip: Enable HDMI display for rk3588 Cool Pi 4B
  arm64: dts: rockchip: Enable HDMI display for rk3588 Cool Pi GenBook

 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 47 +++++++++++++++++
 .../rockchip/rk3588-coolpi-cm5-genbook.dts    | 50 +++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 47 +++++++++++++++++
 3 files changed, 144 insertions(+)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
