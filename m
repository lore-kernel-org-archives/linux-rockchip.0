Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E65C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 10:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HApLh8WBbqQZFy12D4929/F5OzDNYEsRAs5wm+o6u/Y=; b=OHJoemb4i7l0yk
	eiOd+1aGPsvv0p8FOvL9qCAwWNceMTl5855OBN8rZQKGt1qNBXTmTRwJezDAcvNeZ7o/1mMPUx8tm
	p0Jw5RmdwtTElDMDePoikYb/Q5JqeZqGeO8LyaAF5J7n1EqDiutF2fSaitNBDeAcn+RJiWbNKrtn9
	r/qp81l2roUpCBAAzJryW+leh28/sG75oFmMJARCXW6qpAnEuHd/yODsBJaiQpARs1zzxdQUDlYbE
	T2/04y2TA8B9mlhR90o/n+ujAt8tnzIrxwuJlDuJ3/N9P7T60QvoHsUYC7wQJ6U6trdBo44BceLHd
	vtAqFFs5PoOGgBBL+iBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odTxO-00FU7J-Jt; Wed, 28 Sep 2022 10:06:22 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odTx4-00FTxI-Ei; Wed, 28 Sep 2022 10:06:06 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.195])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 64787800115;
	Wed, 28 Sep 2022 18:05:54 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: robin.murphy@arm.com
Cc: linux.amoon@gmail.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	michael.riesch@wolfvision.net,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe controller on rock3a
Date: Wed, 28 Sep 2022 18:05:20 +0800
Message-Id: <20220928100520.3886-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <e75cc292-ff7a-0daa-e2f9-fde376b5e26e@arm.com>
References: <e75cc292-ff7a-0daa-e2f9-fde376b5e26e@arm.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGRhNVhpCThpKHh9DTEpDTFUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJOWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NE06Egw*Az0jTQwaEkwhNQI*
	HgEwCkNVSlVKTU1PSE5CTk5OS0hIVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJOWVdZCAFZQUlJQk43Bg++
X-HM-Tid: 0a83838f5e52b03akuuu64787800115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_030602_665903_B98BC8C0 
X-CRM114-Status: UNSURE (   8.45  )
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

Hi,

On 27-09-22, 18:47, Robin Murphy wrote:

> (as a side note, is pcie2x1's vpcie3v3-supply as queued in -next 
> actually correct? AFAICS the other socket is effectively powered 
> straight from VCC3V3_SYS so shouldn't have needed VCC3V3_PCIE,
> but at least it's there now ready for this one)

Thanks for the correction, I didn't notice this before. You are right,
the supply of pcie2x1 comes from VCC3V3_SYS. But if we change supply
of pcie2x1 to VCC3V3_SYS, it will cause pcie30phy to fail to initialize
normally. The error is the same as the following:

> phy phy-fe8c0000.phy.4: rockchip_p3phy_rk3568_init: lock
> failed 0x6890000, check input refclk and power supply
> phy phy-fe8c0000.phy.4: phy init failed --> -110
> rockchip-dw-pcie: probe of 3c0800000.pcie failed with error -110

If both vpcie3v3-supply of pcie2x1 and pcie3x2 use VCC3V3_PCIE like
the vendor kernel, they can initialized normally.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
