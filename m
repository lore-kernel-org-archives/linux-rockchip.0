Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63FE4FEC109
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 19:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RX4O71bR7Q7UHLhAUGWraHQ/5KD+swfSIw3GeLQGejU=; b=ApsmR8BI+xBSV7
	YoQGUkXLqFE/vNWQbhboBNzb79RBPPsjugLeE5owGMb30y3dpk/czH4XQsPIEFr5bCdyKEwep3ksp
	ARHDdFoQI/kIpdA/ykwV56s3wQwYMky92YlYZ1aFewg0Ez8n8BW6wny6Kvd8DWZHWUbr80gohO7e8
	LtNhf1sUlFMqg8v5VuIrnPrGQvMzAAIvdUo1HQBIJYa4VV6VSOyABmLog8hzMlSIXteecoReAAdhw
	tRenTX6UyqKdQ/wSiWTjjAxAnqu19gkm/u1ObTNv9Y/Q++xyCnBz1PaT1/mFvKRo28I9zn85hW7Zk
	ECzDMmmWS4udjvB1gl+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57pd-00000002BED-2DtX;
	Tue, 24 Mar 2026 19:54:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57pE-00000002B0O-0PM4;
	Tue, 24 Mar 2026 19:54:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BmyvvqpA+3a7QNkSRtg2hYz7ys9jbAoSkQkaOVx2QHM=; b=FmdE7+7ZFuqHGQ1eoEPmRfwWHc
	gDSuY7MlFYtFqYrLvbQAxRsTpBRF2kOqvvzn1etrChow06IyZ9VYIkSvw8wNjqHpNn/P5PIYv2Ttv
	CUKejrMgFjCTbUYk51KfetfnCmrCzOEMZjXU8hMVIK9RY7s/Yt1ZvBMx5SKEk6GXTtD7iV6zdJwfm
	4DBB71jvEuDF0Rj6jNmeV72HVnujsV5+LnvDuz5hhAkmyQiY9AhDelYi9VMNcjiWlEc7SF4RHsg1+
	KB4KbBvmaef+QShBwAbrMtcxPkjMQTwLq9gSi2zaTAgqYvnAMdRTcpwXryCKa7owqRVrGPE/DmitM
	JDDZGqlQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: add SD/eMMC aliases for ArmSom Sige5
Date: Tue, 24 Mar 2026 20:53:56 +0100
Message-ID: <177438200681.818857.12277446311254915277.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260317-sige5-mmc-aliases-v1-1-ee93a1571802@collabora.com>
References: <20260317-sige5-mmc-aliases-v1-1-ee93a1571802@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_125404_191375_644DAF9C 
X-CRM114-Status: GOOD (  11.17  )
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


On Tue, 17 Mar 2026 15:39:30 +0100, Sebastian Reichel wrote:
> Provide aliases for the SD and eMMC interfaces, so that the operating
> system can assign stable interface names.
> 
> On Linux this is only relevant when booting without partition UUID
> based root device identification, e.g. when booting without an
> initramfs. In that case booting with e.g. root=/dev/mmcblk0p2 is
> unreliable without this patch as the device numbers changed based
> on device probe order.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add SD/eMMC aliases for ArmSom Sige5
      commit: 6f7f44169bdef6e10b8d174079a155d02b87d2dc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
