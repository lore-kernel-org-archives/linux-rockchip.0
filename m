Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0A57CA0EED
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 17:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54zBHjiUVZL/x4fKaVfjhmBoFzjdgNNm3RZ9tvIEFJ8=; b=ZqlcbB1zt5GD/c
	P2G/j/QvmyOorq2wzDCbo6OsoCOZUxkU210MpyCvo8cZ0qv3g9nVZj/bWFCiu6DRH1D0ny0eoxZvp
	8KZidxahLcdLgUk0o0S5UK7YFgFcOxssaBT0bkfImgzwyyAbT7VjYtZXUqPmu19XhvJ4H8tTb/wO8
	v/5ZjdeanQ70wev9CrO2JRv3nnT0kqv5TRMLN4Ens0ILe+FKmaNr6cdhSO6cTssLl56gaAlB9d+9D
	xEyQ/pm9H8Dy5JtJEnMcSoEzMBXXCQiTOkcmSuU2Ydcgfc0uaJWWaGZqecc34BJJPFEQ6qrTOaoLr
	UhuQCQMrzQcWUk6Vrm5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgOy-00000002U84-0cfn;
	Thu, 28 Aug 2025 17:27:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urci0-00000001kOZ-27Xm;
	Thu, 28 Aug 2025 13:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=f04tksORT2Z5GubC2DtLa7iShjF1q6m0nSzFPWX6pWw=; b=ykOBrZ7UblBvuc1IYSCp7ZX/pu
	Go5kXq27uB8uWBBImBuwlvFrYHOctgt6ormziStYxlPotkw0qv1xSqRfvbHFqGukv2vS6V2XaKVm6
	FkquplLdIwndXV/Sn4/CHU4u1KN1eEOhONMkuuct+Pa84npAh/ZQaM2nSmeYcNNLbCYUUqkJLHOb7
	vKYV8uplh6gR9H7EhWhnfQijVLyIJAxFWk/riHV8VpyHqzJCORacsHI94gjQSVkfGNkvQyleOpzgn
	11Ww/qT9PWJZosEApRU5ylnRCGiC68dzODsVe1hsJ8mciVZJP6TN06o6n4FPi7KUdWk9YgVlPlpmN
	YK7/IJoQ==;
Received: from [185.205.242.134] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urchz-0004qj-06; Thu, 28 Aug 2025 15:30:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: anton.kirilov@arm.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	nd@arm.com
Subject: Re: [PATCH] arm64: dts: rockchip: Enable the NPU on NanoPi R6C/R6S
Date: Thu, 28 Aug 2025 15:30:26 +0200
Message-ID: <175638782391.3533599.15783338946891091467.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250827142210.2221606-1-anton.kirilov@arm.com>
References: <20250827142210.2221606-1-anton.kirilov@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_063032_541879_3A476E6C 
X-CRM114-Status: UNSURE (   9.45  )
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


On Wed, 27 Aug 2025 15:22:10 +0100, anton.kirilov@arm.com wrote:
> Enable the NPU on FriendlyElec NanoPi R6C/R6S boards.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable the NPU on NanoPi R6C/R6S
      commit: dfdda0881b353453afc376f7f2bf6a8306fcada3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
