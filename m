Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2000BC7618B
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 07:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hh5B8b+fwfY6XNAj1/+ckcB+zO9MAaEWq7N+AlcQN+I=; b=VkYx85+1/CEwg6
	UhHAeT3LJT4x//ZQ7Sfw30NQ4gT0pklzDO47Y6rgM7Nd8lW0FaIp/xAu2y4FU577raWxSoXwp1vVY
	6LHLdPwVJPIkQv0Xv1D5GN6MRelvm7S9QAdNHtQvikwer7wZ/C6NtidTjmeqypxI1yjEm1dlSuHn+
	xZ9HXJ+jnlhQE7TDONIT4GBX2EeVR8ZSehfkaUb/OQJz38S9uCdcEO3PdnokzEB6mUE21WyA+QzIP
	csvXHpXsSHnv4hnVMHHniAlTGvrkEN03uFOkUYOKqIbB58R6PQVVtDKRwtzujJNugIN5Mwgq6TGXW
	LzD35sL6RFXRFVlQhJrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLyA-00ChXg-18;
	Wed, 15 Mar 2023 07:54:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLy6-00ChWE-2n;
	Wed, 15 Mar 2023 07:54:44 +0000
Received: from [46.183.103.17] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pcLy1-00079f-O8; Wed, 15 Mar 2023 08:54:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dianders@chromium.org,
	briannorris@chromium.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices
Date: Wed, 15 Mar 2023 08:54:24 +0100
Message-Id: <167886685403.704797.18042186713287066973.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230307095516.4116827-1-heiko@sntech.de>
References: <20230307095516.4116827-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_005442_903376_6B528EC1 
X-CRM114-Status: GOOD (  10.52  )
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

On Tue, 7 Mar 2023 10:55:16 +0100, Heiko Stuebner wrote:
> All of them have an internal emmc that becomes mmc0 and
> devices including the sdmmc snippet get mmc1 for the external
> sd slot on suitable devices.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices
      commit: 56af59fc0be3fda8d8a32ed996dfb84758d4f431

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
