Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D2DC43381
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 17:10:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E46E222AAC
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 17:10:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E46E222AAC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/jqgXX6yyBxHuksbm1Fs10UyyBHNpazs8jzSpy6p+jM=; b=jyzBsxrMhIHyPz+8AmLFQFfQe
	GI0gWfeaMETHuxm5ReLcSHGO2l1mjlWXR/lARVy6fnYOlMloRtwwNdBXmHbEyOmbzFRuJ+muiM8PZ
	5fh6c1XKTi5nrtkPOYXaHF6aOVHIWzDNpvEB55JAUq9zHW9f65U7FSouenqJjl0On7zwkP3n8vz/+
	9sYDhIzGaBjsLDJvPHM+x98YaF9uvWMvJXYL8vndhiMzS3UjrXJBBlD4UBF9muTalRLbyKmLHQ9K0
	p4YRxjDFe69Pa+5v6+Ze7xgB5xqVI3tsXofhgKGmZxLpbn7tsW4B2/x9W70yKMj43TTTnkIgRoR2d
	CK0MlsOEg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l45O4-0006b2-TQ; Mon, 25 Jan 2021 17:10:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l45O1-0006aF-Lt; Mon, 25 Jan 2021 17:10:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14F8C11FB;
 Mon, 25 Jan 2021 09:10:39 -0800 (PST)
Received: from e123427-lin.arm.com (unknown [10.57.45.18])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 212AF3F68F;
 Mon, 25 Jan 2021 09:10:37 -0800 (PST)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Chen-Yu Tsai <wens@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v4 0/4] arm64: rockchip: Fix PCIe ep-gpios requirement and
 Add Nanopi M4B
Date: Mon, 25 Jan 2021 17:10:31 +0000
Message-Id: <161159460063.30598.10362504498380643091.b4-ty@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20210121162321.4538-1-wens@kernel.org>
References: <20210121162321.4538-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_121045_775052_BA9C7210 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Johan Jonker <jbx6244@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 22 Jan 2021 00:23:17 +0800, Chen-Yu Tsai wrote:
> This is v4 of my Nanopi M4B series.
> 
> Changes since v3 include:
> 
>   - Directly return dev_err_probe() instead of having a separate return
>     statement
> 
> [...]

Applied to pci/rockchip (dropped dts patches 3-4), thanks!

[1/2] PCI: rockchip: Make 'ep-gpios' DT property optional
      https://git.kernel.org/lpieralisi/pci/c/96f760cc00
[2/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi M4B
      https://git.kernel.org/lpieralisi/pci/c/b205659626

Thanks,
Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
